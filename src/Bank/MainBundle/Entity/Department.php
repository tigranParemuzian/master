<?php

namespace Bank\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;

/**
 * Department
 *
 * @ORM\Table(name="department")
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks()
 */
class Department
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     * @Gedmo\Slug(fields={"name"})
     * @ORM\Column(name="slag", type="string", length=255, unique=true)
     */
    private $slag;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Workers", mappedBy="department")
     */
    private $workers;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Cameras", mappedBy="department")
     */
    private $cameras;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="Bank\MainBundle\Entity\Building", inversedBy="department")
     * @ORM\JoinColumn(name="building_id", referencedColumnName="id")
     */
    private $building;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->workers = new \Doctrine\Common\Collections\ArrayCollection();
        $this->cameras = new \Doctrine\Common\Collections\ArrayCollection();
    }

    function __toString()
    {
        return   $this->name ? $this->name : '';
    }


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Department
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set slag
     *
     * @param string $slag
     * @return Department
     */
    public function setSlag($slag)
    {
        $this->slag = $slag;

        return $this;
    }

    /**
     * Get slag
     *
     * @return string 
     */
    public function getSlag()
    {
        return $this->slag;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Department
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Add workers
     *
     * @param \Bank\MainBundle\Entity\Workers $workers
     * @return Department
     */
    public function addWorker(\Bank\MainBundle\Entity\Workers $workers)
    {
        $this->workers[] = $workers;

        return $this;
    }

    /**
     * Remove workers
     *
     * @param \Bank\MainBundle\Entity\Workers $workers
     */
    public function removeWorker(\Bank\MainBundle\Entity\Workers $workers)
    {
        $this->workers->removeElement($workers);
    }

    /**
     * Get workers
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getWorkers()
    {
        return $this->workers;
    }

    /**
     * Add cameras
     *
     * @param \Bank\MainBundle\Entity\Cameras $cameras
     * @return Department
     */
    public function addCamera(\Bank\MainBundle\Entity\Cameras $cameras)
    {
        $this->cameras[] = $cameras;

        return $this;
    }

    /**
     * Remove cameras
     *
     * @param \Bank\MainBundle\Entity\Cameras $cameras
     */
    public function removeCamera(\Bank\MainBundle\Entity\Cameras $cameras)
    {
        $this->cameras->removeElement($cameras);
    }

    /**
     * Get cameras
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCameras()
    {
        return $this->cameras;
    }

    /**
     * Set building
     *
     * @param \Bank\MainBundle\Entity\Building $building
     * @return Department
     */
    public function setBuilding(\Bank\MainBundle\Entity\Building $building = null)
    {
        $this->building = $building;

        return $this;
    }

    /**
     * Get building
     *
     * @return \Bank\MainBundle\Entity\Building 
     */
    public function getBuilding()
    {
        return $this->building;
    }
}
