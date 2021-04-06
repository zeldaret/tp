lbl_80078FAC:
/* 80078FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078FB0  7C 08 02 A6 */	mflr r0
/* 80078FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078FBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80078FC0  41 82 00 1C */	beq lbl_80078FDC
/* 80078FC4  3C A0 80 3B */	lis r5, __vt__16cBgS_PolyPassChk@ha /* 0x803ABA44@ha */
/* 80078FC8  38 05 BA 44 */	addi r0, r5, __vt__16cBgS_PolyPassChk@l /* 0x803ABA44@l */
/* 80078FCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80078FD0  7C 80 07 35 */	extsh. r0, r4
/* 80078FD4  40 81 00 08 */	ble lbl_80078FDC
/* 80078FD8  48 25 5D 65 */	bl __dl__FPv
lbl_80078FDC:
/* 80078FDC  7F E3 FB 78 */	mr r3, r31
/* 80078FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078FE8  7C 08 03 A6 */	mtlr r0
/* 80078FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80078FF0  4E 80 00 20 */	blr 
