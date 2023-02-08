lbl_80517FD4:
/* 80517FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517FD8  7C 08 02 A6 */	mflr r0
/* 80517FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517FE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80517FE8  41 82 00 1C */	beq lbl_80518004
/* 80517FEC  3C A0 80 52 */	lis r5, __vt__10cCcD_GStts@ha /* 0x805190A4@ha */
/* 80517FF0  38 05 90 A4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x805190A4@l */
/* 80517FF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80517FF8  7C 80 07 35 */	extsh. r0, r4
/* 80517FFC  40 81 00 08 */	ble lbl_80518004
/* 80518000  4B DB 6D 3D */	bl __dl__FPv
lbl_80518004:
/* 80518004  7F E3 FB 78 */	mr r3, r31
/* 80518008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051800C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518010  7C 08 03 A6 */	mtlr r0
/* 80518014  38 21 00 10 */	addi r1, r1, 0x10
/* 80518018  4E 80 00 20 */	blr 
