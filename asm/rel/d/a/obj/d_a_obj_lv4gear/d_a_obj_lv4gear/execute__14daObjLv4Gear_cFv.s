lbl_80C681F4:
/* 80C681F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C681F8  7C 08 02 A6 */	mflr r0
/* 80C681FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C68200  39 61 00 30 */	addi r11, r1, 0x30
/* 80C68204  4B 6F 9F D8 */	b _savegpr_29
/* 80C68208  7C 7D 1B 78 */	mr r29, r3
/* 80C6820C  3C 60 80 C7 */	lis r3, l_bmd@ha
/* 80C68210  3B E3 85 00 */	addi r31, r3, l_bmd@l
/* 80C68214  38 00 00 00 */	li r0, 0
/* 80C68218  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80C6821C  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 80C68220  3C 03 00 01 */	addis r0, r3, 1
/* 80C68224  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C68228  40 82 00 34 */	bne lbl_80C6825C
/* 80C6822C  3C 60 80 C6 */	lis r3, searchSwSpinSub__FPvPv@ha
/* 80C68230  38 63 7F 38 */	addi r3, r3, searchSwSpinSub__FPvPv@l
/* 80C68234  7F A4 EB 78 */	mr r4, r29
/* 80C68238  4B 3B 91 00 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80C6823C  28 03 00 00 */	cmplwi r3, 0
/* 80C68240  41 82 01 6C */	beq lbl_80C683AC
/* 80C68244  41 82 00 0C */	beq lbl_80C68250
/* 80C68248  80 03 00 04 */	lwz r0, 4(r3)
/* 80C6824C  48 00 00 08 */	b lbl_80C68254
lbl_80C68250:
/* 80C68250  38 00 FF FF */	li r0, -1
lbl_80C68254:
/* 80C68254  90 1D 05 7C */	stw r0, 0x57c(r29)
/* 80C68258  48 00 01 54 */	b lbl_80C683AC
lbl_80C6825C:
/* 80C6825C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C68260  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C68264  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C68268  38 81 00 10 */	addi r4, r1, 0x10
/* 80C6826C  4B 3B 15 8C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C68270  28 03 00 00 */	cmplwi r3, 0
/* 80C68274  41 82 00 0C */	beq lbl_80C68280
/* 80C68278  A8 03 05 EE */	lha r0, 0x5ee(r3)
/* 80C6827C  B0 1D 05 74 */	sth r0, 0x574(r29)
lbl_80C68280:
/* 80C68280  A8 1D 05 74 */	lha r0, 0x574(r29)
/* 80C68284  2C 00 00 00 */	cmpwi r0, 0
/* 80C68288  40 82 00 10 */	bne lbl_80C68298
/* 80C6828C  38 00 00 00 */	li r0, 0
/* 80C68290  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 80C68294  48 00 00 10 */	b lbl_80C682A4
lbl_80C68298:
/* 80C68298  A0 7D 05 80 */	lhz r3, 0x580(r29)
/* 80C6829C  38 03 00 01 */	addi r0, r3, 1
/* 80C682A0  B0 1D 05 80 */	sth r0, 0x580(r29)
lbl_80C682A4:
/* 80C682A4  A0 9D 05 80 */	lhz r4, 0x580(r29)
/* 80C682A8  88 1D 05 82 */	lbz r0, 0x582(r29)
/* 80C682AC  54 00 08 3C */	slwi r0, r0, 1
/* 80C682B0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80C682B4  7C 03 02 AE */	lhax r0, r3, r0
/* 80C682B8  7C 04 00 00 */	cmpw r4, r0
/* 80C682BC  40 81 00 18 */	ble lbl_80C682D4
/* 80C682C0  38 7D 05 76 */	addi r3, r29, 0x576
/* 80C682C4  A8 9D 05 74 */	lha r4, 0x574(r29)
/* 80C682C8  38 A0 00 0A */	li r5, 0xa
/* 80C682CC  4B 60 84 04 */	b cLib_chaseS__FPsss
/* 80C682D0  48 00 00 14 */	b lbl_80C682E4
lbl_80C682D4:
/* 80C682D4  38 7D 05 76 */	addi r3, r29, 0x576
/* 80C682D8  38 80 00 00 */	li r4, 0
/* 80C682DC  38 A0 00 32 */	li r5, 0x32
/* 80C682E0  4B 60 83 F0 */	b cLib_chaseS__FPsss
lbl_80C682E4:
/* 80C682E4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C682E8  54 00 A7 3F */	rlwinm. r0, r0, 0x14, 0x1c, 0x1f
/* 80C682EC  40 82 00 C0 */	bne lbl_80C683AC
/* 80C682F0  AB DD 05 76 */	lha r30, 0x576(r29)
/* 80C682F4  7F C0 07 35 */	extsh. r0, r30
/* 80C682F8  41 82 00 B4 */	beq lbl_80C683AC
/* 80C682FC  88 1D 05 82 */	lbz r0, 0x582(r29)
/* 80C68300  28 00 00 00 */	cmplwi r0, 0
/* 80C68304  40 82 00 54 */	bne lbl_80C68358
/* 80C68308  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C6830C  7C 03 07 74 */	extsb r3, r0
/* 80C68310  4B 3C 4D 5C */	b dComIfGp_getReverb__Fi
/* 80C68314  7C 67 1B 78 */	mr r7, r3
/* 80C68318  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008019F@ha */
/* 80C6831C  38 03 01 9F */	addi r0, r3, 0x019F /* 0x0008019F@l */
/* 80C68320  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C68324  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C68328  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C6832C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C68330  38 81 00 0C */	addi r4, r1, 0xc
/* 80C68334  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C68338  7F C6 F3 78 */	mr r6, r30
/* 80C6833C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C68340  FC 40 08 90 */	fmr f2, f1
/* 80C68344  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C68348  FC 80 18 90 */	fmr f4, f3
/* 80C6834C  39 00 00 00 */	li r8, 0
/* 80C68350  4B 64 41 BC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C68354  48 00 00 58 */	b lbl_80C683AC
lbl_80C68358:
/* 80C68358  28 00 00 01 */	cmplwi r0, 1
/* 80C6835C  40 82 00 50 */	bne lbl_80C683AC
/* 80C68360  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C68364  7C 03 07 74 */	extsb r3, r0
/* 80C68368  4B 3C 4D 04 */	b dComIfGp_getReverb__Fi
/* 80C6836C  7C 67 1B 78 */	mr r7, r3
/* 80C68370  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C1@ha */
/* 80C68374  38 03 01 C1 */	addi r0, r3, 0x01C1 /* 0x000801C1@l */
/* 80C68378  90 01 00 08 */	stw r0, 8(r1)
/* 80C6837C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C68380  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C68384  80 63 00 00 */	lwz r3, 0(r3)
/* 80C68388  38 81 00 08 */	addi r4, r1, 8
/* 80C6838C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C68390  7F C6 F3 78 */	mr r6, r30
/* 80C68394  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C68398  FC 40 08 90 */	fmr f2, f1
/* 80C6839C  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C683A0  FC 80 18 90 */	fmr f4, f3
/* 80C683A4  39 00 00 00 */	li r8, 0
/* 80C683A8  4B 64 41 64 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C683AC:
/* 80C683AC  A8 7D 05 78 */	lha r3, 0x578(r29)
/* 80C683B0  A8 1D 05 76 */	lha r0, 0x576(r29)
/* 80C683B4  7C 03 02 14 */	add r0, r3, r0
/* 80C683B8  B0 1D 05 78 */	sth r0, 0x578(r29)
/* 80C683BC  7F A3 EB 78 */	mr r3, r29
/* 80C683C0  4B FF FC 31 */	bl setBaseMtx__14daObjLv4Gear_cFv
/* 80C683C4  38 60 00 01 */	li r3, 1
/* 80C683C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C683CC  4B 6F 9E 5C */	b _restgpr_29
/* 80C683D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C683D4  7C 08 03 A6 */	mtlr r0
/* 80C683D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C683DC  4E 80 00 20 */	blr 
