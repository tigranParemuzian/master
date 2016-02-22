<?php

namespace Bank\MainBundle\Admin;


use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;

class CamerasAdmin extends Admin
{

	// Fields to be shown on create/edit forms
	protected function configureFormFields(FormMapper $formMapper)
	{
		$formMapper
		->tab('General')
			->with('General')
			->add('name', null, array('label'=>'Name'))
			->add('url', 'url', array('label'=>'URL'))
			->add('directory', 'url', array('label'=>'URL directory of history'))
			->add('description', 'textarea', array('label'=>'Description', 'required'=>false))
			->end()
		->end()
		->tab('Parent')
			->with('Parent')
			->add('department')
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
			->add('url')
			->add('directory')
			->add('department')
			->add('enter')
		;
	}

	// Fields to be shown on lists
	protected function configureListFields(ListMapper $listMapper)
	{
		$listMapper
			->addIdentifier('id')
			->addIdentifier('name')
			->addIdentifier('url')
			->addIdentifier('directory')
			->add('department')
			->add('enter')
		;
	}
}