lbl_806AFC98:
/* 806AFC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AFC9C  7C 08 02 A6 */	mflr r0
/* 806AFCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AFCA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AFCA8  7C 7F 1B 78 */	mr r31, r3
/* 806AFCAC  4B 96 90 35 */	bl fopAc_IsActor__FPv
/* 806AFCB0  2C 03 00 00 */	cmpwi r3, 0
/* 806AFCB4  41 82 00 64 */	beq lbl_806AFD18
/* 806AFCB8  28 1F 00 00 */	cmplwi r31, 0
/* 806AFCBC  41 82 00 0C */	beq lbl_806AFCC8
/* 806AFCC0  80 7F 00 04 */	lwz r3, 4(r31)
/* 806AFCC4  48 00 00 08 */	b lbl_806AFCCC
lbl_806AFCC8:
/* 806AFCC8  38 60 FF FF */	li r3, -1
lbl_806AFCCC:
/* 806AFCCC  4B 97 24 6D */	bl fpcM_IsCreating__FUi
/* 806AFCD0  2C 03 00 00 */	cmpwi r3, 0
/* 806AFCD4  40 82 00 44 */	bne lbl_806AFD18
/* 806AFCD8  A8 1F 00 08 */	lha r0, 8(r31)
/* 806AFCDC  2C 00 01 FF */	cmpwi r0, 0x1ff
/* 806AFCE0  40 82 00 38 */	bne lbl_806AFD18
/* 806AFCE4  3C 60 80 6B */	lis r3, mDt_OtamaNum__6E_DT_n@ha /* 0x806B62DC@ha */
/* 806AFCE8  38 83 62 DC */	addi r4, r3, mDt_OtamaNum__6E_DT_n@l /* 0x806B62DC@l */
/* 806AFCEC  80 64 00 00 */	lwz r3, 0(r4)
/* 806AFCF0  38 03 00 01 */	addi r0, r3, 1
/* 806AFCF4  90 04 00 00 */	stw r0, 0(r4)
/* 806AFCF8  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806AFCFC  2C 00 00 14 */	cmpwi r0, 0x14
/* 806AFD00  40 80 00 18 */	bge lbl_806AFD18
/* 806AFD04  38 80 00 01 */	li r4, 1
/* 806AFD08  54 00 10 3A */	slwi r0, r0, 2
/* 806AFD0C  3C 60 80 6B */	lis r3, mDt_OtamaNo__6E_DT_n@ha /* 0x806B62E0@ha */
/* 806AFD10  38 63 62 E0 */	addi r3, r3, mDt_OtamaNo__6E_DT_n@l /* 0x806B62E0@l */
/* 806AFD14  7C 83 01 2E */	stwx r4, r3, r0
lbl_806AFD18:
/* 806AFD18  38 60 00 00 */	li r3, 0
/* 806AFD1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AFD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AFD24  7C 08 03 A6 */	mtlr r0
/* 806AFD28  38 21 00 10 */	addi r1, r1, 0x10
/* 806AFD2C  4E 80 00 20 */	blr 
