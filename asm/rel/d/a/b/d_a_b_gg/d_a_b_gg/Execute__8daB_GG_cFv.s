lbl_805EA344:
/* 805EA344  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805EA348  7C 08 02 A6 */	mflr r0
/* 805EA34C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805EA350  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805EA354  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805EA358  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 805EA35C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 805EA360  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 805EA364  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 805EA368  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 805EA36C  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 805EA370  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 805EA374  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 805EA378  39 61 00 60 */	addi r11, r1, 0x60
/* 805EA37C  4B D7 7E 49 */	bl _savegpr_23
/* 805EA380  7C 7C 1B 78 */	mr r28, r3
/* 805EA384  3C 80 80 5F */	lis r4, lit_1109@ha /* 0x805ED6C0@ha */
/* 805EA388  3B A4 D6 C0 */	addi r29, r4, lit_1109@l /* 0x805ED6C0@l */
/* 805EA38C  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805EA390  3B C4 D0 60 */	addi r30, r4, lit_3911@l /* 0x805ED060@l */
/* 805EA394  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EA398  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EA39C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805EA3A0  38 04 04 D0 */	addi r0, r4, 0x4d0
/* 805EA3A4  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 805EA3A8  4B A3 03 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805EA3AC  B0 7D 00 70 */	sth r3, 0x70(r29)
/* 805EA3B0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805EA3B4  80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 805EA3B8  4B D5 CF E5 */	bl PSVECSquareDistance
/* 805EA3BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805EA3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EA3C4  40 81 00 58 */	ble lbl_805EA41C
/* 805EA3C8  FC 00 08 34 */	frsqrte f0, f1
/* 805EA3CC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805EA3D0  FC 44 00 32 */	fmul f2, f4, f0
/* 805EA3D4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805EA3D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805EA3DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805EA3E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805EA3E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805EA3E8  FC 44 00 32 */	fmul f2, f4, f0
/* 805EA3EC  FC 00 00 32 */	fmul f0, f0, f0
/* 805EA3F0  FC 01 00 32 */	fmul f0, f1, f0
/* 805EA3F4  FC 03 00 28 */	fsub f0, f3, f0
/* 805EA3F8  FC 02 00 32 */	fmul f0, f2, f0
/* 805EA3FC  FC 44 00 32 */	fmul f2, f4, f0
/* 805EA400  FC 00 00 32 */	fmul f0, f0, f0
/* 805EA404  FC 01 00 32 */	fmul f0, f1, f0
/* 805EA408  FC 03 00 28 */	fsub f0, f3, f0
/* 805EA40C  FC 02 00 32 */	fmul f0, f2, f0
/* 805EA410  FC 21 00 32 */	fmul f1, f1, f0
/* 805EA414  FC 20 08 18 */	frsp f1, f1
/* 805EA418  48 00 00 88 */	b lbl_805EA4A0
lbl_805EA41C:
/* 805EA41C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805EA420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EA424  40 80 00 10 */	bge lbl_805EA434
/* 805EA428  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805EA42C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805EA430  48 00 00 70 */	b lbl_805EA4A0
lbl_805EA434:
/* 805EA434  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EA438  80 81 00 08 */	lwz r4, 8(r1)
/* 805EA43C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805EA440  3C 00 7F 80 */	lis r0, 0x7f80
/* 805EA444  7C 03 00 00 */	cmpw r3, r0
/* 805EA448  41 82 00 14 */	beq lbl_805EA45C
/* 805EA44C  40 80 00 40 */	bge lbl_805EA48C
/* 805EA450  2C 03 00 00 */	cmpwi r3, 0
/* 805EA454  41 82 00 20 */	beq lbl_805EA474
/* 805EA458  48 00 00 34 */	b lbl_805EA48C
lbl_805EA45C:
/* 805EA45C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EA460  41 82 00 0C */	beq lbl_805EA46C
/* 805EA464  38 00 00 01 */	li r0, 1
/* 805EA468  48 00 00 28 */	b lbl_805EA490
lbl_805EA46C:
/* 805EA46C  38 00 00 02 */	li r0, 2
/* 805EA470  48 00 00 20 */	b lbl_805EA490
lbl_805EA474:
/* 805EA474  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EA478  41 82 00 0C */	beq lbl_805EA484
/* 805EA47C  38 00 00 05 */	li r0, 5
/* 805EA480  48 00 00 10 */	b lbl_805EA490
lbl_805EA484:
/* 805EA484  38 00 00 03 */	li r0, 3
/* 805EA488  48 00 00 08 */	b lbl_805EA490
lbl_805EA48C:
/* 805EA48C  38 00 00 04 */	li r0, 4
lbl_805EA490:
/* 805EA490  2C 00 00 01 */	cmpwi r0, 1
/* 805EA494  40 82 00 0C */	bne lbl_805EA4A0
/* 805EA498  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805EA49C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805EA4A0:
/* 805EA4A0  D0 3D 00 68 */	stfs f1, 0x68(r29)
/* 805EA4A4  38 60 00 00 */	li r3, 0
/* 805EA4A8  7C 64 1B 78 */	mr r4, r3
/* 805EA4AC  38 00 00 04 */	li r0, 4
/* 805EA4B0  7C 09 03 A6 */	mtctr r0
lbl_805EA4B4:
/* 805EA4B4  38 C3 05 D8 */	addi r6, r3, 0x5d8
/* 805EA4B8  7C BC 32 AE */	lhax r5, r28, r6
/* 805EA4BC  38 05 FF FF */	addi r0, r5, -1
/* 805EA4C0  7C 1C 33 2E */	sthx r0, r28, r6
/* 805EA4C4  7C 1C 32 AE */	lhax r0, r28, r6
/* 805EA4C8  2C 00 00 00 */	cmpwi r0, 0
/* 805EA4CC  41 81 00 08 */	bgt lbl_805EA4D4
/* 805EA4D0  7C 9C 33 2E */	sthx r4, r28, r6
lbl_805EA4D4:
/* 805EA4D4  38 63 00 02 */	addi r3, r3, 2
/* 805EA4D8  42 00 FF DC */	bdnz lbl_805EA4B4
/* 805EA4DC  A8 7C 05 CC */	lha r3, 0x5cc(r28)
/* 805EA4E0  38 03 FF FF */	addi r0, r3, -1
/* 805EA4E4  B0 1C 05 CC */	sth r0, 0x5cc(r28)
/* 805EA4E8  A8 1C 05 CC */	lha r0, 0x5cc(r28)
/* 805EA4EC  2C 00 00 00 */	cmpwi r0, 0
/* 805EA4F0  41 81 00 0C */	bgt lbl_805EA4FC
/* 805EA4F4  38 00 00 00 */	li r0, 0
/* 805EA4F8  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_805EA4FC:
/* 805EA4FC  7F 83 E3 78 */	mr r3, r28
/* 805EA500  4B FF 54 F5 */	bl Yazirushi__8daB_GG_cFv
/* 805EA504  7F 83 E3 78 */	mr r3, r28
/* 805EA508  4B FF EE 09 */	bl Action__8daB_GG_cFv
/* 805EA50C  7F 83 E3 78 */	mr r3, r28
/* 805EA510  4B FF F6 39 */	bl SoundChk__8daB_GG_cFv
/* 805EA514  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805EA518  28 00 00 00 */	cmplwi r0, 0
/* 805EA51C  40 82 00 2C */	bne lbl_805EA548
/* 805EA520  88 1C 05 C5 */	lbz r0, 0x5c5(r28)
/* 805EA524  28 00 00 03 */	cmplwi r0, 3
/* 805EA528  40 82 00 10 */	bne lbl_805EA538
/* 805EA52C  88 1C 05 C6 */	lbz r0, 0x5c6(r28)
/* 805EA530  28 00 00 00 */	cmplwi r0, 0
/* 805EA534  41 82 00 14 */	beq lbl_805EA548
lbl_805EA538:
/* 805EA538  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805EA53C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805EA540  64 00 02 00 */	oris r0, r0, 0x200
/* 805EA544  90 03 05 88 */	stw r0, 0x588(r3)
lbl_805EA548:
/* 805EA548  C0 1E 02 D8 */	lfs f0, 0x2d8(r30)
/* 805EA54C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805EA550  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805EA554  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805EA558  7F 83 E3 78 */	mr r3, r28
/* 805EA55C  38 9C 0E 4C */	addi r4, r28, 0xe4c
/* 805EA560  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805EA564  38 C1 00 18 */	addi r6, r1, 0x18
/* 805EA568  48 00 26 95 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 805EA56C  7F 83 E3 78 */	mr r3, r28
/* 805EA570  4B FF F4 B9 */	bl SetHeadAngle__8daB_GG_cFv
/* 805EA574  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 805EA578  7C 03 07 74 */	extsb r3, r0
/* 805EA57C  4B A4 2A F1 */	bl dComIfGp_getReverb__Fi
/* 805EA580  7C 65 1B 78 */	mr r5, r3
/* 805EA584  80 7C 0E 30 */	lwz r3, 0xe30(r28)
/* 805EA588  38 80 00 00 */	li r4, 0
/* 805EA58C  4B A2 6B 25 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805EA590  7F 83 E3 78 */	mr r3, r28
/* 805EA594  38 9C 11 08 */	addi r4, r28, 0x1108
/* 805EA598  4B A3 01 35 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805EA59C  38 7C 0F 30 */	addi r3, r28, 0xf30
/* 805EA5A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EA5A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EA5A8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805EA5AC  4B A8 C5 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805EA5B0  7F 83 E3 78 */	mr r3, r28
/* 805EA5B4  48 00 13 5D */	bl setBaseMtx__8daB_GG_cFv
/* 805EA5B8  7F 83 E3 78 */	mr r3, r28
/* 805EA5BC  48 00 13 C5 */	bl setShieldMtx__8daB_GG_cFv
/* 805EA5C0  7F 83 E3 78 */	mr r3, r28
/* 805EA5C4  48 00 14 19 */	bl setSwordMtx__8daB_GG_cFv
/* 805EA5C8  88 1C 05 C5 */	lbz r0, 0x5c5(r28)
/* 805EA5CC  28 00 00 01 */	cmplwi r0, 1
/* 805EA5D0  40 82 00 10 */	bne lbl_805EA5E0
/* 805EA5D4  7F 83 E3 78 */	mr r3, r28
/* 805EA5D8  4B FF 43 E1 */	bl G_setCcCylinder__8daB_GG_cFv
/* 805EA5DC  48 00 00 0C */	b lbl_805EA5E8
lbl_805EA5E0:
/* 805EA5E0  7F 83 E3 78 */	mr r3, r28
/* 805EA5E4  4B FF 41 C1 */	bl setCcCylinder__8daB_GG_cFv
lbl_805EA5E8:
/* 805EA5E8  A8 1C 06 5A */	lha r0, 0x65a(r28)
/* 805EA5EC  2C 00 00 00 */	cmpwi r0, 0
/* 805EA5F0  41 82 00 10 */	beq lbl_805EA600
/* 805EA5F4  7F 83 E3 78 */	mr r3, r28
/* 805EA5F8  48 00 03 41 */	bl MoveAt__8daB_GG_cFv
/* 805EA5FC  48 00 00 D8 */	b lbl_805EA6D4
lbl_805EA600:
/* 805EA600  3B E0 00 00 */	li r31, 0
/* 805EA604  3B 60 00 00 */	li r27, 0
/* 805EA608  3B 3D 00 4C */	addi r25, r29, 0x4c
/* 805EA60C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EA610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EA614  3B 03 23 3C */	addi r24, r3, 0x233c
/* 805EA618  C3 7E 00 04 */	lfs f27, 4(r30)
/* 805EA61C  C3 9E 02 70 */	lfs f28, 0x270(r30)
/* 805EA620  C3 BE 00 00 */	lfs f29, 0(r30)
/* 805EA624  CB DE 01 48 */	lfd f30, 0x148(r30)
/* 805EA628  3F 40 43 30 */	lis r26, 0x4330
/* 805EA62C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805EA630  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805EA634  C3 FE 02 BC */	lfs f31, 0x2bc(r30)
lbl_805EA638:
/* 805EA638  D3 61 00 0C */	stfs f27, 0xc(r1)
/* 805EA63C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 805EA640  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805EA644  93 41 00 28 */	stw r26, 0x28(r1)
/* 805EA648  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805EA64C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805EA650  EC 1D 00 32 */	fmuls f0, f29, f0
/* 805EA654  EC 3C 00 2A */	fadds f1, f28, f0
/* 805EA658  C0 19 00 08 */	lfs f0, 8(r25)
/* 805EA65C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EA660  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805EA664  D3 61 00 14 */	stfs f27, 0x14(r1)
/* 805EA668  80 7C 0E 30 */	lwz r3, 0xe30(r28)
/* 805EA66C  80 63 00 04 */	lwz r3, 4(r3)
/* 805EA670  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EA674  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EA678  38 63 03 00 */	addi r3, r3, 0x300
/* 805EA67C  7F A4 EB 78 */	mr r4, r29
/* 805EA680  4B D5 BE 31 */	bl PSMTXCopy
/* 805EA684  7F A3 EB 78 */	mr r3, r29
/* 805EA688  38 81 00 0C */	addi r4, r1, 0xc
/* 805EA68C  7C 85 23 78 */	mr r5, r4
/* 805EA690  4B D5 C6 DD */	bl PSMTXMultVec
/* 805EA694  7E FC DA 14 */	add r23, r28, r27
/* 805EA698  3B D7 09 38 */	addi r30, r23, 0x938
/* 805EA69C  7F C3 F3 78 */	mr r3, r30
/* 805EA6A0  38 81 00 0C */	addi r4, r1, 0xc
/* 805EA6A4  4B C8 4F A5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805EA6A8  7F C3 F3 78 */	mr r3, r30
/* 805EA6AC  C0 19 00 08 */	lfs f0, 8(r25)
/* 805EA6B0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 805EA6B4  4B C8 50 55 */	bl SetR__8cM3dGSphFf
/* 805EA6B8  7F 03 C3 78 */	mr r3, r24
/* 805EA6BC  38 97 08 14 */	addi r4, r23, 0x814
/* 805EA6C0  4B C7 A4 E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 805EA6C4  3B FF 00 01 */	addi r31, r31, 1
/* 805EA6C8  2C 1F 00 03 */	cmpwi r31, 3
/* 805EA6CC  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805EA6D0  41 80 FF 68 */	blt lbl_805EA638
lbl_805EA6D4:
/* 805EA6D4  88 1C 06 90 */	lbz r0, 0x690(r28)
/* 805EA6D8  28 00 00 00 */	cmplwi r0, 0
/* 805EA6DC  40 82 00 0C */	bne lbl_805EA6E8
/* 805EA6E0  7F 83 E3 78 */	mr r3, r28
/* 805EA6E4  48 00 13 D5 */	bl setHeadMtx__8daB_GG_cFv
lbl_805EA6E8:
/* 805EA6E8  38 60 00 01 */	li r3, 1
/* 805EA6EC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805EA6F0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805EA6F4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 805EA6F8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 805EA6FC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 805EA700  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 805EA704  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 805EA708  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 805EA70C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 805EA710  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 805EA714  39 61 00 60 */	addi r11, r1, 0x60
/* 805EA718  4B D7 7A F9 */	bl _restgpr_23
/* 805EA71C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805EA720  7C 08 03 A6 */	mtlr r0
/* 805EA724  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805EA728  4E 80 00 20 */	blr 
