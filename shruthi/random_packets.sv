class packet;

    rand int data;
    
    int packet_count;

    constraint data_range {
        if (packet_count < 50)
            data inside {[100:500]};
        else
            data < 100;
    }

endclass


module tb;

    packet pkt;

    initial begin

        pkt = new();

        for (int i = 0; i < 100; i++) begin

            pkt.packet_count = i;

            if (pkt.randomize())
                $display("Packet %0d : Data = %0d", i+1, pkt.data);
            else
                $display("Randomization failed");

        end

    end

endmodule