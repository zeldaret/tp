lbl_800BE3E4:
/* 800BE3E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BE3E8  7C 08 02 A6 */	mflr r0
/* 800BE3EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BE3F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800BE3F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800BE3F8  39 61 00 20 */	addi r11, r1, 0x20
/* 800BE3FC  48 2A 3D E1 */	bl _savegpr_29
/* 800BE400  7C 7D 1B 78 */	mr r29, r3
/* 800BE404  80 83 05 70 */	lwz r4, 0x570(r3)
/* 800BE408  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 800BE40C  41 82 00 3C */	beq lbl_800BE448
/* 800BE410  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 800BE414  41 82 05 9C */	beq lbl_800BE9B0
/* 800BE418  38 7D 1D C0 */	addi r3, r29, 0x1dc0
/* 800BE41C  48 0E D1 81 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800BE420  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800BE424  41 82 05 8C */	beq lbl_800BE9B0
/* 800BE428  7F A3 EB 78 */	mr r3, r29
/* 800BE42C  38 80 00 05 */	li r4, 5
/* 800BE430  38 A0 00 C9 */	li r5, 0xc9
/* 800BE434  38 C0 00 04 */	li r6, 4
/* 800BE438  38 E0 00 00 */	li r7, 0
/* 800BE43C  4B FF FB 25 */	bl startRestartRoom__9daAlink_cFUliii
/* 800BE440  38 60 00 01 */	li r3, 1
/* 800BE444  48 00 05 70 */	b lbl_800BE9B4
lbl_800BE448:
/* 800BE448  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 800BE44C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BE450  41 82 00 1C */	beq lbl_800BE46C
/* 800BE454  88 1D 2F BD */	lbz r0, 0x2fbd(r29)
/* 800BE458  28 00 00 02 */	cmplwi r0, 2
/* 800BE45C  40 82 00 10 */	bne lbl_800BE46C
/* 800BE460  38 80 00 01 */	li r4, 1
/* 800BE464  48 01 DA 75 */	bl procCoLavaReturnInit__9daAlink_cFi
/* 800BE468  48 00 05 4C */	b lbl_800BE9B4
lbl_800BE46C:
/* 800BE46C  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE470  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BE474  40 82 00 2C */	bne lbl_800BE4A0
/* 800BE478  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 800BE47C  41 82 00 54 */	beq lbl_800BE4D0
/* 800BE480  C0 3D 33 B4 */	lfs f1, 0x33b4(r29)
/* 800BE484  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800BE488  EC 21 00 28 */	fsubs f1, f1, f0
/* 800BE48C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 800BE490  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 800BE494  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800BE498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BE49C  40 81 00 34 */	ble lbl_800BE4D0
lbl_800BE4A0:
/* 800BE4A0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 800BE4A4  7C 00 07 75 */	extsb. r0, r0
/* 800BE4A8  40 82 00 28 */	bne lbl_800BE4D0
/* 800BE4AC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800BE4B0  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800BE4B4  38 63 05 26 */	addi r3, r3, 0x526
/* 800BE4B8  4B FD F5 A9 */	bl checkStageName__9daAlink_cFPCc
/* 800BE4BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BE4C0  41 82 00 10 */	beq lbl_800BE4D0
/* 800BE4C4  7F A3 EB 78 */	mr r3, r29
/* 800BE4C8  48 01 DD B1 */	bl procCoSwimFreezeReturnInit__9daAlink_cFv
/* 800BE4CC  48 00 04 E8 */	b lbl_800BE9B4
lbl_800BE4D0:
/* 800BE4D0  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800BE4D4  28 00 00 2C */	cmplwi r0, 0x2c
/* 800BE4D8  41 82 03 70 */	beq lbl_800BE848
/* 800BE4DC  80 7D 31 74 */	lwz r3, 0x3174(r29)
/* 800BE4E0  2C 03 00 04 */	cmpwi r3, 4
/* 800BE4E4  41 82 00 28 */	beq lbl_800BE50C
/* 800BE4E8  2C 03 00 0A */	cmpwi r3, 0xa
/* 800BE4EC  41 82 00 20 */	beq lbl_800BE50C
/* 800BE4F0  C0 22 93 A4 */	lfs f1, lit_9138(r2)
/* 800BE4F4  C0 1D 1A 08 */	lfs f0, 0x1a08(r29)
/* 800BE4F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800BE4FC  40 82 03 4C */	bne lbl_800BE848
/* 800BE500  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE504  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BE508  40 82 03 40 */	bne lbl_800BE848
lbl_800BE50C:
/* 800BE50C  C0 1D 33 B4 */	lfs f0, 0x33b4(r29)
/* 800BE510  C0 3D 1A 08 */	lfs f1, 0x1a08(r29)
/* 800BE514  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BE518  7C 00 00 26 */	mfcr r0
/* 800BE51C  54 1F 17 FE */	rlwinm r31, r0, 2, 0x1f, 0x1f
/* 800BE520  2C 03 00 0A */	cmpwi r3, 0xa
/* 800BE524  40 82 00 10 */	bne lbl_800BE534
/* 800BE528  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800BE52C  EF E0 08 28 */	fsubs f31, f0, f1
/* 800BE530  48 00 00 10 */	b lbl_800BE540
lbl_800BE534:
/* 800BE534  C0 3D 33 C8 */	lfs f1, 0x33c8(r29)
/* 800BE538  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800BE53C  EF E1 00 28 */	fsubs f31, f1, f0
lbl_800BE540:
/* 800BE540  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800BE544  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800BE548  38 63 05 26 */	addi r3, r3, 0x526
/* 800BE54C  4B FD F5 15 */	bl checkStageName__9daAlink_cFPCc
/* 800BE550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BE554  41 82 00 0C */	beq lbl_800BE560
/* 800BE558  C0 02 95 08 */	lfs f0, lit_20495(r2)
/* 800BE55C  48 00 00 1C */	b lbl_800BE578
lbl_800BE560:
/* 800BE560  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800BE564  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800BE568  41 82 00 0C */	beq lbl_800BE574
/* 800BE56C  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800BE570  48 00 00 08 */	b lbl_800BE578
lbl_800BE574:
/* 800BE574  C0 02 94 4C */	lfs f0, lit_14782(r2)
lbl_800BE578:
/* 800BE578  80 9D 31 74 */	lwz r4, 0x3174(r29)
/* 800BE57C  2C 04 00 0A */	cmpwi r4, 0xa
/* 800BE580  41 82 00 54 */	beq lbl_800BE5D4
/* 800BE584  2C 1F 00 00 */	cmpwi r31, 0
/* 800BE588  41 82 00 10 */	beq lbl_800BE598
/* 800BE58C  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE590  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BE594  40 82 00 A4 */	bne lbl_800BE638
lbl_800BE598:
/* 800BE598  2C 1F 00 00 */	cmpwi r31, 0
/* 800BE59C  40 82 00 38 */	bne lbl_800BE5D4
/* 800BE5A0  80 7D 31 A0 */	lwz r3, 0x31a0(r29)
/* 800BE5A4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800BE5A8  40 82 00 10 */	bne lbl_800BE5B8
/* 800BE5AC  80 1D 05 7C */	lwz r0, 0x57c(r29)
/* 800BE5B0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800BE5B4  41 82 00 20 */	beq lbl_800BE5D4
lbl_800BE5B8:
/* 800BE5B8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BE5BC  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800BE5C0  41 82 00 14 */	beq lbl_800BE5D4
/* 800BE5C4  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 800BE5C8  40 82 00 0C */	bne lbl_800BE5D4
/* 800BE5CC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800BE5D0  41 81 00 68 */	bgt lbl_800BE638
lbl_800BE5D4:
/* 800BE5D4  2C 04 00 0A */	cmpwi r4, 0xa
/* 800BE5D8  40 82 00 14 */	bne lbl_800BE5EC
/* 800BE5DC  C0 02 95 08 */	lfs f0, lit_20495(r2)
/* 800BE5E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800BE5E4  4C 40 13 82 */	cror 2, 0, 2
/* 800BE5E8  41 82 00 50 */	beq lbl_800BE638
lbl_800BE5EC:
/* 800BE5EC  7F A3 EB 78 */	mr r3, r29
/* 800BE5F0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800BE5F4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800BE5F8  7D 89 03 A6 */	mtctr r12
/* 800BE5FC  4E 80 04 21 */	bctrl 
/* 800BE600  28 03 00 00 */	cmplwi r3, 0
/* 800BE604  41 82 00 1C */	beq lbl_800BE620
/* 800BE608  80 7D 28 18 */	lwz r3, 0x2818(r29)
/* 800BE60C  28 03 00 00 */	cmplwi r3, 0
/* 800BE610  41 82 00 10 */	beq lbl_800BE620
/* 800BE614  80 03 06 78 */	lwz r0, 0x678(r3)
/* 800BE618  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BE61C  40 82 00 1C */	bne lbl_800BE638
lbl_800BE620:
/* 800BE620  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 800BE624  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BE628  41 82 03 88 */	beq lbl_800BE9B0
/* 800BE62C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BE630  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800BE634  41 82 03 7C */	beq lbl_800BE9B0
lbl_800BE638:
/* 800BE638  80 1D 31 74 */	lwz r0, 0x3174(r29)
/* 800BE63C  2C 00 00 04 */	cmpwi r0, 4
/* 800BE640  41 82 00 0C */	beq lbl_800BE64C
/* 800BE644  2C 00 00 0A */	cmpwi r0, 0xa
/* 800BE648  40 82 00 5C */	bne lbl_800BE6A4
lbl_800BE64C:
/* 800BE64C  7F A3 EB 78 */	mr r3, r29
/* 800BE650  4B FF FC 1D */	bl checkCoachGuardGame__9daAlink_cFv
/* 800BE654  2C 03 00 00 */	cmpwi r3, 0
/* 800BE658  41 82 00 10 */	beq lbl_800BE668
/* 800BE65C  3B E0 00 00 */	li r31, 0
/* 800BE660  3B C0 FF FF */	li r30, -1
/* 800BE664  48 00 00 24 */	b lbl_800BE688
lbl_800BE668:
/* 800BE668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BE66C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BE670  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BE674  38 9D 1A 60 */	addi r4, r29, 0x1a60
/* 800BE678  4B FB 65 21 */	bl GetExitId__4dBgSFRC13cBgS_PolyInfo
/* 800BE67C  7C 7F 1B 78 */	mr r31, r3
/* 800BE680  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 800BE684  7C 1E 07 74 */	extsb r30, r0
lbl_800BE688:
/* 800BE688  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE68C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BE690  41 82 00 18 */	beq lbl_800BE6A8
/* 800BE694  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 800BE698  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800BE69C  90 1D 19 9C */	stw r0, 0x199c(r29)
/* 800BE6A0  48 00 00 08 */	b lbl_800BE6A8
lbl_800BE6A4:
/* 800BE6A4  3B E0 00 3F */	li r31, 0x3f
lbl_800BE6A8:
/* 800BE6A8  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BE6AC  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800BE6B0  40 82 00 38 */	bne lbl_800BE6E8
/* 800BE6B4  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800BE6B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BE6BC  41 82 00 2C */	beq lbl_800BE6E8
/* 800BE6C0  7F A3 EB 78 */	mr r3, r29
/* 800BE6C4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010041@ha */
/* 800BE6C8  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x00010041@l */
/* 800BE6CC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800BE6D0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800BE6D4  7D 89 03 A6 */	mtctr r12
/* 800BE6D8  4E 80 04 21 */	bctrl 
/* 800BE6DC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BE6E0  64 00 00 04 */	oris r0, r0, 4
/* 800BE6E4  90 1D 05 70 */	stw r0, 0x570(r29)
lbl_800BE6E8:
/* 800BE6E8  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 800BE6EC  41 82 01 08 */	beq lbl_800BE7F4
/* 800BE6F0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BE6F4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800BE6F8  40 82 01 48 */	bne lbl_800BE840
/* 800BE6FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BE700  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BE704  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800BE708  7F A4 EB 78 */	mr r4, r29
/* 800BE70C  38 A0 00 00 */	li r5, 0
/* 800BE710  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800BE714  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800BE718  4B F8 4A 55 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800BE71C  2C 03 00 00 */	cmpwi r3, 0
/* 800BE720  41 82 01 20 */	beq lbl_800BE840
/* 800BE724  7F A3 EB 78 */	mr r3, r29
/* 800BE728  38 80 00 04 */	li r4, 4
/* 800BE72C  38 A0 00 00 */	li r5, 0
/* 800BE730  48 05 A4 05 */	bl checkRestartDead__9daAlink_cFii
/* 800BE734  2C 03 00 00 */	cmpwi r3, 0
/* 800BE738  40 82 01 08 */	bne lbl_800BE840
/* 800BE73C  38 00 00 03 */	li r0, 3
/* 800BE740  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 800BE744  7F A3 EB 78 */	mr r3, r29
/* 800BE748  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800BE74C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800BE750  7D 89 03 A6 */	mtctr r12
/* 800BE754  4E 80 04 21 */	bctrl 
/* 800BE758  28 03 00 00 */	cmplwi r3, 0
/* 800BE75C  41 82 00 18 */	beq lbl_800BE774
/* 800BE760  38 00 00 0E */	li r0, 0xe
/* 800BE764  90 1D 06 14 */	stw r0, 0x614(r29)
/* 800BE768  38 00 00 02 */	li r0, 2
/* 800BE76C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 800BE770  48 00 00 0C */	b lbl_800BE77C
lbl_800BE774:
/* 800BE774  38 00 00 01 */	li r0, 1
/* 800BE778  90 1D 06 14 */	stw r0, 0x614(r29)
lbl_800BE77C:
/* 800BE77C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BE780  60 00 40 00 */	ori r0, r0, 0x4000
/* 800BE784  90 1D 05 70 */	stw r0, 0x570(r29)
/* 800BE788  38 00 00 05 */	li r0, 5
/* 800BE78C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BE790  7F A3 EB 78 */	mr r3, r29
/* 800BE794  38 80 00 04 */	li r4, 4
/* 800BE798  38 A1 00 0C */	addi r5, r1, 0xc
/* 800BE79C  4B FF F6 85 */	bl setLastSceneDamage__9daAlink_cFiPUl
/* 800BE7A0  38 00 00 33 */	li r0, 0x33
/* 800BE7A4  90 01 00 08 */	stw r0, 8(r1)
/* 800BE7A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800BE7AC  38 81 00 08 */	addi r4, r1, 8
/* 800BE7B0  38 A0 00 00 */	li r5, 0
/* 800BE7B4  38 C0 00 00 */	li r6, 0
/* 800BE7B8  38 E0 00 00 */	li r7, 0
/* 800BE7BC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800BE7C0  FC 40 08 90 */	fmr f2, f1
/* 800BE7C4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800BE7C8  FC 80 18 90 */	fmr f4, f3
/* 800BE7CC  39 00 00 00 */	li r8, 0
/* 800BE7D0  48 1E D1 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800BE7D4  7F E3 FB 78 */	mr r3, r31
/* 800BE7D8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800BE7DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800BE7E0  7F C5 F3 78 */	mr r5, r30
/* 800BE7E4  A8 DD 04 E6 */	lha r6, 0x4e6(r29)
/* 800BE7E8  38 E0 FF FF */	li r7, -1
/* 800BE7EC  4B F6 89 85 */	bl dStage_changeScene__FifUlScsi
/* 800BE7F0  48 00 00 50 */	b lbl_800BE840
lbl_800BE7F4:
/* 800BE7F4  7F A3 EB 78 */	mr r3, r29
/* 800BE7F8  38 80 00 05 */	li r4, 5
/* 800BE7FC  38 A0 00 C9 */	li r5, 0xc9
/* 800BE800  38 C0 00 04 */	li r6, 4
/* 800BE804  38 E0 00 00 */	li r7, 0
/* 800BE808  4B FF F7 59 */	bl startRestartRoom__9daAlink_cFUliii
/* 800BE80C  2C 03 00 00 */	cmpwi r3, 0
/* 800BE810  41 82 00 30 */	beq lbl_800BE840
/* 800BE814  7F A3 EB 78 */	mr r3, r29
/* 800BE818  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800BE81C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800BE820  7D 89 03 A6 */	mtctr r12
/* 800BE824  4E 80 04 21 */	bctrl 
/* 800BE828  28 03 00 00 */	cmplwi r3, 0
/* 800BE82C  41 82 00 14 */	beq lbl_800BE840
/* 800BE830  38 00 00 0E */	li r0, 0xe
/* 800BE834  90 1D 06 14 */	stw r0, 0x614(r29)
/* 800BE838  38 00 00 02 */	li r0, 2
/* 800BE83C  90 1D 06 0C */	stw r0, 0x60c(r29)
lbl_800BE840:
/* 800BE840  38 60 00 01 */	li r3, 1
/* 800BE844  48 00 01 70 */	b lbl_800BE9B4
lbl_800BE848:
/* 800BE848  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 800BE84C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BE850  41 82 00 14 */	beq lbl_800BE864
/* 800BE854  38 7D 1A 60 */	addi r3, r29, 0x1a60
/* 800BE858  48 0E CD 45 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800BE85C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800BE860  40 82 00 FC */	bne lbl_800BE95C
lbl_800BE864:
/* 800BE864  7F A3 EB 78 */	mr r3, r29
/* 800BE868  4B FF 2C 21 */	bl checkWaterPolygonUnder__9daAlink_cFv
/* 800BE86C  2C 03 00 00 */	cmpwi r3, 0
/* 800BE870  41 82 00 20 */	beq lbl_800BE890
/* 800BE874  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BE878  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800BE87C  41 82 00 14 */	beq lbl_800BE890
/* 800BE880  38 7D 1A F0 */	addi r3, r29, 0x1af0
/* 800BE884  48 0E CD 19 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800BE888  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800BE88C  40 82 00 D0 */	bne lbl_800BE95C
lbl_800BE890:
/* 800BE890  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE894  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BE898  41 82 00 2C */	beq lbl_800BE8C4
/* 800BE89C  C0 1D 33 BC */	lfs f0, 0x33bc(r29)
/* 800BE8A0  C0 3D 33 B8 */	lfs f1, 0x33b8(r29)
/* 800BE8A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BE8A8  40 80 00 1C */	bge lbl_800BE8C4
/* 800BE8AC  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800BE8B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800BE8B4  41 82 00 10 */	beq lbl_800BE8C4
/* 800BE8B8  88 1D 2F C6 */	lbz r0, 0x2fc6(r29)
/* 800BE8BC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800BE8C0  40 82 00 9C */	bne lbl_800BE95C
lbl_800BE8C4:
/* 800BE8C4  88 1D 2F BC */	lbz r0, 0x2fbc(r29)
/* 800BE8C8  28 00 00 06 */	cmplwi r0, 6
/* 800BE8CC  40 82 00 40 */	bne lbl_800BE90C
/* 800BE8D0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BE8D4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800BE8D8  41 82 00 34 */	beq lbl_800BE90C
/* 800BE8DC  7F A3 EB 78 */	mr r3, r29
/* 800BE8E0  4B FF 2B A9 */	bl checkWaterPolygonUnder__9daAlink_cFv
/* 800BE8E4  2C 03 00 00 */	cmpwi r3, 0
/* 800BE8E8  41 82 00 24 */	beq lbl_800BE90C
/* 800BE8EC  C0 5D 33 B4 */	lfs f2, 0x33b4(r29)
/* 800BE8F0  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 800BE8F4  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 800BE8F8  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 800BE8FC  C0 1D 1A 08 */	lfs f0, 0x1a08(r29)
/* 800BE900  EC 01 00 2A */	fadds f0, f1, f0
/* 800BE904  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BE908  41 81 00 54 */	bgt lbl_800BE95C
lbl_800BE90C:
/* 800BE90C  88 1D 2F C5 */	lbz r0, 0x2fc5(r29)
/* 800BE910  28 00 00 06 */	cmplwi r0, 6
/* 800BE914  40 82 00 9C */	bne lbl_800BE9B0
/* 800BE918  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800BE91C  C0 5D 33 B8 */	lfs f2, 0x33b8(r29)
/* 800BE920  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 800BE924  41 82 00 8C */	beq lbl_800BE9B0
/* 800BE928  C0 1D 33 BC */	lfs f0, 0x33bc(r29)
/* 800BE92C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800BE930  40 80 00 80 */	bge lbl_800BE9B0
/* 800BE934  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE938  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BE93C  41 82 00 74 */	beq lbl_800BE9B0
/* 800BE940  C0 3D 33 D8 */	lfs f1, 0x33d8(r29)
/* 800BE944  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 800BE948  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 800BE94C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800BE950  EC 01 00 2A */	fadds f0, f1, f0
/* 800BE954  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BE958  40 81 00 58 */	ble lbl_800BE9B0
lbl_800BE95C:
/* 800BE95C  88 1D 2F BC */	lbz r0, 0x2fbc(r29)
/* 800BE960  28 00 00 06 */	cmplwi r0, 6
/* 800BE964  41 82 00 1C */	beq lbl_800BE980
/* 800BE968  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BE96C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BE970  41 82 00 20 */	beq lbl_800BE990
/* 800BE974  88 1D 2F C5 */	lbz r0, 0x2fc5(r29)
/* 800BE978  28 00 00 06 */	cmplwi r0, 6
/* 800BE97C  40 82 00 14 */	bne lbl_800BE990
lbl_800BE980:
/* 800BE980  7F A3 EB 78 */	mr r3, r29
/* 800BE984  38 80 00 00 */	li r4, 0
/* 800BE988  48 01 D5 51 */	bl procCoLavaReturnInit__9daAlink_cFi
/* 800BE98C  48 00 00 28 */	b lbl_800BE9B4
lbl_800BE990:
/* 800BE990  7F A3 EB 78 */	mr r3, r29
/* 800BE994  38 80 00 05 */	li r4, 5
/* 800BE998  38 A0 00 C9 */	li r5, 0xc9
/* 800BE99C  38 C0 00 04 */	li r6, 4
/* 800BE9A0  38 E0 00 00 */	li r7, 0
/* 800BE9A4  4B FF F5 BD */	bl startRestartRoom__9daAlink_cFUliii
/* 800BE9A8  38 60 00 01 */	li r3, 1
/* 800BE9AC  48 00 00 08 */	b lbl_800BE9B4
lbl_800BE9B0:
/* 800BE9B0  38 60 00 00 */	li r3, 0
lbl_800BE9B4:
/* 800BE9B4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800BE9B8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800BE9BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800BE9C0  48 2A 38 69 */	bl _restgpr_29
/* 800BE9C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BE9C8  7C 08 03 A6 */	mtlr r0
/* 800BE9CC  38 21 00 30 */	addi r1, r1, 0x30
/* 800BE9D0  4E 80 00 20 */	blr 
