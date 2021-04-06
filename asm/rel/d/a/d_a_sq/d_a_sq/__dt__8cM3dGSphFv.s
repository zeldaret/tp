lbl_805A0FB0:
/* 805A0FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0FB4  7C 08 02 A6 */	mflr r0
/* 805A0FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A0FC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A0FC4  41 82 00 1C */	beq lbl_805A0FE0
/* 805A0FC8  3C A0 80 5A */	lis r5, __vt__8cM3dGSph@ha /* 0x805A12D4@ha */
/* 805A0FCC  38 05 12 D4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x805A12D4@l */
/* 805A0FD0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805A0FD4  7C 80 07 35 */	extsh. r0, r4
/* 805A0FD8  40 81 00 08 */	ble lbl_805A0FE0
/* 805A0FDC  4B D2 DD 61 */	bl __dl__FPv
lbl_805A0FE0:
/* 805A0FE0  7F E3 FB 78 */	mr r3, r31
/* 805A0FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A0FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0FEC  7C 08 03 A6 */	mtlr r0
/* 805A0FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0FF4  4E 80 00 20 */	blr 
