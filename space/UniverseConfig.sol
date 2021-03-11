pragma solidity 0.5.16;
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "./interfaces/IUniverse.sol";

contract UniverseConfig is IUniverse, Ownable {
    address public universe;
    address public planet;
    address public hqBase;
    address public token;
    
    uint256 public universeShare;
    uint256 public planetShare;
    uint256 public hqBaseShare;
    
    constructor(
        address _universe, 
        address _planet,
        address _hqBase, 
        uint256 _universeShare,
        uint256 _planetShare,
        uint256 _hqBaseShare,
        address _token
    ) public {
        setParams(_universe, _planet, _hqBase, _universeShare, _planetShare, _hqBaseShare, _token);
    }

    function setParams(
        address _universe, 
        address _planet,
        address _hqBase, 
        uint256 _universeShare,
        uint256 _planetShare,
        uint256 _hqBaseShare,
        address _token
    ) public onlyOwner {
        universe = _universe;
        planet = _planet;
        hqBase = _hqBase;
        universeShare = _universeShare;
        planetShare = _planetShare;
        hqBaseShare = _hqBaseShare;
        token = _token;
    }

    function setUniverse(address _universe) public onlyOwner {
        universe = _universe;
    }

    function setPlanet(address _planet) public onlyOwner {
        planet = _planet;
    }

    function setHqBase(address _hqBase) public onlyOwner {
        hqBase = _hqBase;
    }

    function setUniverseShare(uint256 _universeShare) public onlyOwner {
        universeShare = _universeShare;
    }

    function setPlanetShare(uint256 _planetShare) public onlyOwner {
        planetShare = _planetShare;
    }

    function setHqBaseShare(uint256 _hqBaseShare) public onlyOwner {
        hqBaseShare = _hqBaseShare;
    }

    function setToken(address _token) public onlyOwner {
        token = _token;
    }
}