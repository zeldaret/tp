lbl_8049DC00:
/* 8049DC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049DC04  7C 08 02 A6 */	mflr r0
/* 8049DC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049DC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049DC10  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049DC14  41 82 00 1C */	beq lbl_8049DC30
/* 8049DC18  3C A0 80 4A */	lis r5, __vt__10cCcD_GStts@ha /* 0x8049DEDC@ha */
/* 8049DC1C  38 05 DE DC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8049DEDC@l */
/* 8049DC20  90 1F 00 00 */	stw r0, 0(r31)
/* 8049DC24  7C 80 07 35 */	extsh. r0, r4
/* 8049DC28  40 81 00 08 */	ble lbl_8049DC30
/* 8049DC2C  4B E3 11 11 */	bl __dl__FPv
lbl_8049DC30:
/* 8049DC30  7F E3 FB 78 */	mr r3, r31
/* 8049DC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049DC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049DC3C  7C 08 03 A6 */	mtlr r0
/* 8049DC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8049DC44  4E 80 00 20 */	blr 
