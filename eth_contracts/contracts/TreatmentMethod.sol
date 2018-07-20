pragma solidity ^0.4.23;

import "./Libraries.sol";
import "./BaseContracts.sol";
import "./Stages.sol";

contract TreatmentMethod is BaseContract {
    string public name;
    uint public start_time;
    uint public stop_time;
    string public description;

    address public treatment_stage;

    constructor(address _addr, string _name, uint _start_time, uint _stop_time, string _description) public {
        require(TreatmentStage(_addr).classtype() == UtilLib.class.Stage);
        require(TreatmentStage(_addr).stagetype() == UtilLib.stage.TreatmentStage);
        name = _name;
        start_time = _start_time;
        stop_time = _stop_time;
        description = _description;
        treatment_stage = _addr;
        emit ContractCreated(msg.sender);
    }
}