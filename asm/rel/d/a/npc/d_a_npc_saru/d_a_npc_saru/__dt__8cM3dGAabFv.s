lbl_80AC3798:
/* 80AC3798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC379C  7C 08 02 A6 */	mflr r0
/* 80AC37A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC37A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC37A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC37AC  41 82 00 1C */	beq lbl_80AC37C8
/* 80AC37B0  3C A0 80 AC */	lis r5, __vt__8cM3dGAab@ha
/* 80AC37B4  38 05 4E EC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AC37B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AC37BC  7C 80 07 35 */	extsh. r0, r4
/* 80AC37C0  40 81 00 08 */	ble lbl_80AC37C8
/* 80AC37C4  4B 80 B5 78 */	b __dl__FPv
lbl_80AC37C8:
/* 80AC37C8  7F E3 FB 78 */	mr r3, r31
/* 80AC37CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC37D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC37D4  7C 08 03 A6 */	mtlr r0
/* 80AC37D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC37DC  4E 80 00 20 */	blr 
