lbl_80BAD0C0:
/* 80BAD0C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BAD0C4  7C 08 02 A6 */	mflr r0
/* 80BAD0C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BAD0CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80BAD0D0  4B 7B 50 FD */	bl _savegpr_25
/* 80BAD0D4  7C 7D 1B 78 */	mr r29, r3
/* 80BAD0D8  7C 9E 23 78 */	mr r30, r4
/* 80BAD0DC  3C 60 80 BB */	lis r3, l_cyl_src@ha /* 0x80BAD474@ha */
/* 80BAD0E0  3B E3 D4 74 */	addi r31, r3, l_cyl_src@l /* 0x80BAD474@l */
/* 80BAD0E4  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80BAD0E8  4B 4D 73 79 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BAD0EC  28 03 00 00 */	cmplwi r3, 0
/* 80BAD0F0  41 82 00 F8 */	beq lbl_80BAD1E8
/* 80BAD0F4  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80BAD0F8  4B 4D 74 01 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BAD0FC  28 03 00 00 */	cmplwi r3, 0
/* 80BAD100  41 82 00 E8 */	beq lbl_80BAD1E8
/* 80BAD104  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BAD108  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 80BAD10C  41 82 00 DC */	beq lbl_80BAD1E8
/* 80BAD110  3B 20 00 00 */	li r25, 0
/* 80BAD114  3B 80 00 00 */	li r28, 0
/* 80BAD118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAD11C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAD120  3B 7F 00 44 */	addi r27, r31, 0x44
lbl_80BAD124:
/* 80BAD124  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BAD128  38 80 00 00 */	li r4, 0
/* 80BAD12C  90 81 00 08 */	stw r4, 8(r1)
/* 80BAD130  38 00 FF FF */	li r0, -1
/* 80BAD134  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAD138  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BAD13C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BAD140  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BAD144  38 80 00 00 */	li r4, 0
/* 80BAD148  7C BB E2 2E */	lhzx r5, r27, r28
/* 80BAD14C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80BAD150  38 E0 00 00 */	li r7, 0
/* 80BAD154  39 00 00 00 */	li r8, 0
/* 80BAD158  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80BAD15C  39 40 00 FF */	li r10, 0xff
/* 80BAD160  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BAD164  4B 49 F9 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BAD168  3B 39 00 01 */	addi r25, r25, 1
/* 80BAD16C  2C 19 00 05 */	cmpwi r25, 5
/* 80BAD170  3B 9C 00 02 */	addi r28, r28, 2
/* 80BAD174  41 80 FF B0 */	blt lbl_80BAD124
/* 80BAD178  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BAD17C  7C 03 07 74 */	extsb r3, r0
/* 80BAD180  4B 47 FE ED */	bl dComIfGp_getReverb__Fi
/* 80BAD184  7C 67 1B 78 */	mr r7, r3
/* 80BAD188  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800FB@ha */
/* 80BAD18C  38 03 00 FB */	addi r0, r3, 0x00FB /* 0x000800FB@l */
/* 80BAD190  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BAD194  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BAD198  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BAD19C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAD1A0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BAD1A4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BAD1A8  38 C0 00 00 */	li r6, 0
/* 80BAD1AC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BAD1B0  FC 40 08 90 */	fmr f2, f1
/* 80BAD1B4  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BAD1B8  FC 80 18 90 */	fmr f4, f3
/* 80BAD1BC  39 00 00 00 */	li r8, 0
/* 80BAD1C0  4B 6F E7 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BAD1C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAD1C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAD1CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BAD1D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BAD1D4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80BAD1D8  7C 05 07 74 */	extsb r5, r0
/* 80BAD1DC  4B 48 80 25 */	bl onSwitch__10dSv_info_cFii
/* 80BAD1E0  7F A3 EB 78 */	mr r3, r29
/* 80BAD1E4  4B 46 CA 99 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BAD1E8:
/* 80BAD1E8  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BAD1EC  90 1E 00 00 */	stw r0, 0(r30)
/* 80BAD1F0  7F A3 EB 78 */	mr r3, r29
/* 80BAD1F4  4B FF FB 81 */	bl setBaseMtx__11daObjBBox_cFv
/* 80BAD1F8  38 7D 07 0C */	addi r3, r29, 0x70c
/* 80BAD1FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BAD200  4B 6C 1F DD */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BAD204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAD208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAD20C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BAD210  38 9D 05 E8 */	addi r4, r29, 0x5e8
/* 80BAD214  4B 6B 79 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BAD218  38 60 00 01 */	li r3, 1
/* 80BAD21C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BAD220  4B 7B 4F F9 */	bl _restgpr_25
/* 80BAD224  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BAD228  7C 08 03 A6 */	mtlr r0
/* 80BAD22C  38 21 00 50 */	addi r1, r1, 0x50
/* 80BAD230  4E 80 00 20 */	blr 
