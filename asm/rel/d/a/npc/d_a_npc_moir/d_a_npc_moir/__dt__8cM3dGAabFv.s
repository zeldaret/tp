lbl_80A7C338:
/* 80A7C338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7C33C  7C 08 02 A6 */	mflr r0
/* 80A7C340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7C344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7C348  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7C34C  41 82 00 1C */	beq lbl_80A7C368
/* 80A7C350  3C A0 80 A8 */	lis r5, __vt__8cM3dGAab@ha
/* 80A7C354  38 05 3D 48 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A7C358  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A7C35C  7C 80 07 35 */	extsh. r0, r4
/* 80A7C360  40 81 00 08 */	ble lbl_80A7C368
/* 80A7C364  4B 85 29 D8 */	b __dl__FPv
lbl_80A7C368:
/* 80A7C368  7F E3 FB 78 */	mr r3, r31
/* 80A7C36C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7C370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7C374  7C 08 03 A6 */	mtlr r0
/* 80A7C378  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7C37C  4E 80 00 20 */	blr 
