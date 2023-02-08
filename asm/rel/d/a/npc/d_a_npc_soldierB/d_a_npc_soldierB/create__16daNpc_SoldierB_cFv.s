lbl_80AF30C0:
/* 80AF30C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AF30C4  7C 08 02 A6 */	mflr r0
/* 80AF30C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AF30CC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF30D0  4B 86 F0 F9 */	bl _savegpr_24
/* 80AF30D4  7C 7E 1B 78 */	mr r30, r3
/* 80AF30D8  3C 60 80 AF */	lis r3, m__22daNpc_SoldierB_Param_c@ha /* 0x80AF5AD4@ha */
/* 80AF30DC  3B E3 5A D4 */	addi r31, r3, m__22daNpc_SoldierB_Param_c@l /* 0x80AF5AD4@l */
/* 80AF30E0  4B 6B 94 9D */	bl dKy_darkworld_check__Fv
/* 80AF30E4  98 7E 09 F4 */	stb r3, 0x9f4(r30)
/* 80AF30E8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AF30EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AF30F0  40 82 00 20 */	bne lbl_80AF3110
/* 80AF30F4  28 1E 00 00 */	cmplwi r30, 0
/* 80AF30F8  41 82 00 0C */	beq lbl_80AF3104
/* 80AF30FC  7F C3 F3 78 */	mr r3, r30
/* 80AF3100  4B FF FB AD */	bl __ct__16daNpc_SoldierB_cFv
lbl_80AF3104:
/* 80AF3104  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AF3108  60 00 00 08 */	ori r0, r0, 8
/* 80AF310C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AF3110:
/* 80AF3110  7F C3 F3 78 */	mr r3, r30
/* 80AF3114  48 00 11 15 */	bl getTypeFromParam__16daNpc_SoldierB_cFv
/* 80AF3118  98 7E 0E 18 */	stb r3, 0xe18(r30)
/* 80AF311C  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 80AF3120  3C 03 00 00 */	addis r0, r3, 0
/* 80AF3124  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AF3128  41 82 00 0C */	beq lbl_80AF3134
/* 80AF312C  90 7E 0E 10 */	stw r3, 0xe10(r30)
/* 80AF3130  48 00 00 0C */	b lbl_80AF313C
lbl_80AF3134:
/* 80AF3134  38 00 FF FF */	li r0, -1
/* 80AF3138  90 1E 0E 10 */	stw r0, 0xe10(r30)
lbl_80AF313C:
/* 80AF313C  7F C3 F3 78 */	mr r3, r30
/* 80AF3140  48 00 11 09 */	bl isDelete__16daNpc_SoldierB_cFv
/* 80AF3144  2C 03 00 00 */	cmpwi r3, 0
/* 80AF3148  41 82 00 0C */	beq lbl_80AF3154
/* 80AF314C  38 60 00 05 */	li r3, 5
/* 80AF3150  48 00 02 38 */	b lbl_80AF3388
lbl_80AF3154:
/* 80AF3154  3B 20 00 00 */	li r25, 0
/* 80AF3158  3B 00 00 00 */	li r24, 0
/* 80AF315C  3B A0 00 00 */	li r29, 0
/* 80AF3160  3B 80 00 00 */	li r28, 0
/* 80AF3164  3C 60 80 AF */	lis r3, l_resNames@ha /* 0x80AF5C8C@ha */
/* 80AF3168  3B 43 5C 8C */	addi r26, r3, l_resNames@l /* 0x80AF5C8C@l */
/* 80AF316C  3C 60 80 AF */	lis r3, l_loadRes_list@ha /* 0x80AF5C84@ha */
/* 80AF3170  3B 63 5C 84 */	addi r27, r3, l_loadRes_list@l /* 0x80AF5C84@l */
/* 80AF3174  48 00 00 48 */	b lbl_80AF31BC
lbl_80AF3178:
/* 80AF3178  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AF317C  7C 7E 1A 14 */	add r3, r30, r3
/* 80AF3180  54 00 10 3A */	slwi r0, r0, 2
/* 80AF3184  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AF3188  4B 53 9D 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AF318C  2C 03 00 05 */	cmpwi r3, 5
/* 80AF3190  41 82 00 0C */	beq lbl_80AF319C
/* 80AF3194  2C 03 00 03 */	cmpwi r3, 3
/* 80AF3198  40 82 00 0C */	bne lbl_80AF31A4
lbl_80AF319C:
/* 80AF319C  38 60 00 05 */	li r3, 5
/* 80AF31A0  48 00 01 E8 */	b lbl_80AF3388
lbl_80AF31A4:
/* 80AF31A4  2C 03 00 04 */	cmpwi r3, 4
/* 80AF31A8  40 82 00 08 */	bne lbl_80AF31B0
/* 80AF31AC  3B 39 00 01 */	addi r25, r25, 1
lbl_80AF31B0:
/* 80AF31B0  3B 18 00 01 */	addi r24, r24, 1
/* 80AF31B4  3B BD 00 04 */	addi r29, r29, 4
/* 80AF31B8  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AF31BC:
/* 80AF31BC  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 80AF31C0  54 00 10 3A */	slwi r0, r0, 2
/* 80AF31C4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AF31C8  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AF31CC  2C 00 00 00 */	cmpwi r0, 0
/* 80AF31D0  40 80 FF A8 */	bge lbl_80AF3178
/* 80AF31D4  7C 19 C0 00 */	cmpw r25, r24
/* 80AF31D8  40 82 01 AC */	bne lbl_80AF3384
/* 80AF31DC  7F C3 F3 78 */	mr r3, r30
/* 80AF31E0  3C 80 80 AF */	lis r4, createHeapCallBack__16daNpc_SoldierB_cFP10fopAc_ac_c@ha /* 0x80AF3830@ha */
/* 80AF31E4  38 84 38 30 */	addi r4, r4, createHeapCallBack__16daNpc_SoldierB_cFP10fopAc_ac_c@l /* 0x80AF3830@l */
/* 80AF31E8  38 A0 2C E0 */	li r5, 0x2ce0
/* 80AF31EC  4B 52 72 C5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AF31F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AF31F4  40 82 00 0C */	bne lbl_80AF3200
/* 80AF31F8  38 60 00 05 */	li r3, 5
/* 80AF31FC  48 00 01 8C */	b lbl_80AF3388
lbl_80AF3200:
/* 80AF3200  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AF3204  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF3208  38 03 00 24 */	addi r0, r3, 0x24
/* 80AF320C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80AF3210  7F C3 F3 78 */	mr r3, r30
/* 80AF3214  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80AF3218  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80AF321C  FC 60 08 90 */	fmr f3, f1
/* 80AF3220  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80AF3224  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 80AF3228  FC C0 20 90 */	fmr f6, f4
/* 80AF322C  4B 52 73 1D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AF3230  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AF3234  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AF3238  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AF323C  38 C0 00 03 */	li r6, 3
/* 80AF3240  38 E0 00 01 */	li r7, 1
/* 80AF3244  4B 7C D2 ED */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AF3248  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AF324C  38 9F 00 00 */	addi r4, r31, 0
/* 80AF3250  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AF3254  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80AF3258  4B 58 2D 01 */	bl SetWall__12dBgS_AcchCirFff
/* 80AF325C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AF3260  90 01 00 08 */	stw r0, 8(r1)
/* 80AF3264  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AF3268  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AF326C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AF3270  7F C6 F3 78 */	mr r6, r30
/* 80AF3274  38 E0 00 01 */	li r7, 1
/* 80AF3278  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 80AF327C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AF3280  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AF3284  4B 58 2F C5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AF3288  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80AF328C  38 9F 00 00 */	addi r4, r31, 0
/* 80AF3290  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AF3294  FC 00 00 1E */	fctiwz f0, f0
/* 80AF3298  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AF329C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AF32A0  38 A0 00 00 */	li r5, 0
/* 80AF32A4  7F C6 F3 78 */	mr r6, r30
/* 80AF32A8  4B 59 05 B9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AF32AC  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AF32B0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80AF32B4  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80AF32B8  4B 59 15 FD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AF32BC  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 80AF32C0  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 80AF32C4  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80152614@ha */
/* 80AF32C8  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80152614@l */
/* 80AF32CC  90 1E 0D 38 */	stw r0, 0xd38(r30)
/* 80AF32D0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AF32D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF32D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF32DC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AF32E0  4B 58 37 CD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AF32E4  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 80AF32E8  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 80AF32EC  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80AF32F0  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 80AF32F4  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80AF32F8  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80AF32FC  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 80AF3300  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 80AF3304  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 80AF3308  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 80AF330C  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 80AF3310  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 80AF3314  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 80AF3318  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AF331C  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80AF3320  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80AF3324  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 80AF3328  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 80AF332C  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 80AF3330  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 80AF3334  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 80AF3338  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80AF333C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80AF3340  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80AF3344  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80AF3348  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80AF334C  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 80AF3350  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80AF3354  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 80AF3358  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80AF335C  7F C3 F3 78 */	mr r3, r30
/* 80AF3360  4B 65 FA 25 */	bl setEnvTevColor__8daNpcF_cFv
/* 80AF3364  7F C3 F3 78 */	mr r3, r30
/* 80AF3368  4B 65 FA 79 */	bl setRoomNo__8daNpcF_cFv
/* 80AF336C  7F C3 F3 78 */	mr r3, r30
/* 80AF3370  48 00 0E FD */	bl reset__16daNpc_SoldierB_cFv
/* 80AF3374  7F C3 F3 78 */	mr r3, r30
/* 80AF3378  48 00 02 29 */	bl Execute__16daNpc_SoldierB_cFv
/* 80AF337C  38 60 00 04 */	li r3, 4
/* 80AF3380  48 00 00 08 */	b lbl_80AF3388
lbl_80AF3384:
/* 80AF3384  38 60 00 00 */	li r3, 0
lbl_80AF3388:
/* 80AF3388  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF338C  4B 86 EE 89 */	bl _restgpr_24
/* 80AF3390  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AF3394  7C 08 03 A6 */	mtlr r0
/* 80AF3398  38 21 00 40 */	addi r1, r1, 0x40
/* 80AF339C  4E 80 00 20 */	blr 
