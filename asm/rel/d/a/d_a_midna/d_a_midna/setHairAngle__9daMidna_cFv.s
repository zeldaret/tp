lbl_804C3298:
/* 804C3298  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 804C329C  7C 08 02 A6 */	mflr r0
/* 804C32A0  90 01 01 84 */	stw r0, 0x184(r1)
/* 804C32A4  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 804C32A8  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 804C32AC  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 804C32B0  F3 C1 01 68 */	psq_st f30, 360(r1), 0, 0 /* qr0 */
/* 804C32B4  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 804C32B8  F3 A1 01 58 */	psq_st f29, 344(r1), 0, 0 /* qr0 */
/* 804C32BC  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 804C32C0  F3 81 01 48 */	psq_st f28, 328(r1), 0, 0 /* qr0 */
/* 804C32C4  DB 61 01 30 */	stfd f27, 0x130(r1)
/* 804C32C8  F3 61 01 38 */	psq_st f27, 312(r1), 0, 0 /* qr0 */
/* 804C32CC  DB 41 01 20 */	stfd f26, 0x120(r1)
/* 804C32D0  F3 41 01 28 */	psq_st f26, 296(r1), 0, 0 /* qr0 */
/* 804C32D4  39 61 01 20 */	addi r11, r1, 0x120
/* 804C32D8  4B E9 EE C9 */	bl __save_gpr
/* 804C32DC  7C 6F 1B 78 */	mr r15, r3
/* 804C32E0  3C 80 80 4C */	lis r4, lit_3777@ha /* 0x804C64C8@ha */
/* 804C32E4  3B 84 64 C8 */	addi r28, r4, lit_3777@l /* 0x804C64C8@l */
/* 804C32E8  80 03 08 90 */	lwz r0, 0x890(r3)
/* 804C32EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804C32F0  40 82 00 0C */	bne lbl_804C32FC
/* 804C32F4  4B FF FE 75 */	bl initHairAngle__9daMidna_cFv
/* 804C32F8  48 00 0B C4 */	b lbl_804C3EBC
lbl_804C32FC:
/* 804C32FC  80 6F 05 74 */	lwz r3, 0x574(r15)
/* 804C3300  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C3304  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C3308  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804C330C  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha /* 0x80430D0C@ha */
/* 804C3310  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l /* 0x80430D0C@l */
/* 804C3314  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 804C3318  4B E8 3B 35 */	bl PSMTXMultVecSR
/* 804C331C  80 6F 05 74 */	lwz r3, 0x574(r15)
/* 804C3320  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C3324  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C3328  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 804C332C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804C3330  C0 03 01 3C */	lfs f0, 0x13c(r3)
/* 804C3334  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 804C3338  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 804C333C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 804C3340  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804C3344  4B DA 3D E5 */	bl atan2sX_Z__4cXyzCFv
/* 804C3348  7C 6E 07 34 */	extsh r14, r3
/* 804C334C  3C 6E 00 01 */	addis r3, r14, 1
/* 804C3350  38 03 80 00 */	addi r0, r3, -32768
/* 804C3354  7C 00 07 34 */	extsh r0, r0
/* 804C3358  B0 01 00 D0 */	sth r0, 0xd0(r1)
/* 804C335C  3B 2F 08 E0 */	addi r25, r15, 0x8e0
/* 804C3360  3B 0F 09 1C */	addi r24, r15, 0x91c
/* 804C3364  3A EF 09 64 */	addi r23, r15, 0x964
/* 804C3368  3A CF 08 5C */	addi r22, r15, 0x85c
/* 804C336C  3A AF 08 66 */	addi r21, r15, 0x866
/* 804C3370  C3 BC 05 14 */	lfs f29, 0x514(r28)
/* 804C3374  C3 FC 03 F8 */	lfs f31, 0x3f8(r28)
/* 804C3378  3A 60 00 00 */	li r19, 0
/* 804C337C  C0 0F 05 2C */	lfs f0, 0x52c(r15)
/* 804C3380  FC 00 02 10 */	fabs f0, f0
/* 804C3384  FC 20 00 18 */	frsp f1, f0
/* 804C3388  C0 1C 05 18 */	lfs f0, 0x518(r28)
/* 804C338C  EF C0 00 72 */	fmuls f30, f0, f1
/* 804C3390  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C3394  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804C3398  40 81 00 08 */	ble lbl_804C33A0
/* 804C339C  FF C0 00 90 */	fmr f30, f0
lbl_804C33A0:
/* 804C33A0  AA 4F 08 72 */	lha r18, 0x872(r15)
/* 804C33A4  3A 20 00 00 */	li r17, 0
/* 804C33A8  C8 3C 00 C0 */	lfd f1, 0xc0(r28)
/* 804C33AC  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 804C33B0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804C33B4  3C 00 43 30 */	lis r0, 0x4330
/* 804C33B8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 804C33BC  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 804C33C0  EC 40 08 28 */	fsubs f2, f0, f1
/* 804C33C4  C0 3C 05 1C */	lfs f1, 0x51c(r28)
/* 804C33C8  C0 1C 05 20 */	lfs f0, 0x520(r28)
/* 804C33CC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804C33D0  EF 81 00 2A */	fadds f28, f1, f0
/* 804C33D4  EC 02 E0 2A */	fadds f0, f2, f28
/* 804C33D8  FC 00 00 1E */	fctiwz f0, f0
/* 804C33DC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 804C33E0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 804C33E4  B0 0F 08 72 */	sth r0, 0x872(r15)
/* 804C33E8  3A 00 00 00 */	li r16, 0
/* 804C33EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C33F0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C33F4  82 9D 5D B4 */	lwz r20, 0x5db4(r29)
/* 804C33F8  80 14 05 74 */	lwz r0, 0x574(r20)
/* 804C33FC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804C3400  41 82 00 6C */	beq lbl_804C346C
/* 804C3404  3B 40 00 00 */	li r26, 0
/* 804C3408  38 7D 00 28 */	addi r3, r29, 0x28
/* 804C340C  38 80 00 03 */	li r4, 3
/* 804C3410  4B B6 F7 DD */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 804C3414  2C 03 00 00 */	cmpwi r3, 0
/* 804C3418  41 82 00 24 */	beq lbl_804C343C
/* 804C341C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C3420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C3424  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804C3428  38 80 1E 08 */	li r4, 0x1e08
/* 804C342C  4B B7 15 91 */	bl isEventBit__11dSv_event_cCFUs
/* 804C3430  2C 03 00 00 */	cmpwi r3, 0
/* 804C3434  40 82 00 08 */	bne lbl_804C343C
/* 804C3438  3B 40 00 01 */	li r26, 1
lbl_804C343C:
/* 804C343C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C3440  40 82 00 2C */	bne lbl_804C346C
/* 804C3444  80 8F 08 90 */	lwz r4, 0x890(r15)
/* 804C3448  3C 60 20 20 */	lis r3, 0x2020 /* 0x20200500@ha */
/* 804C344C  38 03 05 00 */	addi r0, r3, 0x0500 /* 0x20200500@l */
/* 804C3450  7C 80 00 39 */	and. r0, r4, r0
/* 804C3454  40 82 00 18 */	bne lbl_804C346C
/* 804C3458  3A 14 36 00 */	addi r16, r20, 0x3600
/* 804C345C  80 0F 08 90 */	lwz r0, 0x890(r15)
/* 804C3460  64 00 10 00 */	oris r0, r0, 0x1000
/* 804C3464  90 0F 08 90 */	stw r0, 0x890(r15)
/* 804C3468  48 00 00 10 */	b lbl_804C3478
lbl_804C346C:
/* 804C346C  80 0F 08 90 */	lwz r0, 0x890(r15)
/* 804C3470  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 804C3474  90 0F 08 90 */	stw r0, 0x890(r15)
lbl_804C3478:
/* 804C3478  3B 40 00 00 */	li r26, 0
/* 804C347C  3B E0 00 00 */	li r31, 0
/* 804C3480  3B 7C 00 5C */	addi r27, r28, 0x5c
/* 804C3484  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C3488  3B C3 0C F4 */	addi r30, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 804C348C  7D CE 00 D0 */	neg r14, r14
/* 804C3490  C3 7C 04 C4 */	lfs f27, 0x4c4(r28)
lbl_804C3494:
/* 804C3494  80 0F 08 90 */	lwz r0, 0x890(r15)
/* 804C3498  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804C349C  41 82 00 30 */	beq lbl_804C34CC
/* 804C34A0  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 804C34A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804C34A8  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 804C34AC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804C34B0  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 804C34B4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804C34B8  7E E3 BB 78 */	mr r3, r23
/* 804C34BC  38 81 00 80 */	addi r4, r1, 0x80
/* 804C34C0  C0 3C 04 C4 */	lfs f1, 0x4c4(r28)
/* 804C34C4  4B DA D2 E9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 804C34C8  48 00 00 34 */	b lbl_804C34FC
lbl_804C34CC:
/* 804C34CC  38 7C 00 5C */	addi r3, r28, 0x5c
/* 804C34D0  7C 63 FA 14 */	add r3, r3, r31
/* 804C34D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C34D8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804C34DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C34E0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804C34E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 804C34E8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C34EC  7E E3 BB 78 */	mr r3, r23
/* 804C34F0  38 81 00 74 */	addi r4, r1, 0x74
/* 804C34F4  C0 3C 04 C4 */	lfs f1, 0x4c4(r28)
/* 804C34F8  4B DA D2 B5 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
lbl_804C34FC:
/* 804C34FC  C0 19 00 00 */	lfs f0, 0(r25)
/* 804C3500  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804C3504  C0 19 00 04 */	lfs f0, 4(r25)
/* 804C3508  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804C350C  C0 19 00 08 */	lfs f0, 8(r25)
/* 804C3510  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804C3514  80 0F 08 90 */	lwz r0, 0x890(r15)
/* 804C3518  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 804C351C  41 82 01 00 */	beq lbl_804C361C
/* 804C3520  2C 1A 00 04 */	cmpwi r26, 4
/* 804C3524  40 82 00 28 */	bne lbl_804C354C
/* 804C3528  80 6F 05 74 */	lwz r3, 0x574(r15)
/* 804C352C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C3530  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C3534  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 804C3538  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha /* 0x80430D0C@ha */
/* 804C353C  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l /* 0x80430D0C@l */
/* 804C3540  7F 25 CB 78 */	mr r5, r25
/* 804C3544  4B E8 38 29 */	bl PSMTXMultVec
/* 804C3548  48 00 00 34 */	b lbl_804C357C
lbl_804C354C:
/* 804C354C  80 6F 05 74 */	lwz r3, 0x574(r15)
/* 804C3550  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C3554  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C3558  38 1A 00 07 */	addi r0, r26, 7
/* 804C355C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804C3560  7C 63 02 14 */	add r3, r3, r0
/* 804C3564  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804C3568  D0 19 00 00 */	stfs f0, 0(r25)
/* 804C356C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804C3570  D0 19 00 04 */	stfs f0, 4(r25)
/* 804C3574  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804C3578  D0 19 00 08 */	stfs f0, 8(r25)
lbl_804C357C:
/* 804C357C  C0 19 00 00 */	lfs f0, 0(r25)
/* 804C3580  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804C3584  C0 19 00 04 */	lfs f0, 4(r25)
/* 804C3588  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804C358C  C0 19 00 08 */	lfs f0, 8(r25)
/* 804C3590  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804C3594  38 61 00 68 */	addi r3, r1, 0x68
/* 804C3598  7F 24 CB 78 */	mr r4, r25
/* 804C359C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 804C35A0  4B DA 35 95 */	bl __mi__4cXyzCFRC3Vec
/* 804C35A4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804C35A8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804C35AC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 804C35B0  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 804C35B4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804C35B8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804C35BC  FC 20 08 50 */	fneg f1, f1
/* 804C35C0  FC 40 00 50 */	fneg f2, f0
/* 804C35C4  4B DA 40 B1 */	bl cM_atan2s__Fff
/* 804C35C8  B0 76 00 00 */	sth r3, 0(r22)
/* 804C35CC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C35D0  EC 20 00 32 */	fmuls f1, f0, f0
/* 804C35D4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C35D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 804C35DC  EC 41 00 2A */	fadds f2, f1, f0
/* 804C35E0  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C35E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C35E8  40 81 00 0C */	ble lbl_804C35F4
/* 804C35EC  FC 00 10 34 */	frsqrte f0, f2
/* 804C35F0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804C35F4:
/* 804C35F4  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804C35F8  4B DA 40 7D */	bl cM_atan2s__Fff
/* 804C35FC  B0 75 00 00 */	sth r3, 0(r21)
/* 804C3600  C0 19 00 00 */	lfs f0, 0(r25)
/* 804C3604  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804C3608  C0 19 00 04 */	lfs f0, 4(r25)
/* 804C360C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 804C3610  C0 19 00 08 */	lfs f0, 8(r25)
/* 804C3614  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 804C3618  48 00 07 80 */	b lbl_804C3D98
lbl_804C361C:
/* 804C361C  28 10 00 00 */	cmplwi r16, 0
/* 804C3620  41 82 02 08 */	beq lbl_804C3828
/* 804C3624  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C3628  7E 04 83 78 */	mr r4, r16
/* 804C362C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 804C3630  4B DA 35 05 */	bl __mi__4cXyzCFRC3Vec
/* 804C3634  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804C3638  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804C363C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804C3640  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804C3644  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804C3648  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804C364C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C3650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C3654  A8 0F 04 E6 */	lha r0, 0x4e6(r15)
/* 804C3658  7C 00 00 D0 */	neg r0, r0
/* 804C365C  7C 04 07 34 */	extsh r4, r0
/* 804C3660  4B B4 8D 7D */	bl mDoMtx_YrotS__FPA4_fs
/* 804C3664  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C3668  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C366C  38 81 00 98 */	addi r4, r1, 0x98
/* 804C3670  7C 85 23 78 */	mr r5, r4
/* 804C3674  4B E8 36 F9 */	bl PSMTXMultVec
/* 804C3678  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C367C  EC 20 00 32 */	fmuls f1, f0, f0
/* 804C3680  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3684  EC 00 00 32 */	fmuls f0, f0, f0
/* 804C3688  EC 41 00 2A */	fadds f2, f1, f0
/* 804C368C  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3690  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C3694  40 81 00 0C */	ble lbl_804C36A0
/* 804C3698  FC 00 10 34 */	frsqrte f0, f2
/* 804C369C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804C36A0:
/* 804C36A0  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804C36A4  4B DA 3F D1 */	bl cM_atan2s__Fff
/* 804C36A8  7C 60 07 34 */	extsh r0, r3
/* 804C36AC  C8 3C 00 C0 */	lfd f1, 0xc0(r28)
/* 804C36B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C36B4  90 01 00 CC */	stw r0, 0xcc(r1)
/* 804C36B8  3C 00 43 30 */	lis r0, 0x4330
/* 804C36BC  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 804C36C0  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 804C36C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C36C8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804C36CC  FC 00 00 1E */	fctiwz f0, f0
/* 804C36D0  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 804C36D4  82 81 00 C4 */	lwz r20, 0xc4(r1)
/* 804C36D8  2C 1A 00 00 */	cmpwi r26, 0
/* 804C36DC  40 82 00 28 */	bne lbl_804C3704
/* 804C36E0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C36E4  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 804C36E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804C36EC  41 80 00 14 */	blt lbl_804C3700
/* 804C36F0  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C36F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804C36F8  4C 41 13 82 */	cror 2, 1, 2
/* 804C36FC  40 82 00 08 */	bne lbl_804C3704
lbl_804C3700:
/* 804C3700  3A 20 00 01 */	li r17, 1
lbl_804C3704:
/* 804C3704  2C 11 00 00 */	cmpwi r17, 0
/* 804C3708  41 82 00 7C */	beq lbl_804C3784
/* 804C370C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 804C3710  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C3714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3718  40 80 00 10 */	bge lbl_804C3728
/* 804C371C  2C 1A 00 04 */	cmpwi r26, 4
/* 804C3720  40 80 00 08 */	bge lbl_804C3728
/* 804C3724  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_804C3728:
/* 804C3728  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C372C  FC 20 00 50 */	fneg f1, f0
/* 804C3730  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3734  FC 40 00 50 */	fneg f2, f0
/* 804C3738  4B DA 3F 3D */	bl cM_atan2s__Fff
/* 804C373C  7C 60 07 34 */	extsh r0, r3
/* 804C3740  C8 3C 00 C0 */	lfd f1, 0xc0(r28)
/* 804C3744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C3748  90 01 00 CC */	stw r0, 0xcc(r1)
/* 804C374C  3C 00 43 30 */	lis r0, 0x4330
/* 804C3750  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 804C3754  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 804C3758  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C375C  EC 5F 00 32 */	fmuls f2, f31, f0
/* 804C3760  C0 3C 04 00 */	lfs f1, 0x400(r28)
/* 804C3764  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C3768  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804C376C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C3770  EC 02 00 28 */	fsubs f0, f2, f0
/* 804C3774  FC 00 00 1E */	fctiwz f0, f0
/* 804C3778  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 804C377C  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 804C3780  48 00 00 60 */	b lbl_804C37E0
lbl_804C3784:
/* 804C3784  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C3788  FC 20 00 50 */	fneg f1, f0
/* 804C378C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3790  FC 40 00 50 */	fneg f2, f0
/* 804C3794  4B DA 3E E1 */	bl cM_atan2s__Fff
/* 804C3798  7C 63 07 34 */	extsh r3, r3
/* 804C379C  3C 03 FF FF */	addis r0, r3, 0xffff
/* 804C37A0  C8 3C 00 C0 */	lfd f1, 0xc0(r28)
/* 804C37A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C37A8  90 01 00 CC */	stw r0, 0xcc(r1)
/* 804C37AC  3C 00 43 30 */	lis r0, 0x4330
/* 804C37B0  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 804C37B4  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 804C37B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C37BC  EC 5F 00 32 */	fmuls f2, f31, f0
/* 804C37C0  C0 3C 04 00 */	lfs f1, 0x400(r28)
/* 804C37C4  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C37C8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804C37CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C37D0  EC 02 00 28 */	fsubs f0, f2, f0
/* 804C37D4  FC 00 00 1E */	fctiwz f0, f0
/* 804C37D8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 804C37DC  80 81 00 C4 */	lwz r4, 0xc4(r1)
lbl_804C37E0:
/* 804C37E0  7E C3 B3 78 */	mr r3, r22
/* 804C37E4  38 A0 00 05 */	li r5, 5
/* 804C37E8  38 C0 18 00 */	li r6, 0x1800
/* 804C37EC  38 E0 01 00 */	li r7, 0x100
/* 804C37F0  4B DA CD 51 */	bl cLib_addCalcAngleS__FPsssss
/* 804C37F4  7E A3 AB 78 */	mr r3, r21
/* 804C37F8  7E 84 A3 78 */	mr r4, r20
/* 804C37FC  38 A0 00 05 */	li r5, 5
/* 804C3800  38 C0 18 00 */	li r6, 0x1800
/* 804C3804  38 E0 01 00 */	li r7, 0x100
/* 804C3808  4B DA CD 39 */	bl cLib_addCalcAngleS__FPsssss
/* 804C380C  C0 1C 05 24 */	lfs f0, 0x524(r28)
/* 804C3810  EF FF 00 2A */	fadds f31, f31, f0
/* 804C3814  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C3818  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804C381C  40 81 05 7C */	ble lbl_804C3D98
/* 804C3820  FF E0 00 90 */	fmr f31, f0
/* 804C3824  48 00 05 74 */	b lbl_804C3D98
lbl_804C3828:
/* 804C3828  38 61 00 50 */	addi r3, r1, 0x50
/* 804C382C  7F 24 CB 78 */	mr r4, r25
/* 804C3830  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 804C3834  4B DA 33 01 */	bl __mi__4cXyzCFRC3Vec
/* 804C3838  38 61 00 44 */	addi r3, r1, 0x44
/* 804C383C  38 81 00 50 */	addi r4, r1, 0x50
/* 804C3840  7F 05 C3 78 */	mr r5, r24
/* 804C3844  4B DA 32 A1 */	bl __pl__4cXyzCFRC3Vec
/* 804C3848  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804C384C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804C3850  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804C3854  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804C3858  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804C385C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804C3860  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804C3864  38 83 35 AC */	addi r4, r3, 0x35ac
/* 804C3868  38 61 00 98 */	addi r3, r1, 0x98
/* 804C386C  7C 65 1B 78 */	mr r5, r3
/* 804C3870  4B E8 38 21 */	bl PSVECAdd
/* 804C3874  80 0F 08 98 */	lwz r0, 0x898(r15)
/* 804C3878  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C387C  41 82 00 20 */	beq lbl_804C389C
/* 804C3880  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C3884  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 804C3888  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804C388C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804C3890  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804C3894  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804C3898  D0 01 00 A0 */	stfs f0, 0xa0(r1)
lbl_804C389C:
/* 804C389C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 804C38A0  C0 1C 03 A4 */	lfs f0, 0x3a4(r28)
/* 804C38A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C38A8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804C38AC  56 40 04 38 */	rlwinm r0, r18, 0, 0x10, 0x1c
/* 804C38B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804C38B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804C38B8  7F 43 04 2E */	lfsx f26, r3, r0
/* 804C38BC  C0 3C 04 20 */	lfs f1, 0x420(r28)
/* 804C38C0  4B DA 40 CD */	bl cM_rndFX__Ff
/* 804C38C4  C0 1C 04 20 */	lfs f0, 0x420(r28)
/* 804C38C8  EC 00 08 2A */	fadds f0, f0, f1
/* 804C38CC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804C38D0  EC 20 06 B2 */	fmuls f1, f0, f26
/* 804C38D4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C38D8  EC 00 08 2A */	fadds f0, f0, f1
/* 804C38DC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804C38E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C38E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C38E8  7D C4 07 34 */	extsh r4, r14
/* 804C38EC  4B B4 8A F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804C38F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C38F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C38F8  38 81 00 98 */	addi r4, r1, 0x98
/* 804C38FC  7C 85 23 78 */	mr r5, r4
/* 804C3900  4B E8 34 6D */	bl PSMTXMultVec
/* 804C3904  38 61 00 98 */	addi r3, r1, 0x98
/* 804C3908  4B E8 38 31 */	bl PSVECSquareMag
/* 804C390C  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3914  40 81 00 58 */	ble lbl_804C396C
/* 804C3918  FC 00 08 34 */	frsqrte f0, f1
/* 804C391C  C8 9C 04 48 */	lfd f4, 0x448(r28)
/* 804C3920  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3924  C8 7C 04 50 */	lfd f3, 0x450(r28)
/* 804C3928  FC 00 00 32 */	fmul f0, f0, f0
/* 804C392C  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3930  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3934  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3938  FC 44 00 32 */	fmul f2, f4, f0
/* 804C393C  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3940  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3944  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3948  FC 02 00 32 */	fmul f0, f2, f0
/* 804C394C  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3950  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3954  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3958  FC 03 00 28 */	fsub f0, f3, f0
/* 804C395C  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3960  FC 21 00 32 */	fmul f1, f1, f0
/* 804C3964  FC 20 08 18 */	frsp f1, f1
/* 804C3968  48 00 00 88 */	b lbl_804C39F0
lbl_804C396C:
/* 804C396C  C8 1C 04 58 */	lfd f0, 0x458(r28)
/* 804C3970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3974  40 80 00 10 */	bge lbl_804C3984
/* 804C3978  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C397C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804C3980  48 00 00 70 */	b lbl_804C39F0
lbl_804C3984:
/* 804C3984  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804C3988  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804C398C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C3990  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C3994  7C 03 00 00 */	cmpw r3, r0
/* 804C3998  41 82 00 14 */	beq lbl_804C39AC
/* 804C399C  40 80 00 40 */	bge lbl_804C39DC
/* 804C39A0  2C 03 00 00 */	cmpwi r3, 0
/* 804C39A4  41 82 00 20 */	beq lbl_804C39C4
/* 804C39A8  48 00 00 34 */	b lbl_804C39DC
lbl_804C39AC:
/* 804C39AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C39B0  41 82 00 0C */	beq lbl_804C39BC
/* 804C39B4  38 00 00 01 */	li r0, 1
/* 804C39B8  48 00 00 28 */	b lbl_804C39E0
lbl_804C39BC:
/* 804C39BC  38 00 00 02 */	li r0, 2
/* 804C39C0  48 00 00 20 */	b lbl_804C39E0
lbl_804C39C4:
/* 804C39C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C39C8  41 82 00 0C */	beq lbl_804C39D4
/* 804C39CC  38 00 00 05 */	li r0, 5
/* 804C39D0  48 00 00 10 */	b lbl_804C39E0
lbl_804C39D4:
/* 804C39D4  38 00 00 03 */	li r0, 3
/* 804C39D8  48 00 00 08 */	b lbl_804C39E0
lbl_804C39DC:
/* 804C39DC  38 00 00 04 */	li r0, 4
lbl_804C39E0:
/* 804C39E0  2C 00 00 01 */	cmpwi r0, 1
/* 804C39E4  40 82 00 0C */	bne lbl_804C39F0
/* 804C39E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C39EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804C39F0:
/* 804C39F0  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C39F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C39F8  40 80 00 74 */	bge lbl_804C3A6C
/* 804C39FC  2C 1A 00 00 */	cmpwi r26, 0
/* 804C3A00  40 82 00 38 */	bne lbl_804C3A38
/* 804C3A04  7E C3 B3 78 */	mr r3, r22
/* 804C3A08  38 80 00 00 */	li r4, 0
/* 804C3A0C  38 A0 00 05 */	li r5, 5
/* 804C3A10  38 C0 18 00 */	li r6, 0x1800
/* 804C3A14  38 E0 01 00 */	li r7, 0x100
/* 804C3A18  4B DA CB 29 */	bl cLib_addCalcAngleS__FPsssss
/* 804C3A1C  7E A3 AB 78 */	mr r3, r21
/* 804C3A20  38 80 00 00 */	li r4, 0
/* 804C3A24  38 A0 00 05 */	li r5, 5
/* 804C3A28  38 C0 18 00 */	li r6, 0x1800
/* 804C3A2C  38 E0 01 00 */	li r7, 0x100
/* 804C3A30  4B DA CB 11 */	bl cLib_addCalcAngleS__FPsssss
/* 804C3A34  48 00 03 34 */	b lbl_804C3D68
lbl_804C3A38:
/* 804C3A38  7E C3 B3 78 */	mr r3, r22
/* 804C3A3C  38 80 00 00 */	li r4, 0
/* 804C3A40  38 A0 00 05 */	li r5, 5
/* 804C3A44  38 C0 18 00 */	li r6, 0x1800
/* 804C3A48  38 E0 01 00 */	li r7, 0x100
/* 804C3A4C  4B DA CA F5 */	bl cLib_addCalcAngleS__FPsssss
/* 804C3A50  7E A3 AB 78 */	mr r3, r21
/* 804C3A54  38 80 00 00 */	li r4, 0
/* 804C3A58  38 A0 00 05 */	li r5, 5
/* 804C3A5C  38 C0 18 00 */	li r6, 0x1800
/* 804C3A60  38 E0 01 00 */	li r7, 0x100
/* 804C3A64  4B DA CA DD */	bl cLib_addCalcAngleS__FPsssss
/* 804C3A68  48 00 03 00 */	b lbl_804C3D68
lbl_804C3A6C:
/* 804C3A6C  2C 1A 00 00 */	cmpwi r26, 0
/* 804C3A70  40 82 02 98 */	bne lbl_804C3D08
/* 804C3A74  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 804C3A78  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3A80  40 81 00 10 */	ble lbl_804C3A90
/* 804C3A84  C0 1C 03 98 */	lfs f0, 0x398(r28)
/* 804C3A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C3A8C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
lbl_804C3A90:
/* 804C3A90  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 804C3A94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C3A98  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3A9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C3AA0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3AA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C3AA8  38 61 00 20 */	addi r3, r1, 0x20
/* 804C3AAC  4B E8 36 8D */	bl PSVECSquareMag
/* 804C3AB0  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3AB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3AB8  40 81 00 58 */	ble lbl_804C3B10
/* 804C3ABC  FC 00 08 34 */	frsqrte f0, f1
/* 804C3AC0  C8 9C 04 48 */	lfd f4, 0x448(r28)
/* 804C3AC4  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3AC8  C8 7C 04 50 */	lfd f3, 0x450(r28)
/* 804C3ACC  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3AD0  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3AD4  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3AD8  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3ADC  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3AE0  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3AE4  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3AE8  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3AEC  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3AF0  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3AF4  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3AF8  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3AFC  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3B00  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3B04  FC 21 00 32 */	fmul f1, f1, f0
/* 804C3B08  FC 20 08 18 */	frsp f1, f1
/* 804C3B0C  48 00 00 88 */	b lbl_804C3B94
lbl_804C3B10:
/* 804C3B10  C8 1C 04 58 */	lfd f0, 0x458(r28)
/* 804C3B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3B18  40 80 00 10 */	bge lbl_804C3B28
/* 804C3B1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C3B20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804C3B24  48 00 00 70 */	b lbl_804C3B94
lbl_804C3B28:
/* 804C3B28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804C3B2C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804C3B30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C3B34  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C3B38  7C 03 00 00 */	cmpw r3, r0
/* 804C3B3C  41 82 00 14 */	beq lbl_804C3B50
/* 804C3B40  40 80 00 40 */	bge lbl_804C3B80
/* 804C3B44  2C 03 00 00 */	cmpwi r3, 0
/* 804C3B48  41 82 00 20 */	beq lbl_804C3B68
/* 804C3B4C  48 00 00 34 */	b lbl_804C3B80
lbl_804C3B50:
/* 804C3B50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C3B54  41 82 00 0C */	beq lbl_804C3B60
/* 804C3B58  38 00 00 01 */	li r0, 1
/* 804C3B5C  48 00 00 28 */	b lbl_804C3B84
lbl_804C3B60:
/* 804C3B60  38 00 00 02 */	li r0, 2
/* 804C3B64  48 00 00 20 */	b lbl_804C3B84
lbl_804C3B68:
/* 804C3B68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C3B6C  41 82 00 0C */	beq lbl_804C3B78
/* 804C3B70  38 00 00 05 */	li r0, 5
/* 804C3B74  48 00 00 10 */	b lbl_804C3B84
lbl_804C3B78:
/* 804C3B78  38 00 00 03 */	li r0, 3
/* 804C3B7C  48 00 00 08 */	b lbl_804C3B84
lbl_804C3B80:
/* 804C3B80  38 00 00 04 */	li r0, 4
lbl_804C3B84:
/* 804C3B84  2C 00 00 01 */	cmpwi r0, 1
/* 804C3B88  40 82 00 0C */	bne lbl_804C3B94
/* 804C3B8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C3B90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804C3B94:
/* 804C3B94  C0 5C 05 28 */	lfs f2, 0x528(r28)
/* 804C3B98  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C3B9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C3BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3BA4  40 80 01 64 */	bge lbl_804C3D08
/* 804C3BA8  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C3BAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3BB0  40 80 00 20 */	bge lbl_804C3BD0
/* 804C3BB4  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3BB8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804C3BBC  C0 1C 03 98 */	lfs f0, 0x398(r28)
/* 804C3BC0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804C3BC4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 804C3BC8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804C3BCC  48 00 01 38 */	b lbl_804C3D04
lbl_804C3BD0:
/* 804C3BD0  C0 0F 05 2C */	lfs f0, 0x52c(r15)
/* 804C3BD4  FC 00 02 10 */	fabs f0, f0
/* 804C3BD8  FC 40 00 18 */	frsp f2, f0
/* 804C3BDC  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 804C3BE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C3BE4  40 80 01 14 */	bge lbl_804C3CF8
/* 804C3BE8  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804C3BEC  C0 1C 04 64 */	lfs f0, 0x464(r28)
/* 804C3BF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C3BF4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804C3BF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804C3BFC  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3C00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C3C04  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3C08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804C3C0C  38 61 00 14 */	addi r3, r1, 0x14
/* 804C3C10  4B E8 35 29 */	bl PSVECSquareMag
/* 804C3C14  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3C1C  40 81 00 58 */	ble lbl_804C3C74
/* 804C3C20  FC 00 08 34 */	frsqrte f0, f1
/* 804C3C24  C8 9C 04 48 */	lfd f4, 0x448(r28)
/* 804C3C28  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3C2C  C8 7C 04 50 */	lfd f3, 0x450(r28)
/* 804C3C30  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3C34  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3C38  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3C3C  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3C40  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3C44  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3C48  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3C4C  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3C50  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3C54  FC 44 00 32 */	fmul f2, f4, f0
/* 804C3C58  FC 00 00 32 */	fmul f0, f0, f0
/* 804C3C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 804C3C60  FC 03 00 28 */	fsub f0, f3, f0
/* 804C3C64  FC 02 00 32 */	fmul f0, f2, f0
/* 804C3C68  FC 21 00 32 */	fmul f1, f1, f0
/* 804C3C6C  FC 20 08 18 */	frsp f1, f1
/* 804C3C70  48 00 00 88 */	b lbl_804C3CF8
lbl_804C3C74:
/* 804C3C74  C8 1C 04 58 */	lfd f0, 0x458(r28)
/* 804C3C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3C7C  40 80 00 10 */	bge lbl_804C3C8C
/* 804C3C80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C3C84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804C3C88  48 00 00 70 */	b lbl_804C3CF8
lbl_804C3C8C:
/* 804C3C8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804C3C90  80 81 00 08 */	lwz r4, 8(r1)
/* 804C3C94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C3C98  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C3C9C  7C 03 00 00 */	cmpw r3, r0
/* 804C3CA0  41 82 00 14 */	beq lbl_804C3CB4
/* 804C3CA4  40 80 00 40 */	bge lbl_804C3CE4
/* 804C3CA8  2C 03 00 00 */	cmpwi r3, 0
/* 804C3CAC  41 82 00 20 */	beq lbl_804C3CCC
/* 804C3CB0  48 00 00 34 */	b lbl_804C3CE4
lbl_804C3CB4:
/* 804C3CB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C3CB8  41 82 00 0C */	beq lbl_804C3CC4
/* 804C3CBC  38 00 00 01 */	li r0, 1
/* 804C3CC0  48 00 00 28 */	b lbl_804C3CE8
lbl_804C3CC4:
/* 804C3CC4  38 00 00 02 */	li r0, 2
/* 804C3CC8  48 00 00 20 */	b lbl_804C3CE8
lbl_804C3CCC:
/* 804C3CCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C3CD0  41 82 00 0C */	beq lbl_804C3CDC
/* 804C3CD4  38 00 00 05 */	li r0, 5
/* 804C3CD8  48 00 00 10 */	b lbl_804C3CE8
lbl_804C3CDC:
/* 804C3CDC  38 00 00 03 */	li r0, 3
/* 804C3CE0  48 00 00 08 */	b lbl_804C3CE8
lbl_804C3CE4:
/* 804C3CE4  38 00 00 04 */	li r0, 4
lbl_804C3CE8:
/* 804C3CE8  2C 00 00 01 */	cmpwi r0, 1
/* 804C3CEC  40 82 00 0C */	bne lbl_804C3CF8
/* 804C3CF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C3CF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804C3CF8:
/* 804C3CF8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 804C3CFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C3D00  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_804C3D04:
/* 804C3D04  3A 60 00 01 */	li r19, 1
lbl_804C3D08:
/* 804C3D08  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C3D0C  EC 20 00 32 */	fmuls f1, f0, f0
/* 804C3D10  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3D14  EC 00 00 32 */	fmuls f0, f0, f0
/* 804C3D18  EC 41 00 2A */	fadds f2, f1, f0
/* 804C3D1C  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C3D20  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C3D24  40 81 00 0C */	ble lbl_804C3D30
/* 804C3D28  FC 00 10 34 */	frsqrte f0, f2
/* 804C3D2C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804C3D30:
/* 804C3D30  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804C3D34  4B DA 39 41 */	bl cM_atan2s__Fff
/* 804C3D38  B0 75 00 00 */	sth r3, 0(r21)
/* 804C3D3C  2C 1A 00 04 */	cmpwi r26, 4
/* 804C3D40  40 82 00 20 */	bne lbl_804C3D60
/* 804C3D44  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804C3D48  FC 20 00 50 */	fneg f1, f0
/* 804C3D4C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804C3D50  FC 40 00 50 */	fneg f2, f0
/* 804C3D54  4B DA 39 21 */	bl cM_atan2s__Fff
/* 804C3D58  B0 76 00 00 */	sth r3, 0(r22)
/* 804C3D5C  48 00 00 0C */	b lbl_804C3D68
lbl_804C3D60:
/* 804C3D60  38 00 00 00 */	li r0, 0
/* 804C3D64  B0 16 00 00 */	sth r0, 0(r22)
lbl_804C3D68:
/* 804C3D68  7E 40 07 34 */	extsh r0, r18
/* 804C3D6C  C8 3C 00 C0 */	lfd f1, 0xc0(r28)
/* 804C3D70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C3D74  90 01 00 CC */	stw r0, 0xcc(r1)
/* 804C3D78  3C 00 43 30 */	lis r0, 0x4330
/* 804C3D7C  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 804C3D80  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 804C3D84  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C3D88  EC 00 E0 28 */	fsubs f0, f0, f28
/* 804C3D8C  FC 00 00 1E */	fctiwz f0, f0
/* 804C3D90  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 804C3D94  82 41 00 C4 */	lwz r18, 0xc4(r1)
lbl_804C3D98:
/* 804C3D98  80 0F 08 90 */	lwz r0, 0x890(r15)
/* 804C3D9C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 804C3DA0  40 82 00 60 */	bne lbl_804C3E00
/* 804C3DA4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 804C3DA8  4B B4 8F BD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804C3DAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C3DB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C3DB4  A8 81 00 D0 */	lha r4, 0xd0(r1)
/* 804C3DB8  4B B4 86 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 804C3DBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C3DC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C3DC4  A8 96 00 00 */	lha r4, 0(r22)
/* 804C3DC8  4B B4 85 D5 */	bl mDoMtx_XrotM__FPA4_fs
/* 804C3DCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C3DD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C3DD4  A8 15 00 00 */	lha r0, 0(r21)
/* 804C3DD8  7C 00 00 D0 */	neg r0, r0
/* 804C3DDC  7C 04 07 34 */	extsh r4, r0
/* 804C3DE0  4B B4 86 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 804C3DE4  7E E3 BB 78 */	mr r3, r23
/* 804C3DE8  4B B4 90 89 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 804C3DEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C3DF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C3DF4  38 9C 05 08 */	addi r4, r28, 0x508
/* 804C3DF8  7F 25 CB 78 */	mr r5, r25
/* 804C3DFC  4B E8 2F 71 */	bl PSMTXMultVec
lbl_804C3E00:
/* 804C3E00  80 0F 08 98 */	lwz r0, 0x898(r15)
/* 804C3E04  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C3E08  41 82 00 24 */	beq lbl_804C3E2C
/* 804C3E0C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C3E10  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 804C3E14  D0 18 00 00 */	stfs f0, 0(r24)
/* 804C3E18  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804C3E1C  D0 18 00 04 */	stfs f0, 4(r24)
/* 804C3E20  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804C3E24  D0 18 00 08 */	stfs f0, 8(r24)
/* 804C3E28  48 00 00 54 */	b lbl_804C3E7C
lbl_804C3E2C:
/* 804C3E2C  38 61 00 38 */	addi r3, r1, 0x38
/* 804C3E30  7F 24 CB 78 */	mr r4, r25
/* 804C3E34  38 A1 00 8C */	addi r5, r1, 0x8c
/* 804C3E38  4B DA 2C FD */	bl __mi__4cXyzCFRC3Vec
/* 804C3E3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C3E40  38 81 00 38 */	addi r4, r1, 0x38
/* 804C3E44  FC 20 E8 90 */	fmr f1, f29
/* 804C3E48  4B DA 2D 3D */	bl __ml__4cXyzCFf
/* 804C3E4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804C3E50  D0 18 00 00 */	stfs f0, 0(r24)
/* 804C3E54  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804C3E58  D0 18 00 04 */	stfs f0, 4(r24)
/* 804C3E5C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804C3E60  D0 18 00 08 */	stfs f0, 8(r24)
/* 804C3E64  2C 13 00 00 */	cmpwi r19, 0
/* 804C3E68  41 82 00 14 */	beq lbl_804C3E7C
/* 804C3E6C  7F 03 C3 78 */	mr r3, r24
/* 804C3E70  7F 04 C3 78 */	mr r4, r24
/* 804C3E74  C0 3C 04 64 */	lfs f1, 0x464(r28)
/* 804C3E78  4B E8 32 61 */	bl PSVECScale
lbl_804C3E7C:
/* 804C3E7C  C0 19 00 00 */	lfs f0, 0(r25)
/* 804C3E80  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804C3E84  C0 19 00 04 */	lfs f0, 4(r25)
/* 804C3E88  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 804C3E8C  C0 19 00 08 */	lfs f0, 8(r25)
/* 804C3E90  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 804C3E94  EF BD D8 28 */	fsubs f29, f29, f27
/* 804C3E98  3B 5A 00 01 */	addi r26, r26, 1
/* 804C3E9C  2C 1A 00 05 */	cmpwi r26, 5
/* 804C3EA0  3B FF 00 0C */	addi r31, r31, 0xc
/* 804C3EA4  3B 39 00 0C */	addi r25, r25, 0xc
/* 804C3EA8  3B 18 00 0C */	addi r24, r24, 0xc
/* 804C3EAC  3A D6 00 02 */	addi r22, r22, 2
/* 804C3EB0  3A B5 00 02 */	addi r21, r21, 2
/* 804C3EB4  3A F7 00 0C */	addi r23, r23, 0xc
/* 804C3EB8  41 80 F5 DC */	blt lbl_804C3494
lbl_804C3EBC:
/* 804C3EBC  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 804C3EC0  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 804C3EC4  E3 C1 01 68 */	psq_l f30, 360(r1), 0, 0 /* qr0 */
/* 804C3EC8  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 804C3ECC  E3 A1 01 58 */	psq_l f29, 344(r1), 0, 0 /* qr0 */
/* 804C3ED0  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 804C3ED4  E3 81 01 48 */	psq_l f28, 328(r1), 0, 0 /* qr0 */
/* 804C3ED8  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 804C3EDC  E3 61 01 38 */	psq_l f27, 312(r1), 0, 0 /* qr0 */
/* 804C3EE0  CB 61 01 30 */	lfd f27, 0x130(r1)
/* 804C3EE4  E3 41 01 28 */	psq_l f26, 296(r1), 0, 0 /* qr0 */
/* 804C3EE8  CB 41 01 20 */	lfd f26, 0x120(r1)
/* 804C3EEC  39 61 01 20 */	addi r11, r1, 0x120
/* 804C3EF0  4B E9 E2 FD */	bl __restore_gpr
/* 804C3EF4  80 01 01 84 */	lwz r0, 0x184(r1)
/* 804C3EF8  7C 08 03 A6 */	mtlr r0
/* 804C3EFC  38 21 01 80 */	addi r1, r1, 0x180
/* 804C3F00  4E 80 00 20 */	blr 
