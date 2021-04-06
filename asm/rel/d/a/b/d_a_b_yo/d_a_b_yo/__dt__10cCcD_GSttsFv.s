lbl_8063959C:
/* 8063959C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806395A0  7C 08 02 A6 */	mflr r0
/* 806395A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806395A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806395AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806395B0  41 82 00 1C */	beq lbl_806395CC
/* 806395B4  3C A0 80 64 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80639EB4@ha */
/* 806395B8  38 05 9E B4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80639EB4@l */
/* 806395BC  90 1F 00 00 */	stw r0, 0(r31)
/* 806395C0  7C 80 07 35 */	extsh. r0, r4
/* 806395C4  40 81 00 08 */	ble lbl_806395CC
/* 806395C8  4B C9 57 75 */	bl __dl__FPv
lbl_806395CC:
/* 806395CC  7F E3 FB 78 */	mr r3, r31
/* 806395D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806395D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806395D8  7C 08 03 A6 */	mtlr r0
/* 806395DC  38 21 00 10 */	addi r1, r1, 0x10
/* 806395E0  4E 80 00 20 */	blr 
