lbl_80D00518:
/* 80D00518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0051C  7C 08 02 A6 */	mflr r0
/* 80D00520  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D00524  39 61 00 30 */	addi r11, r1, 0x30
/* 80D00528  4B 66 1C B1 */	bl _savegpr_28
/* 80D0052C  7C 7F 1B 78 */	mr r31, r3
/* 80D00530  7C 9D 23 78 */	mr r29, r4
/* 80D00534  3C 60 80 D0 */	lis r3, lit_3717@ha /* 0x80D00A94@ha */
/* 80D00538  3B C3 0A 94 */	addi r30, r3, lit_3717@l /* 0x80D00A94@l */
/* 80D0053C  3B 80 00 00 */	li r28, 0
/* 80D00540  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80D00544  B0 1F 05 EC */	sth r0, 0x5ec(r31)
/* 80D00548  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80D0054C  28 00 00 00 */	cmplwi r0, 0
/* 80D00550  41 82 00 5C */	beq lbl_80D005AC
/* 80D00554  3C 60 80 D0 */	lis r3, search_spinner_sub__FPvPv@ha /* 0x80CFFF78@ha */
/* 80D00558  38 63 FF 78 */	addi r3, r3, search_spinner_sub__FPvPv@l /* 0x80CFFF78@l */
/* 80D0055C  7F E4 FB 78 */	mr r4, r31
/* 80D00560  4B 31 92 99 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D00564  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D00568  41 82 00 3C */	beq lbl_80D005A4
/* 80D0056C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80D00570  28 00 00 00 */	cmplwi r0, 0
/* 80D00574  41 82 00 10 */	beq lbl_80D00584
/* 80D00578  88 1C 0A 6F */	lbz r0, 0xa6f(r28)
/* 80D0057C  28 00 00 03 */	cmplwi r0, 3
/* 80D00580  41 82 00 10 */	beq lbl_80D00590
lbl_80D00584:
/* 80D00584  88 1C 0A 6F */	lbz r0, 0xa6f(r28)
/* 80D00588  28 00 00 04 */	cmplwi r0, 4
/* 80D0058C  40 82 00 20 */	bne lbl_80D005AC
lbl_80D00590:
/* 80D00590  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80D00594  A8 1C 0A 7E */	lha r0, 0xa7e(r28)
/* 80D00598  7C 03 02 14 */	add r0, r3, r0
/* 80D0059C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D005A0  48 00 00 0C */	b lbl_80D005AC
lbl_80D005A4:
/* 80D005A4  38 00 00 00 */	li r0, 0
/* 80D005A8  98 1F 05 E8 */	stb r0, 0x5e8(r31)
lbl_80D005AC:
/* 80D005AC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D005B0  A8 9F 05 EC */	lha r4, 0x5ec(r31)
/* 80D005B4  4B 57 08 71 */	bl cLib_distanceAngleS__Fss
/* 80D005B8  B0 7F 05 EE */	sth r3, 0x5ee(r31)
/* 80D005BC  A8 1F 05 EE */	lha r0, 0x5ee(r31)
/* 80D005C0  2C 00 00 00 */	cmpwi r0, 0
/* 80D005C4  40 82 00 10 */	bne lbl_80D005D4
/* 80D005C8  38 00 00 00 */	li r0, 0
/* 80D005CC  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
/* 80D005D0  48 00 00 10 */	b lbl_80D005E0
lbl_80D005D4:
/* 80D005D4  A8 7F 05 F0 */	lha r3, 0x5f0(r31)
/* 80D005D8  38 03 00 01 */	addi r0, r3, 1
/* 80D005DC  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
lbl_80D005E0:
/* 80D005E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D005E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D005E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D005EC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D005F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D005F4  7C 05 07 74 */	extsb r5, r0
/* 80D005F8  4B 33 4D 69 */	bl isSwitch__10dSv_info_cCFii
/* 80D005FC  2C 03 00 00 */	cmpwi r3, 0
/* 80D00600  41 82 00 C8 */	beq lbl_80D006C8
/* 80D00604  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80D00608  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D0060C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80D00610  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 80D00614  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 80D00618  4B 56 F3 65 */	bl cLib_addCalc__FPfffff
/* 80D0061C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D00620  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D00624  40 82 00 48 */	bne lbl_80D0066C
/* 80D00628  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80D0062C  28 00 00 00 */	cmplwi r0, 0
/* 80D00630  41 82 00 3C */	beq lbl_80D0066C
/* 80D00634  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80D00638  28 00 00 00 */	cmplwi r0, 0
/* 80D0063C  41 82 00 20 */	beq lbl_80D0065C
/* 80D00640  88 1C 0A 6F */	lbz r0, 0xa6f(r28)
/* 80D00644  28 00 00 00 */	cmplwi r0, 0
/* 80D00648  41 82 00 0C */	beq lbl_80D00654
/* 80D0064C  38 00 00 05 */	li r0, 5
/* 80D00650  98 1C 0A 6F */	stb r0, 0xa6f(r28)
lbl_80D00654:
/* 80D00654  38 00 00 00 */	li r0, 0
/* 80D00658  98 1F 05 E8 */	stb r0, 0x5e8(r31)
lbl_80D0065C:
/* 80D0065C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80D00660  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D00664  38 00 00 00 */	li r0, 0
/* 80D00668  98 1F 05 EA */	stb r0, 0x5ea(r31)
lbl_80D0066C:
/* 80D0066C  88 1F 05 EB */	lbz r0, 0x5eb(r31)
/* 80D00670  28 00 00 00 */	cmplwi r0, 0
/* 80D00674  40 82 00 D4 */	bne lbl_80D00748
/* 80D00678  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D0067C  7C 03 07 74 */	extsb r3, r0
/* 80D00680  4B 32 C9 ED */	bl dComIfGp_getReverb__Fi
/* 80D00684  7C 67 1B 78 */	mr r7, r3
/* 80D00688  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008019E@ha */
/* 80D0068C  38 03 01 9E */	addi r0, r3, 0x019E /* 0x0008019E@l */
/* 80D00690  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D00694  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D00698  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D0069C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D006A0  38 81 00 10 */	addi r4, r1, 0x10
/* 80D006A4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D006A8  38 C0 00 00 */	li r6, 0
/* 80D006AC  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80D006B0  FC 40 08 90 */	fmr f2, f1
/* 80D006B4  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80D006B8  FC 80 18 90 */	fmr f4, f3
/* 80D006BC  39 00 00 00 */	li r8, 0
/* 80D006C0  4B 5A B2 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D006C4  48 00 00 84 */	b lbl_80D00748
lbl_80D006C8:
/* 80D006C8  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80D006CC  28 00 00 00 */	cmplwi r0, 0
/* 80D006D0  41 82 00 5C */	beq lbl_80D0072C
/* 80D006D4  A8 1F 05 F0 */	lha r0, 0x5f0(r31)
/* 80D006D8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80D006DC  40 81 00 6C */	ble lbl_80D00748
/* 80D006E0  A8 1F 05 EE */	lha r0, 0x5ee(r31)
/* 80D006E4  2C 00 0B B8 */	cmpwi r0, 0xbb8
/* 80D006E8  40 81 00 24 */	ble lbl_80D0070C
/* 80D006EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D006F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D006F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D006F8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D006FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00700  7C 05 07 74 */	extsb r5, r0
/* 80D00704  4B 33 4A FD */	bl onSwitch__10dSv_info_cFii
/* 80D00708  48 00 00 40 */	b lbl_80D00748
lbl_80D0070C:
/* 80D0070C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D00710  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D00714  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00718  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D0071C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00720  7C 05 07 74 */	extsb r5, r0
/* 80D00724  4B 33 4B 8D */	bl offSwitch__10dSv_info_cFii
/* 80D00728  48 00 00 20 */	b lbl_80D00748
lbl_80D0072C:
/* 80D0072C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D00730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D00734  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00738  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D0073C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00740  7C 05 07 74 */	extsb r5, r0
/* 80D00744  4B 33 4B 6D */	bl offSwitch__10dSv_info_cFii
lbl_80D00748:
/* 80D00748  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80D0074C  28 00 00 00 */	cmplwi r0, 0
/* 80D00750  41 82 00 5C */	beq lbl_80D007AC
/* 80D00754  88 1F 05 E9 */	lbz r0, 0x5e9(r31)
/* 80D00758  28 00 00 00 */	cmplwi r0, 0
/* 80D0075C  40 82 00 50 */	bne lbl_80D007AC
/* 80D00760  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D00764  7C 03 07 74 */	extsb r3, r0
/* 80D00768  4B 32 C9 05 */	bl dComIfGp_getReverb__Fi
/* 80D0076C  7C 67 1B 78 */	mr r7, r3
/* 80D00770  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008019D@ha */
/* 80D00774  38 03 01 9D */	addi r0, r3, 0x019D /* 0x0008019D@l */
/* 80D00778  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0077C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D00780  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D00784  80 63 00 00 */	lwz r3, 0(r3)
/* 80D00788  38 81 00 0C */	addi r4, r1, 0xc
/* 80D0078C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D00790  38 C0 00 00 */	li r6, 0
/* 80D00794  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80D00798  FC 40 08 90 */	fmr f2, f1
/* 80D0079C  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80D007A0  FC 80 18 90 */	fmr f4, f3
/* 80D007A4  39 00 00 00 */	li r8, 0
/* 80D007A8  4B 5A B1 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D007AC:
/* 80D007AC  AB 9F 05 EE */	lha r28, 0x5ee(r31)
/* 80D007B0  7F 80 07 35 */	extsh. r0, r28
/* 80D007B4  41 82 00 50 */	beq lbl_80D00804
/* 80D007B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D007BC  7C 03 07 74 */	extsb r3, r0
/* 80D007C0  4B 32 C8 AD */	bl dComIfGp_getReverb__Fi
/* 80D007C4  7C 67 1B 78 */	mr r7, r3
/* 80D007C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CC@ha */
/* 80D007CC  38 03 01 CC */	addi r0, r3, 0x01CC /* 0x000801CC@l */
/* 80D007D0  90 01 00 08 */	stw r0, 8(r1)
/* 80D007D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D007D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D007DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D007E0  38 81 00 08 */	addi r4, r1, 8
/* 80D007E4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D007E8  7F 86 E3 78 */	mr r6, r28
/* 80D007EC  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80D007F0  FC 40 08 90 */	fmr f2, f1
/* 80D007F4  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80D007F8  FC 80 18 90 */	fmr f4, f3
/* 80D007FC  39 00 00 00 */	li r8, 0
/* 80D00800  4B 5A BD 0D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D00804:
/* 80D00804  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80D00808  90 1D 00 00 */	stw r0, 0(r29)
/* 80D0080C  7F E3 FB 78 */	mr r3, r31
/* 80D00810  4B FF F9 BD */	bl setBaseMtx__16daObjSwSpinner_cFv
/* 80D00814  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D00818  4B 37 B1 A9 */	bl Move__4dBgWFv
/* 80D0081C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D00820  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D00824  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D00828  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D0082C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D00830  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D00834  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80D00838  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D0083C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D00840  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D00844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D00848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0084C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00850  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D00854  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00858  7C 05 07 74 */	extsb r5, r0
/* 80D0085C  4B 33 4B 05 */	bl isSwitch__10dSv_info_cCFii
/* 80D00860  30 03 FF FF */	addic r0, r3, -1
/* 80D00864  7C 00 19 10 */	subfe r0, r0, r3
/* 80D00868  98 1F 05 EB */	stb r0, 0x5eb(r31)
/* 80D0086C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80D00870  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80D00874  38 60 00 01 */	li r3, 1
/* 80D00878  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0087C  4B 66 19 A9 */	bl _restgpr_28
/* 80D00880  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D00884  7C 08 03 A6 */	mtlr r0
/* 80D00888  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0088C  4E 80 00 20 */	blr 
