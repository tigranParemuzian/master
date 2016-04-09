<?php

namespace Bank\MainBundle\Admin;


use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Route\RouteCollection;
use Sonata\AdminBundle\Show\ShowMapper;

class TurnstileAdmin extends Admin
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
			->add('name', null, array('label'=>'Name'))
			->add('number', 'number', array('label'=>'Number'))
			->add('description', 'textarea', array('label'=>'Description', 'required'=>false))
			->end()
		->end()
		->tab('Parent')
			->with('Parent')
			->add('enter', null, array('label'=>'Select Enter'))
			->end()
		->end()
		;
	}

	// Fields to be shown on filter forms
	protected function configureDatagridFilters(DatagridMapper $datagridMapper)
	{
		$datagridMapper
			->add('name')
			->add('number')
			->add('enter')
		;
	}

	// Fields to be shown on lists
	protected function configureListFields(ListMapper $listMapper)
	{
		$listMapper
			->addIdentifier('id')
			->addIdentifier('name')
			->addIdentifier('number')
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
			->add('number')
			->add('enter')
		;
	}
}