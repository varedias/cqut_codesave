# �߶���ʾ������
set_property PACKAGE_PIN U14 [get_ports {seg0[0]}] # ����0��aλ
set_property PACKAGE_PIN V14 [get_ports {seg0[1]}] # ����0��bλ
set_property PACKAGE_PIN W14 [get_ports {seg0[2]}] # ����0��cλ
set_property PACKAGE_PIN Y14 [get_ports {seg0[3]}] # ����0��dλ
set_property PACKAGE_PIN AA14 [get_ports {seg0[4]}] # ����0��eλ
set_property PACKAGE_PIN AB14 [get_ports {seg0[5]}] # ����0��fλ
set_property PACKAGE_PIN AC14 [get_ports {seg0[6]}] # ����0��gλ

# Ϊ������ʾ�����������������ã�seg1, seg2����������
set_property PACKAGE_PIN <pin_number> [get_ports {seg1[0]}] 
set_property PACKAGE_PIN <pin_number> [get_ports {seg1[1]}] 
set_property PACKAGE_PIN <pin_number> [get_ports {seg1[2]}] 
...
set_property PACKAGE_PIN <pin_number> [get_ports {seg2[0]}] 
set_property PACKAGE_PIN <pin_number> [get_ports {seg2[6]}] 

# ʱ�Ӻ͸�λ����
set_property PACKAGE_PIN <pin_number> [get_ports {clk}] 
set_property PACKAGE_PIN <pin_number> [get_ports {rst}]
