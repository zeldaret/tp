lbl_8030A410:
/* 8030A410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A414  7C 08 02 A6 */	mflr r0
/* 8030A418  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030A420  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030A424  41 82 00 1C */	beq lbl_8030A440
/* 8030A428  3C A0 80 3D */	lis r5, __vt__12J2DAnmLoader@ha
/* 8030A42C  38 05 D6 F0 */	addi r0, r5, __vt__12J2DAnmLoader@l
/* 8030A430  90 1F 00 00 */	stw r0, 0(r31)
/* 8030A434  7C 80 07 35 */	extsh. r0, r4
/* 8030A438  40 81 00 08 */	ble lbl_8030A440
/* 8030A43C  4B FC 49 01 */	bl __dl__FPv
lbl_8030A440:
/* 8030A440  7F E3 FB 78 */	mr r3, r31
/* 8030A444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030A448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A44C  7C 08 03 A6 */	mtlr r0
/* 8030A450  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A454  4E 80 00 20 */	blr 
