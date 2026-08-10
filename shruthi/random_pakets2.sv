class memory;

    rand bit [7:0] address;

    constraint valid_address {
        address inside {[16:255]};
    }

endclass


module tb;

    memory mem;

    initial begin

        mem = new();

        repeat (20) begin

            if (mem.randomize())
                $display("Random Address = %0d", mem.address);
            else
                $display("Randomization failed");

        end

    end

endmodule
