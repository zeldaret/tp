lbl_80A713F0:
/* 80A713F0  3C 80 80 A7 */	lis r4, __vt__11J3DTexNoAnm@ha
/* 80A713F4  38 04 3B DC */	addi r0, r4, __vt__11J3DTexNoAnm@l
/* 80A713F8  90 03 00 00 */	stw r0, 0(r3)
/* 80A713FC  38 80 00 00 */	li r4, 0
/* 80A71400  B0 83 00 04 */	sth r4, 4(r3)
/* 80A71404  38 00 00 01 */	li r0, 1
/* 80A71408  B0 03 00 06 */	sth r0, 6(r3)
/* 80A7140C  90 83 00 08 */	stw r4, 8(r3)
/* 80A71410  4E 80 00 20 */	blr 
