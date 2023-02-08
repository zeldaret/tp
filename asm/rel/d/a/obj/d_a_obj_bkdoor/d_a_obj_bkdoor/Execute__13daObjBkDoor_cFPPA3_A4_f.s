lbl_8057902C:
/* 8057902C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80579030  7C 08 02 A6 */	mflr r0
/* 80579034  90 01 00 54 */	stw r0, 0x54(r1)
/* 80579038  39 61 00 50 */	addi r11, r1, 0x50
/* 8057903C  4B DE 91 99 */	bl _savegpr_27
/* 80579040  7C 7C 1B 78 */	mr r28, r3
/* 80579044  7C 9D 23 78 */	mr r29, r4
/* 80579048  3C 60 80 58 */	lis r3, l_bmd@ha /* 0x80579490@ha */
/* 8057904C  3B E3 94 90 */	addi r31, r3, l_bmd@l /* 0x80579490@l */
/* 80579050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80579054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80579058  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 8057905C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80579060  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80579064  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80579068  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 8057906C  4B AB B9 51 */	bl isEventBit__11dSv_event_cCFUs
/* 80579070  7C 7B 1B 78 */	mr r27, r3
/* 80579074  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80579078  38 03 00 01 */	addi r0, r3, 1
/* 8057907C  90 1C 05 B8 */	stw r0, 0x5b8(r28)
/* 80579080  7F 83 E3 78 */	mr r3, r28
/* 80579084  4B FF FF 3D */	bl openCheck__13daObjBkDoor_cFv
/* 80579088  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 8057908C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80579090  41 82 01 E8 */	beq lbl_80579278
/* 80579094  2C 1B 00 00 */	cmpwi r27, 0
/* 80579098  40 82 01 E0 */	bne lbl_80579278
/* 8057909C  88 1C 05 BC */	lbz r0, 0x5bc(r28)
/* 805790A0  28 00 00 01 */	cmplwi r0, 1
/* 805790A4  40 82 00 50 */	bne lbl_805790F4
/* 805790A8  38 7F 00 54 */	addi r3, r31, 0x54
/* 805790AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805790B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805790B4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805790B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805790BC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805790C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805790C4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805790C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805790CC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805790D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805790D4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805790D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805790DC  88 1C 05 BE */	lbz r0, 0x5be(r28)
/* 805790E0  28 00 00 00 */	cmplwi r0, 0
/* 805790E4  41 82 00 58 */	beq lbl_8057913C
/* 805790E8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805790EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805790F0  48 00 00 4C */	b lbl_8057913C
lbl_805790F4:
/* 805790F4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 805790F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805790FC  38 7F 00 24 */	addi r3, r31, 0x24
/* 80579100  C0 03 00 04 */	lfs f0, 4(r3)
/* 80579104  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80579108  C0 03 00 08 */	lfs f0, 8(r3)
/* 8057910C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80579110  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80579114  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80579118  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8057911C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80579120  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80579124  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80579128  88 1C 05 BE */	lbz r0, 0x5be(r28)
/* 8057912C  28 00 00 00 */	cmplwi r0, 0
/* 80579130  41 82 00 0C */	beq lbl_8057913C
/* 80579134  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80579138  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8057913C:
/* 8057913C  7F C3 F3 78 */	mr r3, r30
/* 80579140  7F 84 E3 78 */	mr r4, r28
/* 80579144  38 A1 00 20 */	addi r5, r1, 0x20
/* 80579148  38 C1 00 14 */	addi r6, r1, 0x14
/* 8057914C  4B AB 95 09 */	bl dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80579150  2C 03 00 00 */	cmpwi r3, 0
/* 80579154  41 82 01 24 */	beq lbl_80579278
/* 80579158  88 1C 05 BC */	lbz r0, 0x5bc(r28)
/* 8057915C  28 00 00 01 */	cmplwi r0, 1
/* 80579160  40 82 00 B8 */	bne lbl_80579218
/* 80579164  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80579168  D0 1C 05 B4 */	stfs f0, 0x5b4(r28)
/* 8057916C  88 1C 05 BE */	lbz r0, 0x5be(r28)
/* 80579170  28 00 00 00 */	cmplwi r0, 0
/* 80579174  41 82 00 54 */	beq lbl_805791C8
/* 80579178  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8057917C  7C 03 07 74 */	extsb r3, r0
/* 80579180  4B AB 3E ED */	bl dComIfGp_getReverb__Fi
/* 80579184  7C 67 1B 78 */	mr r7, r3
/* 80579188  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080233@ha */
/* 8057918C  38 03 02 33 */	addi r0, r3, 0x0233 /* 0x00080233@l */
/* 80579190  90 01 00 10 */	stw r0, 0x10(r1)
/* 80579194  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80579198  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8057919C  80 63 00 00 */	lwz r3, 0(r3)
/* 805791A0  38 81 00 10 */	addi r4, r1, 0x10
/* 805791A4  38 BC 05 38 */	addi r5, r28, 0x538
/* 805791A8  38 C0 00 00 */	li r6, 0
/* 805791AC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 805791B0  FC 40 08 90 */	fmr f2, f1
/* 805791B4  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 805791B8  FC 80 18 90 */	fmr f4, f3
/* 805791BC  39 00 00 00 */	li r8, 0
/* 805791C0  4B D3 27 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805791C4  48 00 00 B4 */	b lbl_80579278
lbl_805791C8:
/* 805791C8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 805791CC  7C 03 07 74 */	extsb r3, r0
/* 805791D0  4B AB 3E 9D */	bl dComIfGp_getReverb__Fi
/* 805791D4  7C 67 1B 78 */	mr r7, r3
/* 805791D8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080232@ha */
/* 805791DC  38 03 02 32 */	addi r0, r3, 0x0232 /* 0x00080232@l */
/* 805791E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805791E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805791E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805791EC  80 63 00 00 */	lwz r3, 0(r3)
/* 805791F0  38 81 00 0C */	addi r4, r1, 0xc
/* 805791F4  38 BC 05 38 */	addi r5, r28, 0x538
/* 805791F8  38 C0 00 00 */	li r6, 0
/* 805791FC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80579200  FC 40 08 90 */	fmr f2, f1
/* 80579204  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 80579208  FC 80 18 90 */	fmr f4, f3
/* 8057920C  39 00 00 00 */	li r8, 0
/* 80579210  4B D3 27 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80579214  48 00 00 64 */	b lbl_80579278
lbl_80579218:
/* 80579218  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8057921C  D0 1C 05 B4 */	stfs f0, 0x5b4(r28)
/* 80579220  88 1C 05 BE */	lbz r0, 0x5be(r28)
/* 80579224  28 00 00 00 */	cmplwi r0, 0
/* 80579228  41 82 00 50 */	beq lbl_80579278
/* 8057922C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80579230  7C 03 07 74 */	extsb r3, r0
/* 80579234  4B AB 3E 39 */	bl dComIfGp_getReverb__Fi
/* 80579238  7C 67 1B 78 */	mr r7, r3
/* 8057923C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080233@ha */
/* 80579240  38 03 02 33 */	addi r0, r3, 0x0233 /* 0x00080233@l */
/* 80579244  90 01 00 08 */	stw r0, 8(r1)
/* 80579248  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8057924C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80579250  80 63 00 00 */	lwz r3, 0(r3)
/* 80579254  38 81 00 08 */	addi r4, r1, 8
/* 80579258  38 BC 05 38 */	addi r5, r28, 0x538
/* 8057925C  38 C0 00 00 */	li r6, 0
/* 80579260  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80579264  FC 40 08 90 */	fmr f2, f1
/* 80579268  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 8057926C  FC 80 18 90 */	fmr f4, f3
/* 80579270  39 00 00 00 */	li r8, 0
/* 80579274  4B D3 27 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80579278:
/* 80579278  38 1C 05 6C */	addi r0, r28, 0x56c
/* 8057927C  90 1D 00 00 */	stw r0, 0(r29)
/* 80579280  7F 83 E3 78 */	mr r3, r28
/* 80579284  4B FF FB 05 */	bl setBaseMtx__13daObjBkDoor_cFv
/* 80579288  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 8057928C  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80579290  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80579294  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80579298  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8057929C  7C 23 04 2E */	lfsx f1, r3, r0
/* 805792A0  C0 1C 05 B4 */	lfs f0, 0x5b4(r28)
/* 805792A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805792A8  FC 00 00 1E */	fctiwz f0, f0
/* 805792AC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805792B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805792B4  B0 1C 05 AE */	sth r0, 0x5ae(r28)
/* 805792B8  38 7C 05 B4 */	addi r3, r28, 0x5b4
/* 805792BC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805792C0  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 805792C4  4B CF 67 BD */	bl cLib_addCalc0__FPfff
/* 805792C8  38 60 00 01 */	li r3, 1
/* 805792CC  39 61 00 50 */	addi r11, r1, 0x50
/* 805792D0  4B DE 8F 51 */	bl _restgpr_27
/* 805792D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805792D8  7C 08 03 A6 */	mtlr r0
/* 805792DC  38 21 00 50 */	addi r1, r1, 0x50
/* 805792E0  4E 80 00 20 */	blr 
