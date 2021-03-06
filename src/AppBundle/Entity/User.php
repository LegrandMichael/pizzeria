<?php

namespace AppBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * User
 *
 * @ORM\Table(name="usr_user")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UsersRepository")
 */
class User extends BaseUser
{
    /**
     * @var int
     *
     * @ORM\Column(name="usr_oid", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @var string
     *
     * @ORM\Column(name="usr_first_name", type="string", length=255)
     */
    private $firstName;

    /**
     * @var string
     *
     * @ORM\Column(name="usr_last_name", type="string", length=255)
     */
    private $lastName;


    /**
     * @var string
     *
     * @ORM\Column(name="usr_mail", type="string", length=255, unique=true)
     */
    private $mail;

    /**
     * @var string
     *
     * @ORM\Column(name="usr_nickname", type="string", length=255, unique=true)
     */
    private $nickname;

    /**
     * @var string
     *
     * @ORM\Column(name="usr_gender", type="string", length=5)
     */
    private $gender;

    /**
     * @var string
     *
     * @ORM\Column(name="usr_birth_date", type="string", length=10)
     */
    private $birthDate;

    /**
     * @var string
     *
     * @ORM\Column(name="usr_phone_number", type="string", length=9)
     */
    private $phoneNumber;

    /**
     * @var string
     *
     * @ORM\Column(name="usr_address", type="string", length=255)
     */
    private $Address;

    /**
     * @var int
     * 
     * @ORM\Column(name="usr_zip_code", type="integer", length=5)
     */
    private $zipCode;

    /**
     * Get zipCode
     * 
     * @return int
     */
    public function getZipCode()
    {
        return $this->zipcode;
    }

    /**
     * Set zipCode
     * 
     * @return zipCode
     */
    public function setZipCode()
    {
        $this->zipCode=$zipCode;

        return $this;
    }


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set firstName
     *
     * @param string $firstName
     *
     * @return Users
     */
    public function setfirstName($firstName)
    {
        $this->firstName = $firstName;

        return $this;
    }

    /**
     * Get firstName
     *
     * @return string
     */
    public function getfirstName()
    {
        return $this->firstName;
    }

    /**
     * Set lastName
     *
     * @param string $lastName
     *
     * @return Users
     */
    public function setlastName($lastName)
    {
        $this->lastName = $lastName;

        return $this;
    }

    /**
     * Get lastName
     *
     * @return string
     */
    public function getlastName()
    {
        return $this->lastName;
    }

    /**
     * Set mail
     *
     * @param string $mail
     *
     * @return Users
     */
    public function setMail($mail)
    {
        $this->mail = $mail;

        return $this;
    }

    /**
     * Get mail
     *
     * @return string
     */
    public function getMail()
    {
        return $this->mail;
    }

    /**
     * Set nickname
     *
     * @param string $nickname
     *
     * @return Users
     */
    public function setnickname($nickname)
    {
        $this->nickname = $nickname;

        return $this;
    }

    /**
     * Get nickname
     *
     * @return string
     */
    public function getnickname()
    {
        return $this->nickname;
    }

    /**
     * Set gender
     *
     * @param string $gender
     *
     * @return Users
     */
    public function setgender($gender)
    {
        $this->gender = $gender;

        return $this;
    }

    /**
     * Get gender
     *
     * @return string
     */
    public function getgender()
    {
        return $this->gender;
    }

    /**
     * Set birthDate
     *
     * @param string $birthDate
     *
     * @return Users
     */
    public function setbirthDate($birthDate)
    {
        $this->birthDate = $birthDate;

        return $this;
    }

    /**
     * Get birthDate
     *
     * @return string
     */
    public function getbirthDate()
    {
        return $this->birthDate;
    }

    /**
     * Set phoneNumber
     *
     * @param string $phoneNumber
     *
     * @return Users
     */
    public function setphoneNumber($phoneNumber)
    {
        $this->phoneNumber = $phoneNumber;

        return $this;
    }

    /**
     * Get phoneNumber
     *
     * @return string
     */
    public function getphoneNumber()
    {
        return $this->phoneNumber;
    }

    /**
     * Set Address
     *
     * @param string $Address
     *
     * @return Users
     */
    public function setAddress($Address)
    {
        $this->Address = $Address;

        return $this;
    }

    /**
     * Get Address
     *
     * @return string
     */
    public function getAddress()
    {
        return $this->Address;
    }
}

