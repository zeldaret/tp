lbl_80C03DF0:
/* 80C03DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C03DF4  7C 08 02 A6 */	mflr r0
/* 80C03DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C03DFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C03E00  7C 7F 1B 78 */	mr r31, r3
/* 80C03E04  2C 04 00 00 */	cmpwi r4, 0
/* 80C03E08  41 82 00 10 */	beq lbl_80C03E18
/* 80C03E0C  38 80 00 0A */	li r4, 0xa
/* 80C03E10  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C03E14  4B FF D5 9D */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03E18:
/* 80C03E18  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C03E1C  38 63 00 0C */	addi r3, r3, 0xc
/* 80C03E20  3C 80 80 C1 */	lis r4, lit_6321@ha /* 0x80C0FCDC@ha */
/* 80C03E24  C0 24 FC DC */	lfs f1, lit_6321@l(r4)  /* 0x80C0FCDC@l */
/* 80C03E28  4B 72 46 05 */	bl checkPass__12J3DFrameCtrlFf
/* 80C03E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80C03E30  41 82 00 2C */	beq lbl_80C03E5C
/* 80C03E34  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050088@ha */
/* 80C03E38  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00050088@l */
/* 80C03E3C  90 01 00 08 */	stw r0, 8(r1)
/* 80C03E40  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C03E44  38 81 00 08 */	addi r4, r1, 8
/* 80C03E48  38 A0 FF FF */	li r5, -1
/* 80C03E4C  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C03E50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C03E54  7D 89 03 A6 */	mtctr r12
/* 80C03E58  4E 80 04 21 */	bctrl 
lbl_80C03E5C:
/* 80C03E5C  38 60 00 01 */	li r3, 1
/* 80C03E60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C03E64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C03E68  7C 08 03 A6 */	mtlr r0
/* 80C03E6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C03E70  4E 80 00 20 */	blr 
