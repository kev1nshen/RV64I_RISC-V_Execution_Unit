-- ============================================================
-- CFG_TB_ExecUnit_Rip_Brl64_C4.vhd
-- Functional simulation configuration
-- Arithmetic : Baseline ripple adder
-- Shift      : Barrel64
-- Target     : Cyclone IV
-- ============================================================
Configuration ConfigFunctional of TBExecUnit is
    for Sim
        for DUT : ExecUnit
            use entity work.ExecUnit(Structural);
            for Structural

                for ArithInst : ArithUnit
                    use entity work.ArithUnit(Wrapper);
                    for Wrapper
                        for AdderInst : Adder
                            use entity work.Adder(Baseline);
                        end for;
                    end for;
                end for;

                for SubInst : ArithUnit
                    use entity work.ArithUnit(Wrapper);
                    for Wrapper
                        for AdderInst : Adder
                            use entity work.Adder(Baseline);
                        end for;
                    end for;
                end for;

                for ShiftInst : ShiftUnit
                    use entity work.ShiftUnit(FastShift);
                end for;

                for LogicInst : LogicUnit
                    use entity work.LogicUnit(Behavioral);
                end for;

            end for;
        end for;
    end for;
end Configuration ConfigFunctional;

