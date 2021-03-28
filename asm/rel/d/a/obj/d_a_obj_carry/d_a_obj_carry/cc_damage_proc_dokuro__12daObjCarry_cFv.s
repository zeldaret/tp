lbl_80476F88:
/* 80476F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476F8C  7C 08 02 A6 */	mflr r0
/* 80476F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476F94  4B FF FB 71 */	bl cc_damage_proc_kotubo__12daObjCarry_cFv
/* 80476F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476F9C  7C 08 03 A6 */	mtlr r0
/* 80476FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80476FA4  4E 80 00 20 */	blr 
