<?php

namespace Bank\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;

/**
 * Building
 *
 * @ORM\Table(name="building")
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks()
 */
class Building
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
     * @ORM\Column(name="slag", type="string", length=255, nullable=false, unique=true)
     */
    private $slag;

    /**
     * @var string
     *
     * @ORM\Column(name="address", type="string", length=255)
     */
    private $address;

    /**
     * @var integer
     *
     * @ORM\Column(name="enter_count", type="integer")
     */
    private $enterCount;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="opened", type="time")
     */
    private $opened;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="closed", type="time")
     */
    private $closed;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Department", mappedBy="building")
     */
    private $department;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="Bank\MainBundle\Entity\Enter", mappedBy="building")
     */
    private $enter;

    function __toString()
    {
        return   $this->name ? $this->name : '';
    }


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->department = new \Doctrine\Common\Collections\ArrayCollection();
        $this->enter = new \Doctrine\Common\Collections\ArrayCollection();
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
     * @return Building
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
     * @return Building
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
     * Set address
     *
     * @param string $address
     * @return Building
     */
    public function setAddress($address)
    {
        $this->address = $address;

        return $this;
    }

    /**
     * Get address
     *
     * @return string 
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * Set enterCount
     *
     * @param integer $enterCount
     * @return Building
     */
    public function setEnterCount($enterCount)
    {
        $this->enterCount = $enterCount;

        return $this;
    }

    /**
     * Get enterCount
     *
     * @return integer 
     */
    public function getEnterCount()
    {
        return $this->enterCount;
    }

    /**
     * Set opened
     *
     * @param \DateTime $opened
     * @return Building
     */
    public function setOpened($opened)
    {
        $this->opened = $opened;

        return $this;
    }

    /**
     * Get opened
     *
     * @return \DateTime 
     */
    public function getOpened()
    {
        return $this->opened;
    }

    /**
     * Set closed
     *
     * @param \DateTime $closed
     * @return Building
     */
    public function setClosed($closed)
    {
        $this->closed = $closed;

        return $this;
    }

    /**
     * Get closed
     *
     * @return \DateTime 
     */
    public function getClosed()
    {
        return $this->closed;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Building
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
     * Add department
     *
     * @param \Bank\MainBundle\Entity\Department $department
     * @return Building
     */
    public function addDepartment(\Bank\MainBundle\Entity\Department $department)
    {
        $this->department[] = $department;

        return $this;
    }

    /**
     * Remove department
     *
     * @param \Bank\MainBundle\Entity\Department $department
     */
    public function removeDepartment(\Bank\MainBundle\Entity\Department $department)
    {
        $this->department->removeElement($department);
    }

    /**
     * Get department
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getDepartment()
    {
        return $this->department;
    }

    /**
     * Add enter
     *
     * @param \Bank\MainBundle\Entity\Enter $enter
     * @return Building
     */
    public function addEnter(\Bank\MainBundle\Entity\Enter $enter)
    {
        $this->enter[] = $enter;

        return $this;
    }

    /**
     * Remove enter
     *
     * @param \Bank\MainBundle\Entity\Enter $enter
     */
    public function removeEnter(\Bank\MainBundle\Entity\Enter $enter)
    {
        $this->enter->removeElement($enter);
    }

    /**
     * Get enter
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getEnter()
    {
        return $this->enter;
    }
}
