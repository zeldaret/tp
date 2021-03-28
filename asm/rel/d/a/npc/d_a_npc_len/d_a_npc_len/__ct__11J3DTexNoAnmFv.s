lbl_80A64B14:
/* 80A64B14  3C 80 80 A7 */	lis r4, __vt__11J3DTexNoAnm@ha
/* 80A64B18  38 04 98 D4 */	addi r0, r4, __vt__11J3DTexNoAnm@l
/* 80A64B1C  90 03 00 00 */	stw r0, 0(r3)
/* 80A64B20  38 80 00 00 */	li r4, 0
/* 80A64B24  B0 83 00 04 */	sth r4, 4(r3)
/* 80A64B28  38 00 00 01 */	li r0, 1
/* 80A64B2C  B0 03 00 06 */	sth r0, 6(r3)
/* 80A64B30  90 83 00 08 */	stw r4, 8(r3)
/* 80A64B34  4E 80 00 20 */	blr 
