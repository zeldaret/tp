lbl_80CD81F8:
/* 80CD81F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD81FC  7C 08 02 A6 */	mflr r0
/* 80CD8200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD8208  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD820C  41 82 00 1C */	beq lbl_80CD8228
/* 80CD8210  3C A0 80 CE */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CD8478@ha */
/* 80CD8214  38 05 84 78 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CD8478@l */
/* 80CD8218  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD821C  7C 80 07 35 */	extsh. r0, r4
/* 80CD8220  40 81 00 08 */	ble lbl_80CD8228
/* 80CD8224  4B 5F 6B 19 */	bl __dl__FPv
lbl_80CD8228:
/* 80CD8228  7F E3 FB 78 */	mr r3, r31
/* 80CD822C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD8230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8234  7C 08 03 A6 */	mtlr r0
/* 80CD8238  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD823C  4E 80 00 20 */	blr 
