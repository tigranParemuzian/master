<?php
/**
 * Created by PhpStorm.
 * User: tigran
 * Date: 7/25/15
 * Time: 5:54 PM
 */
namespace Bank\MainBundle\Controller\Rest;

use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations\RouteResource;
use FOS\RestBundle\Controller\Annotations as Rest;
use Symfony\Component\Validator\Constraints\DateTime;

class DataController extends FOSRestController
{
	const ENTITY = 'BankMainBundle:Currency';

	/**
	 * This function is duplicate rejected info
	 * @Rest\View()
	 *
	 */
	public function getDataAction()
	{
		$ip = $this->container->get('request')->getClientIp();

		//Get info from base
		$em = $this->getDoctrine()->getManager();

		$originalInfo = $em->getRepository('BankMainBundle:Currency')->getData();
		$originalInfoByIp = $em->getRepository('BankMainBundle:Currency')->getDataByIp($ip);
		if($originalInfoByIp != null) {
			$result = array_replace($originalInfo, $originalInfoByIp);
			return $result;
		}
		else
		{
			return $originalInfo;
		}

	}

	/**
	 * This function is duplicate rejected info
	 * @Rest\View()
	 *
	 */
	public function getDataTimeAction()
	{

		$today = new \DateTime('now');
		$today = $today->format("d.m.Y H:i:s");
	return $today;
	}
}