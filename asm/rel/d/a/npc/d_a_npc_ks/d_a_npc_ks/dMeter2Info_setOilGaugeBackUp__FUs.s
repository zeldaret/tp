lbl_80A5DDF4:
/* 80A5DDF4  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 80A5DDF8  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 80A5DDFC  B0 64 00 B6 */	sth r3, 0xb6(r4)
/* 80A5DE00  4E 80 00 20 */	blr 
