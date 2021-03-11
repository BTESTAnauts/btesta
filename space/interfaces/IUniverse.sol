pragma solidity 0.5.16;

interface IUniverse {
    function planet() external view returns (address);
    function hqBase() external view returns (address);
    function universe() external view returns (address);
    function planetShare() external view returns (uint256);
    function hqBaseShare() external view returns (uint256);
    function universeShare() external view returns (uint256);
}