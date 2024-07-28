// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

 contract Enum {
    enum Status {Pending, Shipped, Accepeted, Rejected, Cancelled }

    Status public status;

            // Enum returns in uint
    //Pending - 0
    //Shipped - 1
    //Accepted - 2
    //Rejected - 3
    //Cancelled - 4

    function get() public view returns (Status) {
        return status;
    }


        //How to update status
    function set(Status newStatus) public {
        status = newStatus;
    }

        //You can also update to a specific enum lie this
    function cancel() public  {
        status = Status.Cancelled;
    }
 }