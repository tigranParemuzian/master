<?php

namespace Bank\UserBundle\Admin\Model;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\UserBundle\Model\UserInterface;

use Sonata\UserBundle\Admin\Model\UserAdmin as BaseType;

use FOS\UserBundle\Model\UserManagerInterface;

class UserAdmin extends BaseType
{

    /**
     * {@inheritdoc}
     */
    public function getFormBuilder()
    {
        $this->formOptions['data_class'] = $this->getClass();

        $options = $this->formOptions;
        $options['validation_groups'] = (!$this->getSubject() || is_null($this->getSubject()->getId())) ? 'Registration' : 'Profile';

        $formBuilder = $this->getFormContractor()->getFormBuilder( $this->getUniqid(), $options);

        $this->defineFormBuilder($formBuilder);

        return $formBuilder;
    }

    /**
     * {@inheritdoc}
     */
    public function getExportFields()
    {
        // avoid security field to be exported
        return array_filter(parent::getExportFields(), function($v) {
            return !in_array($v, array('password', 'salt'));
        });
    }

    /**
     * {@inheritdoc}
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('username')
            ->add('email')
            ->add('groups')
            ->add('enabled', null, array('editable' => true))
            ->add('locked', null, array('editable' => true))
            ->add('createdAt')
        ;

        if ($this->isGranted('ROLE_ALLOWED_TO_SWITCH')) {
            $listMapper
                ->add('impersonating', 'string', array('template' => 'SonataUserBundle:Admin:Field/impersonating.html.twig'))
            ;
        }
    }

    /**
     * {@inheritdoc}
     */
    protected function configureDatagridFilters(DatagridMapper $filterMapper)
    {
        $filterMapper
            ->add('id')
            ->add('username')
            ->add('locked')
            ->add('email')
            ->add('groups')
        ;
    }

    /**
     * {@inheritdoc}
     */
    protected function configureShowFields(ShowMapper $showMapper)
    {
        $showMapper
		->tab('General')
            ->with('General')
			->end()
		->end()
//		->tab('Groups')
//            ->with('Groups')
//                ->add('groups')
//            ->end()
//		->end()
//		->tab('Profile')
//            ->with('Profile')
//                ->add('dateOfBirth')
//                ->add('firstname')
//                ->add('lastname')
//                ->add('website')
//                ->add('biography')
//                ->add('gender')
//                ->add('locale')
//                ->add('timezone')
//                ->add('phone')
//            ->end()
//		->end()
//		->tab('Social')
//            ->with('Social')
//                ->add('facebookUid')
//                ->add('facebookName')
//                ->add('twitterUid')
//                ->add('twitterName')
//                ->add('gplusUid')
//                ->add('gplusName')
//            ->end()
//		->end()
//		->tab('Security')
//            ->with('Security')
//                ->add('token')
//                ->add('twoStepVerificationCode')
//            ->end()
//		->end()
        ;
    }

    /**
     * {@inheritdoc}
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
		->tab('General')
            ->with('General')
                ->add('username')
                ->add('email')
                ->add('plainPassword', 'text', array(
                    'required' => (!$this->getSubject() || is_null($this->getSubject()->getId()))
                ))
            ->end()
		->end()
		->tab('Groups')
            ->with('Groups')
                ->add('groups', null, array(
                    'required' => false,
                ))
            ->end()
		->end();
    }


//	/**
//	 * @param mixed $object
//	 * @return mixed|void
//	 */
//	public function prePersist($object)
//	{
//		if($object->getBranch()){
//			foreach($object->getBranch() as $author) {
//				$author->setUser($object);
//			}
//		}
//	}

	/**
	 * @param mixed $user
	 */
	public function preUpdate($user)
	{
//		if($user->getBranch()){
//			foreach($user->getBranch() as $author) {
//				$author->setUser($user);
//			}
//		}

		$this->getUserManager()->updateCanonicalFields($user);
		$this->getUserManager()->updatePassword($user);
	}

    /**
     * @param UserManagerInterface $userManager
     */
    public function setUserManager(UserManagerInterface $userManager)
    {
        $this->userManager = $userManager;
    }

    /**
     * @return UserManagerInterface
     */
    public function getUserManager()
    {
        return $this->userManager;
    }
}
