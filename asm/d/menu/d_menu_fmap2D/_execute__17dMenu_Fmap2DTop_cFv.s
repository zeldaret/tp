lbl_801D6A44:
/* 801D6A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D6A48  7C 08 02 A6 */	mflr r0
/* 801D6A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D6A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D6A54  7C 7F 1B 78 */	mr r31, r3
/* 801D6A58  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 801D6A5C  2C 00 00 01 */	cmpwi r0, 1
/* 801D6A60  41 82 00 2C */	beq lbl_801D6A8C
/* 801D6A64  40 80 00 40 */	bge lbl_801D6AA4
/* 801D6A68  2C 00 00 00 */	cmpwi r0, 0
/* 801D6A6C  40 80 00 08 */	bge lbl_801D6A74
/* 801D6A70  48 00 00 34 */	b lbl_801D6AA4
lbl_801D6A74:
/* 801D6A74  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801D6A78  48 00 0E 85 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6A7C  7F E3 FB 78 */	mr r3, r31
/* 801D6A80  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D6A84  48 00 0D 41 */	bl setAlphaAnimeMin__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6A88  48 00 00 34 */	b lbl_801D6ABC
lbl_801D6A8C:
/* 801D6A8C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801D6A90  48 00 0D C9 */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6A94  7F E3 FB 78 */	mr r3, r31
/* 801D6A98  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D6A9C  48 00 0D BD */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6AA0  48 00 00 1C */	b lbl_801D6ABC
lbl_801D6AA4:
/* 801D6AA4  7F E3 FB 78 */	mr r3, r31
/* 801D6AA8  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801D6AAC  48 00 0E 51 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6AB0  7F E3 FB 78 */	mr r3, r31
/* 801D6AB4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D6AB8  48 00 0E 45 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
lbl_801D6ABC:
/* 801D6ABC  88 1F 00 C1 */	lbz r0, 0xc1(r31)
/* 801D6AC0  2C 00 00 01 */	cmpwi r0, 1
/* 801D6AC4  41 82 00 30 */	beq lbl_801D6AF4
/* 801D6AC8  40 80 00 48 */	bge lbl_801D6B10
/* 801D6ACC  2C 00 00 00 */	cmpwi r0, 0
/* 801D6AD0  40 80 00 08 */	bge lbl_801D6AD8
/* 801D6AD4  48 00 00 3C */	b lbl_801D6B10
lbl_801D6AD8:
/* 801D6AD8  7F E3 FB 78 */	mr r3, r31
/* 801D6ADC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801D6AE0  48 00 0E 1D */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6AE4  7F E3 FB 78 */	mr r3, r31
/* 801D6AE8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801D6AEC  48 00 0C D9 */	bl setAlphaAnimeMin__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6AF0  48 00 00 38 */	b lbl_801D6B28
lbl_801D6AF4:
/* 801D6AF4  7F E3 FB 78 */	mr r3, r31
/* 801D6AF8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801D6AFC  48 00 0D 5D */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B00  7F E3 FB 78 */	mr r3, r31
/* 801D6B04  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801D6B08  48 00 0D 51 */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B0C  48 00 00 1C */	b lbl_801D6B28
lbl_801D6B10:
/* 801D6B10  7F E3 FB 78 */	mr r3, r31
/* 801D6B14  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801D6B18  48 00 0D E5 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B1C  7F E3 FB 78 */	mr r3, r31
/* 801D6B20  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801D6B24  48 00 0D D9 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
lbl_801D6B28:
/* 801D6B28  88 1F 00 C2 */	lbz r0, 0xc2(r31)
/* 801D6B2C  2C 00 00 01 */	cmpwi r0, 1
/* 801D6B30  41 82 00 30 */	beq lbl_801D6B60
/* 801D6B34  40 80 00 48 */	bge lbl_801D6B7C
/* 801D6B38  2C 00 00 00 */	cmpwi r0, 0
/* 801D6B3C  40 80 00 08 */	bge lbl_801D6B44
/* 801D6B40  48 00 00 3C */	b lbl_801D6B7C
lbl_801D6B44:
/* 801D6B44  7F E3 FB 78 */	mr r3, r31
/* 801D6B48  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801D6B4C  48 00 0D B1 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B50  7F E3 FB 78 */	mr r3, r31
/* 801D6B54  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801D6B58  48 00 0C 6D */	bl setAlphaAnimeMin__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B5C  48 00 00 38 */	b lbl_801D6B94
lbl_801D6B60:
/* 801D6B60  7F E3 FB 78 */	mr r3, r31
/* 801D6B64  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801D6B68  48 00 0C F1 */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B6C  7F E3 FB 78 */	mr r3, r31
/* 801D6B70  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801D6B74  48 00 0C E5 */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B78  48 00 00 1C */	b lbl_801D6B94
lbl_801D6B7C:
/* 801D6B7C  7F E3 FB 78 */	mr r3, r31
/* 801D6B80  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801D6B84  48 00 0D 79 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6B88  7F E3 FB 78 */	mr r3, r31
/* 801D6B8C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801D6B90  48 00 0D 6D */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
lbl_801D6B94:
/* 801D6B94  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 801D6B98  28 04 00 00 */	cmplwi r4, 0
/* 801D6B9C  41 82 00 40 */	beq lbl_801D6BDC
/* 801D6BA0  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 801D6BA4  2C 00 00 01 */	cmpwi r0, 1
/* 801D6BA8  41 82 00 20 */	beq lbl_801D6BC8
/* 801D6BAC  40 80 00 28 */	bge lbl_801D6BD4
/* 801D6BB0  2C 00 00 00 */	cmpwi r0, 0
/* 801D6BB4  40 80 00 08 */	bge lbl_801D6BBC
/* 801D6BB8  48 00 00 1C */	b lbl_801D6BD4
lbl_801D6BBC:
/* 801D6BBC  7F E3 FB 78 */	mr r3, r31
/* 801D6BC0  48 00 0C 05 */	bl setAlphaAnimeMin__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6BC4  48 00 00 18 */	b lbl_801D6BDC
lbl_801D6BC8:
/* 801D6BC8  7F E3 FB 78 */	mr r3, r31
/* 801D6BCC  48 00 0C 8D */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6BD0  48 00 00 0C */	b lbl_801D6BDC
lbl_801D6BD4:
/* 801D6BD4  7F E3 FB 78 */	mr r3, r31
/* 801D6BD8  48 00 0D 25 */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
lbl_801D6BDC:
/* 801D6BDC  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801D6BE0  28 04 00 00 */	cmplwi r4, 0
/* 801D6BE4  41 82 00 40 */	beq lbl_801D6C24
/* 801D6BE8  88 1F 00 C3 */	lbz r0, 0xc3(r31)
/* 801D6BEC  2C 00 00 01 */	cmpwi r0, 1
/* 801D6BF0  41 82 00 20 */	beq lbl_801D6C10
/* 801D6BF4  40 80 00 28 */	bge lbl_801D6C1C
/* 801D6BF8  2C 00 00 00 */	cmpwi r0, 0
/* 801D6BFC  40 80 00 08 */	bge lbl_801D6C04
/* 801D6C00  48 00 00 1C */	b lbl_801D6C1C
lbl_801D6C04:
/* 801D6C04  7F E3 FB 78 */	mr r3, r31
/* 801D6C08  48 00 0B BD */	bl setAlphaAnimeMin__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6C0C  48 00 00 18 */	b lbl_801D6C24
lbl_801D6C10:
/* 801D6C10  7F E3 FB 78 */	mr r3, r31
/* 801D6C14  48 00 0C 45 */	bl setAlphaAnimeMid__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
/* 801D6C18  48 00 00 0C */	b lbl_801D6C24
lbl_801D6C1C:
/* 801D6C1C  7F E3 FB 78 */	mr r3, r31
/* 801D6C20  48 00 0C DD */	bl setAlphaAnimeMax__17dMenu_Fmap2DTop_cFP13CPaneMgrAlpha
lbl_801D6C24:
/* 801D6C24  7F E3 FB 78 */	mr r3, r31
/* 801D6C28  38 80 00 00 */	li r4, 0
/* 801D6C2C  48 00 0F A1 */	bl setHIO__17dMenu_Fmap2DTop_cFb
/* 801D6C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D6C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6C38  7C 08 03 A6 */	mtlr r0
/* 801D6C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D6C40  4E 80 00 20 */	blr 
