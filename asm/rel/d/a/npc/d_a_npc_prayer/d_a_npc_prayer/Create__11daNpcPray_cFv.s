lbl_80AB3204:
/* 80AB3204  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB3208  7C 08 02 A6 */	mflr r0
/* 80AB320C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB3210  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB3214  4B 8A EF B9 */	bl _savegpr_25
/* 80AB3218  7C 7D 1B 78 */	mr r29, r3
/* 80AB321C  3C 80 80 AB */	lis r4, m__17daNpcPray_Param_c@ha /* 0x80AB5808@ha */
/* 80AB3220  3B E4 58 08 */	addi r31, r4, m__17daNpcPray_Param_c@l /* 0x80AB5808@l */
/* 80AB3224  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AB3228  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AB322C  40 82 00 1C */	bne lbl_80AB3248
/* 80AB3230  28 1D 00 00 */	cmplwi r29, 0
/* 80AB3234  41 82 00 08 */	beq lbl_80AB323C
/* 80AB3238  4B FF FB B5 */	bl __ct__11daNpcPray_cFv
lbl_80AB323C:
/* 80AB323C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AB3240  60 00 00 08 */	ori r0, r0, 8
/* 80AB3244  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AB3248:
/* 80AB3248  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80AB324C  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80AB3250  7C 00 07 34 */	extsh r0, r0
/* 80AB3254  90 1D 0E 04 */	stw r0, 0xe04(r29)
/* 80AB3258  3B 20 00 00 */	li r25, 0
/* 80AB325C  3B 80 00 00 */	li r28, 0
/* 80AB3260  3B 60 00 00 */	li r27, 0
/* 80AB3264  3C 60 80 AB */	lis r3, l_arcNames@ha /* 0x80AB59EC@ha */
/* 80AB3268  3B 43 59 EC */	addi r26, r3, l_arcNames@l /* 0x80AB59EC@l */
lbl_80AB326C:
/* 80AB326C  38 7B 0D E8 */	addi r3, r27, 0xde8
/* 80AB3270  7C 7D 1A 14 */	add r3, r29, r3
/* 80AB3274  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80AB3278  4B 57 9C 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AB327C  7C 7E 1B 78 */	mr r30, r3
/* 80AB3280  2C 1E 00 04 */	cmpwi r30, 4
/* 80AB3284  41 82 00 08 */	beq lbl_80AB328C
/* 80AB3288  48 00 01 EC */	b lbl_80AB3474
lbl_80AB328C:
/* 80AB328C  3B 39 00 01 */	addi r25, r25, 1
/* 80AB3290  2C 19 00 02 */	cmpwi r25, 2
/* 80AB3294  3B 9C 00 04 */	addi r28, r28, 4
/* 80AB3298  3B 7B 00 08 */	addi r27, r27, 8
/* 80AB329C  41 80 FF D0 */	blt lbl_80AB326C
/* 80AB32A0  2C 1E 00 04 */	cmpwi r30, 4
/* 80AB32A4  40 82 01 CC */	bne lbl_80AB3470
/* 80AB32A8  7F A3 EB 78 */	mr r3, r29
/* 80AB32AC  3C 80 80 AB */	lis r4, createHeapCallBack__11daNpcPray_cFP10fopAc_ac_c@ha /* 0x80AB3834@ha */
/* 80AB32B0  38 84 38 34 */	addi r4, r4, createHeapCallBack__11daNpcPray_cFP10fopAc_ac_c@l /* 0x80AB3834@l */
/* 80AB32B4  38 A0 19 80 */	li r5, 0x1980
/* 80AB32B8  4B 56 71 F9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AB32BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB32C0  40 82 00 0C */	bne lbl_80AB32CC
/* 80AB32C4  38 60 00 05 */	li r3, 5
/* 80AB32C8  48 00 01 AC */	b lbl_80AB3474
lbl_80AB32CC:
/* 80AB32CC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB32D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB32D4  38 03 00 24 */	addi r0, r3, 0x24
/* 80AB32D8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AB32DC  7F A3 EB 78 */	mr r3, r29
/* 80AB32E0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80AB32E4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80AB32E8  FC 60 08 90 */	fmr f3, f1
/* 80AB32EC  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80AB32F0  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 80AB32F4  FC C0 20 90 */	fmr f6, f4
/* 80AB32F8  4B 56 72 51 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AB32FC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80AB3300  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AB3304  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AB3308  38 C0 00 03 */	li r6, 3
/* 80AB330C  38 E0 00 01 */	li r7, 1
/* 80AB3310  4B 80 D9 D5 */	bl init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80AB3314  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80AB3318  38 80 00 19 */	li r4, 0x19
/* 80AB331C  38 A0 00 00 */	li r5, 0
/* 80AB3320  38 C0 00 00 */	li r6, 0
/* 80AB3324  4B 80 DA 25 */	bl setMdlType__17Z2CreatureCitizenFScbb
/* 80AB3328  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80AB332C  3B 5F 00 00 */	addi r26, r31, 0
/* 80AB3330  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80AB3334  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 80AB3338  4B 5C 2C 21 */	bl SetWall__12dBgS_AcchCirFff
/* 80AB333C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AB3340  90 01 00 08 */	stw r0, 8(r1)
/* 80AB3344  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80AB3348  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AB334C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AB3350  7F A6 EB 78 */	mr r6, r29
/* 80AB3354  38 E0 00 01 */	li r7, 1
/* 80AB3358  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80AB335C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AB3360  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AB3364  4B 5C 2E E5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AB3368  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80AB336C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB3370  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB3374  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AB3378  4B 5C 37 35 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AB337C  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80AB3380  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 80AB3384  FC 00 00 1E */	fctiwz f0, f0
/* 80AB3388  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AB338C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AB3390  38 A0 00 00 */	li r5, 0
/* 80AB3394  7F A6 EB 78 */	mr r6, r29
/* 80AB3398  4B 5D 04 C9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AB339C  38 7D 0C A0 */	addi r3, r29, 0xca0
/* 80AB33A0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80AB33A4  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80AB33A8  4B 5D 15 0D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AB33AC  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80AB33B0  90 1D 0C E4 */	stw r0, 0xce4(r29)
/* 80AB33B4  38 00 00 00 */	li r0, 0
/* 80AB33B8  90 1D 0C C8 */	stw r0, 0xcc8(r29)
/* 80AB33BC  90 1D 0C B8 */	stw r0, 0xcb8(r29)
/* 80AB33C0  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80AB33C4  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 80AB33C8  4B 7B BE 31 */	bl SetH__8cM3dGCylFf
/* 80AB33CC  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80AB33D0  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80AB33D4  4B 7B BE 2D */	bl SetR__8cM3dGCylFf
/* 80AB33D8  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80AB33DC  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80AB33E0  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80AB33E4  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80AB33E8  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80AB33EC  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80AB33F0  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80AB33F4  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80AB33F8  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80AB33FC  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80AB3400  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80AB3404  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80AB3408  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80AB340C  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80AB3410  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80AB3414  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80AB3418  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80AB341C  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80AB3420  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80AB3424  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80AB3428  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80AB342C  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80AB3430  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80AB3434  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80AB3438  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80AB343C  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80AB3440  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80AB3444  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AB3448  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80AB344C  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80AB3450  7F A3 EB 78 */	mr r3, r29
/* 80AB3454  4B 69 F9 31 */	bl setEnvTevColor__8daNpcF_cFv
/* 80AB3458  7F A3 EB 78 */	mr r3, r29
/* 80AB345C  4B 69 F9 85 */	bl setRoomNo__8daNpcF_cFv
/* 80AB3460  7F A3 EB 78 */	mr r3, r29
/* 80AB3464  48 00 07 C9 */	bl reset__11daNpcPray_cFv
/* 80AB3468  7F A3 EB 78 */	mr r3, r29
/* 80AB346C  48 00 01 D9 */	bl Execute__11daNpcPray_cFv
lbl_80AB3470:
/* 80AB3470  7F C3 F3 78 */	mr r3, r30
lbl_80AB3474:
/* 80AB3474  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB3478  4B 8A ED A1 */	bl _restgpr_25
/* 80AB347C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB3480  7C 08 03 A6 */	mtlr r0
/* 80AB3484  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB3488  4E 80 00 20 */	blr 
