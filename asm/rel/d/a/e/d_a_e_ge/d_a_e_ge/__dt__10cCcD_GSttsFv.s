lbl_806CCA10:
/* 806CCA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CCA14  7C 08 02 A6 */	mflr r0
/* 806CCA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CCA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CCA20  7C 7F 1B 79 */	or. r31, r3, r3
/* 806CCA24  41 82 00 1C */	beq lbl_806CCA40
/* 806CCA28  3C A0 80 6D */	lis r5, __vt__10cCcD_GStts@ha /* 0x806CD2F0@ha */
/* 806CCA2C  38 05 D2 F0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806CD2F0@l */
/* 806CCA30  90 1F 00 00 */	stw r0, 0(r31)
/* 806CCA34  7C 80 07 35 */	extsh. r0, r4
/* 806CCA38  40 81 00 08 */	ble lbl_806CCA40
/* 806CCA3C  4B C0 23 01 */	bl __dl__FPv
lbl_806CCA40:
/* 806CCA40  7F E3 FB 78 */	mr r3, r31
/* 806CCA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CCA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CCA4C  7C 08 03 A6 */	mtlr r0
/* 806CCA50  38 21 00 10 */	addi r1, r1, 0x10
/* 806CCA54  4E 80 00 20 */	blr 
