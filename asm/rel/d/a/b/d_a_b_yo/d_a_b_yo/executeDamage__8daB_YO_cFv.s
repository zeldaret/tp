lbl_80635798:
/* 80635798  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063579C  7C 08 02 A6 */	mflr r0
/* 806357A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806357A4  39 61 00 40 */	addi r11, r1, 0x40
/* 806357A8  4B D2 CA 34 */	b _savegpr_29
/* 806357AC  7C 7E 1B 78 */	mr r30, r3
/* 806357B0  3C 80 80 64 */	lis r4, lit_3788@ha
/* 806357B4  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 806357B8  A8 83 0F 5C */	lha r4, 0xf5c(r3)
/* 806357BC  A8 03 0F 5E */	lha r0, 0xf5e(r3)
/* 806357C0  7C 04 02 14 */	add r0, r4, r0
/* 806357C4  B0 03 0F 5C */	sth r0, 0xf5c(r3)
/* 806357C8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806357CC  D0 03 0F 34 */	stfs f0, 0xf34(r3)
/* 806357D0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806357D4  D0 03 0F 38 */	stfs f0, 0xf38(r3)
/* 806357D8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806357DC  D0 03 0F 3C */	stfs f0, 0xf3c(r3)
/* 806357E0  38 00 00 0F */	li r0, 0xf
/* 806357E4  90 03 0F A4 */	stw r0, 0xfa4(r3)
/* 806357E8  80 03 0F 74 */	lwz r0, 0xf74(r3)
/* 806357EC  2C 00 00 02 */	cmpwi r0, 2
/* 806357F0  41 82 01 F8 */	beq lbl_806359E8
/* 806357F4  40 80 00 14 */	bge lbl_80635808
/* 806357F8  2C 00 00 00 */	cmpwi r0, 0
/* 806357FC  41 82 00 18 */	beq lbl_80635814
/* 80635800  40 80 00 EC */	bge lbl_806358EC
/* 80635804  48 00 02 A0 */	b lbl_80635AA4
lbl_80635808:
/* 80635808  2C 00 00 04 */	cmpwi r0, 4
/* 8063580C  40 80 02 98 */	bge lbl_80635AA4
/* 80635810  48 00 01 F8 */	b lbl_80635A08
lbl_80635814:
/* 80635814  80 1E 18 2C */	lwz r0, 0x182c(r30)
/* 80635818  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063581C  90 1E 18 2C */	stw r0, 0x182c(r30)
/* 80635820  80 1E 19 64 */	lwz r0, 0x1964(r30)
/* 80635824  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80635828  90 1E 19 64 */	stw r0, 0x1964(r30)
/* 8063582C  80 1E 1A 9C */	lwz r0, 0x1a9c(r30)
/* 80635830  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80635834  90 1E 1A 9C */	stw r0, 0x1a9c(r30)
/* 80635838  38 00 00 01 */	li r0, 1
/* 8063583C  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80635840  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80635844  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80635848  38 00 00 00 */	li r0, 0
/* 8063584C  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 80635850  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80635854  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80635858  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8063585C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80635860  38 00 06 00 */	li r0, 0x600
/* 80635864  B0 1E 0F 82 */	sth r0, 0xf82(r30)
/* 80635868  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8063586C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80635870  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80635874  4B 9E 4E 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80635878  7C 7D 1B 78 */	mr r29, r3
/* 8063587C  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 80635880  4B C3 21 0C */	b cM_rndFX__Ff
/* 80635884  7F A0 07 34 */	extsh r0, r29
/* 80635888  C8 5F 00 50 */	lfd f2, 0x50(r31)
/* 8063588C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80635890  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80635894  3C 00 43 30 */	lis r0, 0x4330
/* 80635898  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063589C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806358A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 806358A4  EC 20 08 2A */	fadds f1, f0, f1
/* 806358A8  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 806358AC  EC 00 08 2A */	fadds f0, f0, f1
/* 806358B0  FC 00 00 1E */	fctiwz f0, f0
/* 806358B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806358B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806358BC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806358C0  7F C3 F3 78 */	mr r3, r30
/* 806358C4  4B FF AE 2D */	bl setBreakIceEffect__8daB_YO_cFv
/* 806358C8  88 1E 0F AB */	lbz r0, 0xfab(r30)
/* 806358CC  28 00 00 02 */	cmplwi r0, 2
/* 806358D0  40 82 00 1C */	bne lbl_806358EC
/* 806358D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806358D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806358DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806358E0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806358E4  38 80 00 01 */	li r4, 1
/* 806358E8  4B C7 A6 A4 */	b changeBgmStatus__8Z2SeqMgrFl
lbl_806358EC:
/* 806358EC  38 7E 0F 5E */	addi r3, r30, 0xf5e
/* 806358F0  38 80 04 00 */	li r4, 0x400
/* 806358F4  38 A0 00 10 */	li r5, 0x10
/* 806358F8  4B C3 B2 98 */	b cLib_chaseAngleS__FPsss
/* 806358FC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80635900  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80635904  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80635908  4B C3 AE 38 */	b cLib_chaseF__FPfff
/* 8063590C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80635910  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80635914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80635918  40 80 00 18 */	bge lbl_80635930
/* 8063591C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80635920  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80635924  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80635928  4B C3 AE 18 */	b cLib_chaseF__FPfff
/* 8063592C  48 00 00 14 */	b lbl_80635940
lbl_80635930:
/* 80635930  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80635934  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80635938  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8063593C  4B C3 AE 04 */	b cLib_chaseF__FPfff
lbl_80635940:
/* 80635940  38 7E 0F 82 */	addi r3, r30, 0xf82
/* 80635944  38 80 00 00 */	li r4, 0
/* 80635948  38 A0 00 08 */	li r5, 8
/* 8063594C  4B C3 B2 44 */	b cLib_chaseAngleS__FPsss
/* 80635950  80 1E 10 88 */	lwz r0, 0x1088(r30)
/* 80635954  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80635958  41 82 01 4C */	beq lbl_80635AA4
/* 8063595C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030C@ha */
/* 80635960  38 03 03 0C */	addi r0, r3, 0x030C /* 0x0007030C@l */
/* 80635964  90 01 00 08 */	stw r0, 8(r1)
/* 80635968  38 7E 06 34 */	addi r3, r30, 0x634
/* 8063596C  38 81 00 08 */	addi r4, r1, 8
/* 80635970  38 A0 00 00 */	li r5, 0
/* 80635974  38 C0 FF FF */	li r6, -1
/* 80635978  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 8063597C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80635980  7D 89 03 A6 */	mtctr r12
/* 80635984  4E 80 04 21 */	bctrl 
/* 80635988  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8063598C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80635990  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80635994  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80635998  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8063599C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806359A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806359A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806359A8  38 80 00 08 */	li r4, 8
/* 806359AC  38 A0 00 1F */	li r5, 0x1f
/* 806359B0  38 C1 00 0C */	addi r6, r1, 0xc
/* 806359B4  4B A3 A0 70 */	b StartShock__12dVibration_cFii4cXyz
/* 806359B8  38 00 00 00 */	li r0, 0
/* 806359BC  B0 1E 0F 82 */	sth r0, 0xf82(r30)
/* 806359C0  38 00 00 02 */	li r0, 2
/* 806359C4  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 806359C8  38 00 00 1E */	li r0, 0x1e
/* 806359CC  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 806359D0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806359D4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806359D8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806359DC  7F C3 F3 78 */	mr r3, r30
/* 806359E0  4B FF AE BD */	bl setWallHitEffect__8daB_YO_cFv
/* 806359E4  48 00 00 C0 */	b lbl_80635AA4
lbl_806359E8:
/* 806359E8  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 806359EC  2C 00 00 00 */	cmpwi r0, 0
/* 806359F0  40 82 00 B4 */	bne lbl_80635AA4
/* 806359F4  38 00 00 03 */	li r0, 3
/* 806359F8  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 806359FC  38 00 00 3C */	li r0, 0x3c
/* 80635A00  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80635A04  48 00 00 A0 */	b lbl_80635AA4
lbl_80635A08:
/* 80635A08  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80635A0C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80635A10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80635A14  40 80 00 18 */	bge lbl_80635A2C
/* 80635A18  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80635A1C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80635A20  C0 5F 01 B0 */	lfs f2, 0x1b0(r31)
/* 80635A24  4B C3 AD 1C */	b cLib_chaseF__FPfff
/* 80635A28  48 00 00 14 */	b lbl_80635A3C
lbl_80635A2C:
/* 80635A2C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80635A30  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80635A34  C0 5F 01 B0 */	lfs f2, 0x1b0(r31)
/* 80635A38  4B C3 AD 08 */	b cLib_chaseF__FPfff
lbl_80635A3C:
/* 80635A3C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80635A40  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80635A44  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80635A48  4B C3 AC F8 */	b cLib_chaseF__FPfff
/* 80635A4C  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 80635A50  2C 00 00 00 */	cmpwi r0, 0
/* 80635A54  40 82 00 50 */	bne lbl_80635AA4
/* 80635A58  A0 1E 0F 6E */	lhz r0, 0xf6e(r30)
/* 80635A5C  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80635A60  40 82 00 44 */	bne lbl_80635AA4
/* 80635A64  80 1E 18 2C */	lwz r0, 0x182c(r30)
/* 80635A68  60 00 00 01 */	ori r0, r0, 1
/* 80635A6C  90 1E 18 2C */	stw r0, 0x182c(r30)
/* 80635A70  80 1E 19 64 */	lwz r0, 0x1964(r30)
/* 80635A74  60 00 00 01 */	ori r0, r0, 1
/* 80635A78  90 1E 19 64 */	stw r0, 0x1964(r30)
/* 80635A7C  80 1E 1A 9C */	lwz r0, 0x1a9c(r30)
/* 80635A80  60 00 00 01 */	ori r0, r0, 1
/* 80635A84  90 1E 1A 9C */	stw r0, 0x1a9c(r30)
/* 80635A88  7F C3 F3 78 */	mr r3, r30
/* 80635A8C  38 80 00 03 */	li r4, 3
/* 80635A90  38 A0 00 00 */	li r5, 0
/* 80635A94  4B FF A3 79 */	bl setActionMode__8daB_YO_cFii
/* 80635A98  38 00 00 01 */	li r0, 1
/* 80635A9C  98 1E 0F B3 */	stb r0, 0xfb3(r30)
/* 80635AA0  98 1E 0F B2 */	stb r0, 0xfb2(r30)
lbl_80635AA4:
/* 80635AA4  39 61 00 40 */	addi r11, r1, 0x40
/* 80635AA8  4B D2 C7 80 */	b _restgpr_29
/* 80635AAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80635AB0  7C 08 03 A6 */	mtlr r0
/* 80635AB4  38 21 00 40 */	addi r1, r1, 0x40
/* 80635AB8  4E 80 00 20 */	blr 
