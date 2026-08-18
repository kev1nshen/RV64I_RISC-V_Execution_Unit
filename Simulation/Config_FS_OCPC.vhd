-- ============================================================
-- Config_FS_ExecUnit_Csum_SingleSW2ChSep.vhd
-- Functional simulation configuration
-- Arithmetic : ConditionalSum Adder
-- Shift      : SingleSW2ChSep
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
                            use entity work.Adder(CarrySelect);
                        end for;
                    end for;
                end for;

                for SubInst : ArithUnit
                    use entity work.ArithUnit(Wrapper);
                    for Wrapper
                        for AdderInst : Adder
                            use entity work.Adder(CarrySelect);
                        end for;
                    end for;
                end for;

                for ShiftInst : ShiftUnit
                    use entity work.ShiftUnit(SingleZU2ChRev);
                end for;

                for LogicInst : LogicUnit
                    use entity work.LogicUnit(Behavioral);
                end for;

            end for;
        end for;
    end for;
end Configuration ConfigFunctional;

