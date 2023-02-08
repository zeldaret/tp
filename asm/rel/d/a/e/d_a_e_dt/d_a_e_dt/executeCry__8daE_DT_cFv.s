lbl_806B0368:
/* 806B0368  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B036C  7C 08 02 A6 */	mflr r0
/* 806B0370  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B0374  39 61 00 30 */	addi r11, r1, 0x30
/* 806B0378  4B CB 1E 5D */	bl _savegpr_27
/* 806B037C  7C 7E 1B 78 */	mr r30, r3
/* 806B0380  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B0384  3B E4 5C D4 */	addi r31, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806B0388  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B038C  2C 00 00 01 */	cmpwi r0, 1
/* 806B0390  41 82 00 C0 */	beq lbl_806B0450
/* 806B0394  40 80 00 10 */	bge lbl_806B03A4
/* 806B0398  2C 00 00 00 */	cmpwi r0, 0
/* 806B039C  40 80 00 14 */	bge lbl_806B03B0
/* 806B03A0  48 00 02 84 */	b lbl_806B0624
lbl_806B03A4:
/* 806B03A4  2C 00 00 03 */	cmpwi r0, 3
/* 806B03A8  40 80 02 7C */	bge lbl_806B0624
/* 806B03AC  48 00 01 0C */	b lbl_806B04B8
lbl_806B03B0:
/* 806B03B0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806B03B4  4B FF E8 21 */	bl checkBeforeBg__8daE_DT_cFf
/* 806B03B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B03BC  41 82 00 68 */	beq lbl_806B0424
/* 806B03C0  38 00 00 01 */	li r0, 1
/* 806B03C4  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B03C8  38 00 00 1E */	li r0, 0x1e
/* 806B03CC  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B03D0  7F C3 F3 78 */	mr r3, r30
/* 806B03D4  38 80 00 15 */	li r4, 0x15
/* 806B03D8  38 A0 00 02 */	li r5, 2
/* 806B03DC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B03E0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B03E4  4B FF E2 69 */	bl setBck__8daE_DT_cFiUcff
/* 806B03E8  7F C3 F3 78 */	mr r3, r30
/* 806B03EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B03F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B03F4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806B03F8  4B 96 A3 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B03FC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 806B0400  7C 03 20 50 */	subf r0, r3, r4
/* 806B0404  7C 00 07 35 */	extsh. r0, r0
/* 806B0408  40 80 00 10 */	bge lbl_806B0418
/* 806B040C  38 04 40 00 */	addi r0, r4, 0x4000
/* 806B0410  B0 1E 07 38 */	sth r0, 0x738(r30)
/* 806B0414  48 00 02 10 */	b lbl_806B0624
lbl_806B0418:
/* 806B0418  38 04 C0 00 */	addi r0, r4, -16384
/* 806B041C  B0 1E 07 38 */	sth r0, 0x738(r30)
/* 806B0420  48 00 02 04 */	b lbl_806B0624
lbl_806B0424:
/* 806B0424  7F C3 F3 78 */	mr r3, r30
/* 806B0428  38 80 00 04 */	li r4, 4
/* 806B042C  38 A0 00 00 */	li r5, 0
/* 806B0430  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B0434  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0438  4B FF E2 15 */	bl setBck__8daE_DT_cFiUcff
/* 806B043C  38 00 00 00 */	li r0, 0
/* 806B0440  90 1E 07 04 */	stw r0, 0x704(r30)
/* 806B0444  38 00 00 02 */	li r0, 2
/* 806B0448  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B044C  48 00 01 D8 */	b lbl_806B0624
lbl_806B0450:
/* 806B0450  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806B0454  A8 9E 07 38 */	lha r4, 0x738(r30)
/* 806B0458  38 A0 02 00 */	li r5, 0x200
/* 806B045C  4B BC 07 35 */	bl cLib_chaseAngleS__FPsss
/* 806B0460  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B0464  2C 00 00 00 */	cmpwi r0, 0
/* 806B0468  40 82 01 BC */	bne lbl_806B0624
/* 806B046C  7F C3 F3 78 */	mr r3, r30
/* 806B0470  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806B0474  4B FF E7 61 */	bl checkBeforeBg__8daE_DT_cFf
/* 806B0478  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B047C  41 82 00 10 */	beq lbl_806B048C
/* 806B0480  38 00 00 1E */	li r0, 0x1e
/* 806B0484  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B0488  48 00 01 9C */	b lbl_806B0624
lbl_806B048C:
/* 806B048C  7F C3 F3 78 */	mr r3, r30
/* 806B0490  38 80 00 04 */	li r4, 4
/* 806B0494  38 A0 00 00 */	li r5, 0
/* 806B0498  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B049C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B04A0  4B FF E1 AD */	bl setBck__8daE_DT_cFiUcff
/* 806B04A4  38 00 00 00 */	li r0, 0
/* 806B04A8  90 1E 07 04 */	stw r0, 0x704(r30)
/* 806B04AC  38 00 00 02 */	li r0, 2
/* 806B04B0  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B04B4  48 00 01 70 */	b lbl_806B0624
lbl_806B04B8:
/* 806B04B8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B04BC  38 63 00 0C */	addi r3, r3, 0xc
/* 806B04C0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806B04C4  4B C7 7F 69 */	bl checkPass__12J3DFrameCtrlFf
/* 806B04C8  2C 03 00 00 */	cmpwi r3, 0
/* 806B04CC  41 82 00 2C */	beq lbl_806B04F8
/* 806B04D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070316@ha */
/* 806B04D4  38 03 03 16 */	addi r0, r3, 0x0316 /* 0x00070316@l */
/* 806B04D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B04DC  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B04E0  38 81 00 0C */	addi r4, r1, 0xc
/* 806B04E4  38 A0 FF FF */	li r5, -1
/* 806B04E8  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B04EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B04F0  7D 89 03 A6 */	mtctr r12
/* 806B04F4  4E 80 04 21 */	bctrl 
lbl_806B04F8:
/* 806B04F8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B04FC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806B0500  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806B0504  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806B0508  4C 40 13 82 */	cror 2, 0, 2
/* 806B050C  40 82 00 3C */	bne lbl_806B0548
/* 806B0510  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 806B0514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B0518  40 80 00 30 */	bge lbl_806B0548
/* 806B051C  38 00 00 02 */	li r0, 2
/* 806B0520  98 1E 07 70 */	stb r0, 0x770(r30)
/* 806B0524  7F C3 F3 78 */	mr r3, r30
/* 806B0528  4B FF FB ED */	bl checkBombEat__8daE_DT_cFv
/* 806B052C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B0530  41 82 00 18 */	beq lbl_806B0548
/* 806B0534  7F C3 F3 78 */	mr r3, r30
/* 806B0538  38 80 00 08 */	li r4, 8
/* 806B053C  38 A0 00 00 */	li r5, 0
/* 806B0540  4B FF E2 0D */	bl setActionMode__8daE_DT_cFii
/* 806B0544  48 00 00 E0 */	b lbl_806B0624
lbl_806B0548:
/* 806B0548  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B054C  38 63 00 0C */	addi r3, r3, 0xc
/* 806B0550  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 806B0554  4B C7 7E D9 */	bl checkPass__12J3DFrameCtrlFf
/* 806B0558  2C 03 00 00 */	cmpwi r3, 0
/* 806B055C  41 82 00 88 */	beq lbl_806B05E4
/* 806B0560  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070317@ha */
/* 806B0564  38 03 03 17 */	addi r0, r3, 0x0317 /* 0x00070317@l */
/* 806B0568  90 01 00 08 */	stw r0, 8(r1)
/* 806B056C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0570  38 81 00 08 */	addi r4, r1, 8
/* 806B0574  38 A0 00 00 */	li r5, 0
/* 806B0578  38 C0 FF FF */	li r6, -1
/* 806B057C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0580  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B0584  7D 89 03 A6 */	mtctr r12
/* 806B0588  4E 80 04 21 */	bctrl 
/* 806B058C  7F C3 F3 78 */	mr r3, r30
/* 806B0590  4B FF F7 A1 */	bl getNumberOfOtama__8daE_DT_cFv
/* 806B0594  3B 60 00 00 */	li r27, 0
/* 806B0598  3B A0 00 00 */	li r29, 0
/* 806B059C  3C 60 80 6B */	lis r3, mDt_OtamaNo__6E_DT_n@ha /* 0x806B62E0@ha */
/* 806B05A0  3B 83 62 E0 */	addi r28, r3, mDt_OtamaNo__6E_DT_n@l /* 0x806B62E0@l */
lbl_806B05A4:
/* 806B05A4  7C 1C E8 2E */	lwzx r0, r28, r29
/* 806B05A8  2C 00 00 00 */	cmpwi r0, 0
/* 806B05AC  40 82 00 28 */	bne lbl_806B05D4
/* 806B05B0  38 60 01 FF */	li r3, 0x1ff
/* 806B05B4  7F 64 DB 78 */	mr r4, r27
/* 806B05B8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806B05BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806B05C0  7C 06 07 74 */	extsb r6, r0
/* 806B05C4  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 806B05C8  39 00 00 00 */	li r8, 0
/* 806B05CC  39 20 FF FF */	li r9, -1
/* 806B05D0  4B 96 97 C9 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_806B05D4:
/* 806B05D4  3B 7B 00 01 */	addi r27, r27, 1
/* 806B05D8  2C 1B 00 14 */	cmpwi r27, 0x14
/* 806B05DC  3B BD 00 04 */	addi r29, r29, 4
/* 806B05E0  41 80 FF C4 */	blt lbl_806B05A4
lbl_806B05E4:
/* 806B05E4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B05E8  38 80 00 01 */	li r4, 1
/* 806B05EC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B05F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B05F4  40 82 00 18 */	bne lbl_806B060C
/* 806B05F8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B05FC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B0600  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B0604  41 82 00 08 */	beq lbl_806B060C
/* 806B0608  38 80 00 00 */	li r4, 0
lbl_806B060C:
/* 806B060C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B0610  41 82 00 14 */	beq lbl_806B0624
/* 806B0614  7F C3 F3 78 */	mr r3, r30
/* 806B0618  38 80 00 02 */	li r4, 2
/* 806B061C  38 A0 00 00 */	li r5, 0
/* 806B0620  4B FF E1 2D */	bl setActionMode__8daE_DT_cFii
lbl_806B0624:
/* 806B0624  39 61 00 30 */	addi r11, r1, 0x30
/* 806B0628  4B CB 1B F9 */	bl _restgpr_27
/* 806B062C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B0630  7C 08 03 A6 */	mtlr r0
/* 806B0634  38 21 00 30 */	addi r1, r1, 0x30
/* 806B0638  4E 80 00 20 */	blr 
