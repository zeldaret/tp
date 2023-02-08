lbl_806F6D90:
/* 806F6D90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F6D94  7C 08 02 A6 */	mflr r0
/* 806F6D98  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F6D9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F6DA0  7C 7F 1B 78 */	mr r31, r3
/* 806F6DA4  80 03 06 70 */	lwz r0, 0x670(r3)
/* 806F6DA8  2C 00 00 10 */	cmpwi r0, 0x10
/* 806F6DAC  40 82 00 98 */	bne lbl_806F6E44
/* 806F6DB0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806F6DB4  38 63 00 0C */	addi r3, r3, 0xc
/* 806F6DB8  3C 80 80 6F */	lis r4, lit_4120@ha /* 0x806F7BDC@ha */
/* 806F6DBC  C0 24 7B DC */	lfs f1, lit_4120@l(r4)  /* 0x806F7BDC@l */
/* 806F6DC0  4B C3 16 6D */	bl checkPass__12J3DFrameCtrlFf
/* 806F6DC4  2C 03 00 00 */	cmpwi r3, 0
/* 806F6DC8  41 82 00 34 */	beq lbl_806F6DFC
/* 806F6DCC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806F6DD0  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806F6DD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F6DD8  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806F6DDC  38 81 00 0C */	addi r4, r1, 0xc
/* 806F6DE0  38 A0 00 00 */	li r5, 0
/* 806F6DE4  38 C0 FF FF */	li r6, -1
/* 806F6DE8  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806F6DEC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F6DF0  7D 89 03 A6 */	mtctr r12
/* 806F6DF4  4E 80 04 21 */	bctrl 
/* 806F6DF8  48 00 00 4C */	b lbl_806F6E44
lbl_806F6DFC:
/* 806F6DFC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806F6E00  38 63 00 0C */	addi r3, r3, 0xc
/* 806F6E04  3C 80 80 6F */	lis r4, lit_4121@ha /* 0x806F7BE0@ha */
/* 806F6E08  C0 24 7B E0 */	lfs f1, lit_4121@l(r4)  /* 0x806F7BE0@l */
/* 806F6E0C  4B C3 16 21 */	bl checkPass__12J3DFrameCtrlFf
/* 806F6E10  2C 03 00 00 */	cmpwi r3, 0
/* 806F6E14  41 82 00 30 */	beq lbl_806F6E44
/* 806F6E18  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806F6E1C  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806F6E20  90 01 00 08 */	stw r0, 8(r1)
/* 806F6E24  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806F6E28  38 81 00 08 */	addi r4, r1, 8
/* 806F6E2C  38 A0 00 00 */	li r5, 0
/* 806F6E30  38 C0 FF FF */	li r6, -1
/* 806F6E34  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806F6E38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F6E3C  7D 89 03 A6 */	mtctr r12
/* 806F6E40  4E 80 04 21 */	bctrl 
lbl_806F6E44:
/* 806F6E44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F6E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F6E4C  7C 08 03 A6 */	mtlr r0
/* 806F6E50  38 21 00 20 */	addi r1, r1, 0x20
/* 806F6E54  4E 80 00 20 */	blr 
