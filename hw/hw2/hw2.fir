circuit Example :
    module Example :
        input clk: Clock
        input a: UInt<4>
        input b: UInt<2>
        input c: UInt<3>
        output out: UInt

        reg sum: UInt, clk
        reg prod: UInt, clk

        sum <= add(a, b)
        prod <= mul(sum, c)
        out <= sub(prod, sum)
