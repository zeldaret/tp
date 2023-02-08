lbl_809B6084:
/* 809B6084  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B6088  7C 08 02 A6 */	mflr r0
/* 809B608C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B6090  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6094  4B 9A C1 45 */	bl _savegpr_28
/* 809B6098  7C 7D 1B 78 */	mr r29, r3
/* 809B609C  3C C0 80 9C */	lis r6, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B60A0  3B E6 92 E4 */	addi r31, r6, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B60A4  3B C0 00 00 */	li r30, 0
/* 809B60A8  80 DF 01 BC */	lwz r6, 0x1bc(r31)
/* 809B60AC  80 1F 01 C0 */	lwz r0, 0x1c0(r31)
/* 809B60B0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 809B60B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B60B8  80 84 00 00 */	lwz r4, 0(r4)
/* 809B60BC  38 04 FF F6 */	addi r0, r4, -10
/* 809B60C0  28 00 00 32 */	cmplwi r0, 0x32
/* 809B60C4  41 81 02 3C */	bgt lbl_809B6300
/* 809B60C8  3C 80 80 9C */	lis r4, lit_6040@ha /* 0x809B9C68@ha */
/* 809B60CC  38 84 9C 68 */	addi r4, r4, lit_6040@l /* 0x809B9C68@l */
/* 809B60D0  54 00 10 3A */	slwi r0, r0, 2
/* 809B60D4  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B60D8  7C 09 03 A6 */	mtctr r0
/* 809B60DC  4E 80 04 20 */	bctr 
lbl_809B60E0:
/* 809B60E0  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B60E4  38 03 FF FF */	addi r0, r3, -1
/* 809B60E8  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B60EC  7C 00 07 35 */	extsh. r0, r0
/* 809B60F0  41 81 02 10 */	bgt lbl_809B6300
/* 809B60F4  38 60 00 0B */	li r3, 0xb
/* 809B60F8  4B 7F 26 ED */	bl dKy_change_colpat__FUc
/* 809B60FC  3B C0 00 01 */	li r30, 1
/* 809B6100  48 00 02 00 */	b lbl_809B6300
lbl_809B6104:
/* 809B6104  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B6108  38 03 FF FF */	addi r0, r3, -1
/* 809B610C  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B6110  7C 00 07 35 */	extsh. r0, r0
/* 809B6114  41 81 01 EC */	bgt lbl_809B6300
/* 809B6118  3B C0 00 01 */	li r30, 1
/* 809B611C  48 00 01 E4 */	b lbl_809B6300
lbl_809B6120:
/* 809B6120  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6124  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6128  38 81 00 0C */	addi r4, r1, 0xc
/* 809B612C  38 A0 00 00 */	li r5, 0
/* 809B6130  38 C0 00 00 */	li r6, 0
/* 809B6134  38 E0 00 00 */	li r7, 0
/* 809B6138  4B 79 5B 41 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B613C  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B6140  38 03 FF FF */	addi r0, r3, -1
/* 809B6144  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B6148  7C 00 07 35 */	extsh. r0, r0
/* 809B614C  41 81 01 B4 */	bgt lbl_809B6300
/* 809B6150  3B C0 00 01 */	li r30, 1
/* 809B6154  48 00 01 AC */	b lbl_809B6300
lbl_809B6158:
/* 809B6158  80 05 00 00 */	lwz r0, 0(r5)
/* 809B615C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6160  38 81 00 0C */	addi r4, r1, 0xc
/* 809B6164  38 A0 00 01 */	li r5, 1
/* 809B6168  38 C0 00 00 */	li r6, 0
/* 809B616C  38 E0 00 00 */	li r7, 0
/* 809B6170  4B 79 5B 09 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6174  2C 03 00 00 */	cmpwi r3, 0
/* 809B6178  41 82 01 88 */	beq lbl_809B6300
/* 809B617C  3B C0 00 01 */	li r30, 1
/* 809B6180  48 00 01 80 */	b lbl_809B6300
lbl_809B6184:
/* 809B6184  38 80 00 00 */	li r4, 0
/* 809B6188  38 A0 00 00 */	li r5, 0
/* 809B618C  38 C0 00 00 */	li r6, 0
/* 809B6190  38 E0 00 00 */	li r7, 0
/* 809B6194  4B 79 5A E5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6198  2C 03 00 00 */	cmpwi r3, 0
/* 809B619C  41 82 01 64 */	beq lbl_809B6300
/* 809B61A0  7F A3 EB 78 */	mr r3, r29
/* 809B61A4  4B FF E4 19 */	bl PresentDemoCall__13daNpc_Fairy_cFv
/* 809B61A8  3B C0 00 01 */	li r30, 1
/* 809B61AC  48 00 01 54 */	b lbl_809B6300
lbl_809B61B0:
/* 809B61B0  3B C0 00 01 */	li r30, 1
/* 809B61B4  48 00 01 4C */	b lbl_809B6300
lbl_809B61B8:
/* 809B61B8  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809B61BC  2C 00 00 03 */	cmpwi r0, 3
/* 809B61C0  41 82 00 24 */	beq lbl_809B61E4
/* 809B61C4  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 809B61C8  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 809B61CC  4B 78 F6 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B61D0  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 809B61D4  38 00 00 03 */	li r0, 3
/* 809B61D8  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 809B61DC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B61E0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_809B61E4:
/* 809B61E4  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B61E8  38 03 FF FF */	addi r0, r3, -1
/* 809B61EC  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B61F0  A8 7D 0F 90 */	lha r3, 0xf90(r29)
/* 809B61F4  7C 60 07 35 */	extsh. r0, r3
/* 809B61F8  41 81 00 14 */	bgt lbl_809B620C
/* 809B61FC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809B6200  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809B6204  3B C0 00 01 */	li r30, 1
/* 809B6208  48 00 00 F8 */	b lbl_809B6300
lbl_809B620C:
/* 809B620C  2C 03 00 0A */	cmpwi r3, 0xa
/* 809B6210  40 82 00 F0 */	bne lbl_809B6300
/* 809B6214  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 809B6218  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809B621C  48 00 00 E4 */	b lbl_809B6300
lbl_809B6220:
/* 809B6220  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6224  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6228  38 81 00 0C */	addi r4, r1, 0xc
/* 809B622C  38 A0 00 00 */	li r5, 0
/* 809B6230  38 C0 00 00 */	li r6, 0
/* 809B6234  38 E0 00 00 */	li r7, 0
/* 809B6238  4B 79 5A 41 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B623C  2C 03 00 00 */	cmpwi r3, 0
/* 809B6240  41 82 00 C0 */	beq lbl_809B6300
/* 809B6244  3B C0 00 01 */	li r30, 1
/* 809B6248  48 00 00 B8 */	b lbl_809B6300
lbl_809B624C:
/* 809B624C  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6250  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6254  38 81 00 0C */	addi r4, r1, 0xc
/* 809B6258  38 A0 00 00 */	li r5, 0
/* 809B625C  38 C0 00 00 */	li r6, 0
/* 809B6260  38 E0 00 00 */	li r7, 0
/* 809B6264  4B 79 5A 15 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6268  2C 03 00 00 */	cmpwi r3, 0
/* 809B626C  41 82 00 94 */	beq lbl_809B6300
/* 809B6270  3B C0 00 01 */	li r30, 1
/* 809B6274  48 00 00 8C */	b lbl_809B6300
lbl_809B6278:
/* 809B6278  38 80 00 00 */	li r4, 0
/* 809B627C  38 A0 00 00 */	li r5, 0
/* 809B6280  38 C0 00 00 */	li r6, 0
/* 809B6284  38 E0 00 00 */	li r7, 0
/* 809B6288  4B 79 59 F1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B628C  2C 03 00 00 */	cmpwi r3, 0
/* 809B6290  41 82 00 70 */	beq lbl_809B6300
/* 809B6294  3B C0 00 01 */	li r30, 1
/* 809B6298  48 00 00 68 */	b lbl_809B6300
lbl_809B629C:
/* 809B629C  38 00 00 9B */	li r0, 0x9b
/* 809B62A0  90 01 00 08 */	stw r0, 8(r1)
/* 809B62A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B62A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B62AC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B62B0  38 81 00 08 */	addi r4, r1, 8
/* 809B62B4  38 A0 00 00 */	li r5, 0
/* 809B62B8  38 C0 00 00 */	li r6, 0
/* 809B62BC  38 E0 00 00 */	li r7, 0
/* 809B62C0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B62C4  FC 40 08 90 */	fmr f2, f1
/* 809B62C8  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 809B62CC  FC 80 18 90 */	fmr f4, f3
/* 809B62D0  39 00 00 00 */	li r8, 0
/* 809B62D4  4B 8F 56 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B62D8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809B62DC  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 809B62E0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B62E4  38 80 00 00 */	li r4, 0
/* 809B62E8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 809B62EC  7C 05 07 74 */	extsb r5, r0
/* 809B62F0  38 C0 00 00 */	li r6, 0
/* 809B62F4  38 E0 FF FF */	li r7, -1
/* 809B62F8  4B 67 0E 79 */	bl dStage_changeScene__FifUlScsi
/* 809B62FC  3B C0 00 01 */	li r30, 1
lbl_809B6300:
/* 809B6300  7F C3 F3 78 */	mr r3, r30
/* 809B6304  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6308  4B 9A BF 1D */	bl _restgpr_28
/* 809B630C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B6310  7C 08 03 A6 */	mtlr r0
/* 809B6314  38 21 00 30 */	addi r1, r1, 0x30
/* 809B6318  4E 80 00 20 */	blr 
