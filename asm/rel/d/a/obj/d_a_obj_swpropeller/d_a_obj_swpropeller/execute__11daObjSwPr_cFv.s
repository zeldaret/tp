lbl_8059B014:
/* 8059B014  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059B018  7C 08 02 A6 */	mflr r0
/* 8059B01C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059B020  39 61 00 30 */	addi r11, r1, 0x30
/* 8059B024  4B DC 71 B8 */	b _savegpr_29
/* 8059B028  7C 7E 1B 78 */	mr r30, r3
/* 8059B02C  3C 80 80 5A */	lis r4, l_bmdName@ha
/* 8059B030  3B E4 B2 C8 */	addi r31, r4, l_bmdName@l
/* 8059B034  88 03 08 3C */	lbz r0, 0x83c(r3)
/* 8059B038  2C 00 00 01 */	cmpwi r0, 1
/* 8059B03C  41 82 00 1C */	beq lbl_8059B058
/* 8059B040  40 80 00 1C */	bge lbl_8059B05C
/* 8059B044  2C 00 00 00 */	cmpwi r0, 0
/* 8059B048  40 80 00 08 */	bge lbl_8059B050
/* 8059B04C  48 00 00 10 */	b lbl_8059B05C
lbl_8059B050:
/* 8059B050  4B FF FB 4D */	bl execute_type_boomerang__11daObjSwPr_cFv
/* 8059B054  48 00 00 08 */	b lbl_8059B05C
lbl_8059B058:
/* 8059B058  4B FF FD 75 */	bl execute_type_wind__11daObjSwPr_cFv
lbl_8059B05C:
/* 8059B05C  A8 7E 08 28 */	lha r3, 0x828(r30)
/* 8059B060  7C 60 07 35 */	extsh. r0, r3
/* 8059B064  41 82 00 A0 */	beq lbl_8059B104
/* 8059B068  A8 9E 08 2A */	lha r4, 0x82a(r30)
/* 8059B06C  7C 80 07 35 */	extsh. r0, r4
/* 8059B070  41 82 00 94 */	beq lbl_8059B104
/* 8059B074  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8059B078  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 8059B07C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8059B080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B084  3C 60 43 30 */	lis r3, 0x4330
/* 8059B088  90 61 00 10 */	stw r3, 0x10(r1)
/* 8059B08C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8059B090  EC 20 10 28 */	fsubs f1, f0, f2
/* 8059B094  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8059B098  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059B09C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8059B0A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8059B0A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8059B0A8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8059B0AC  EC 23 00 32 */	fmuls f1, f3, f0
/* 8059B0B0  4B DC 6F FC */	b __cvt_fp2unsigned
/* 8059B0B4  7C 7D 1B 78 */	mr r29, r3
/* 8059B0B8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8059B0BC  7C 03 07 74 */	extsb r3, r0
/* 8059B0C0  4B A9 1F AC */	b dComIfGp_getReverb__Fi
/* 8059B0C4  7C 67 1B 78 */	mr r7, r3
/* 8059B0C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800CF@ha */
/* 8059B0CC  38 03 00 CF */	addi r0, r3, 0x00CF /* 0x000800CF@l */
/* 8059B0D0  90 01 00 08 */	stw r0, 8(r1)
/* 8059B0D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8059B0D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8059B0DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8059B0E0  38 81 00 08 */	addi r4, r1, 8
/* 8059B0E4  38 BE 05 38 */	addi r5, r30, 0x538
/* 8059B0E8  7F A6 EB 78 */	mr r6, r29
/* 8059B0EC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8059B0F0  FC 40 08 90 */	fmr f2, f1
/* 8059B0F4  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8059B0F8  FC 80 18 90 */	fmr f4, f3
/* 8059B0FC  39 00 00 00 */	li r8, 0
/* 8059B100  4B D1 14 0C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8059B104:
/* 8059B104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059B108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059B10C  38 63 5B 6C */	addi r3, r3, 0x5b6c
/* 8059B110  7F C4 F3 78 */	mr r4, r30
/* 8059B114  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8059B118  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8059B11C  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8059B120  38 A0 69 78 */	li r5, 0x6978
/* 8059B124  38 C0 00 02 */	li r6, 2
/* 8059B128  4B AD 8B E0 */	b request__10dAttLook_cFP10fopAc_ac_cfffsi
/* 8059B12C  38 60 00 01 */	li r3, 1
/* 8059B130  39 61 00 30 */	addi r11, r1, 0x30
/* 8059B134  4B DC 70 F4 */	b _restgpr_29
/* 8059B138  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059B13C  7C 08 03 A6 */	mtlr r0
/* 8059B140  38 21 00 30 */	addi r1, r1, 0x30
/* 8059B144  4E 80 00 20 */	blr 
