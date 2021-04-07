lbl_80C0D3E0:
/* 80C0D3E0  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 80C0D3E4  7C 08 02 A6 */	mflr r0
/* 80C0D3E8  90 01 02 14 */	stw r0, 0x214(r1)
/* 80C0D3EC  39 61 02 10 */	addi r11, r1, 0x210
/* 80C0D3F0  4B 75 4D E1 */	bl _savegpr_26
/* 80C0D3F4  7C 7F 1B 78 */	mr r31, r3
/* 80C0D3F8  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0D3FC  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0D400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0D404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0D408  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80C0D40C  38 7F 20 4C */	addi r3, r31, 0x204c
/* 80C0D410  4B 54 04 29 */	bl getActor__18daBaseNpc_acMngr_cFv
/* 80C0D414  7C 7C 1B 78 */	mr r28, r3
/* 80C0D418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0D41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0D420  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0D424  7C 00 07 74 */	extsb r0, r0
/* 80C0D428  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0D42C  7C 63 02 14 */	add r3, r3, r0
/* 80C0D430  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 80C0D434  4B 57 42 0D */	bl dCam_getBody__Fv
/* 80C0D438  7C 7A 1B 78 */	mr r26, r3
/* 80C0D43C  A0 1F 0A 7C */	lhz r0, 0xa7c(r31)
/* 80C0D440  2C 00 00 01 */	cmpwi r0, 1
/* 80C0D444  41 82 00 60 */	beq lbl_80C0D4A4
/* 80C0D448  40 80 00 10 */	bge lbl_80C0D458
/* 80C0D44C  2C 00 00 00 */	cmpwi r0, 0
/* 80C0D450  40 80 00 14 */	bge lbl_80C0D464
/* 80C0D454  48 00 1A F4 */	b lbl_80C0EF48
lbl_80C0D458:
/* 80C0D458  2C 00 00 03 */	cmpwi r0, 3
/* 80C0D45C  40 80 1A EC */	bge lbl_80C0EF48
/* 80C0D460  48 00 1A E0 */	b lbl_80C0EF40
lbl_80C0D464:
/* 80C0D464  7F E3 FB 78 */	mr r3, r31
/* 80C0D468  38 80 00 00 */	li r4, 0
/* 80C0D46C  38 BE 00 00 */	addi r5, r30, 0
/* 80C0D470  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0D474  4B FF 43 19 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0D478  7F E3 FB 78 */	mr r3, r31
/* 80C0D47C  38 80 00 0D */	li r4, 0xd
/* 80C0D480  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C0D484  4B FF 43 29 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0D488  7F E3 FB 78 */	mr r3, r31
/* 80C0D48C  38 80 00 00 */	li r4, 0
/* 80C0D490  4B FF 56 45 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0D494  38 00 00 01 */	li r0, 1
/* 80C0D498  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0D49C  90 1F 20 9C */	stw r0, 0x209c(r31)
/* 80C0D4A0  48 00 1A A8 */	b lbl_80C0EF48
lbl_80C0D4A4:
/* 80C0D4A4  A8 1F 20 54 */	lha r0, 0x2054(r31)
/* 80C0D4A8  28 00 00 0B */	cmplwi r0, 0xb
/* 80C0D4AC  41 81 1A 9C */	bgt lbl_80C0EF48
/* 80C0D4B0  3C 60 80 C1 */	lis r3, lit_10259@ha /* 0x80C103A4@ha */
/* 80C0D4B4  38 63 03 A4 */	addi r3, r3, lit_10259@l /* 0x80C103A4@l */
/* 80C0D4B8  54 00 10 3A */	slwi r0, r0, 2
/* 80C0D4BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C0D4C0  7C 09 03 A6 */	mtctr r0
/* 80C0D4C4  4E 80 04 20 */	bctr 
lbl_80C0D4C8:
/* 80C0D4C8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80C0D4CC  28 00 00 02 */	cmplwi r0, 2
/* 80C0D4D0  41 82 00 30 */	beq lbl_80C0D500
/* 80C0D4D4  7F E3 FB 78 */	mr r3, r31
/* 80C0D4D8  38 80 00 02 */	li r4, 2
/* 80C0D4DC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 80C0D4E0  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 80C0D4E4  38 C0 00 00 */	li r6, 0
/* 80C0D4E8  4B 40 E4 21 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80C0D4EC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C0D4F0  60 00 00 02 */	ori r0, r0, 2
/* 80C0D4F4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80C0D4F8  38 60 00 01 */	li r3, 1
/* 80C0D4FC  48 00 1A B0 */	b lbl_80C0EFAC
lbl_80C0D500:
/* 80C0D500  38 7B 02 48 */	addi r3, r27, 0x248
/* 80C0D504  4B 55 3F CD */	bl Stop__9dCamera_cFv
/* 80C0D508  38 00 00 02 */	li r0, 2
/* 80C0D50C  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0D510  38 00 00 00 */	li r0, 0
/* 80C0D514  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0D518  C0 3A 00 58 */	lfs f1, 0x58(r26)
/* 80C0D51C  C0 1A 06 F4 */	lfs f0, 0x6f4(r26)
/* 80C0D520  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0D524  D0 1F 20 8C */	stfs f0, 0x208c(r31)
/* 80C0D528  D0 1F 20 70 */	stfs f0, 0x2070(r31)
/* 80C0D52C  C0 1F 20 34 */	lfs f0, 0x2034(r31)
/* 80C0D530  D0 1F 20 64 */	stfs f0, 0x2064(r31)
/* 80C0D534  C0 1F 20 38 */	lfs f0, 0x2038(r31)
/* 80C0D538  D0 1F 20 68 */	stfs f0, 0x2068(r31)
/* 80C0D53C  C0 1F 20 3C */	lfs f0, 0x203c(r31)
/* 80C0D540  D0 1F 20 6C */	stfs f0, 0x206c(r31)
/* 80C0D544  C0 3F 20 68 */	lfs f1, 0x2068(r31)
/* 80C0D548  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80C0D54C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0D550  D0 1F 20 68 */	stfs f0, 0x2068(r31)
/* 80C0D554  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0D558  D0 1F 20 58 */	stfs f0, 0x2058(r31)
/* 80C0D55C  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0D560  D0 1F 20 5C */	stfs f0, 0x205c(r31)
/* 80C0D564  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0D568  D0 1F 20 60 */	stfs f0, 0x2060(r31)
/* 80C0D56C  C0 3F 20 60 */	lfs f1, 0x2060(r31)
/* 80C0D570  C0 1E 03 1C */	lfs f0, 0x31c(r30)
/* 80C0D574  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0D578  D0 1F 20 60 */	stfs f0, 0x2060(r31)
/* 80C0D57C  C0 3F 20 64 */	lfs f1, 0x2064(r31)
/* 80C0D580  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 80C0D584  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0D588  D0 1F 20 64 */	stfs f0, 0x2064(r31)
/* 80C0D58C  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0D590  D0 1F 20 80 */	stfs f0, 0x2080(r31)
/* 80C0D594  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0D598  D0 1F 20 84 */	stfs f0, 0x2084(r31)
/* 80C0D59C  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0D5A0  D0 1F 20 88 */	stfs f0, 0x2088(r31)
/* 80C0D5A4  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 80C0D5A8  D0 1F 20 74 */	stfs f0, 0x2074(r31)
/* 80C0D5AC  C0 1F 20 5C */	lfs f0, 0x205c(r31)
/* 80C0D5B0  D0 1F 20 78 */	stfs f0, 0x2078(r31)
/* 80C0D5B4  C0 1F 20 60 */	lfs f0, 0x2060(r31)
/* 80C0D5B8  D0 1F 20 7C */	stfs f0, 0x207c(r31)
/* 80C0D5BC  38 7B 02 48 */	addi r3, r27, 0x248
/* 80C0D5C0  38 80 00 02 */	li r4, 2
/* 80C0D5C4  4B 55 5A 49 */	bl SetTrimSize__9dCamera_cFl
/* 80C0D5C8  38 00 00 03 */	li r0, 3
/* 80C0D5CC  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 80C0D5D0  38 00 00 00 */	li r0, 0
/* 80C0D5D4  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80C0D5D8  38 7C 20 4C */	addi r3, r28, 0x204c
/* 80C0D5DC  7F E4 FB 78 */	mr r4, r31
/* 80C0D5E0  4B 54 02 3D */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C0D5E4  3C 60 80 C1 */	lis r3, lit_9635@ha /* 0x80C1038C@ha */
/* 80C0D5E8  38 83 03 8C */	addi r4, r3, lit_9635@l /* 0x80C1038C@l */
/* 80C0D5EC  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0D5F0  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0D5F4  90 61 01 20 */	stw r3, 0x120(r1)
/* 80C0D5F8  90 01 01 24 */	stw r0, 0x124(r1)
/* 80C0D5FC  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0D600  90 01 01 28 */	stw r0, 0x128(r1)
/* 80C0D604  7F 83 E3 78 */	mr r3, r28
/* 80C0D608  38 81 01 20 */	addi r4, r1, 0x120
/* 80C0D60C  4B FF 42 E9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0D610  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80C0D614  60 00 80 00 */	ori r0, r0, 0x8000
/* 80C0D618  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80C0D61C  38 00 00 00 */	li r0, 0
/* 80C0D620  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0D624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0D628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0D62C  3B 43 4E C8 */	addi r26, r3, 0x4ec8
/* 80C0D630  7F 43 D3 78 */	mr r3, r26
/* 80C0D634  7F E4 FB 78 */	mr r4, r31
/* 80C0D638  3C A0 80 C1 */	lis r5, skipCallBack__FPvi@ha /* 0x80C0D3A8@ha */
/* 80C0D63C  38 A5 D3 A8 */	addi r5, r5, skipCallBack__FPvi@l /* 0x80C0D3A8@l */
/* 80C0D640  38 C0 00 00 */	li r6, 0
/* 80C0D644  4B 43 52 D1 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80C0D648  7F 43 D3 78 */	mr r3, r26
/* 80C0D64C  4B 43 53 5D */	bl onSkipFade__14dEvt_control_cFv
lbl_80C0D650:
/* 80C0D650  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C0D654  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 80C0D658  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C0D65C  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 80C0D660  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C0D664  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 80C0D668  38 61 01 14 */	addi r3, r1, 0x114
/* 80C0D66C  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80C0D670  38 BF 20 34 */	addi r5, r31, 0x2034
/* 80C0D674  4B 65 94 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80C0D678  38 61 01 14 */	addi r3, r1, 0x114
/* 80C0D67C  4B 73 9A BD */	bl PSVECSquareMag
/* 80C0D680  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0D684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D688  40 81 00 58 */	ble lbl_80C0D6E0
/* 80C0D68C  FC 00 08 34 */	frsqrte f0, f1
/* 80C0D690  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0D694  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D698  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0D69C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D6A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D6A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D6A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D6AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D6B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D6B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D6B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D6BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D6C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D6C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D6C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D6CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D6D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D6D4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C0D6D8  FC 20 08 18 */	frsp f1, f1
/* 80C0D6DC  48 00 00 88 */	b lbl_80C0D764
lbl_80C0D6E0:
/* 80C0D6E0  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0D6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D6E8  40 80 00 10 */	bge lbl_80C0D6F8
/* 80C0D6EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0D6F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0D6F4  48 00 00 70 */	b lbl_80C0D764
lbl_80C0D6F8:
/* 80C0D6F8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C0D6FC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80C0D700  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0D704  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0D708  7C 03 00 00 */	cmpw r3, r0
/* 80C0D70C  41 82 00 14 */	beq lbl_80C0D720
/* 80C0D710  40 80 00 40 */	bge lbl_80C0D750
/* 80C0D714  2C 03 00 00 */	cmpwi r3, 0
/* 80C0D718  41 82 00 20 */	beq lbl_80C0D738
/* 80C0D71C  48 00 00 34 */	b lbl_80C0D750
lbl_80C0D720:
/* 80C0D720  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0D724  41 82 00 0C */	beq lbl_80C0D730
/* 80C0D728  38 00 00 01 */	li r0, 1
/* 80C0D72C  48 00 00 28 */	b lbl_80C0D754
lbl_80C0D730:
/* 80C0D730  38 00 00 02 */	li r0, 2
/* 80C0D734  48 00 00 20 */	b lbl_80C0D754
lbl_80C0D738:
/* 80C0D738  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0D73C  41 82 00 0C */	beq lbl_80C0D748
/* 80C0D740  38 00 00 05 */	li r0, 5
/* 80C0D744  48 00 00 10 */	b lbl_80C0D754
lbl_80C0D748:
/* 80C0D748  38 00 00 03 */	li r0, 3
/* 80C0D74C  48 00 00 08 */	b lbl_80C0D754
lbl_80C0D750:
/* 80C0D750  38 00 00 04 */	li r0, 4
lbl_80C0D754:
/* 80C0D754  2C 00 00 01 */	cmpwi r0, 1
/* 80C0D758  40 82 00 0C */	bne lbl_80C0D764
/* 80C0D75C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0D760  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C0D764:
/* 80C0D764  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 80C0D768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D76C  40 80 00 84 */	bge lbl_80C0D7F0
/* 80C0D770  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0D774  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80C0D778  41 80 00 18 */	blt lbl_80C0D790
/* 80C0D77C  38 00 00 03 */	li r0, 3
/* 80C0D780  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0D784  38 00 00 00 */	li r0, 0
/* 80C0D788  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0D78C  48 00 00 98 */	b lbl_80C0D824
lbl_80C0D790:
/* 80C0D790  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80C0D794  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C0D798  A0 1D 04 E0 */	lhz r0, 0x4e0(r29)
/* 80C0D79C  B0 01 00 50 */	sth r0, 0x50(r1)
/* 80C0D7A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0D7A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0D7A8  4B 66 34 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0D7AC  38 03 08 00 */	addi r0, r3, 0x800
/* 80C0D7B0  7C 04 07 34 */	extsh r4, r0
/* 80C0D7B4  38 61 00 4E */	addi r3, r1, 0x4e
/* 80C0D7B8  38 A0 00 02 */	li r5, 2
/* 80C0D7BC  A8 DF 1F 3C */	lha r6, 0x1f3c(r31)
/* 80C0D7C0  4B 66 2E 49 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0D7C4  7F A3 EB 78 */	mr r3, r29
/* 80C0D7C8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0D7CC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C0D7D0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C0D7D4  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80C0D7D8  7D 89 03 A6 */	mtctr r12
/* 80C0D7DC  4E 80 04 21 */	bctrl 
/* 80C0D7E0  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0D7E4  38 03 00 01 */	addi r0, r3, 1
/* 80C0D7E8  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0D7EC  48 00 17 5C */	b lbl_80C0EF48
lbl_80C0D7F0:
/* 80C0D7F0  38 00 00 03 */	li r0, 3
/* 80C0D7F4  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80C0D7F8  38 00 00 00 */	li r0, 0
/* 80C0D7FC  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80C0D800  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80C0D804  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80C0D808  C0 1F 20 34 */	lfs f0, 0x2034(r31)
/* 80C0D80C  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 80C0D810  C0 1F 20 38 */	lfs f0, 0x2038(r31)
/* 80C0D814  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 80C0D818  C0 1F 20 3C */	lfs f0, 0x203c(r31)
/* 80C0D81C  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 80C0D820  48 00 17 28 */	b lbl_80C0EF48
lbl_80C0D824:
/* 80C0D824  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0D828  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80C0D82C  41 80 00 48 */	blt lbl_80C0D874
/* 80C0D830  38 00 00 04 */	li r0, 4
/* 80C0D834  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0D838  38 00 00 00 */	li r0, 0
/* 80C0D83C  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0D840  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0D844  D0 1F 20 80 */	stfs f0, 0x2080(r31)
/* 80C0D848  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0D84C  D0 1F 20 84 */	stfs f0, 0x2084(r31)
/* 80C0D850  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0D854  D0 1F 20 88 */	stfs f0, 0x2088(r31)
/* 80C0D858  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 80C0D85C  D0 1F 20 74 */	stfs f0, 0x2074(r31)
/* 80C0D860  C0 1F 20 5C */	lfs f0, 0x205c(r31)
/* 80C0D864  D0 1F 20 78 */	stfs f0, 0x2078(r31)
/* 80C0D868  C0 1F 20 60 */	lfs f0, 0x2060(r31)
/* 80C0D86C  D0 1F 20 7C */	stfs f0, 0x207c(r31)
/* 80C0D870  48 00 03 38 */	b lbl_80C0DBA8
lbl_80C0D874:
/* 80C0D874  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80C0D878  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C0D87C  A0 1D 04 E0 */	lhz r0, 0x4e0(r29)
/* 80C0D880  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80C0D884  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0D888  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0D88C  4B 66 33 79 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0D890  38 03 D8 00 */	addi r0, r3, -10240
/* 80C0D894  7C 1C 07 34 */	extsh r28, r0
/* 80C0D898  38 61 00 46 */	addi r3, r1, 0x46
/* 80C0D89C  7F 84 E3 78 */	mr r4, r28
/* 80C0D8A0  38 A0 00 04 */	li r5, 4
/* 80C0D8A4  A8 DF 1F 3C */	lha r6, 0x1f3c(r31)
/* 80C0D8A8  4B 66 2D 61 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0D8AC  7F A3 EB 78 */	mr r3, r29
/* 80C0D8B0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0D8B4  38 A1 00 44 */	addi r5, r1, 0x44
/* 80C0D8B8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C0D8BC  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80C0D8C0  7D 89 03 A6 */	mtctr r12
/* 80C0D8C4  4E 80 04 21 */	bctrl 
/* 80C0D8C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0D8CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0D8D0  7F 84 E3 78 */	mr r4, r28
/* 80C0D8D4  4B 3F EB 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0D8D8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0D8DC  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 80C0D8E0  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80C0D8E4  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 80C0D8E8  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C0D8EC  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80C0D8F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0D8F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0D8F8  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 80C0D8FC  7C 85 23 78 */	mr r5, r4
/* 80C0D900  4B 73 94 6D */	bl PSMTXMultVec
/* 80C0D904  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 80C0D908  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0D90C  7C 65 1B 78 */	mr r5, r3
/* 80C0D910  4B 73 97 81 */	bl PSVECAdd
/* 80C0D914  38 61 01 08 */	addi r3, r1, 0x108
/* 80C0D918  38 9F 20 74 */	addi r4, r31, 0x2074
/* 80C0D91C  38 A1 01 D4 */	addi r5, r1, 0x1d4
/* 80C0D920  4B 65 92 15 */	bl __mi__4cXyzCFRC3Vec
/* 80C0D924  38 61 01 08 */	addi r3, r1, 0x108
/* 80C0D928  4B 73 98 11 */	bl PSVECSquareMag
/* 80C0D92C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0D930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D934  40 81 00 58 */	ble lbl_80C0D98C
/* 80C0D938  FC 00 08 34 */	frsqrte f0, f1
/* 80C0D93C  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0D940  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D944  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0D948  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D94C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D950  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D954  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D958  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D95C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D960  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D964  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D968  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D96C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D970  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D974  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D978  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D97C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D980  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0D984  FC 40 10 18 */	frsp f2, f2
/* 80C0D988  48 00 00 90 */	b lbl_80C0DA18
lbl_80C0D98C:
/* 80C0D98C  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0D990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D994  40 80 00 10 */	bge lbl_80C0D9A4
/* 80C0D998  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0D99C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0D9A0  48 00 00 78 */	b lbl_80C0DA18
lbl_80C0D9A4:
/* 80C0D9A4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C0D9A8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80C0D9AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0D9B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0D9B4  7C 03 00 00 */	cmpw r3, r0
/* 80C0D9B8  41 82 00 14 */	beq lbl_80C0D9CC
/* 80C0D9BC  40 80 00 40 */	bge lbl_80C0D9FC
/* 80C0D9C0  2C 03 00 00 */	cmpwi r3, 0
/* 80C0D9C4  41 82 00 20 */	beq lbl_80C0D9E4
/* 80C0D9C8  48 00 00 34 */	b lbl_80C0D9FC
lbl_80C0D9CC:
/* 80C0D9CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0D9D0  41 82 00 0C */	beq lbl_80C0D9DC
/* 80C0D9D4  38 00 00 01 */	li r0, 1
/* 80C0D9D8  48 00 00 28 */	b lbl_80C0DA00
lbl_80C0D9DC:
/* 80C0D9DC  38 00 00 02 */	li r0, 2
/* 80C0D9E0  48 00 00 20 */	b lbl_80C0DA00
lbl_80C0D9E4:
/* 80C0D9E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0D9E8  41 82 00 0C */	beq lbl_80C0D9F4
/* 80C0D9EC  38 00 00 05 */	li r0, 5
/* 80C0D9F0  48 00 00 10 */	b lbl_80C0DA00
lbl_80C0D9F4:
/* 80C0D9F4  38 00 00 03 */	li r0, 3
/* 80C0D9F8  48 00 00 08 */	b lbl_80C0DA00
lbl_80C0D9FC:
/* 80C0D9FC  38 00 00 04 */	li r0, 4
lbl_80C0DA00:
/* 80C0DA00  2C 00 00 01 */	cmpwi r0, 1
/* 80C0DA04  40 82 00 10 */	bne lbl_80C0DA14
/* 80C0DA08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DA0C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DA10  48 00 00 08 */	b lbl_80C0DA18
lbl_80C0DA14:
/* 80C0DA14  FC 40 08 90 */	fmr f2, f1
lbl_80C0DA18:
/* 80C0DA18  38 7F 20 58 */	addi r3, r31, 0x2058
/* 80C0DA1C  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 80C0DA20  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 80C0DA24  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80C0DA28  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0DA2C  4B 66 27 4D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0DA30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DA34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DA38  7F 84 E3 78 */	mr r4, r28
/* 80C0DA3C  4B 3F E9 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0DA40  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DA44  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80C0DA48  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C0DA4C  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80C0DA50  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 80C0DA54  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80C0DA58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DA5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DA60  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 80C0DA64  7C 85 23 78 */	mr r5, r4
/* 80C0DA68  4B 73 93 05 */	bl PSMTXMultVec
/* 80C0DA6C  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 80C0DA70  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0DA74  7C 65 1B 78 */	mr r5, r3
/* 80C0DA78  4B 73 96 19 */	bl PSVECAdd
/* 80C0DA7C  38 61 00 FC */	addi r3, r1, 0xfc
/* 80C0DA80  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 80C0DA84  38 BF 20 80 */	addi r5, r31, 0x2080
/* 80C0DA88  4B 65 90 AD */	bl __mi__4cXyzCFRC3Vec
/* 80C0DA8C  38 61 00 FC */	addi r3, r1, 0xfc
/* 80C0DA90  4B 73 96 A9 */	bl PSVECSquareMag
/* 80C0DA94  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DA98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0DA9C  40 81 00 58 */	ble lbl_80C0DAF4
/* 80C0DAA0  FC 00 08 34 */	frsqrte f0, f1
/* 80C0DAA4  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0DAA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DAAC  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0DAB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DAB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DAB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DABC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DAC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DAC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DAC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DACC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DAD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DAD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DAD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DADC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DAE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DAE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DAE8  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0DAEC  FC 40 10 18 */	frsp f2, f2
/* 80C0DAF0  48 00 00 90 */	b lbl_80C0DB80
lbl_80C0DAF4:
/* 80C0DAF4  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0DAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0DAFC  40 80 00 10 */	bge lbl_80C0DB0C
/* 80C0DB00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DB04  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DB08  48 00 00 78 */	b lbl_80C0DB80
lbl_80C0DB0C:
/* 80C0DB0C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C0DB10  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80C0DB14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0DB18  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0DB1C  7C 03 00 00 */	cmpw r3, r0
/* 80C0DB20  41 82 00 14 */	beq lbl_80C0DB34
/* 80C0DB24  40 80 00 40 */	bge lbl_80C0DB64
/* 80C0DB28  2C 03 00 00 */	cmpwi r3, 0
/* 80C0DB2C  41 82 00 20 */	beq lbl_80C0DB4C
/* 80C0DB30  48 00 00 34 */	b lbl_80C0DB64
lbl_80C0DB34:
/* 80C0DB34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0DB38  41 82 00 0C */	beq lbl_80C0DB44
/* 80C0DB3C  38 00 00 01 */	li r0, 1
/* 80C0DB40  48 00 00 28 */	b lbl_80C0DB68
lbl_80C0DB44:
/* 80C0DB44  38 00 00 02 */	li r0, 2
/* 80C0DB48  48 00 00 20 */	b lbl_80C0DB68
lbl_80C0DB4C:
/* 80C0DB4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0DB50  41 82 00 0C */	beq lbl_80C0DB5C
/* 80C0DB54  38 00 00 05 */	li r0, 5
/* 80C0DB58  48 00 00 10 */	b lbl_80C0DB68
lbl_80C0DB5C:
/* 80C0DB5C  38 00 00 03 */	li r0, 3
/* 80C0DB60  48 00 00 08 */	b lbl_80C0DB68
lbl_80C0DB64:
/* 80C0DB64  38 00 00 04 */	li r0, 4
lbl_80C0DB68:
/* 80C0DB68  2C 00 00 01 */	cmpwi r0, 1
/* 80C0DB6C  40 82 00 10 */	bne lbl_80C0DB7C
/* 80C0DB70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DB74  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DB78  48 00 00 08 */	b lbl_80C0DB80
lbl_80C0DB7C:
/* 80C0DB7C  FC 40 08 90 */	fmr f2, f1
lbl_80C0DB80:
/* 80C0DB80  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80C0DB84  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 80C0DB88  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 80C0DB8C  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80C0DB90  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0DB94  4B 66 25 E5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0DB98  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0DB9C  38 03 00 01 */	addi r0, r3, 1
/* 80C0DBA0  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0DBA4  48 00 13 A4 */	b lbl_80C0EF48
lbl_80C0DBA8:
/* 80C0DBA8  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0DBAC  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80C0DBB0  41 80 00 48 */	blt lbl_80C0DBF8
/* 80C0DBB4  38 00 00 05 */	li r0, 5
/* 80C0DBB8  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0DBBC  38 00 00 00 */	li r0, 0
/* 80C0DBC0  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0DBC4  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0DBC8  D0 1F 20 80 */	stfs f0, 0x2080(r31)
/* 80C0DBCC  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0DBD0  D0 1F 20 84 */	stfs f0, 0x2084(r31)
/* 80C0DBD4  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0DBD8  D0 1F 20 88 */	stfs f0, 0x2088(r31)
/* 80C0DBDC  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 80C0DBE0  D0 1F 20 74 */	stfs f0, 0x2074(r31)
/* 80C0DBE4  C0 1F 20 5C */	lfs f0, 0x205c(r31)
/* 80C0DBE8  D0 1F 20 78 */	stfs f0, 0x2078(r31)
/* 80C0DBEC  C0 1F 20 60 */	lfs f0, 0x2060(r31)
/* 80C0DBF0  D0 1F 20 7C */	stfs f0, 0x207c(r31)
/* 80C0DBF4  48 00 03 B8 */	b lbl_80C0DFAC
lbl_80C0DBF8:
/* 80C0DBF8  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80C0DBFC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C0DC00  A0 1D 04 E0 */	lhz r0, 0x4e0(r29)
/* 80C0DC04  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80C0DC08  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0DC0C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0DC10  4B 66 2F F5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0DC14  38 03 08 00 */	addi r0, r3, 0x800
/* 80C0DC18  7C 1A 07 34 */	extsh r26, r0
/* 80C0DC1C  38 61 00 3E */	addi r3, r1, 0x3e
/* 80C0DC20  7F 44 D3 78 */	mr r4, r26
/* 80C0DC24  38 A0 00 01 */	li r5, 1
/* 80C0DC28  A8 DF 1F 3C */	lha r6, 0x1f3c(r31)
/* 80C0DC2C  4B 66 29 DD */	bl cLib_addCalcAngleS2__FPssss
/* 80C0DC30  7F A3 EB 78 */	mr r3, r29
/* 80C0DC34  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0DC38  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C0DC3C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C0DC40  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80C0DC44  7D 89 03 A6 */	mtctr r12
/* 80C0DC48  4E 80 04 21 */	bctrl 
/* 80C0DC4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DC50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DC54  7F 44 D3 78 */	mr r4, r26
/* 80C0DC58  4B 3F E7 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0DC5C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DC60  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80C0DC64  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80C0DC68  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80C0DC6C  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C0DC70  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80C0DC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DC7C  38 81 01 BC */	addi r4, r1, 0x1bc
/* 80C0DC80  7C 85 23 78 */	mr r5, r4
/* 80C0DC84  4B 73 90 E9 */	bl PSMTXMultVec
/* 80C0DC88  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80C0DC8C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0DC90  7C 65 1B 78 */	mr r5, r3
/* 80C0DC94  4B 73 93 FD */	bl PSVECAdd
/* 80C0DC98  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80C0DC9C  38 9F 20 74 */	addi r4, r31, 0x2074
/* 80C0DCA0  38 A1 01 BC */	addi r5, r1, 0x1bc
/* 80C0DCA4  4B 65 8E 91 */	bl __mi__4cXyzCFRC3Vec
/* 80C0DCA8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80C0DCAC  4B 73 94 8D */	bl PSVECSquareMag
/* 80C0DCB0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DCB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0DCB8  40 81 00 58 */	ble lbl_80C0DD10
/* 80C0DCBC  FC 00 08 34 */	frsqrte f0, f1
/* 80C0DCC0  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0DCC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DCC8  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0DCCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DCD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DCD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DCD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DCDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DCE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DCE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DCE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DCEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DCF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DCF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DCF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DCFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DD00  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DD04  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0DD08  FC 40 10 18 */	frsp f2, f2
/* 80C0DD0C  48 00 00 90 */	b lbl_80C0DD9C
lbl_80C0DD10:
/* 80C0DD10  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0DD14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0DD18  40 80 00 10 */	bge lbl_80C0DD28
/* 80C0DD1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DD20  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DD24  48 00 00 78 */	b lbl_80C0DD9C
lbl_80C0DD28:
/* 80C0DD28  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C0DD2C  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80C0DD30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0DD34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0DD38  7C 03 00 00 */	cmpw r3, r0
/* 80C0DD3C  41 82 00 14 */	beq lbl_80C0DD50
/* 80C0DD40  40 80 00 40 */	bge lbl_80C0DD80
/* 80C0DD44  2C 03 00 00 */	cmpwi r3, 0
/* 80C0DD48  41 82 00 20 */	beq lbl_80C0DD68
/* 80C0DD4C  48 00 00 34 */	b lbl_80C0DD80
lbl_80C0DD50:
/* 80C0DD50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0DD54  41 82 00 0C */	beq lbl_80C0DD60
/* 80C0DD58  38 00 00 01 */	li r0, 1
/* 80C0DD5C  48 00 00 28 */	b lbl_80C0DD84
lbl_80C0DD60:
/* 80C0DD60  38 00 00 02 */	li r0, 2
/* 80C0DD64  48 00 00 20 */	b lbl_80C0DD84
lbl_80C0DD68:
/* 80C0DD68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0DD6C  41 82 00 0C */	beq lbl_80C0DD78
/* 80C0DD70  38 00 00 05 */	li r0, 5
/* 80C0DD74  48 00 00 10 */	b lbl_80C0DD84
lbl_80C0DD78:
/* 80C0DD78  38 00 00 03 */	li r0, 3
/* 80C0DD7C  48 00 00 08 */	b lbl_80C0DD84
lbl_80C0DD80:
/* 80C0DD80  38 00 00 04 */	li r0, 4
lbl_80C0DD84:
/* 80C0DD84  2C 00 00 01 */	cmpwi r0, 1
/* 80C0DD88  40 82 00 10 */	bne lbl_80C0DD98
/* 80C0DD8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DD90  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DD94  48 00 00 08 */	b lbl_80C0DD9C
lbl_80C0DD98:
/* 80C0DD98  FC 40 08 90 */	fmr f2, f1
lbl_80C0DD9C:
/* 80C0DD9C  38 7F 20 58 */	addi r3, r31, 0x2058
/* 80C0DDA0  38 81 01 BC */	addi r4, r1, 0x1bc
/* 80C0DDA4  C0 3E 03 20 */	lfs f1, 0x320(r30)
/* 80C0DDA8  C0 1E 03 24 */	lfs f0, 0x324(r30)
/* 80C0DDAC  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0DDB0  4B 66 23 C9 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0DDB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DDB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DDBC  7F 44 D3 78 */	mr r4, r26
/* 80C0DDC0  4B 3F E6 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0DDC4  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DDC8  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80C0DDCC  C0 1E 03 28 */	lfs f0, 0x328(r30)
/* 80C0DDD0  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80C0DDD4  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 80C0DDD8  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80C0DDDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DDE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DDE4  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 80C0DDE8  7C 85 23 78 */	mr r5, r4
/* 80C0DDEC  4B 73 8F 81 */	bl PSMTXMultVec
/* 80C0DDF0  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 80C0DDF4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0DDF8  7C 65 1B 78 */	mr r5, r3
/* 80C0DDFC  4B 73 92 95 */	bl PSVECAdd
/* 80C0DE00  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80C0DE04  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 80C0DE08  38 BF 20 80 */	addi r5, r31, 0x2080
/* 80C0DE0C  4B 65 8D 29 */	bl __mi__4cXyzCFRC3Vec
/* 80C0DE10  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80C0DE14  4B 73 93 25 */	bl PSVECSquareMag
/* 80C0DE18  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0DE20  40 81 00 58 */	ble lbl_80C0DE78
/* 80C0DE24  FC 00 08 34 */	frsqrte f0, f1
/* 80C0DE28  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0DE2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DE30  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0DE34  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DE38  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DE3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DE40  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DE44  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DE48  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DE4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DE50  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DE54  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DE58  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0DE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0DE60  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0DE64  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0DE68  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0DE6C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0DE70  FC 40 10 18 */	frsp f2, f2
/* 80C0DE74  48 00 00 90 */	b lbl_80C0DF04
lbl_80C0DE78:
/* 80C0DE78  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0DE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0DE80  40 80 00 10 */	bge lbl_80C0DE90
/* 80C0DE84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DE88  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DE8C  48 00 00 78 */	b lbl_80C0DF04
lbl_80C0DE90:
/* 80C0DE90  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C0DE94  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C0DE98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0DE9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0DEA0  7C 03 00 00 */	cmpw r3, r0
/* 80C0DEA4  41 82 00 14 */	beq lbl_80C0DEB8
/* 80C0DEA8  40 80 00 40 */	bge lbl_80C0DEE8
/* 80C0DEAC  2C 03 00 00 */	cmpwi r3, 0
/* 80C0DEB0  41 82 00 20 */	beq lbl_80C0DED0
/* 80C0DEB4  48 00 00 34 */	b lbl_80C0DEE8
lbl_80C0DEB8:
/* 80C0DEB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0DEBC  41 82 00 0C */	beq lbl_80C0DEC8
/* 80C0DEC0  38 00 00 01 */	li r0, 1
/* 80C0DEC4  48 00 00 28 */	b lbl_80C0DEEC
lbl_80C0DEC8:
/* 80C0DEC8  38 00 00 02 */	li r0, 2
/* 80C0DECC  48 00 00 20 */	b lbl_80C0DEEC
lbl_80C0DED0:
/* 80C0DED0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0DED4  41 82 00 0C */	beq lbl_80C0DEE0
/* 80C0DED8  38 00 00 05 */	li r0, 5
/* 80C0DEDC  48 00 00 10 */	b lbl_80C0DEEC
lbl_80C0DEE0:
/* 80C0DEE0  38 00 00 03 */	li r0, 3
/* 80C0DEE4  48 00 00 08 */	b lbl_80C0DEEC
lbl_80C0DEE8:
/* 80C0DEE8  38 00 00 04 */	li r0, 4
lbl_80C0DEEC:
/* 80C0DEEC  2C 00 00 01 */	cmpwi r0, 1
/* 80C0DEF0  40 82 00 10 */	bne lbl_80C0DF00
/* 80C0DEF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0DEF8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0DEFC  48 00 00 08 */	b lbl_80C0DF04
lbl_80C0DF00:
/* 80C0DF00  FC 40 08 90 */	fmr f2, f1
lbl_80C0DF04:
/* 80C0DF04  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80C0DF08  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 80C0DF0C  C0 3E 03 20 */	lfs f1, 0x320(r30)
/* 80C0DF10  C0 1E 03 24 */	lfs f0, 0x324(r30)
/* 80C0DF14  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0DF18  4B 66 22 61 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0DF1C  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0DF20  2C 00 00 96 */	cmpwi r0, 0x96
/* 80C0DF24  40 82 00 78 */	bne lbl_80C0DF9C
/* 80C0DF28  7F E3 FB 78 */	mr r3, r31
/* 80C0DF2C  38 80 00 10 */	li r4, 0x10
/* 80C0DF30  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0DF34  4B FF 38 59 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0DF38  7F E3 FB 78 */	mr r3, r31
/* 80C0DF3C  38 80 00 0B */	li r4, 0xb
/* 80C0DF40  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0DF44  4B FF 38 69 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0DF48  7F E3 FB 78 */	mr r3, r31
/* 80C0DF4C  38 80 00 00 */	li r4, 0
/* 80C0DF50  4B FF 4B 85 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0DF54  7F 83 E3 78 */	mr r3, r28
/* 80C0DF58  38 80 00 11 */	li r4, 0x11
/* 80C0DF5C  38 BE 00 00 */	addi r5, r30, 0
/* 80C0DF60  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0DF64  4B FF 38 29 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0DF68  7F 83 E3 78 */	mr r3, r28
/* 80C0DF6C  38 80 00 0C */	li r4, 0xc
/* 80C0DF70  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C0DF74  4B FF 38 39 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0DF78  7F 83 E3 78 */	mr r3, r28
/* 80C0DF7C  38 80 00 00 */	li r4, 0
/* 80C0DF80  4B FF 4B 55 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0DF84  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80C0DF88  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C0DF8C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80C0DF90  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0DF94  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C0DF98  B0 1F 09 1C */	sth r0, 0x91c(r31)
lbl_80C0DF9C:
/* 80C0DF9C  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0DFA0  38 03 00 01 */	addi r0, r3, 1
/* 80C0DFA4  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0DFA8  48 00 0F A0 */	b lbl_80C0EF48
lbl_80C0DFAC:
/* 80C0DFAC  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0DFB0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80C0DFB4  41 80 00 18 */	blt lbl_80C0DFCC
/* 80C0DFB8  38 00 00 06 */	li r0, 6
/* 80C0DFBC  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0DFC0  38 00 00 00 */	li r0, 0
/* 80C0DFC4  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0DFC8  48 00 02 F0 */	b lbl_80C0E2B8
lbl_80C0DFCC:
/* 80C0DFCC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0DFD0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0DFD4  4B 66 2C 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0DFD8  7C 64 1B 78 */	mr r4, r3
/* 80C0DFDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0DFE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0DFE4  4B 3F E3 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0DFE8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0DFEC  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80C0DFF0  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80C0DFF4  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80C0DFF8  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C0DFFC  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80C0E000  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E004  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E008  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 80C0E00C  7C 85 23 78 */	mr r5, r4
/* 80C0E010  4B 73 8D 5D */	bl PSMTXMultVec
/* 80C0E014  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 80C0E018  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0E01C  7C 65 1B 78 */	mr r5, r3
/* 80C0E020  4B 73 90 71 */	bl PSVECAdd
/* 80C0E024  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80C0E028  38 9F 20 74 */	addi r4, r31, 0x2074
/* 80C0E02C  38 A1 01 A4 */	addi r5, r1, 0x1a4
/* 80C0E030  4B 65 8B 05 */	bl __mi__4cXyzCFRC3Vec
/* 80C0E034  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80C0E038  4B 73 91 01 */	bl PSVECSquareMag
/* 80C0E03C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E044  40 81 00 58 */	ble lbl_80C0E09C
/* 80C0E048  FC 00 08 34 */	frsqrte f0, f1
/* 80C0E04C  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0E050  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E054  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0E058  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E05C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E060  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E064  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E068  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E06C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E070  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E074  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E078  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E07C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E080  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E084  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E088  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E08C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E090  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0E094  FC 40 10 18 */	frsp f2, f2
/* 80C0E098  48 00 00 90 */	b lbl_80C0E128
lbl_80C0E09C:
/* 80C0E09C  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0E0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E0A4  40 80 00 10 */	bge lbl_80C0E0B4
/* 80C0E0A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E0AC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E0B0  48 00 00 78 */	b lbl_80C0E128
lbl_80C0E0B4:
/* 80C0E0B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C0E0B8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80C0E0BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0E0C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0E0C4  7C 03 00 00 */	cmpw r3, r0
/* 80C0E0C8  41 82 00 14 */	beq lbl_80C0E0DC
/* 80C0E0CC  40 80 00 40 */	bge lbl_80C0E10C
/* 80C0E0D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C0E0D4  41 82 00 20 */	beq lbl_80C0E0F4
/* 80C0E0D8  48 00 00 34 */	b lbl_80C0E10C
lbl_80C0E0DC:
/* 80C0E0DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E0E0  41 82 00 0C */	beq lbl_80C0E0EC
/* 80C0E0E4  38 00 00 01 */	li r0, 1
/* 80C0E0E8  48 00 00 28 */	b lbl_80C0E110
lbl_80C0E0EC:
/* 80C0E0EC  38 00 00 02 */	li r0, 2
/* 80C0E0F0  48 00 00 20 */	b lbl_80C0E110
lbl_80C0E0F4:
/* 80C0E0F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E0F8  41 82 00 0C */	beq lbl_80C0E104
/* 80C0E0FC  38 00 00 05 */	li r0, 5
/* 80C0E100  48 00 00 10 */	b lbl_80C0E110
lbl_80C0E104:
/* 80C0E104  38 00 00 03 */	li r0, 3
/* 80C0E108  48 00 00 08 */	b lbl_80C0E110
lbl_80C0E10C:
/* 80C0E10C  38 00 00 04 */	li r0, 4
lbl_80C0E110:
/* 80C0E110  2C 00 00 01 */	cmpwi r0, 1
/* 80C0E114  40 82 00 10 */	bne lbl_80C0E124
/* 80C0E118  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E11C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E120  48 00 00 08 */	b lbl_80C0E128
lbl_80C0E124:
/* 80C0E124  FC 40 08 90 */	fmr f2, f1
lbl_80C0E128:
/* 80C0E128  38 7F 20 58 */	addi r3, r31, 0x2058
/* 80C0E12C  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 80C0E130  C0 3E 03 2C */	lfs f1, 0x32c(r30)
/* 80C0E134  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 80C0E138  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0E13C  4B 66 20 3D */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0E140  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C0E144  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80C0E148  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C0E14C  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 80C0E150  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C0E154  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80C0E158  C0 1E 03 30 */	lfs f0, 0x330(r30)
/* 80C0E15C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0E160  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80C0E164  38 61 00 CC */	addi r3, r1, 0xcc
/* 80C0E168  38 81 01 98 */	addi r4, r1, 0x198
/* 80C0E16C  38 BF 20 80 */	addi r5, r31, 0x2080
/* 80C0E170  4B 65 89 C5 */	bl __mi__4cXyzCFRC3Vec
/* 80C0E174  38 61 00 CC */	addi r3, r1, 0xcc
/* 80C0E178  4B 73 8F C1 */	bl PSVECSquareMag
/* 80C0E17C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E184  40 81 00 58 */	ble lbl_80C0E1DC
/* 80C0E188  FC 00 08 34 */	frsqrte f0, f1
/* 80C0E18C  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0E190  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E194  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0E198  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E19C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E1A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E1A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E1A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E1AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E1B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E1B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E1B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E1BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E1C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E1C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E1C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E1CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E1D0  FC 81 00 32 */	fmul f4, f1, f0
/* 80C0E1D4  FC 80 20 18 */	frsp f4, f4
/* 80C0E1D8  48 00 00 90 */	b lbl_80C0E268
lbl_80C0E1DC:
/* 80C0E1DC  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0E1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E1E4  40 80 00 10 */	bge lbl_80C0E1F4
/* 80C0E1E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E1EC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E1F0  48 00 00 78 */	b lbl_80C0E268
lbl_80C0E1F4:
/* 80C0E1F4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C0E1F8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80C0E1FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0E200  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0E204  7C 03 00 00 */	cmpw r3, r0
/* 80C0E208  41 82 00 14 */	beq lbl_80C0E21C
/* 80C0E20C  40 80 00 40 */	bge lbl_80C0E24C
/* 80C0E210  2C 03 00 00 */	cmpwi r3, 0
/* 80C0E214  41 82 00 20 */	beq lbl_80C0E234
/* 80C0E218  48 00 00 34 */	b lbl_80C0E24C
lbl_80C0E21C:
/* 80C0E21C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E220  41 82 00 0C */	beq lbl_80C0E22C
/* 80C0E224  38 00 00 01 */	li r0, 1
/* 80C0E228  48 00 00 28 */	b lbl_80C0E250
lbl_80C0E22C:
/* 80C0E22C  38 00 00 02 */	li r0, 2
/* 80C0E230  48 00 00 20 */	b lbl_80C0E250
lbl_80C0E234:
/* 80C0E234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E238  41 82 00 0C */	beq lbl_80C0E244
/* 80C0E23C  38 00 00 05 */	li r0, 5
/* 80C0E240  48 00 00 10 */	b lbl_80C0E250
lbl_80C0E244:
/* 80C0E244  38 00 00 03 */	li r0, 3
/* 80C0E248  48 00 00 08 */	b lbl_80C0E250
lbl_80C0E24C:
/* 80C0E24C  38 00 00 04 */	li r0, 4
lbl_80C0E250:
/* 80C0E250  2C 00 00 01 */	cmpwi r0, 1
/* 80C0E254  40 82 00 10 */	bne lbl_80C0E264
/* 80C0E258  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E25C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E260  48 00 00 08 */	b lbl_80C0E268
lbl_80C0E264:
/* 80C0E264  FC 80 08 90 */	fmr f4, f1
lbl_80C0E268:
/* 80C0E268  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80C0E26C  38 81 01 98 */	addi r4, r1, 0x198
/* 80C0E270  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 80C0E274  C0 7E 02 14 */	lfs f3, 0x214(r30)
/* 80C0E278  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0E27C  1C 00 00 03 */	mulli r0, r0, 3
/* 80C0E280  C8 5E 01 30 */	lfd f2, 0x130(r30)
/* 80C0E284  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0E288  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80C0E28C  3C 00 43 30 */	lis r0, 0x4330
/* 80C0E290  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 80C0E294  C8 01 01 F0 */	lfd f0, 0x1f0(r1)
/* 80C0E298  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C0E29C  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C0E2A0  EC 44 00 24 */	fdivs f2, f4, f0
/* 80C0E2A4  4B 66 1E D5 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0E2A8  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0E2AC  38 03 00 01 */	addi r0, r3, 1
/* 80C0E2B0  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0E2B4  48 00 0C 94 */	b lbl_80C0EF48
lbl_80C0E2B8:
/* 80C0E2B8  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0E2BC  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80C0E2C0  41 80 00 18 */	blt lbl_80C0E2D8
/* 80C0E2C4  38 00 00 07 */	li r0, 7
/* 80C0E2C8  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0E2CC  38 00 00 00 */	li r0, 0
/* 80C0E2D0  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0E2D4  48 00 02 C8 */	b lbl_80C0E59C
lbl_80C0E2D8:
/* 80C0E2D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0E2DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0E2E0  4B 66 29 25 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0E2E4  7C 64 1B 78 */	mr r4, r3
/* 80C0E2E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E2EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E2F0  4B 3F E0 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0E2F4  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C0E2F8  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 80C0E2FC  C0 1E 03 34 */	lfs f0, 0x334(r30)
/* 80C0E300  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80C0E304  C0 1E 03 38 */	lfs f0, 0x338(r30)
/* 80C0E308  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80C0E30C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E310  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E314  38 81 01 8C */	addi r4, r1, 0x18c
/* 80C0E318  7C 85 23 78 */	mr r5, r4
/* 80C0E31C  4B 73 8A 51 */	bl PSMTXMultVec
/* 80C0E320  38 61 01 8C */	addi r3, r1, 0x18c
/* 80C0E324  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0E328  7C 65 1B 78 */	mr r5, r3
/* 80C0E32C  4B 73 8D 65 */	bl PSVECAdd
/* 80C0E330  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C0E334  38 9F 20 74 */	addi r4, r31, 0x2074
/* 80C0E338  38 A1 01 8C */	addi r5, r1, 0x18c
/* 80C0E33C  4B 65 87 F9 */	bl __mi__4cXyzCFRC3Vec
/* 80C0E340  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C0E344  4B 73 8D F5 */	bl PSVECSquareMag
/* 80C0E348  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E350  40 81 00 58 */	ble lbl_80C0E3A8
/* 80C0E354  FC 00 08 34 */	frsqrte f0, f1
/* 80C0E358  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0E35C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E360  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0E364  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E368  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E36C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E370  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E374  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E378  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E37C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E380  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E384  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E388  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E38C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E390  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E394  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E398  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E39C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0E3A0  FC 40 10 18 */	frsp f2, f2
/* 80C0E3A4  48 00 00 90 */	b lbl_80C0E434
lbl_80C0E3A8:
/* 80C0E3A8  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0E3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E3B0  40 80 00 10 */	bge lbl_80C0E3C0
/* 80C0E3B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E3B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E3BC  48 00 00 78 */	b lbl_80C0E434
lbl_80C0E3C0:
/* 80C0E3C0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C0E3C4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80C0E3C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0E3CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0E3D0  7C 03 00 00 */	cmpw r3, r0
/* 80C0E3D4  41 82 00 14 */	beq lbl_80C0E3E8
/* 80C0E3D8  40 80 00 40 */	bge lbl_80C0E418
/* 80C0E3DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C0E3E0  41 82 00 20 */	beq lbl_80C0E400
/* 80C0E3E4  48 00 00 34 */	b lbl_80C0E418
lbl_80C0E3E8:
/* 80C0E3E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E3EC  41 82 00 0C */	beq lbl_80C0E3F8
/* 80C0E3F0  38 00 00 01 */	li r0, 1
/* 80C0E3F4  48 00 00 28 */	b lbl_80C0E41C
lbl_80C0E3F8:
/* 80C0E3F8  38 00 00 02 */	li r0, 2
/* 80C0E3FC  48 00 00 20 */	b lbl_80C0E41C
lbl_80C0E400:
/* 80C0E400  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E404  41 82 00 0C */	beq lbl_80C0E410
/* 80C0E408  38 00 00 05 */	li r0, 5
/* 80C0E40C  48 00 00 10 */	b lbl_80C0E41C
lbl_80C0E410:
/* 80C0E410  38 00 00 03 */	li r0, 3
/* 80C0E414  48 00 00 08 */	b lbl_80C0E41C
lbl_80C0E418:
/* 80C0E418  38 00 00 04 */	li r0, 4
lbl_80C0E41C:
/* 80C0E41C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0E420  40 82 00 10 */	bne lbl_80C0E430
/* 80C0E424  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E428  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E42C  48 00 00 08 */	b lbl_80C0E434
lbl_80C0E430:
/* 80C0E430  FC 40 08 90 */	fmr f2, f1
lbl_80C0E434:
/* 80C0E434  38 7F 20 58 */	addi r3, r31, 0x2058
/* 80C0E438  38 81 01 8C */	addi r4, r1, 0x18c
/* 80C0E43C  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 80C0E440  C0 1E 03 3C */	lfs f0, 0x33c(r30)
/* 80C0E444  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0E448  4B 66 1D 31 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0E44C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C0E450  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80C0E454  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C0E458  D0 21 01 84 */	stfs f1, 0x184(r1)
/* 80C0E45C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C0E460  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 80C0E464  C0 1E 03 30 */	lfs f0, 0x330(r30)
/* 80C0E468  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0E46C  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 80C0E470  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80C0E474  38 81 01 80 */	addi r4, r1, 0x180
/* 80C0E478  38 BF 20 80 */	addi r5, r31, 0x2080
/* 80C0E47C  4B 65 86 B9 */	bl __mi__4cXyzCFRC3Vec
/* 80C0E480  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80C0E484  4B 73 8C B5 */	bl PSVECSquareMag
/* 80C0E488  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E48C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E490  40 81 00 58 */	ble lbl_80C0E4E8
/* 80C0E494  FC 00 08 34 */	frsqrte f0, f1
/* 80C0E498  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0E49C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E4A0  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0E4A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E4A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E4AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E4B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E4B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E4B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E4BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E4C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E4C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E4CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E4D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E4D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E4D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E4DC  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0E4E0  FC 40 10 18 */	frsp f2, f2
/* 80C0E4E4  48 00 00 90 */	b lbl_80C0E574
lbl_80C0E4E8:
/* 80C0E4E8  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0E4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E4F0  40 80 00 10 */	bge lbl_80C0E500
/* 80C0E4F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E4F8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E4FC  48 00 00 78 */	b lbl_80C0E574
lbl_80C0E500:
/* 80C0E500  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C0E504  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C0E508  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0E50C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0E510  7C 03 00 00 */	cmpw r3, r0
/* 80C0E514  41 82 00 14 */	beq lbl_80C0E528
/* 80C0E518  40 80 00 40 */	bge lbl_80C0E558
/* 80C0E51C  2C 03 00 00 */	cmpwi r3, 0
/* 80C0E520  41 82 00 20 */	beq lbl_80C0E540
/* 80C0E524  48 00 00 34 */	b lbl_80C0E558
lbl_80C0E528:
/* 80C0E528  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E52C  41 82 00 0C */	beq lbl_80C0E538
/* 80C0E530  38 00 00 01 */	li r0, 1
/* 80C0E534  48 00 00 28 */	b lbl_80C0E55C
lbl_80C0E538:
/* 80C0E538  38 00 00 02 */	li r0, 2
/* 80C0E53C  48 00 00 20 */	b lbl_80C0E55C
lbl_80C0E540:
/* 80C0E540  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E544  41 82 00 0C */	beq lbl_80C0E550
/* 80C0E548  38 00 00 05 */	li r0, 5
/* 80C0E54C  48 00 00 10 */	b lbl_80C0E55C
lbl_80C0E550:
/* 80C0E550  38 00 00 03 */	li r0, 3
/* 80C0E554  48 00 00 08 */	b lbl_80C0E55C
lbl_80C0E558:
/* 80C0E558  38 00 00 04 */	li r0, 4
lbl_80C0E55C:
/* 80C0E55C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0E560  40 82 00 10 */	bne lbl_80C0E570
/* 80C0E564  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E568  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E56C  48 00 00 08 */	b lbl_80C0E574
lbl_80C0E570:
/* 80C0E570  FC 40 08 90 */	fmr f2, f1
lbl_80C0E574:
/* 80C0E574  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80C0E578  38 81 01 80 */	addi r4, r1, 0x180
/* 80C0E57C  C0 3E 03 40 */	lfs f1, 0x340(r30)
/* 80C0E580  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80C0E584  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0E588  4B 66 1B F1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0E58C  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0E590  38 03 00 01 */	addi r0, r3, 1
/* 80C0E594  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0E598  48 00 09 B0 */	b lbl_80C0EF48
lbl_80C0E59C:
/* 80C0E59C  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C0E5A0  38 80 00 01 */	li r4, 1
/* 80C0E5A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C0E5A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C0E5AC  40 82 00 18 */	bne lbl_80C0E5C4
/* 80C0E5B0  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0E5B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C0E5B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C0E5BC  41 82 00 08 */	beq lbl_80C0E5C4
/* 80C0E5C0  38 80 00 00 */	li r4, 0
lbl_80C0E5C4:
/* 80C0E5C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C0E5C8  41 82 09 80 */	beq lbl_80C0EF48
/* 80C0E5CC  38 00 00 01 */	li r0, 1
/* 80C0E5D0  B0 1C 20 54 */	sth r0, 0x2054(r28)
/* 80C0E5D4  38 00 00 08 */	li r0, 8
/* 80C0E5D8  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0E5DC  38 00 00 00 */	li r0, 0
/* 80C0E5E0  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0E5E4  7F E3 FB 78 */	mr r3, r31
/* 80C0E5E8  38 80 00 00 */	li r4, 0
/* 80C0E5EC  38 BE 00 00 */	addi r5, r30, 0
/* 80C0E5F0  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0E5F4  4B FF 31 99 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0E5F8  7F E3 FB 78 */	mr r3, r31
/* 80C0E5FC  38 80 00 0D */	li r4, 0xd
/* 80C0E600  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C0E604  4B FF 31 A9 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0E608  7F E3 FB 78 */	mr r3, r31
/* 80C0E60C  38 80 00 02 */	li r4, 2
/* 80C0E610  4B FF 44 C5 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0E614  48 00 09 34 */	b lbl_80C0EF48
lbl_80C0E618:
/* 80C0E618  A0 1C 0A 90 */	lhz r0, 0xa90(r28)
/* 80C0E61C  28 00 00 14 */	cmplwi r0, 0x14
/* 80C0E620  40 82 09 28 */	bne lbl_80C0EF48
/* 80C0E624  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C0E628  38 80 00 01 */	li r4, 1
/* 80C0E62C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C0E630  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C0E634  40 82 00 18 */	bne lbl_80C0E64C
/* 80C0E638  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0E63C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C0E640  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C0E644  41 82 00 08 */	beq lbl_80C0E64C
/* 80C0E648  38 80 00 00 */	li r4, 0
lbl_80C0E64C:
/* 80C0E64C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C0E650  41 82 08 F8 */	beq lbl_80C0EF48
/* 80C0E654  38 00 00 09 */	li r0, 9
/* 80C0E658  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0E65C  7F E3 FB 78 */	mr r3, r31
/* 80C0E660  38 80 00 01 */	li r4, 1
/* 80C0E664  38 BE 00 00 */	addi r5, r30, 0
/* 80C0E668  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0E66C  4B FF 31 21 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0E670  7F E3 FB 78 */	mr r3, r31
/* 80C0E674  38 80 00 0D */	li r4, 0xd
/* 80C0E678  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C0E67C  4B FF 31 31 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0E680  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0E684  D0 1F 20 80 */	stfs f0, 0x2080(r31)
/* 80C0E688  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0E68C  D0 1F 20 84 */	stfs f0, 0x2084(r31)
/* 80C0E690  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0E694  D0 1F 20 88 */	stfs f0, 0x2088(r31)
lbl_80C0E698:
/* 80C0E698  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E69C  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 80C0E6A0  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80C0E6A4  C0 1E 03 44 */	lfs f0, 0x344(r30)
/* 80C0E6A8  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80C0E6AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E6B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E6B4  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80C0E6B8  4B 3F DD 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0E6BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E6C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E6C4  38 81 01 74 */	addi r4, r1, 0x174
/* 80C0E6C8  7C 85 23 78 */	mr r5, r4
/* 80C0E6CC  4B 73 86 A1 */	bl PSMTXMultVec
/* 80C0E6D0  38 61 01 74 */	addi r3, r1, 0x174
/* 80C0E6D4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C0E6D8  7C 65 1B 78 */	mr r5, r3
/* 80C0E6DC  4B 73 89 B5 */	bl PSVECAdd
/* 80C0E6E0  A0 1F 0A 90 */	lhz r0, 0xa90(r31)
/* 80C0E6E4  28 00 00 0F */	cmplwi r0, 0xf
/* 80C0E6E8  41 82 01 08 */	beq lbl_80C0E7F0
/* 80C0E6EC  80 1F 08 E8 */	lwz r0, 0x8e8(r31)
/* 80C0E6F0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C0E6F4  41 82 00 B0 */	beq lbl_80C0E7A4
/* 80C0E6F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0E6FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0E700  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C0E704  A0 9F 08 DA */	lhz r4, 0x8da(r31)
/* 80C0E708  4B 46 5F 11 */	bl GetActorPointer__4cBgSCFi
/* 80C0E70C  7C 1C 18 40 */	cmplw r28, r3
/* 80C0E710  40 82 00 94 */	bne lbl_80C0E7A4
/* 80C0E714  A0 1F 0A 90 */	lhz r0, 0xa90(r31)
/* 80C0E718  28 00 00 0F */	cmplwi r0, 0xf
/* 80C0E71C  41 82 03 08 */	beq lbl_80C0EA24
/* 80C0E720  7F E3 FB 78 */	mr r3, r31
/* 80C0E724  38 80 00 0F */	li r4, 0xf
/* 80C0E728  38 BE 00 00 */	addi r5, r30, 0
/* 80C0E72C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0E730  4B FF 30 5D */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0E734  7F E3 FB 78 */	mr r3, r31
/* 80C0E738  38 80 00 0D */	li r4, 0xd
/* 80C0E73C  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C0E740  4B FF 30 6D */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0E744  7F E3 FB 78 */	mr r3, r31
/* 80C0E748  38 80 00 00 */	li r4, 0
/* 80C0E74C  4B FF 43 89 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0E750  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C0E754  38 81 01 74 */	addi r4, r1, 0x174
/* 80C0E758  4B 66 24 AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0E75C  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80C0E760  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0E764  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C0E768  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0E76C  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80C0E770  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C0E774  60 00 00 02 */	ori r0, r0, 2
/* 80C0E778  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C0E77C  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C0E780  60 00 00 04 */	ori r0, r0, 4
/* 80C0E784  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C0E788  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E78C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0E790  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80C0E794  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C0E798  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80C0E79C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C0E7A0  48 00 02 84 */	b lbl_80C0EA24
lbl_80C0E7A4:
/* 80C0E7A4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C0E7A8  38 81 01 74 */	addi r4, r1, 0x174
/* 80C0E7AC  4B 66 24 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0E7B0  7C 64 1B 78 */	mr r4, r3
/* 80C0E7B4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80C0E7B8  38 A0 00 04 */	li r5, 4
/* 80C0E7BC  38 DE 00 00 */	addi r6, r30, 0
/* 80C0E7C0  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C0E7C4  4B 66 1E 45 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0E7C8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0E7CC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C0E7D0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0E7D4  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80C0E7D8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C0E7DC  38 81 01 74 */	addi r4, r1, 0x174
/* 80C0E7E0  38 BE 00 00 */	addi r5, r30, 0
/* 80C0E7E4  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80C0E7E8  4B 66 21 A9 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80C0E7EC  48 00 02 38 */	b lbl_80C0EA24
lbl_80C0E7F0:
/* 80C0E7F0  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C0E7F4  38 80 00 01 */	li r4, 1
/* 80C0E7F8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C0E7FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C0E800  40 82 00 18 */	bne lbl_80C0E818
/* 80C0E804  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0E808  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C0E80C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C0E810  41 82 00 08 */	beq lbl_80C0E818
/* 80C0E814  38 80 00 00 */	li r4, 0
lbl_80C0E818:
/* 80C0E818  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C0E81C  40 82 00 28 */	bne lbl_80C0E844
/* 80C0E820  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C0E824  60 00 00 02 */	ori r0, r0, 2
/* 80C0E828  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C0E82C  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C0E830  60 00 00 04 */	ori r0, r0, 4
/* 80C0E834  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C0E838  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E83C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0E840  48 00 00 AC */	b lbl_80C0E8EC
lbl_80C0E844:
/* 80C0E844  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E848  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 80C0E84C  C0 1E 03 48 */	lfs f0, 0x348(r30)
/* 80C0E850  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80C0E854  C0 1E 03 4C */	lfs f0, 0x34c(r30)
/* 80C0E858  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80C0E85C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E864  A8 9F 09 1C */	lha r4, 0x91c(r31)
/* 80C0E868  4B 3F DB 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C0E86C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0E870  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0E874  38 81 01 68 */	addi r4, r1, 0x168
/* 80C0E878  7C 85 23 78 */	mr r5, r4
/* 80C0E87C  4B 73 84 F1 */	bl PSMTXMultVec
/* 80C0E880  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C0E884  38 81 01 68 */	addi r4, r1, 0x168
/* 80C0E888  7C 65 1B 78 */	mr r5, r3
/* 80C0E88C  4B 73 88 05 */	bl PSVECAdd
/* 80C0E890  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C0E894  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80C0E898  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C0E89C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80C0E8A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C0E8A4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80C0E8A8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E8AC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0E8B0  7F E3 FB 78 */	mr r3, r31
/* 80C0E8B4  38 80 00 00 */	li r4, 0
/* 80C0E8B8  4B FF 42 1D */	bl setLookMode__11daObj_GrA_cFi
/* 80C0E8BC  38 00 00 0A */	li r0, 0xa
/* 80C0E8C0  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0E8C4  38 00 00 03 */	li r0, 3
/* 80C0E8C8  B0 1C 20 54 */	sth r0, 0x2054(r28)
/* 80C0E8CC  7F E3 FB 78 */	mr r3, r31
/* 80C0E8D0  38 80 00 12 */	li r4, 0x12
/* 80C0E8D4  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0E8D8  4B FF 2E B5 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0E8DC  7F E3 FB 78 */	mr r3, r31
/* 80C0E8E0  38 80 00 0D */	li r4, 0xd
/* 80C0E8E4  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0E8E8  4B FF 2E C5 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C0E8EC:
/* 80C0E8EC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C0E8F0  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80C0E8F4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C0E8F8  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 80C0E8FC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C0E900  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 80C0E904  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C0E908  38 81 01 5C */	addi r4, r1, 0x15c
/* 80C0E90C  38 BF 20 80 */	addi r5, r31, 0x2080
/* 80C0E910  4B 65 82 25 */	bl __mi__4cXyzCFRC3Vec
/* 80C0E914  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C0E918  4B 73 88 21 */	bl PSVECSquareMag
/* 80C0E91C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0E920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E924  40 81 00 58 */	ble lbl_80C0E97C
/* 80C0E928  FC 00 08 34 */	frsqrte f0, f1
/* 80C0E92C  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0E930  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E934  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0E938  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E93C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E940  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E944  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E948  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E94C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E950  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E954  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E958  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E95C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0E960  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0E964  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0E968  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0E96C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0E970  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0E974  FC 40 10 18 */	frsp f2, f2
/* 80C0E978  48 00 00 90 */	b lbl_80C0EA08
lbl_80C0E97C:
/* 80C0E97C  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0E980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0E984  40 80 00 10 */	bge lbl_80C0E994
/* 80C0E988  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E98C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0E990  48 00 00 78 */	b lbl_80C0EA08
lbl_80C0E994:
/* 80C0E994  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C0E998  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C0E99C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0E9A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0E9A4  7C 03 00 00 */	cmpw r3, r0
/* 80C0E9A8  41 82 00 14 */	beq lbl_80C0E9BC
/* 80C0E9AC  40 80 00 40 */	bge lbl_80C0E9EC
/* 80C0E9B0  2C 03 00 00 */	cmpwi r3, 0
/* 80C0E9B4  41 82 00 20 */	beq lbl_80C0E9D4
/* 80C0E9B8  48 00 00 34 */	b lbl_80C0E9EC
lbl_80C0E9BC:
/* 80C0E9BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E9C0  41 82 00 0C */	beq lbl_80C0E9CC
/* 80C0E9C4  38 00 00 01 */	li r0, 1
/* 80C0E9C8  48 00 00 28 */	b lbl_80C0E9F0
lbl_80C0E9CC:
/* 80C0E9CC  38 00 00 02 */	li r0, 2
/* 80C0E9D0  48 00 00 20 */	b lbl_80C0E9F0
lbl_80C0E9D4:
/* 80C0E9D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0E9D8  41 82 00 0C */	beq lbl_80C0E9E4
/* 80C0E9DC  38 00 00 05 */	li r0, 5
/* 80C0E9E0  48 00 00 10 */	b lbl_80C0E9F0
lbl_80C0E9E4:
/* 80C0E9E4  38 00 00 03 */	li r0, 3
/* 80C0E9E8  48 00 00 08 */	b lbl_80C0E9F0
lbl_80C0E9EC:
/* 80C0E9EC  38 00 00 04 */	li r0, 4
lbl_80C0E9F0:
/* 80C0E9F0  2C 00 00 01 */	cmpwi r0, 1
/* 80C0E9F4  40 82 00 10 */	bne lbl_80C0EA04
/* 80C0E9F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0E9FC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0EA00  48 00 00 08 */	b lbl_80C0EA08
lbl_80C0EA04:
/* 80C0EA04  FC 40 08 90 */	fmr f2, f1
lbl_80C0EA08:
/* 80C0EA08  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80C0EA0C  38 81 01 5C */	addi r4, r1, 0x15c
/* 80C0EA10  C0 3E 02 AC */	lfs f1, 0x2ac(r30)
/* 80C0EA14  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 80C0EA18  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0EA1C  4B 66 19 35 */	bl cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff
/* 80C0EA20  48 00 05 28 */	b lbl_80C0EF48
lbl_80C0EA24:
/* 80C0EA24  A8 1C 20 54 */	lha r0, 0x2054(r28)
/* 80C0EA28  2C 00 00 04 */	cmpwi r0, 4
/* 80C0EA2C  40 82 00 80 */	bne lbl_80C0EAAC
/* 80C0EA30  7F E3 FB 78 */	mr r3, r31
/* 80C0EA34  38 80 00 0A */	li r4, 0xa
/* 80C0EA38  C0 3E 03 50 */	lfs f1, 0x350(r30)
/* 80C0EA3C  4B FF 2D 51 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0EA40  7F E3 FB 78 */	mr r3, r31
/* 80C0EA44  38 80 00 0D */	li r4, 0xd
/* 80C0EA48  C0 3E 03 50 */	lfs f1, 0x350(r30)
/* 80C0EA4C  4B FF 2D 61 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0EA50  7F E3 FB 78 */	mr r3, r31
/* 80C0EA54  4B FF 2D 9D */	bl calcMotion__11daObj_GrA_cFv
/* 80C0EA58  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80C0EA5C  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C0EA60  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C0EA64  38 00 00 0B */	li r0, 0xb
/* 80C0EA68  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0EA6C  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C0EA70  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C0EA74  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C0EA78  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80C0EA7C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80C0EA80  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80C0EA84  38 7E 00 00 */	addi r3, r30, 0
/* 80C0EA88  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C0EA8C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0EA90  C0 1E 03 54 */	lfs f0, 0x354(r30)
/* 80C0EA94  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C0EA98  C0 1E 03 24 */	lfs f0, 0x324(r30)
/* 80C0EA9C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C0EAA0  38 00 00 00 */	li r0, 0
/* 80C0EAA4  B0 1F 20 56 */	sth r0, 0x2056(r31)
/* 80C0EAA8  48 00 04 A0 */	b lbl_80C0EF48
lbl_80C0EAAC:
/* 80C0EAAC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80C0EAB0  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80C0EAB4  3C 84 00 01 */	addis r4, r4, 1
/* 80C0EAB8  38 04 80 00 */	addi r0, r4, -32768
/* 80C0EABC  7C 04 07 34 */	extsh r4, r0
/* 80C0EAC0  38 A0 00 10 */	li r5, 0x10
/* 80C0EAC4  38 DE 00 00 */	addi r6, r30, 0
/* 80C0EAC8  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C0EACC  4B 66 1B 3D */	bl cLib_addCalcAngleS2__FPssss
/* 80C0EAD0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0EAD4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C0EAD8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0EADC  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80C0EAE0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C0EAE4  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 80C0EAE8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C0EAEC  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 80C0EAF0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C0EAF4  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80C0EAF8  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C0EAFC  38 81 01 50 */	addi r4, r1, 0x150
/* 80C0EB00  38 BF 20 80 */	addi r5, r31, 0x2080
/* 80C0EB04  4B 65 80 31 */	bl __mi__4cXyzCFRC3Vec
/* 80C0EB08  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C0EB0C  4B 73 86 2D */	bl PSVECSquareMag
/* 80C0EB10  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0EB14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0EB18  40 81 00 58 */	ble lbl_80C0EB70
/* 80C0EB1C  FC 00 08 34 */	frsqrte f0, f1
/* 80C0EB20  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0EB24  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0EB28  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0EB2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0EB30  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0EB34  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0EB38  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0EB3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0EB40  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0EB44  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0EB48  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0EB4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0EB50  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0EB54  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0EB58  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0EB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0EB60  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0EB64  FC 41 00 32 */	fmul f2, f1, f0
/* 80C0EB68  FC 40 10 18 */	frsp f2, f2
/* 80C0EB6C  48 00 00 90 */	b lbl_80C0EBFC
lbl_80C0EB70:
/* 80C0EB70  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0EB74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0EB78  40 80 00 10 */	bge lbl_80C0EB88
/* 80C0EB7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0EB80  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0EB84  48 00 00 78 */	b lbl_80C0EBFC
lbl_80C0EB88:
/* 80C0EB88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C0EB8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C0EB90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0EB94  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0EB98  7C 03 00 00 */	cmpw r3, r0
/* 80C0EB9C  41 82 00 14 */	beq lbl_80C0EBB0
/* 80C0EBA0  40 80 00 40 */	bge lbl_80C0EBE0
/* 80C0EBA4  2C 03 00 00 */	cmpwi r3, 0
/* 80C0EBA8  41 82 00 20 */	beq lbl_80C0EBC8
/* 80C0EBAC  48 00 00 34 */	b lbl_80C0EBE0
lbl_80C0EBB0:
/* 80C0EBB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0EBB4  41 82 00 0C */	beq lbl_80C0EBC0
/* 80C0EBB8  38 00 00 01 */	li r0, 1
/* 80C0EBBC  48 00 00 28 */	b lbl_80C0EBE4
lbl_80C0EBC0:
/* 80C0EBC0  38 00 00 02 */	li r0, 2
/* 80C0EBC4  48 00 00 20 */	b lbl_80C0EBE4
lbl_80C0EBC8:
/* 80C0EBC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0EBCC  41 82 00 0C */	beq lbl_80C0EBD8
/* 80C0EBD0  38 00 00 05 */	li r0, 5
/* 80C0EBD4  48 00 00 10 */	b lbl_80C0EBE4
lbl_80C0EBD8:
/* 80C0EBD8  38 00 00 03 */	li r0, 3
/* 80C0EBDC  48 00 00 08 */	b lbl_80C0EBE4
lbl_80C0EBE0:
/* 80C0EBE0  38 00 00 04 */	li r0, 4
lbl_80C0EBE4:
/* 80C0EBE4  2C 00 00 01 */	cmpwi r0, 1
/* 80C0EBE8  40 82 00 10 */	bne lbl_80C0EBF8
/* 80C0EBEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0EBF0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0EBF4  48 00 00 08 */	b lbl_80C0EBFC
lbl_80C0EBF8:
/* 80C0EBF8  FC 40 08 90 */	fmr f2, f1
lbl_80C0EBFC:
/* 80C0EBFC  38 7F 20 64 */	addi r3, r31, 0x2064
/* 80C0EC00  38 81 01 50 */	addi r4, r1, 0x150
/* 80C0EC04  C0 3E 02 AC */	lfs f1, 0x2ac(r30)
/* 80C0EC08  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 80C0EC0C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C0EC10  4B 66 17 41 */	bl cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff
/* 80C0EC14  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0EC18  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0EC1C  48 00 03 2C */	b lbl_80C0EF48
lbl_80C0EC20:
/* 80C0EC20  A8 1F 20 56 */	lha r0, 0x2056(r31)
/* 80C0EC24  2C 00 00 FA */	cmpwi r0, 0xfa
/* 80C0EC28  41 80 00 84 */	blt lbl_80C0ECAC
/* 80C0EC2C  38 7B 02 48 */	addi r3, r27, 0x248
/* 80C0EC30  4B 55 28 7D */	bl Start__9dCamera_cFv
/* 80C0EC34  38 7B 02 48 */	addi r3, r27, 0x248
/* 80C0EC38  38 80 00 00 */	li r4, 0
/* 80C0EC3C  4B 55 43 D1 */	bl SetTrimSize__9dCamera_cFl
/* 80C0EC40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0EC44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0EC48  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C0EC4C  4B 43 38 1D */	bl reset__14dEvt_control_cFv
/* 80C0EC50  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80C0EC54  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80C0EC58  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80C0EC5C  3C 60 80 C1 */	lis r3, lit_9691@ha /* 0x80C10398@ha */
/* 80C0EC60  38 83 03 98 */	addi r4, r3, lit_9691@l /* 0x80C10398@l */
/* 80C0EC64  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0EC68  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0EC6C  90 61 00 90 */	stw r3, 0x90(r1)
/* 80C0EC70  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C0EC74  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0EC78  90 01 00 98 */	stw r0, 0x98(r1)
/* 80C0EC7C  7F 83 E3 78 */	mr r3, r28
/* 80C0EC80  38 81 00 90 */	addi r4, r1, 0x90
/* 80C0EC84  4B FF 2C 71 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0EC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0EC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0EC90  88 9F 0A 7F */	lbz r4, 0xa7f(r31)
/* 80C0EC94  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C0EC98  7C 05 07 74 */	extsb r5, r0
/* 80C0EC9C  4B 42 65 65 */	bl onSwitch__10dSv_info_cFii
/* 80C0ECA0  7F E3 FB 78 */	mr r3, r31
/* 80C0ECA4  4B 40 AF D9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C0ECA8  48 00 02 A0 */	b lbl_80C0EF48
lbl_80C0ECAC:
/* 80C0ECAC  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80C0ECB0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80C0ECB4  41 82 00 9C */	beq lbl_80C0ED50
/* 80C0ECB8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0ECBC  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80C0ECC0  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 80C0ECC4  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80C0ECC8  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80C0ECCC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C0ECD0  4B 3F E0 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C0ECD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0ECD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0ECDC  A8 9F 09 1C */	lha r4, 0x91c(r31)
/* 80C0ECE0  4B 3F D7 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C0ECE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0ECE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0ECEC  38 81 01 44 */	addi r4, r1, 0x144
/* 80C0ECF0  38 BF 0B 74 */	addi r5, r31, 0xb74
/* 80C0ECF4  4B 73 80 79 */	bl PSMTXMultVec
/* 80C0ECF8  A8 1F 09 1A */	lha r0, 0x91a(r31)
/* 80C0ECFC  B0 1F 0B 80 */	sth r0, 0xb80(r31)
/* 80C0ED00  A8 1F 09 1C */	lha r0, 0x91c(r31)
/* 80C0ED04  B0 1F 0B 82 */	sth r0, 0xb82(r31)
/* 80C0ED08  A8 1F 09 1E */	lha r0, 0x91e(r31)
/* 80C0ED0C  B0 1F 0B 84 */	sth r0, 0xb84(r31)
/* 80C0ED10  38 00 00 01 */	li r0, 1
/* 80C0ED14  98 1F 0B 70 */	stb r0, 0xb70(r31)
/* 80C0ED18  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004B@ha */
/* 80C0ED1C  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0006004B@l */
/* 80C0ED20  90 01 00 38 */	stw r0, 0x38(r1)
/* 80C0ED24  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C0ED28  38 81 00 38 */	addi r4, r1, 0x38
/* 80C0ED2C  38 A0 00 00 */	li r5, 0
/* 80C0ED30  38 C0 FF FF */	li r6, -1
/* 80C0ED34  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C0ED38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C0ED3C  7D 89 03 A6 */	mtctr r12
/* 80C0ED40  4E 80 04 21 */	bctrl 
/* 80C0ED44  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80C0ED48  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C0ED4C  48 00 01 90 */	b lbl_80C0EEDC
lbl_80C0ED50:
/* 80C0ED50  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80C0ED54  41 82 01 88 */	beq lbl_80C0EEDC
/* 80C0ED58  C0 1E 03 58 */	lfs f0, 0x358(r30)
/* 80C0ED5C  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80C0ED60  C0 1E 03 5C */	lfs f0, 0x35c(r30)
/* 80C0ED64  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 80C0ED68  C0 1E 03 60 */	lfs f0, 0x360(r30)
/* 80C0ED6C  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 80C0ED70  38 61 00 84 */	addi r3, r1, 0x84
/* 80C0ED74  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0ED78  38 A1 01 38 */	addi r5, r1, 0x138
/* 80C0ED7C  4B 65 7D B9 */	bl __mi__4cXyzCFRC3Vec
/* 80C0ED80  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80C0ED84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C0ED88  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0ED8C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C0ED90  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80C0ED94  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C0ED98  38 61 00 54 */	addi r3, r1, 0x54
/* 80C0ED9C  4B 73 83 9D */	bl PSVECSquareMag
/* 80C0EDA0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0EDA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0EDA8  40 81 00 58 */	ble lbl_80C0EE00
/* 80C0EDAC  FC 00 08 34 */	frsqrte f0, f1
/* 80C0EDB0  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C0EDB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0EDB8  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C0EDBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0EDC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0EDC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0EDC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0EDCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0EDD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0EDD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0EDD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0EDDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0EDE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0EDE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0EDE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0EDEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0EDF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0EDF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C0EDF8  FC 20 08 18 */	frsp f1, f1
/* 80C0EDFC  48 00 00 88 */	b lbl_80C0EE84
lbl_80C0EE00:
/* 80C0EE00  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C0EE04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0EE08  40 80 00 10 */	bge lbl_80C0EE18
/* 80C0EE0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0EE10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0EE14  48 00 00 70 */	b lbl_80C0EE84
lbl_80C0EE18:
/* 80C0EE18  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0EE1C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C0EE20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0EE24  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0EE28  7C 03 00 00 */	cmpw r3, r0
/* 80C0EE2C  41 82 00 14 */	beq lbl_80C0EE40
/* 80C0EE30  40 80 00 40 */	bge lbl_80C0EE70
/* 80C0EE34  2C 03 00 00 */	cmpwi r3, 0
/* 80C0EE38  41 82 00 20 */	beq lbl_80C0EE58
/* 80C0EE3C  48 00 00 34 */	b lbl_80C0EE70
lbl_80C0EE40:
/* 80C0EE40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0EE44  41 82 00 0C */	beq lbl_80C0EE50
/* 80C0EE48  38 00 00 01 */	li r0, 1
/* 80C0EE4C  48 00 00 28 */	b lbl_80C0EE74
lbl_80C0EE50:
/* 80C0EE50  38 00 00 02 */	li r0, 2
/* 80C0EE54  48 00 00 20 */	b lbl_80C0EE74
lbl_80C0EE58:
/* 80C0EE58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0EE5C  41 82 00 0C */	beq lbl_80C0EE68
/* 80C0EE60  38 00 00 05 */	li r0, 5
/* 80C0EE64  48 00 00 10 */	b lbl_80C0EE74
lbl_80C0EE68:
/* 80C0EE68  38 00 00 03 */	li r0, 3
/* 80C0EE6C  48 00 00 08 */	b lbl_80C0EE74
lbl_80C0EE70:
/* 80C0EE70  38 00 00 04 */	li r0, 4
lbl_80C0EE74:
/* 80C0EE74  2C 00 00 01 */	cmpwi r0, 1
/* 80C0EE78  40 82 00 0C */	bne lbl_80C0EE84
/* 80C0EE7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0EE80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C0EE84:
/* 80C0EE84  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 80C0EE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0EE8C  40 81 00 3C */	ble lbl_80C0EEC8
/* 80C0EE90  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C0EE94  38 81 01 38 */	addi r4, r1, 0x138
/* 80C0EE98  4B 66 1D 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0EE9C  7C 64 1B 78 */	mr r4, r3
/* 80C0EEA0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80C0EEA4  38 A0 00 18 */	li r5, 0x18
/* 80C0EEA8  38 DE 00 00 */	addi r6, r30, 0
/* 80C0EEAC  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C0EEB0  4B 66 17 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0EEB4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0EEB8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C0EEBC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C0EEC0  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80C0EEC4  48 00 00 0C */	b lbl_80C0EED0
lbl_80C0EEC8:
/* 80C0EEC8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0EECC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80C0EED0:
/* 80C0EED0  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0EED4  38 03 00 01 */	addi r0, r3, 1
/* 80C0EED8  B0 1F 20 56 */	sth r0, 0x2056(r31)
lbl_80C0EEDC:
/* 80C0EEDC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C0EEE0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0EEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0EEE8  40 81 00 3C */	ble lbl_80C0EF24
/* 80C0EEEC  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0EEF0  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80C0EEF4  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0EEF8  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80C0EEFC  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0EF00  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 80C0EF04  38 61 00 78 */	addi r3, r1, 0x78
/* 80C0EF08  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C0EF0C  38 A1 01 2C */	addi r5, r1, 0x12c
/* 80C0EF10  4B 65 7C 25 */	bl __mi__4cXyzCFRC3Vec
/* 80C0EF14  38 7F 20 58 */	addi r3, r31, 0x2058
/* 80C0EF18  38 81 00 78 */	addi r4, r1, 0x78
/* 80C0EF1C  7C 65 1B 78 */	mr r5, r3
/* 80C0EF20  4B 73 81 71 */	bl PSVECAdd
lbl_80C0EF24:
/* 80C0EF24  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C0EF28  D0 1F 20 64 */	stfs f0, 0x2064(r31)
/* 80C0EF2C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C0EF30  D0 1F 20 68 */	stfs f0, 0x2068(r31)
/* 80C0EF34  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C0EF38  D0 1F 20 6C */	stfs f0, 0x206c(r31)
/* 80C0EF3C  48 00 00 0C */	b lbl_80C0EF48
lbl_80C0EF40:
/* 80C0EF40  38 00 00 00 */	li r0, 0
/* 80C0EF44  90 1F 20 9C */	stw r0, 0x209c(r31)
lbl_80C0EF48:
/* 80C0EF48  A8 1F 20 54 */	lha r0, 0x2054(r31)
/* 80C0EF4C  2C 00 00 00 */	cmpwi r0, 0
/* 80C0EF50  41 82 00 58 */	beq lbl_80C0EFA8
/* 80C0EF54  C0 1F 20 64 */	lfs f0, 0x2064(r31)
/* 80C0EF58  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C0EF5C  C0 1F 20 68 */	lfs f0, 0x2068(r31)
/* 80C0EF60  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C0EF64  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 80C0EF68  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C0EF6C  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 80C0EF70  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C0EF74  C0 1F 20 5C */	lfs f0, 0x205c(r31)
/* 80C0EF78  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C0EF7C  C0 1F 20 60 */	lfs f0, 0x2060(r31)
/* 80C0EF80  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C0EF84  38 7B 02 48 */	addi r3, r27, 0x248
/* 80C0EF88  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C0EF8C  38 A1 00 60 */	addi r5, r1, 0x60
/* 80C0EF90  C0 3F 20 70 */	lfs f1, 0x2070(r31)
/* 80C0EF94  38 C0 00 00 */	li r6, 0
/* 80C0EF98  4B 57 1B 49 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80C0EF9C  A8 7F 20 56 */	lha r3, 0x2056(r31)
/* 80C0EFA0  38 03 00 01 */	addi r0, r3, 1
/* 80C0EFA4  B0 1F 20 56 */	sth r0, 0x2056(r31)
lbl_80C0EFA8:
/* 80C0EFA8  38 60 00 01 */	li r3, 1
lbl_80C0EFAC:
/* 80C0EFAC  39 61 02 10 */	addi r11, r1, 0x210
/* 80C0EFB0  4B 75 32 6D */	bl _restgpr_26
/* 80C0EFB4  80 01 02 14 */	lwz r0, 0x214(r1)
/* 80C0EFB8  7C 08 03 A6 */	mtlr r0
/* 80C0EFBC  38 21 02 10 */	addi r1, r1, 0x210
/* 80C0EFC0  4E 80 00 20 */	blr 
