-- ============================================================
-- Config_TS_ExecUnit.vhd
-- timing simulation configuration
-- Arithmetic : structure
-- Shift      : structure
-- Target     : Cyclone IV/Arria II
-- ============================================================
Configuration ConfigTiming of TBExecUnit is
    for Sim
        for DUT : ExecUnit
            use entity work.ExecUnit(Structural);
            for Structural

                for ArithInst : ArithUnit
                    use entity work.ArithUnit(Wrapper);
                    for Wrapper
                        for AdderInst : Adder
                            use entity work.Adder(structure);
                        end for;
                    end for;
                end for;

                for SubInst : ArithUnit
                    use entity work.ArithUnit(Wrapper);
                    for Wrapper
                        for AdderInst : Adder
                            use entity work.Adder(structure);
                        end for;
                    end for;
                end for;

                for ShiftInst : ShiftUnit
                    use entity work.ShiftUnit(structure);
                end for;

                for LogicInst : LogicUnit
                    use entity work.LogicUnit(structure);
                end for;

            end for;
        end for;
    end for;
end Configuration ConfigTiming;