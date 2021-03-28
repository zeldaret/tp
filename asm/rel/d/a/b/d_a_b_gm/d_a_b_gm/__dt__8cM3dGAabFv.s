lbl_805F3C98:
/* 805F3C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3C9C  7C 08 02 A6 */	mflr r0
/* 805F3CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3CA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F3CAC  41 82 00 1C */	beq lbl_805F3CC8
/* 805F3CB0  3C A0 80 5F */	lis r5, __vt__8cM3dGAab@ha
/* 805F3CB4  38 05 47 34 */	addi r0, r5, __vt__8cM3dGAab@l
/* 805F3CB8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805F3CBC  7C 80 07 35 */	extsh. r0, r4
/* 805F3CC0  40 81 00 08 */	ble lbl_805F3CC8
/* 805F3CC4  4B CD B0 78 */	b __dl__FPv
lbl_805F3CC8:
/* 805F3CC8  7F E3 FB 78 */	mr r3, r31
/* 805F3CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3CD4  7C 08 03 A6 */	mtlr r0
/* 805F3CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3CDC  4E 80 00 20 */	blr 
