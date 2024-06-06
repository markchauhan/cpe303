# Cadence Genus(TM) Synthesis Solution, Version 18.14-s037_1, built Mar 27 2019 12:19:21

# Date: Thu Jun 06 17:07:40 2024
# Host: madhatter.ece.northwestern.edu (x86_64 w/Linux 4.18.0-553.el8_10.x86_64) (8cores*8cpus*1physical cpu*Intel(R) Core(TM) i7-9700 CPU @ 3.00GHz 12288KB)
# OS:   Red Hat Enterprise Linux release 8.10 (Ootpa)

read_hdl ../alu_conv.v
set_db library /vol/ece303/genus_tutorial/NangateOpenCellLibrary_typical.lib
set_db lef_library /vol/ece303/genus_tutorial/NangateOpenCellLibrary.lef
elaborate
current_design alu_conv
read_sdc ../alu_conv.sdc
syn_generic
syn_map
syn_opt
report_timing > timing.rpt
report timing -lint
read_sdc ../alu_conv.sdc
write_hdl > alu_conv_syn.v
report_area > area.rpt
report_timing > timing.rpt
quit
