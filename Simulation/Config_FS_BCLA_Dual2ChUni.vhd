-- ============================================================
-- Config_FS_ExecUnit_BCLA_Dual2ChUni.vhd
-- Functional simulation configuration
-- Arithmetic : Block Carry Look Ahead Adder
-- Shift      : Dual2ChUni
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
                            use entity work.Adder(BCLA);
                        end for;
                    end for;
                end for;

                for SubInst : ArithUnit
                    use entity work.ArithUnit(Wrapper);
                    for Wrapper
                        for AdderInst : Adder
                            use entity work.Adder(BCLA);
                        end for;
                    end for;
                end for;

                for ShiftInst : ShiftUnit
                    use entity work.ShiftUnit(Dual2ChUni);
                end for;

                for LogicInst : LogicUnit
                    use entity work.LogicUnit(Behavioral);
                end for;

            end for;
        end for;
    end for;
end Configuration ConfigFunctional;

