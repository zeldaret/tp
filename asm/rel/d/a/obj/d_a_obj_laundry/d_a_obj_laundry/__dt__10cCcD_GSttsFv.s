lbl_80C51FB0:
/* 80C51FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51FB4  7C 08 02 A6 */	mflr r0
/* 80C51FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51FC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51FC4  41 82 00 1C */	beq lbl_80C51FE0
/* 80C51FC8  3C A0 80 C5 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C52144@ha */
/* 80C51FCC  38 05 21 44 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C52144@l */
/* 80C51FD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C51FD4  7C 80 07 35 */	extsh. r0, r4
/* 80C51FD8  40 81 00 08 */	ble lbl_80C51FE0
/* 80C51FDC  4B 67 CD 61 */	bl __dl__FPv
lbl_80C51FE0:
/* 80C51FE0  7F E3 FB 78 */	mr r3, r31
/* 80C51FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51FEC  7C 08 03 A6 */	mtlr r0
/* 80C51FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51FF4  4E 80 00 20 */	blr 
