<?php

namespace Bank\MainBundle\Admin;


use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

class BuildingAdmin extends Admin
{

	// Fields to be shown on create/edit forms
	protected function configureFormFields(FormMapper $formMapper)
	{
		$formMapper
		->tab('General')
			->with('General')
			->add('name')
			->add('address')
			->add('enterCount', null , array('label'=> 'Enters Count'))
			->add('opened', 'time', array('label'=>'Opened Time', 'attr' => array('class' => 'fixed-time')))
			->add('closed', 'time', array('label' => 'Created at'))
			->add('description')
			->end()
		->end()
		->tab('Parent')
			->with('Parent')
			->add('department')
			->add('enter')
			->end()
		->end()
		;
	}

	// Fields to be shown on filter forms
	protected function configureDatagridFilters(DatagridMapper $datagridMapper)
	{
		$datagridMapper
			->add('name')
			->add('address')
			->add('enterCount')
			->add('opened')
			->add('closed')
			->add('description')
			->add('department')
			->add('enter')
		;
	}

	// Fields to be shown on lists
	protected function configureListFields(ListMapper $listMapper)
	{
		$listMapper
			->addIdentifier('id')
			->add('name')
			->add('address')
			->add('enterCount')
			->add('opened')
			->add('closed')
			->add('description')
			->add('department')
			->add('enter')
			->add('_action', 'actions', array(
				'actions' => array(
					'show' => array(),
					'edit' => array(),
					'delete' => array(),
				)))
		;
	}

	/**
	 * @param ShowMapper $showMapper
	 */
	protected function configureShowFields(ShowMapper $showMapper)
	{
		$showMapper
			->add('name')
			->add('address')
			->add('enterCount')
			->add('opened')
			->add('closed')
			->add('description')
			->add('department')
			->add('enter')
		;
	}
}