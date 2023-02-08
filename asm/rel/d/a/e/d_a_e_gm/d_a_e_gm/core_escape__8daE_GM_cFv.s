lbl_806D462C:
/* 806D462C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806D4630  7C 08 02 A6 */	mflr r0
/* 806D4634  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806D4638  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806D463C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806D4640  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 806D4644  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 806D4648  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 806D464C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 806D4650  39 61 00 90 */	addi r11, r1, 0x90
/* 806D4654  4B C8 DB 7D */	bl _savegpr_26
/* 806D4658  7C 7C 1B 78 */	mr r28, r3
/* 806D465C  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D4660  3B E4 79 A0 */	addi r31, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D4664  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D4668  2C 00 00 00 */	cmpwi r0, 0
/* 806D466C  40 82 00 78 */	bne lbl_806D46E4
/* 806D4670  38 00 00 02 */	li r0, 2
/* 806D4674  98 1C 0A 69 */	stb r0, 0xa69(r28)
/* 806D4678  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D467C  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D4680  38 63 00 05 */	addi r3, r3, 5
/* 806D4684  38 80 00 0A */	li r4, 0xa
/* 806D4688  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D468C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D4690  3C A5 00 02 */	addis r5, r5, 2
/* 806D4694  38 C0 00 80 */	li r6, 0x80
/* 806D4698  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D469C  4B 96 7C 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D46A0  7C 64 1B 78 */	mr r4, r3
/* 806D46A4  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 806D46A8  38 A0 00 02 */	li r5, 2
/* 806D46AC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D46B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D46B4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D46B8  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D46BC  4B 93 C7 B5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D46C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D46C4  D0 1C 0A 44 */	stfs f0, 0xa44(r28)
/* 806D46C8  D0 1C 0A 40 */	stfs f0, 0xa40(r28)
/* 806D46CC  38 00 04 00 */	li r0, 0x400
/* 806D46D0  90 1C 08 18 */	stw r0, 0x818(r28)
/* 806D46D4  80 7C 0A 3C */	lwz r3, 0xa3c(r28)
/* 806D46D8  38 03 00 01 */	addi r0, r3, 1
/* 806D46DC  90 1C 0A 3C */	stw r0, 0xa3c(r28)
/* 806D46E0  48 00 06 0C */	b lbl_806D4CEC
lbl_806D46E4:
/* 806D46E4  2C 00 FF FF */	cmpwi r0, -1
/* 806D46E8  41 82 06 04 */	beq lbl_806D4CEC
/* 806D46EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D46F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D46F4  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 806D46F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D46FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806D4700  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806D4704  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806D4708  38 9C 07 CC */	addi r4, r28, 0x7cc
/* 806D470C  4B 94 5F C1 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D4710  38 7C 05 F4 */	addi r3, r28, 0x5f4
/* 806D4714  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D4718  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D471C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D4720  4B 9A 23 8D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D4724  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D4728  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D472C  7F 84 E3 78 */	mr r4, r28
/* 806D4730  4B 94 CC 09 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D4734  28 03 00 00 */	cmplwi r3, 0
/* 806D4738  41 82 00 50 */	beq lbl_806D4788
/* 806D473C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D4740  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806D4744  4B B9 C4 C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D4748  B0 7C 0A 1E */	sth r3, 0xa1e(r28)
/* 806D474C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D4750  4B B9 32 3D */	bl cM_rndFX__Ff
/* 806D4754  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 806D4758  3C 60 80 6D */	lis r3, lit_5255@ha /* 0x806D7D00@ha */
/* 806D475C  38 83 7D 00 */	addi r4, r3, lit_5255@l /* 0x806D7D00@l */
/* 806D4760  80 64 00 00 */	lwz r3, 0(r4)
/* 806D4764  80 04 00 04 */	lwz r0, 4(r4)
/* 806D4768  90 61 00 44 */	stw r3, 0x44(r1)
/* 806D476C  90 01 00 48 */	stw r0, 0x48(r1)
/* 806D4770  80 04 00 08 */	lwz r0, 8(r4)
/* 806D4774  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806D4778  7F 83 E3 78 */	mr r3, r28
/* 806D477C  38 81 00 44 */	addi r4, r1, 0x44
/* 806D4780  4B FF CB 49 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D4784  48 00 05 68 */	b lbl_806D4CEC
lbl_806D4788:
/* 806D4788  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806D478C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806D4790  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D4794  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D4798  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806D479C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806D47A0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806D47A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806D47A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806D47AC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806D47B0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 806D47B4  38 61 00 2C */	addi r3, r1, 0x2c
/* 806D47B8  38 81 00 38 */	addi r4, r1, 0x38
/* 806D47BC  4B C7 2B E1 */	bl PSVECSquareDistance
/* 806D47C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D47C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D47C8  40 81 00 58 */	ble lbl_806D4820
/* 806D47CC  FC 00 08 34 */	frsqrte f0, f1
/* 806D47D0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D47D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806D47D8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D47DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806D47E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806D47E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806D47E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806D47EC  FC 44 00 32 */	fmul f2, f4, f0
/* 806D47F0  FC 00 00 32 */	fmul f0, f0, f0
/* 806D47F4  FC 01 00 32 */	fmul f0, f1, f0
/* 806D47F8  FC 03 00 28 */	fsub f0, f3, f0
/* 806D47FC  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4800  FC 44 00 32 */	fmul f2, f4, f0
/* 806D4804  FC 00 00 32 */	fmul f0, f0, f0
/* 806D4808  FC 01 00 32 */	fmul f0, f1, f0
/* 806D480C  FC 03 00 28 */	fsub f0, f3, f0
/* 806D4810  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4814  FF E1 00 32 */	fmul f31, f1, f0
/* 806D4818  FF E0 F8 18 */	frsp f31, f31
/* 806D481C  48 00 00 90 */	b lbl_806D48AC
lbl_806D4820:
/* 806D4820  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D4824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4828  40 80 00 10 */	bge lbl_806D4838
/* 806D482C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806D4830  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806D4834  48 00 00 78 */	b lbl_806D48AC
lbl_806D4838:
/* 806D4838  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806D483C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806D4840  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D4844  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D4848  7C 03 00 00 */	cmpw r3, r0
/* 806D484C  41 82 00 14 */	beq lbl_806D4860
/* 806D4850  40 80 00 40 */	bge lbl_806D4890
/* 806D4854  2C 03 00 00 */	cmpwi r3, 0
/* 806D4858  41 82 00 20 */	beq lbl_806D4878
/* 806D485C  48 00 00 34 */	b lbl_806D4890
lbl_806D4860:
/* 806D4860  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D4864  41 82 00 0C */	beq lbl_806D4870
/* 806D4868  38 00 00 01 */	li r0, 1
/* 806D486C  48 00 00 28 */	b lbl_806D4894
lbl_806D4870:
/* 806D4870  38 00 00 02 */	li r0, 2
/* 806D4874  48 00 00 20 */	b lbl_806D4894
lbl_806D4878:
/* 806D4878  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D487C  41 82 00 0C */	beq lbl_806D4888
/* 806D4880  38 00 00 05 */	li r0, 5
/* 806D4884  48 00 00 10 */	b lbl_806D4894
lbl_806D4888:
/* 806D4888  38 00 00 03 */	li r0, 3
/* 806D488C  48 00 00 08 */	b lbl_806D4894
lbl_806D4890:
/* 806D4890  38 00 00 04 */	li r0, 4
lbl_806D4894:
/* 806D4894  2C 00 00 01 */	cmpwi r0, 1
/* 806D4898  40 82 00 10 */	bne lbl_806D48A8
/* 806D489C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806D48A0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806D48A4  48 00 00 08 */	b lbl_806D48AC
lbl_806D48A8:
/* 806D48A8  FF E0 08 90 */	fmr f31, f1
lbl_806D48AC:
/* 806D48AC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806D48B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806D48B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D48B8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806D48BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806D48C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D48C4  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806D48C8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806D48CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806D48D0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806D48D4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806D48D8  38 61 00 14 */	addi r3, r1, 0x14
/* 806D48DC  38 81 00 20 */	addi r4, r1, 0x20
/* 806D48E0  4B C7 2A BD */	bl PSVECSquareDistance
/* 806D48E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D48E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D48EC  40 81 00 58 */	ble lbl_806D4944
/* 806D48F0  FC 00 08 34 */	frsqrte f0, f1
/* 806D48F4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D48F8  FC 44 00 32 */	fmul f2, f4, f0
/* 806D48FC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D4900  FC 00 00 32 */	fmul f0, f0, f0
/* 806D4904  FC 01 00 32 */	fmul f0, f1, f0
/* 806D4908  FC 03 00 28 */	fsub f0, f3, f0
/* 806D490C  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4910  FC 44 00 32 */	fmul f2, f4, f0
/* 806D4914  FC 00 00 32 */	fmul f0, f0, f0
/* 806D4918  FC 01 00 32 */	fmul f0, f1, f0
/* 806D491C  FC 03 00 28 */	fsub f0, f3, f0
/* 806D4920  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4924  FC 44 00 32 */	fmul f2, f4, f0
/* 806D4928  FC 00 00 32 */	fmul f0, f0, f0
/* 806D492C  FC 01 00 32 */	fmul f0, f1, f0
/* 806D4930  FC 03 00 28 */	fsub f0, f3, f0
/* 806D4934  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4938  FF A1 00 32 */	fmul f29, f1, f0
/* 806D493C  FF A0 E8 18 */	frsp f29, f29
/* 806D4940  48 00 00 90 */	b lbl_806D49D0
lbl_806D4944:
/* 806D4944  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D4948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D494C  40 80 00 10 */	bge lbl_806D495C
/* 806D4950  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806D4954  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806D4958  48 00 00 78 */	b lbl_806D49D0
lbl_806D495C:
/* 806D495C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806D4960  80 81 00 08 */	lwz r4, 8(r1)
/* 806D4964  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D4968  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D496C  7C 03 00 00 */	cmpw r3, r0
/* 806D4970  41 82 00 14 */	beq lbl_806D4984
/* 806D4974  40 80 00 40 */	bge lbl_806D49B4
/* 806D4978  2C 03 00 00 */	cmpwi r3, 0
/* 806D497C  41 82 00 20 */	beq lbl_806D499C
/* 806D4980  48 00 00 34 */	b lbl_806D49B4
lbl_806D4984:
/* 806D4984  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D4988  41 82 00 0C */	beq lbl_806D4994
/* 806D498C  38 00 00 01 */	li r0, 1
/* 806D4990  48 00 00 28 */	b lbl_806D49B8
lbl_806D4994:
/* 806D4994  38 00 00 02 */	li r0, 2
/* 806D4998  48 00 00 20 */	b lbl_806D49B8
lbl_806D499C:
/* 806D499C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D49A0  41 82 00 0C */	beq lbl_806D49AC
/* 806D49A4  38 00 00 05 */	li r0, 5
/* 806D49A8  48 00 00 10 */	b lbl_806D49B8
lbl_806D49AC:
/* 806D49AC  38 00 00 03 */	li r0, 3
/* 806D49B0  48 00 00 08 */	b lbl_806D49B8
lbl_806D49B4:
/* 806D49B4  38 00 00 04 */	li r0, 4
lbl_806D49B8:
/* 806D49B8  2C 00 00 01 */	cmpwi r0, 1
/* 806D49BC  40 82 00 10 */	bne lbl_806D49CC
/* 806D49C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806D49C4  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806D49C8  48 00 00 08 */	b lbl_806D49D0
lbl_806D49CC:
/* 806D49CC  FF A0 08 90 */	fmr f29, f1
lbl_806D49D0:
/* 806D49D0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806D49D4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806D49D8  4B B9 C2 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D49DC  7C 7D 07 34 */	extsh r29, r3
/* 806D49E0  38 61 00 50 */	addi r3, r1, 0x50
/* 806D49E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806D49E8  4B B9 C2 1D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D49EC  7C 7B 1B 78 */	mr r27, r3
/* 806D49F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D49F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D49F8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 806D49FC  7C 00 07 74 */	extsb r0, r0
/* 806D4A00  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806D4A04  7C 63 02 14 */	add r3, r3, r0
/* 806D4A08  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 806D4A0C  AB 43 02 32 */	lha r26, 0x232(r3)
/* 806D4A10  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 806D4A14  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806D4A18  40 80 00 0C */	bge lbl_806D4A24
/* 806D4A1C  38 00 00 3C */	li r0, 0x3c
/* 806D4A20  98 1C 0A 6D */	stb r0, 0xa6d(r28)
lbl_806D4A24:
/* 806D4A24  88 1C 0A 6D */	lbz r0, 0xa6d(r28)
/* 806D4A28  28 00 00 00 */	cmplwi r0, 0
/* 806D4A2C  41 82 00 0C */	beq lbl_806D4A38
/* 806D4A30  C3 DF 00 34 */	lfs f30, 0x34(r31)
/* 806D4A34  48 00 00 08 */	b lbl_806D4A3C
lbl_806D4A38:
/* 806D4A38  C3 DF 00 04 */	lfs f30, 4(r31)
lbl_806D4A3C:
/* 806D4A3C  28 00 00 00 */	cmplwi r0, 0
/* 806D4A40  41 82 00 10 */	beq lbl_806D4A50
/* 806D4A44  38 00 04 00 */	li r0, 0x400
/* 806D4A48  B0 1C 0A 5C */	sth r0, 0xa5c(r28)
/* 806D4A4C  48 00 00 50 */	b lbl_806D4A9C
lbl_806D4A50:
/* 806D4A50  88 1C 0A 6B */	lbz r0, 0xa6b(r28)
/* 806D4A54  28 00 00 00 */	cmplwi r0, 0
/* 806D4A58  40 82 00 44 */	bne lbl_806D4A9C
/* 806D4A5C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D4A60  4B B9 2E F5 */	bl cM_rndF__Ff
/* 806D4A64  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D4A68  EC 00 08 2A */	fadds f0, f0, f1
/* 806D4A6C  FC 00 00 1E */	fctiwz f0, f0
/* 806D4A70  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806D4A74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806D4A78  98 1C 0A 6B */	stb r0, 0xa6b(r28)
/* 806D4A7C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806D4A80  4B B9 2E D5 */	bl cM_rndF__Ff
/* 806D4A84  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 806D4A88  EC 00 08 2A */	fadds f0, f0, f1
/* 806D4A8C  FC 00 00 1E */	fctiwz f0, f0
/* 806D4A90  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D4A94  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806D4A98  B0 1C 0A 5C */	sth r0, 0xa5c(r28)
lbl_806D4A9C:
/* 806D4A9C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 806D4AA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806D4AA4  40 80 00 98 */	bge lbl_806D4B3C
/* 806D4AA8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 806D4AAC  40 81 00 18 */	ble lbl_806D4AC4
/* 806D4AB0  38 1B 80 00 */	addi r0, r27, -32768
/* 806D4AB4  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
/* 806D4AB8  38 00 02 00 */	li r0, 0x200
/* 806D4ABC  B0 1C 0A 5C */	sth r0, 0xa5c(r28)
/* 806D4AC0  48 00 00 DC */	b lbl_806D4B9C
lbl_806D4AC4:
/* 806D4AC4  7C 7D D0 50 */	subf r3, r29, r26
/* 806D4AC8  4B C9 06 09 */	bl abs
/* 806D4ACC  2C 03 60 00 */	cmpwi r3, 0x6000
/* 806D4AD0  40 80 00 24 */	bge lbl_806D4AF4
/* 806D4AD4  7C 1A E8 00 */	cmpw r26, r29
/* 806D4AD8  40 80 00 10 */	bge lbl_806D4AE8
/* 806D4ADC  38 1A 40 00 */	addi r0, r26, 0x4000
/* 806D4AE0  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
/* 806D4AE4  48 00 00 B8 */	b lbl_806D4B9C
lbl_806D4AE8:
/* 806D4AE8  38 1A C0 00 */	addi r0, r26, -16384
/* 806D4AEC  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
/* 806D4AF0  48 00 00 AC */	b lbl_806D4B9C
lbl_806D4AF4:
/* 806D4AF4  88 1C 0A 6C */	lbz r0, 0xa6c(r28)
/* 806D4AF8  28 00 00 00 */	cmplwi r0, 0
/* 806D4AFC  40 82 00 A0 */	bne lbl_806D4B9C
/* 806D4B00  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D4B04  4B B9 2E 51 */	bl cM_rndF__Ff
/* 806D4B08  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D4B0C  EC 00 08 2A */	fadds f0, f0, f1
/* 806D4B10  FC 00 00 1E */	fctiwz f0, f0
/* 806D4B14  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D4B18  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806D4B1C  98 1C 0A 6C */	stb r0, 0xa6c(r28)
/* 806D4B20  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806D4B24  4B B9 2E 69 */	bl cM_rndFX__Ff
/* 806D4B28  FC 00 08 1E */	fctiwz f0, f1
/* 806D4B2C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806D4B30  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806D4B34  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
/* 806D4B38  48 00 00 64 */	b lbl_806D4B9C
lbl_806D4B3C:
/* 806D4B3C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 806D4B40  40 81 00 18 */	ble lbl_806D4B58
/* 806D4B44  38 1B 80 00 */	addi r0, r27, -32768
/* 806D4B48  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
/* 806D4B4C  38 00 02 00 */	li r0, 0x200
/* 806D4B50  B0 1C 0A 5C */	sth r0, 0xa5c(r28)
/* 806D4B54  48 00 00 48 */	b lbl_806D4B9C
lbl_806D4B58:
/* 806D4B58  88 1C 0A 6C */	lbz r0, 0xa6c(r28)
/* 806D4B5C  28 00 00 00 */	cmplwi r0, 0
/* 806D4B60  40 82 00 3C */	bne lbl_806D4B9C
/* 806D4B64  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806D4B68  4B B9 2D ED */	bl cM_rndF__Ff
/* 806D4B6C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806D4B70  EC 00 08 2A */	fadds f0, f0, f1
/* 806D4B74  FC 00 00 1E */	fctiwz f0, f0
/* 806D4B78  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D4B7C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806D4B80  98 1C 0A 6C */	stb r0, 0xa6c(r28)
/* 806D4B84  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806D4B88  4B B9 2E 05 */	bl cM_rndFX__Ff
/* 806D4B8C  FC 00 08 1E */	fctiwz f0, f1
/* 806D4B90  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806D4B94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806D4B98  B0 1C 0A 1E */	sth r0, 0xa1e(r28)
lbl_806D4B9C:
/* 806D4B9C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806D4BA0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 806D4BA4  EC 01 00 24 */	fdivs f0, f1, f0
/* 806D4BA8  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 806D4BAC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D4BB0  38 7C 0A 60 */	addi r3, r28, 0xa60
/* 806D4BB4  A8 9C 0A 5C */	lha r4, 0xa5c(r28)
/* 806D4BB8  38 A0 00 10 */	li r5, 0x10
/* 806D4BBC  4B B9 BB 15 */	bl cLib_chaseS__FPsss
/* 806D4BC0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806D4BC4  A8 9C 0A 1E */	lha r4, 0xa1e(r28)
/* 806D4BC8  A8 BC 0A 60 */	lha r5, 0xa60(r28)
/* 806D4BCC  4B B9 BF C5 */	bl cLib_chaseAngleS__FPsss
/* 806D4BD0  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 806D4BD4  38 80 00 00 */	li r4, 0
/* 806D4BD8  38 A0 00 04 */	li r5, 4
/* 806D4BDC  38 C0 40 00 */	li r6, 0x4000
/* 806D4BE0  38 E0 10 00 */	li r7, 0x1000
/* 806D4BE4  4B B9 B9 5D */	bl cLib_addCalcAngleS__FPsssss
/* 806D4BE8  38 7C 04 E0 */	addi r3, r28, 0x4e0
/* 806D4BEC  38 80 00 00 */	li r4, 0
/* 806D4BF0  38 A0 00 04 */	li r5, 4
/* 806D4BF4  38 C0 40 00 */	li r6, 0x4000
/* 806D4BF8  38 E0 10 00 */	li r7, 0x1000
/* 806D4BFC  4B B9 B9 45 */	bl cLib_addCalcAngleS__FPsssss
/* 806D4C00  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806D4C04  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806D4C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4C0C  40 80 00 18 */	bge lbl_806D4C24
/* 806D4C10  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 806D4C14  FC 20 F0 90 */	fmr f1, f30
/* 806D4C18  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D4C1C  4B B9 BB 25 */	bl cLib_chaseF__FPfff
/* 806D4C20  48 00 00 14 */	b lbl_806D4C34
lbl_806D4C24:
/* 806D4C24  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 806D4C28  FC 20 F0 90 */	fmr f1, f30
/* 806D4C2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D4C30  4B B9 BB 11 */	bl cLib_chaseF__FPfff
lbl_806D4C34:
/* 806D4C34  A8 1C 0A 5E */	lha r0, 0xa5e(r28)
/* 806D4C38  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806D4C3C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806D4C40  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806D4C44  7C 43 04 2E */	lfsx f2, r3, r0
/* 806D4C48  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806D4C4C  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D7EC4@ha */
/* 806D4C50  38 83 7E C4 */	addi r4, r3, l_HIO@l /* 0x806D7EC4@l */
/* 806D4C54  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 806D4C58  EC 61 00 32 */	fmuls f3, f1, f0
/* 806D4C5C  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 806D4C60  C0 1C 0A 40 */	lfs f0, 0xa40(r28)
/* 806D4C64  EC 01 00 2A */	fadds f0, f1, f0
/* 806D4C68  EC 20 18 2A */	fadds f1, f0, f3
/* 806D4C6C  EC 03 00 B2 */	fmuls f0, f3, f2
/* 806D4C70  EC 01 00 2A */	fadds f0, f1, f0
/* 806D4C74  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806D4C78  A8 7C 0A 5E */	lha r3, 0xa5e(r28)
/* 806D4C7C  A8 04 00 24 */	lha r0, 0x24(r4)
/* 806D4C80  7C 03 02 14 */	add r0, r3, r0
/* 806D4C84  B0 1C 0A 5E */	sth r0, 0xa5e(r28)
/* 806D4C88  88 7C 0A 6E */	lbz r3, 0xa6e(r28)
/* 806D4C8C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806D4C90  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 806D4C94  EC 01 00 24 */	fdivs f0, f1, f0
/* 806D4C98  FC 00 00 1E */	fctiwz f0, f0
/* 806D4C9C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D4CA0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806D4CA4  7C 03 02 14 */	add r0, r3, r0
/* 806D4CA8  98 1C 0A 6E */	stb r0, 0xa6e(r28)
/* 806D4CAC  88 1C 0A 6E */	lbz r0, 0xa6e(r28)
/* 806D4CB0  28 00 00 05 */	cmplwi r0, 5
/* 806D4CB4  41 80 00 38 */	blt lbl_806D4CEC
/* 806D4CB8  38 00 00 00 */	li r0, 0
/* 806D4CBC  98 1C 0A 6E */	stb r0, 0xa6e(r28)
/* 806D4CC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044D@ha */
/* 806D4CC4  38 03 04 4D */	addi r0, r3, 0x044D /* 0x0007044D@l */
/* 806D4CC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D4CCC  38 7C 09 6C */	addi r3, r28, 0x96c
/* 806D4CD0  38 81 00 10 */	addi r4, r1, 0x10
/* 806D4CD4  38 A0 00 00 */	li r5, 0
/* 806D4CD8  38 C0 FF FF */	li r6, -1
/* 806D4CDC  81 9C 09 6C */	lwz r12, 0x96c(r28)
/* 806D4CE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D4CE4  7D 89 03 A6 */	mtctr r12
/* 806D4CE8  4E 80 04 21 */	bctrl 
lbl_806D4CEC:
/* 806D4CEC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806D4CF0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806D4CF4  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 806D4CF8  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 806D4CFC  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 806D4D00  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 806D4D04  39 61 00 90 */	addi r11, r1, 0x90
/* 806D4D08  4B C8 D5 15 */	bl _restgpr_26
/* 806D4D0C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806D4D10  7C 08 03 A6 */	mtlr r0
/* 806D4D14  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806D4D18  4E 80 00 20 */	blr 
