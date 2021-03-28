lbl_80BCD424:
/* 80BCD424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD428  7C 08 02 A6 */	mflr r0
/* 80BCD42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCD434  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCD438  41 82 00 1C */	beq lbl_80BCD454
/* 80BCD43C  3C A0 80 BD */	lis r5, __vt__8cM3dGAab@ha
/* 80BCD440  38 05 EC 14 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BCD444  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BCD448  7C 80 07 35 */	extsh. r0, r4
/* 80BCD44C  40 81 00 08 */	ble lbl_80BCD454
/* 80BCD450  4B 70 18 EC */	b __dl__FPv
lbl_80BCD454:
/* 80BCD454  7F E3 FB 78 */	mr r3, r31
/* 80BCD458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCD45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD460  7C 08 03 A6 */	mtlr r0
/* 80BCD464  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD468  4E 80 00 20 */	blr 
