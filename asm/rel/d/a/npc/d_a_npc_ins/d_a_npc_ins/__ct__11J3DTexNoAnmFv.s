lbl_80A0EE70:
/* 80A0EE70  3C 80 80 A1 */	lis r4, __vt__11J3DTexNoAnm@ha /* 0x80A1450C@ha */
/* 80A0EE74  38 04 45 0C */	addi r0, r4, __vt__11J3DTexNoAnm@l /* 0x80A1450C@l */
/* 80A0EE78  90 03 00 00 */	stw r0, 0(r3)
/* 80A0EE7C  38 80 00 00 */	li r4, 0
/* 80A0EE80  B0 83 00 04 */	sth r4, 4(r3)
/* 80A0EE84  38 00 00 01 */	li r0, 1
/* 80A0EE88  B0 03 00 06 */	sth r0, 6(r3)
/* 80A0EE8C  90 83 00 08 */	stw r4, 8(r3)
/* 80A0EE90  4E 80 00 20 */	blr 
