lbl_807AC89C:
/* 807AC89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC8A0  7C 08 02 A6 */	mflr r0
/* 807AC8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AC8AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807AC8B0  41 82 00 1C */	beq lbl_807AC8CC
/* 807AC8B4  3C A0 80 7B */	lis r5, __vt__8cM3dGAab@ha
/* 807AC8B8  38 05 01 74 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807AC8BC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807AC8C0  7C 80 07 35 */	extsh. r0, r4
/* 807AC8C4  40 81 00 08 */	ble lbl_807AC8CC
/* 807AC8C8  4B B2 24 74 */	b __dl__FPv
lbl_807AC8CC:
/* 807AC8CC  7F E3 FB 78 */	mr r3, r31
/* 807AC8D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AC8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC8D8  7C 08 03 A6 */	mtlr r0
/* 807AC8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC8E0  4E 80 00 20 */	blr 
