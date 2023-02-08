lbl_806FEF48:
/* 806FEF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FEF4C  7C 08 02 A6 */	mflr r0
/* 806FEF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FEF54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FEF58  7C 7F 1B 79 */	or. r31, r3, r3
/* 806FEF5C  41 82 00 30 */	beq lbl_806FEF8C
/* 806FEF60  3C 60 80 70 */	lis r3, __vt__10dCcD_GStts@ha /* 0x806FF814@ha */
/* 806FEF64  38 03 F8 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806FF814@l */
/* 806FEF68  90 1F 00 00 */	stw r0, 0(r31)
/* 806FEF6C  41 82 00 10 */	beq lbl_806FEF7C
/* 806FEF70  3C 60 80 70 */	lis r3, __vt__10cCcD_GStts@ha /* 0x806FF808@ha */
/* 806FEF74  38 03 F8 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806FF808@l */
/* 806FEF78  90 1F 00 00 */	stw r0, 0(r31)
lbl_806FEF7C:
/* 806FEF7C  7C 80 07 35 */	extsh. r0, r4
/* 806FEF80  40 81 00 0C */	ble lbl_806FEF8C
/* 806FEF84  7F E3 FB 78 */	mr r3, r31
/* 806FEF88  4B BC FD B5 */	bl __dl__FPv
lbl_806FEF8C:
/* 806FEF8C  7F E3 FB 78 */	mr r3, r31
/* 806FEF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FEF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FEF98  7C 08 03 A6 */	mtlr r0
/* 806FEF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 806FEFA0  4E 80 00 20 */	blr 
