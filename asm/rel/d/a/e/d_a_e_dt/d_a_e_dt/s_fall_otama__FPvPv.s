lbl_806AFD94:
/* 806AFD94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AFD98  7C 08 02 A6 */	mflr r0
/* 806AFD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AFDA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AFDA4  7C 7F 1B 78 */	mr r31, r3
/* 806AFDA8  4B 96 8F 38 */	b fopAc_IsActor__FPv
/* 806AFDAC  2C 03 00 00 */	cmpwi r3, 0
/* 806AFDB0  41 82 00 5C */	beq lbl_806AFE0C
/* 806AFDB4  28 1F 00 00 */	cmplwi r31, 0
/* 806AFDB8  41 82 00 0C */	beq lbl_806AFDC4
/* 806AFDBC  80 7F 00 04 */	lwz r3, 4(r31)
/* 806AFDC0  48 00 00 08 */	b lbl_806AFDC8
lbl_806AFDC4:
/* 806AFDC4  38 60 FF FF */	li r3, -1
lbl_806AFDC8:
/* 806AFDC8  4B 97 23 70 */	b fpcM_IsCreating__FUi
/* 806AFDCC  2C 03 00 00 */	cmpwi r3, 0
/* 806AFDD0  40 82 00 3C */	bne lbl_806AFE0C
/* 806AFDD4  A8 1F 00 08 */	lha r0, 8(r31)
/* 806AFDD8  2C 00 01 FF */	cmpwi r0, 0x1ff
/* 806AFDDC  40 82 00 30 */	bne lbl_806AFE0C
/* 806AFDE0  3C 60 80 6B */	lis r3, m_fall_no__6E_DT_n@ha
/* 806AFDE4  38 63 63 30 */	addi r3, r3, m_fall_no__6E_DT_n@l
/* 806AFDE8  80 63 00 00 */	lwz r3, 0(r3)
/* 806AFDEC  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806AFDF0  7C 03 00 00 */	cmpw r3, r0
/* 806AFDF4  40 82 00 18 */	bne lbl_806AFE0C
/* 806AFDF8  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 806AFDFC  2C 00 00 00 */	cmpwi r0, 0
/* 806AFE00  40 82 00 0C */	bne lbl_806AFE0C
/* 806AFE04  7F E3 FB 78 */	mr r3, r31
/* 806AFE08  48 00 00 08 */	b lbl_806AFE10
lbl_806AFE0C:
/* 806AFE0C  38 60 00 00 */	li r3, 0
lbl_806AFE10:
/* 806AFE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AFE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AFE18  7C 08 03 A6 */	mtlr r0
/* 806AFE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 806AFE20  4E 80 00 20 */	blr 
