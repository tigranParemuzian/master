<?php

namespace Bank\MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class MainController extends Controller
{
    /**
     * @Route("/", name="homepage")
     * @Template()
     */
    public function indexAction()
    {

		return $this->redirect($this->generateUrl('sonata_admin_dashboard'));
//		$this->redirect('sona')
//		$em = $this->getDoctrine()->getManager();
//
//		$descr = $em->getRepository('BankMainBundle:Branch')->findOneByState(1);
//		$originalInfo = $em->getRepository('BankMainBundle:Currency')->findAll();
//		$media1 = $originalInfo[0]->getMedia();
//		$text = $descr->getDescription();
//		$media = $descr->getMedia();
//        return array('text'=>$text, 'media'=>$media, 'media1'=>$media1);
    }
}
