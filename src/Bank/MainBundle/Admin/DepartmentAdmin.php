<?php

namespace Bank\MainBundle\Admin;


use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Route\RouteCollection;
use Sonata\AdminBundle\Show\ShowMapper;

class DepartmentAdmin extends Admin
{
	/**
	 * @param RouteCollection $collection
	 */
	protected function configureRoutes(RouteCollection $collection)
	{
		if ($this->isGranted('OPERATOR')){
			$collection
				->remove('acl');
		}
		$collection->clearExcept(array('create', 'list', 'delete', 'edit', 'show', 'acl'));

	}

	// Fields to be shown on create/edit forms
	protected function configureFormFields(FormMapper $formMapper)
	{
		$formMapper
		->tab('General')
			->with('General')
			->add('name')
			->add('description')
			->end()
		->end()
		->tab('Parent')
			->with('Parent')
			->add('workers')
			->add('cameras')
			->add('building', null, array('label'=>'Select Building'))
			->end()
		->end()
		;
	}

	// Fields to be shown on filter forms
	protected function configureDatagridFilters(DatagridMapper $datagridMapper)
	{
		$datagridMapper
			->add('name')
			->add('description')
			->add('workers')
			->add('cameras')
			->add('building')
		;
	}

	// Fields to be shown on lists
	protected function configureListFields(ListMapper $listMapper)
	{
		$listMapper
			->addIdentifier('id')
			->addIdentifier('name')
			->addIdentifier('description')
			->add('workers')
			->add('cameras')
			->add('building')
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
			->add('description')
			->add('workers')
			->add('cameras')
			->add('building')
		;
	}
}