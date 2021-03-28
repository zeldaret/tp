lbl_80D49418:
/* 80D49418  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D4941C  7C 08 02 A6 */	mflr r0
/* 80D49420  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D49424  39 61 00 50 */	addi r11, r1, 0x50
/* 80D49428  4B 61 8D B4 */	b _savegpr_29
/* 80D4942C  7C 7E 1B 78 */	mr r30, r3
/* 80D49430  3C 80 80 D5 */	lis r4, m__14daPeru_Param_c@ha
/* 80D49434  3B E4 C0 60 */	addi r31, r4, m__14daPeru_Param_c@l
/* 80D49438  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80D4943C  2C 00 00 02 */	cmpwi r0, 2
/* 80D49440  41 82 00 C0 */	beq lbl_80D49500
/* 80D49444  40 80 00 14 */	bge lbl_80D49458
/* 80D49448  2C 00 FF FF */	cmpwi r0, -1
/* 80D4944C  41 82 02 B4 */	beq lbl_80D49700
/* 80D49450  40 80 00 14 */	bge lbl_80D49464
/* 80D49454  48 00 02 AC */	b lbl_80D49700
lbl_80D49458:
/* 80D49458  2C 00 00 04 */	cmpwi r0, 4
/* 80D4945C  40 80 02 A4 */	bge lbl_80D49700
/* 80D49460  48 00 00 F0 */	b lbl_80D49550
lbl_80D49464:
/* 80D49464  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80D49468  2C 00 00 02 */	cmpwi r0, 2
/* 80D4946C  41 82 00 24 */	beq lbl_80D49490
/* 80D49470  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80D49474  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80D49478  4B 3F C4 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4947C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80D49480  38 00 00 02 */	li r0, 2
/* 80D49484  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80D49488  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80D4948C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80D49490:
/* 80D49490  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80D49494  2C 00 00 08 */	cmpwi r0, 8
/* 80D49498  41 82 00 24 */	beq lbl_80D494BC
/* 80D4949C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80D494A0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80D494A4  4B 3F C3 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D494A8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80D494AC  38 00 00 08 */	li r0, 8
/* 80D494B0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80D494B4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80D494B8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80D494BC:
/* 80D494BC  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80D494C0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D494C4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D494C8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80D494CC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D494D0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80D494D4  38 00 00 00 */	li r0, 0
/* 80D494D8  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
/* 80D494DC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80D494E0  3C 63 00 01 */	addis r3, r3, 1
/* 80D494E4  38 03 80 00 */	addi r0, r3, -32768
/* 80D494E8  B0 1E 0E 6E */	sth r0, 0xe6e(r30)
/* 80D494EC  38 00 00 37 */	li r0, 0x37
/* 80D494F0  B0 1E 0E 6C */	sth r0, 0xe6c(r30)
/* 80D494F4  38 00 00 02 */	li r0, 2
/* 80D494F8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80D494FC  48 00 02 04 */	b lbl_80D49700
lbl_80D49500:
/* 80D49500  A8 9E 0E 6E */	lha r4, 0xe6e(r30)
/* 80D49504  38 A0 00 02 */	li r5, 2
/* 80D49508  38 C0 00 08 */	li r6, 8
/* 80D4950C  38 E0 00 14 */	li r7, 0x14
/* 80D49510  39 00 00 00 */	li r8, 0
/* 80D49514  4B 40 21 34 */	b step__8daNpcT_cFsiiii
/* 80D49518  A8 7E 0E 6C */	lha r3, 0xe6c(r30)
/* 80D4951C  38 03 FF FF */	addi r0, r3, -1
/* 80D49520  B0 1E 0E 6C */	sth r0, 0xe6c(r30)
/* 80D49524  A8 1E 0E 6C */	lha r0, 0xe6c(r30)
/* 80D49528  2C 00 00 00 */	cmpwi r0, 0
/* 80D4952C  41 81 01 D4 */	bgt lbl_80D49700
/* 80D49530  A8 7E 0E 6E */	lha r3, 0xe6e(r30)
/* 80D49534  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D49538  B0 1E 0E 6E */	sth r0, 0xe6e(r30)
/* 80D4953C  38 00 00 00 */	li r0, 0
/* 80D49540  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
/* 80D49544  38 00 00 03 */	li r0, 3
/* 80D49548  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80D4954C  48 00 01 B4 */	b lbl_80D49700
lbl_80D49550:
/* 80D49550  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80D49554  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D49558  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80D4955C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D49560  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80D49564  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D49568  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D4956C  38 81 00 30 */	addi r4, r1, 0x30
/* 80D49570  4B 52 76 94 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D49574  7C 64 1B 78 */	mr r4, r3
/* 80D49578  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80D4957C  38 A0 02 00 */	li r5, 0x200
/* 80D49580  4B 52 76 10 */	b cLib_chaseAngleS__FPsss
/* 80D49584  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80D49588  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D4958C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D49590  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D49594  38 61 00 24 */	addi r3, r1, 0x24
/* 80D49598  38 81 00 30 */	addi r4, r1, 0x30
/* 80D4959C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D495A0  4B 51 D5 94 */	b __mi__4cXyzCFRC3Vec
/* 80D495A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D495A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D495AC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D495B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D495B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D495B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D495BC  38 61 00 0C */	addi r3, r1, 0xc
/* 80D495C0  4B 5F DB 78 */	b PSVECSquareMag
/* 80D495C4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D495C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D495CC  40 81 00 58 */	ble lbl_80D49624
/* 80D495D0  FC 00 08 34 */	frsqrte f0, f1
/* 80D495D4  C8 9F 00 E0 */	lfd f4, 0xe0(r31)
/* 80D495D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D495DC  C8 7F 00 E8 */	lfd f3, 0xe8(r31)
/* 80D495E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D495E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D495E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D495EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D495F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D495F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D495F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D495FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D49600  FC 02 00 32 */	fmul f0, f2, f0
/* 80D49604  FC 44 00 32 */	fmul f2, f4, f0
/* 80D49608  FC 00 00 32 */	fmul f0, f0, f0
/* 80D4960C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D49610  FC 03 00 28 */	fsub f0, f3, f0
/* 80D49614  FC 02 00 32 */	fmul f0, f2, f0
/* 80D49618  FC 21 00 32 */	fmul f1, f1, f0
/* 80D4961C  FC 20 08 18 */	frsp f1, f1
/* 80D49620  48 00 00 88 */	b lbl_80D496A8
lbl_80D49624:
/* 80D49624  C8 1F 00 F0 */	lfd f0, 0xf0(r31)
/* 80D49628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4962C  40 80 00 10 */	bge lbl_80D4963C
/* 80D49630  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D49634  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D49638  48 00 00 70 */	b lbl_80D496A8
lbl_80D4963C:
/* 80D4963C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D49640  80 81 00 08 */	lwz r4, 8(r1)
/* 80D49644  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D49648  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D4964C  7C 03 00 00 */	cmpw r3, r0
/* 80D49650  41 82 00 14 */	beq lbl_80D49664
/* 80D49654  40 80 00 40 */	bge lbl_80D49694
/* 80D49658  2C 03 00 00 */	cmpwi r3, 0
/* 80D4965C  41 82 00 20 */	beq lbl_80D4967C
/* 80D49660  48 00 00 34 */	b lbl_80D49694
lbl_80D49664:
/* 80D49664  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D49668  41 82 00 0C */	beq lbl_80D49674
/* 80D4966C  38 00 00 01 */	li r0, 1
/* 80D49670  48 00 00 28 */	b lbl_80D49698
lbl_80D49674:
/* 80D49674  38 00 00 02 */	li r0, 2
/* 80D49678  48 00 00 20 */	b lbl_80D49698
lbl_80D4967C:
/* 80D4967C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D49680  41 82 00 0C */	beq lbl_80D4968C
/* 80D49684  38 00 00 05 */	li r0, 5
/* 80D49688  48 00 00 10 */	b lbl_80D49698
lbl_80D4968C:
/* 80D4968C  38 00 00 03 */	li r0, 3
/* 80D49690  48 00 00 08 */	b lbl_80D49698
lbl_80D49694:
/* 80D49694  38 00 00 04 */	li r0, 4
lbl_80D49698:
/* 80D49698  2C 00 00 01 */	cmpwi r0, 1
/* 80D4969C  40 82 00 0C */	bne lbl_80D496A8
/* 80D496A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D496A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D496A8:
/* 80D496A8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80D496AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D496B0  40 80 00 50 */	bge lbl_80D49700
/* 80D496B4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D496B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D496BC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80D496C0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D496C4  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80D496C8  3C 60 80 D5 */	lis r3, lit_5295@ha
/* 80D496CC  38 83 C5 A4 */	addi r4, r3, lit_5295@l
/* 80D496D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80D496D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80D496D8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80D496DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D496E0  80 04 00 08 */	lwz r0, 8(r4)
/* 80D496E4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D496E8  7F C3 F3 78 */	mr r3, r30
/* 80D496EC  38 81 00 18 */	addi r4, r1, 0x18
/* 80D496F0  38 A0 00 00 */	li r5, 0
/* 80D496F4  4B FF EC 71 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D496F8  38 60 00 01 */	li r3, 1
/* 80D496FC  48 00 00 08 */	b lbl_80D49704
lbl_80D49700:
/* 80D49700  38 60 00 00 */	li r3, 0
lbl_80D49704:
/* 80D49704  39 61 00 50 */	addi r11, r1, 0x50
/* 80D49708  4B 61 8B 20 */	b _restgpr_29
/* 80D4970C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D49710  7C 08 03 A6 */	mtlr r0
/* 80D49714  38 21 00 50 */	addi r1, r1, 0x50
/* 80D49718  4E 80 00 20 */	blr 
