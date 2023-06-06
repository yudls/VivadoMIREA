`timescale 1ns / 1ps

module Filter
(
 input clock,
 input isClockEnabled,
 input signal,

 output reg buttomSignal = 0,
 output reg topSignal = 0
);

wire syncedSignal;
wire [3:0] count;

Synchronization synchronizationSignal(.clock(clock), .asyncSignal(signal), .outSignal(syncedSignal));
Counter #(1, 16) thisCounter(.clock(clock), .isEnabled(isClockEnabled), .isResetted(syncedSignal ~^ topSignal), .out(count));

always @(posedge clock)
begin
     buttomSignal = (count == 4'd15);

     if (buttomSignal)
        topSignal = syncedSignal;
end

endmodule