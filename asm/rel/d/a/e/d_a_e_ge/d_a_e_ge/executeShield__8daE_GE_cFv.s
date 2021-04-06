lbl_806CBAB8:
/* 806CBAB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806CBABC  7C 08 02 A6 */	mflr r0
/* 806CBAC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CBAC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806CBAC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806CBACC  7C 7F 1B 78 */	mr r31, r3
/* 806CBAD0  3C 80 80 6D */	lis r4, lit_3904@ha /* 0x806CD000@ha */
/* 806CBAD4  3B C4 D0 00 */	addi r30, r4, lit_3904@l /* 0x806CD000@l */
/* 806CBAD8  80 03 0B 78 */	lwz r0, 0xb78(r3)
/* 806CBADC  2C 00 00 01 */	cmpwi r0, 1
/* 806CBAE0  41 82 00 70 */	beq lbl_806CBB50
/* 806CBAE4  40 80 01 3C */	bge lbl_806CBC20
/* 806CBAE8  2C 00 00 00 */	cmpwi r0, 0
/* 806CBAEC  40 80 00 08 */	bge lbl_806CBAF4
/* 806CBAF0  48 00 01 30 */	b lbl_806CBC20
lbl_806CBAF4:
/* 806CBAF4  38 00 00 00 */	li r0, 0
/* 806CBAF8  98 1F 0B 9E */	stb r0, 0xb9e(r31)
/* 806CBAFC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806CBB00  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806CBB04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806CBB08  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 806CBB0C  38 00 00 01 */	li r0, 1
/* 806CBB10  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 806CBB14  38 80 00 09 */	li r4, 9
/* 806CBB18  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 806CBB1C  38 A0 00 02 */	li r5, 2
/* 806CBB20  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806CBB24  4B FF BF 95 */	bl bckSet__8daE_GE_cFifUcf
/* 806CBB28  38 00 00 3C */	li r0, 0x3c
/* 806CBB2C  B0 1F 0B 8E */	sth r0, 0xb8e(r31)
/* 806CBB30  7F E3 FB 78 */	mr r3, r31
/* 806CBB34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CBB38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CBB3C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806CBB40  4B 94 EB D1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CBB44  3C 63 00 01 */	addis r3, r3, 1
/* 806CBB48  38 03 80 00 */	addi r0, r3, -32768
/* 806CBB4C  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_806CBB50:
/* 806CBB50  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CBB54  38 63 00 0C */	addi r3, r3, 0xc
/* 806CBB58  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806CBB5C  4B C5 C8 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 806CBB60  2C 03 00 00 */	cmpwi r3, 0
/* 806CBB64  41 82 00 2C */	beq lbl_806CBB90
/* 806CBB68  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046C@ha */
/* 806CBB6C  38 03 04 6C */	addi r0, r3, 0x046C /* 0x0007046C@l */
/* 806CBB70  90 01 00 08 */	stw r0, 8(r1)
/* 806CBB74  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806CBB78  38 81 00 08 */	addi r4, r1, 8
/* 806CBB7C  38 A0 FF FF */	li r5, -1
/* 806CBB80  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806CBB84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CBB88  7D 89 03 A6 */	mtctr r12
/* 806CBB8C  4E 80 04 21 */	bctrl 
lbl_806CBB90:
/* 806CBB90  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806CBB94  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806CBB98  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 806CBB9C  4B BA 4B A5 */	bl cLib_chaseF__FPfff
/* 806CBBA0  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806CBBA4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806CBBA8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806CBBAC  4B BA 4B 95 */	bl cLib_chaseF__FPfff
/* 806CBBB0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 806CBBB4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806CBBB8  3C 84 00 01 */	addis r4, r4, 1
/* 806CBBBC  38 04 80 00 */	addi r0, r4, -32768
/* 806CBBC0  7C 04 07 34 */	extsh r4, r0
/* 806CBBC4  38 A0 00 08 */	li r5, 8
/* 806CBBC8  38 C0 04 00 */	li r6, 0x400
/* 806CBBCC  38 E0 00 80 */	li r7, 0x80
/* 806CBBD0  4B BA 49 71 */	bl cLib_addCalcAngleS__FPsssss
/* 806CBBD4  A8 1F 0B 8E */	lha r0, 0xb8e(r31)
/* 806CBBD8  2C 00 00 00 */	cmpwi r0, 0
/* 806CBBDC  40 82 00 44 */	bne lbl_806CBC20
/* 806CBBE0  88 1F 0B 9A */	lbz r0, 0xb9a(r31)
/* 806CBBE4  2C 00 00 00 */	cmpwi r0, 0
/* 806CBBE8  41 82 00 1C */	beq lbl_806CBC04
/* 806CBBEC  7F E3 FB 78 */	mr r3, r31
/* 806CBBF0  38 80 00 01 */	li r4, 1
/* 806CBBF4  4B FF C5 05 */	bl setActionMode__8daE_GE_cFi
/* 806CBBF8  38 00 00 0A */	li r0, 0xa
/* 806CBBFC  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 806CBC00  48 00 00 20 */	b lbl_806CBC20
lbl_806CBC04:
/* 806CBC04  38 00 00 5A */	li r0, 0x5a
/* 806CBC08  90 1F 0B 80 */	stw r0, 0xb80(r31)
/* 806CBC0C  7F E3 FB 78 */	mr r3, r31
/* 806CBC10  38 80 00 03 */	li r4, 3
/* 806CBC14  4B FF C4 E5 */	bl setActionMode__8daE_GE_cFi
/* 806CBC18  38 00 00 0A */	li r0, 0xa
/* 806CBC1C  90 1F 0B 78 */	stw r0, 0xb78(r31)
lbl_806CBC20:
/* 806CBC20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806CBC24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806CBC28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CBC2C  7C 08 03 A6 */	mtlr r0
/* 806CBC30  38 21 00 20 */	addi r1, r1, 0x20
/* 806CBC34  4E 80 00 20 */	blr 
