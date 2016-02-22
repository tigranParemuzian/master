<?php

namespace Bank\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Enter
 *
 * @ORM\Table(name="enter")
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks()
 */
class Enter
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
     * @var integer
     *
     * @ORM\Column(name="number", type="integer", unique=true)
     */
    private $number;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Cameras", mappedBy="enter")
     */
    private $cameras;

    /**
     *
     * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Turnstile", mappedBy="enter")
     */
    private $turnstile;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="Bank\MainBundle\Entity\Building", inversedBy="enter")
     * @ORM\JoinColumn(name="building_id", referencedColumnName="id")
     */
    private $building;

    function __toString()
    {
        return   $this->name ? $this->building->getName() . ' ' . $this->name : '';
    }


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->cameras = new \Doctrine\Common\Collections\ArrayCollection();
        $this->turnstile = new \Doctrine\Common\Collections\ArrayCollection();
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
     * @return Enter
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
     * Set number
     *
     * @param integer $number
     * @return Enter
     */
    public function setNumber($number)
    {
        $this->number = $number;

        return $this;
    }

    /**
     * Get number
     *
     * @return integer 
     */
    public function getNumber()
    {
        return $this->number;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Enter
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
     * Add cameras
     *
     * @param \Bank\MainBundle\Entity\Cameras $cameras
     * @return Enter
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
     * Add turnstile
     *
     * @param \Bank\MainBundle\Entity\Turnstile $turnstile
     * @return Enter
     */
    public function addTurnstile(\Bank\MainBundle\Entity\Turnstile $turnstile)
    {
        $this->turnstile[] = $turnstile;

        return $this;
    }

    /**
     * Remove turnstile
     *
     * @param \Bank\MainBundle\Entity\Turnstile $turnstile
     */
    public function removeTurnstile(\Bank\MainBundle\Entity\Turnstile $turnstile)
    {
        $this->turnstile->removeElement($turnstile);
    }

    /**
     * Get turnstile
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getTurnstile()
    {
        return $this->turnstile;
    }

    /**
     * Set building
     *
     * @param \Bank\MainBundle\Entity\Building $building
     * @return Enter
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
