<?php

/*
 * This file is part of the Sonata package.
 *
 * (c) Thomas Rabaix <thomas.rabaix@sonata-project.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Bank\MediaBundle\Admin\ORM;

use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\MediaBundle\Admin\BaseMediaAdmin as Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;

class MediaAdmin extends Admin
{
	/**
	 * @param  \Sonata\AdminBundle\Datagrid\DatagridMapper $datagridMapper
	 * @return void
	 */
	protected function configureDatagridFilters(DatagridMapper $datagridMapper)
	{
		$datagridMapper
			->add('name')
//            ->add('providerReference')
//            ->add('enabled')
			->add('context')
		;

		$providers = array();

		$providerNames = (array) $this->pool->getProviderNamesByContext($this->getPersistentParameter('context', $this->pool->getDefaultContext()));
		foreach ($providerNames as $name) {
			$providers[$name] = $name;
		}

		$datagridMapper->add('providerName', 'doctrine_orm_choice', array(
			'field_options'=> array(
				'choices' => $providers,
				'required' => false,
				'multiple' => false,
				'expanded' => false,
			),
			'field_type'=> 'choice',
		));
	}

	/**
	 * {@inheritdoc}
	 */
	protected function configureListFields(ListMapper $listMapper)
	{
		$listMapper
			->add('custom', 'string', array('template' => 'SonataMediaBundle:MediaAdmin:list_custom.html.twig'))
//			->add('enabled', 'boolean', array('editable' => true))

		;
	}
}
