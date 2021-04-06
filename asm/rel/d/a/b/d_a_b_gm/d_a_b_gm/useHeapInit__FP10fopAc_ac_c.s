lbl_805F3118:
/* 805F3118  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F311C  7C 08 02 A6 */	mflr r0
/* 805F3120  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F3124  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805F3128  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805F312C  39 61 00 40 */	addi r11, r1, 0x40
/* 805F3130  4B D6 F0 9D */	bl _savegpr_25
/* 805F3134  7C 7F 1B 78 */	mr r31, r3
/* 805F3138  38 60 00 58 */	li r3, 0x58
/* 805F313C  4B CD BB 11 */	bl __nw__FUl
/* 805F3140  7C 7B 1B 79 */	or. r27, r3, r3
/* 805F3144  41 82 00 94 */	beq lbl_805F31D8
/* 805F3148  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F314C  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F3150  38 80 00 1E */	li r4, 0x1e
/* 805F3154  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F3158  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F315C  3F 45 00 02 */	addis r26, r5, 2
/* 805F3160  3B 5A C2 F8 */	addi r26, r26, -15624
/* 805F3164  7F 45 D3 78 */	mr r5, r26
/* 805F3168  38 C0 00 80 */	li r6, 0x80
/* 805F316C  4B A4 91 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F3170  7C 7C 1B 78 */	mr r28, r3
/* 805F3174  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F3178  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F317C  38 80 00 25 */	li r4, 0x25
/* 805F3180  7F 45 D3 78 */	mr r5, r26
/* 805F3184  38 C0 00 80 */	li r6, 0x80
/* 805F3188  4B A4 91 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F318C  7C 64 1B 78 */	mr r4, r3
/* 805F3190  38 1F 05 E0 */	addi r0, r31, 0x5e0
/* 805F3194  90 01 00 08 */	stw r0, 8(r1)
/* 805F3198  38 00 00 00 */	li r0, 0
/* 805F319C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F31A0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 805F31A4  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 805F31A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F31AC  7F 63 DB 78 */	mr r3, r27
/* 805F31B0  38 A0 00 00 */	li r5, 0
/* 805F31B4  38 C0 00 00 */	li r6, 0
/* 805F31B8  7F 87 E3 78 */	mr r7, r28
/* 805F31BC  39 00 00 02 */	li r8, 2
/* 805F31C0  3D 20 80 5F */	lis r9, lit_6249@ha /* 0x805F436C@ha */
/* 805F31C4  C0 29 43 6C */	lfs f1, lit_6249@l(r9)  /* 0x805F436C@l */
/* 805F31C8  39 20 00 00 */	li r9, 0
/* 805F31CC  39 40 FF FF */	li r10, -1
/* 805F31D0  4B A1 D6 01 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805F31D4  7C 7B 1B 78 */	mr r27, r3
lbl_805F31D8:
/* 805F31D8  93 7F 05 DC */	stw r27, 0x5dc(r31)
/* 805F31DC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F31E0  28 03 00 00 */	cmplwi r3, 0
/* 805F31E4  41 82 00 10 */	beq lbl_805F31F4
/* 805F31E8  80 A3 00 04 */	lwz r5, 4(r3)
/* 805F31EC  28 05 00 00 */	cmplwi r5, 0
/* 805F31F0  40 82 00 0C */	bne lbl_805F31FC
lbl_805F31F4:
/* 805F31F4  38 60 00 00 */	li r3, 0
/* 805F31F8  48 00 03 48 */	b lbl_805F3540
lbl_805F31FC:
/* 805F31FC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 805F3200  38 E0 00 00 */	li r7, 0
/* 805F3204  3C 60 80 5F */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x805EDAA8@ha */
/* 805F3208  38 83 DA A8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x805EDAA8@l */
/* 805F320C  48 00 00 18 */	b lbl_805F3224
lbl_805F3210:
/* 805F3210  80 66 00 28 */	lwz r3, 0x28(r6)
/* 805F3214  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 805F3218  7C 63 00 2E */	lwzx r3, r3, r0
/* 805F321C  90 83 00 04 */	stw r4, 4(r3)
/* 805F3220  38 E7 00 01 */	addi r7, r7, 1
lbl_805F3224:
/* 805F3224  80 C5 00 04 */	lwz r6, 4(r5)
/* 805F3228  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 805F322C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 805F3230  7C 00 18 40 */	cmplw r0, r3
/* 805F3234  41 80 FF DC */	blt lbl_805F3210
/* 805F3238  38 60 00 18 */	li r3, 0x18
/* 805F323C  4B CD BA 11 */	bl __nw__FUl
/* 805F3240  7C 7B 1B 79 */	or. r27, r3, r3
/* 805F3244  41 82 00 20 */	beq lbl_805F3264
/* 805F3248  3C 80 80 5F */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805F4764@ha */
/* 805F324C  38 04 47 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805F4764@l */
/* 805F3250  90 1B 00 00 */	stw r0, 0(r27)
/* 805F3254  38 80 00 00 */	li r4, 0
/* 805F3258  4B D3 51 A5 */	bl init__12J3DFrameCtrlFs
/* 805F325C  38 00 00 00 */	li r0, 0
/* 805F3260  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_805F3264:
/* 805F3264  93 7F 06 A8 */	stw r27, 0x6a8(r31)
/* 805F3268  80 1F 06 A8 */	lwz r0, 0x6a8(r31)
/* 805F326C  28 00 00 00 */	cmplwi r0, 0
/* 805F3270  40 82 00 0C */	bne lbl_805F327C
/* 805F3274  38 60 00 00 */	li r3, 0
/* 805F3278  48 00 02 C8 */	b lbl_805F3540
lbl_805F327C:
/* 805F327C  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F3280  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F3284  38 80 00 28 */	li r4, 0x28
/* 805F3288  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F328C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F3290  3F C5 00 02 */	addis r30, r5, 2
/* 805F3294  3B DE C2 F8 */	addi r30, r30, -15624
/* 805F3298  7F C5 F3 78 */	mr r5, r30
/* 805F329C  38 C0 00 80 */	li r6, 0x80
/* 805F32A0  4B A4 90 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F32A4  7C 65 1B 78 */	mr r5, r3
/* 805F32A8  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F32AC  80 63 00 04 */	lwz r3, 4(r3)
/* 805F32B0  80 83 00 04 */	lwz r4, 4(r3)
/* 805F32B4  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 805F32B8  38 84 00 58 */	addi r4, r4, 0x58
/* 805F32BC  38 C0 00 01 */	li r6, 1
/* 805F32C0  38 E0 00 00 */	li r7, 0
/* 805F32C4  3D 00 80 5F */	lis r8, lit_3774@ha /* 0x805F4188@ha */
/* 805F32C8  C0 28 41 88 */	lfs f1, lit_3774@l(r8)  /* 0x805F4188@l */
/* 805F32CC  39 00 00 00 */	li r8, 0
/* 805F32D0  39 20 FF FF */	li r9, -1
/* 805F32D4  4B A1 A3 69 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805F32D8  2C 03 00 00 */	cmpwi r3, 0
/* 805F32DC  40 82 00 0C */	bne lbl_805F32E8
/* 805F32E0  38 60 00 00 */	li r3, 0
/* 805F32E4  48 00 02 5C */	b lbl_805F3540
lbl_805F32E8:
/* 805F32E8  38 60 00 54 */	li r3, 0x54
/* 805F32EC  4B CD B9 61 */	bl __nw__FUl
/* 805F32F0  7C 7B 1B 79 */	or. r27, r3, r3
/* 805F32F4  41 82 00 8C */	beq lbl_805F3380
/* 805F32F8  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F32FC  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F3300  38 80 00 07 */	li r4, 7
/* 805F3304  7F C5 F3 78 */	mr r5, r30
/* 805F3308  38 C0 00 80 */	li r6, 0x80
/* 805F330C  4B A4 8F E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F3310  7C 7C 1B 78 */	mr r28, r3
/* 805F3314  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F3318  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F331C  38 80 00 21 */	li r4, 0x21
/* 805F3320  7F C5 F3 78 */	mr r5, r30
/* 805F3324  38 C0 00 80 */	li r6, 0x80
/* 805F3328  4B A4 8F C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F332C  7C 64 1B 78 */	mr r4, r3
/* 805F3330  38 00 00 01 */	li r0, 1
/* 805F3334  90 01 00 08 */	stw r0, 8(r1)
/* 805F3338  38 00 00 00 */	li r0, 0
/* 805F333C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F3340  3C 00 00 08 */	lis r0, 8
/* 805F3344  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F3348  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 805F334C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 805F3350  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3354  7F 63 DB 78 */	mr r3, r27
/* 805F3358  38 A0 00 00 */	li r5, 0
/* 805F335C  38 C0 00 00 */	li r6, 0
/* 805F3360  7F 87 E3 78 */	mr r7, r28
/* 805F3364  39 00 00 02 */	li r8, 2
/* 805F3368  3D 20 80 5F */	lis r9, lit_3774@ha /* 0x805F4188@ha */
/* 805F336C  C0 29 41 88 */	lfs f1, lit_3774@l(r9)  /* 0x805F4188@l */
/* 805F3370  39 20 00 00 */	li r9, 0
/* 805F3374  39 40 FF FF */	li r10, -1
/* 805F3378  4B A1 C8 D5 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 805F337C  7C 7B 1B 78 */	mr r27, r3
lbl_805F3380:
/* 805F3380  93 7F 06 B8 */	stw r27, 0x6b8(r31)
/* 805F3384  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 805F3388  28 03 00 00 */	cmplwi r3, 0
/* 805F338C  41 82 00 10 */	beq lbl_805F339C
/* 805F3390  80 03 00 04 */	lwz r0, 4(r3)
/* 805F3394  28 00 00 00 */	cmplwi r0, 0
/* 805F3398  40 82 00 0C */	bne lbl_805F33A4
lbl_805F339C:
/* 805F339C  38 60 00 00 */	li r3, 0
/* 805F33A0  48 00 01 A0 */	b lbl_805F3540
lbl_805F33A4:
/* 805F33A4  38 60 00 18 */	li r3, 0x18
/* 805F33A8  4B CD B8 A5 */	bl __nw__FUl
/* 805F33AC  7C 7B 1B 79 */	or. r27, r3, r3
/* 805F33B0  41 82 00 20 */	beq lbl_805F33D0
/* 805F33B4  3C 80 80 5F */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805F4764@ha */
/* 805F33B8  38 04 47 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805F4764@l */
/* 805F33BC  90 1B 00 00 */	stw r0, 0(r27)
/* 805F33C0  38 80 00 00 */	li r4, 0
/* 805F33C4  4B D3 50 39 */	bl init__12J3DFrameCtrlFs
/* 805F33C8  38 00 00 00 */	li r0, 0
/* 805F33CC  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_805F33D0:
/* 805F33D0  93 7F 06 BC */	stw r27, 0x6bc(r31)
/* 805F33D4  80 1F 06 BC */	lwz r0, 0x6bc(r31)
/* 805F33D8  28 00 00 00 */	cmplwi r0, 0
/* 805F33DC  40 82 00 0C */	bne lbl_805F33E8
/* 805F33E0  38 60 00 00 */	li r3, 0
/* 805F33E4  48 00 01 5C */	b lbl_805F3540
lbl_805F33E8:
/* 805F33E8  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F33EC  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F33F0  38 80 00 29 */	li r4, 0x29
/* 805F33F4  7F C5 F3 78 */	mr r5, r30
/* 805F33F8  38 C0 00 80 */	li r6, 0x80
/* 805F33FC  4B A4 8E F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F3400  7C 65 1B 78 */	mr r5, r3
/* 805F3404  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 805F3408  80 63 00 04 */	lwz r3, 4(r3)
/* 805F340C  80 83 00 04 */	lwz r4, 4(r3)
/* 805F3410  80 7F 06 BC */	lwz r3, 0x6bc(r31)
/* 805F3414  38 84 00 58 */	addi r4, r4, 0x58
/* 805F3418  38 C0 00 01 */	li r6, 1
/* 805F341C  38 E0 00 02 */	li r7, 2
/* 805F3420  3D 00 80 5F */	lis r8, lit_3774@ha /* 0x805F4188@ha */
/* 805F3424  C0 28 41 88 */	lfs f1, lit_3774@l(r8)  /* 0x805F4188@l */
/* 805F3428  39 00 00 00 */	li r8, 0
/* 805F342C  39 20 FF FF */	li r9, -1
/* 805F3430  4B A1 A2 0D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805F3434  2C 03 00 00 */	cmpwi r3, 0
/* 805F3438  40 82 00 0C */	bne lbl_805F3444
/* 805F343C  38 60 00 00 */	li r3, 0
/* 805F3440  48 00 01 00 */	b lbl_805F3540
lbl_805F3444:
/* 805F3444  3B 20 00 00 */	li r25, 0
/* 805F3448  3B A0 00 00 */	li r29, 0
/* 805F344C  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F3450  3B 63 43 88 */	addi r27, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F3454  3F 80 11 00 */	lis r28, 0x1100
/* 805F3458  3C 60 80 5F */	lis r3, lit_3774@ha /* 0x805F4188@ha */
/* 805F345C  C3 E3 41 88 */	lfs f31, lit_3774@l(r3)  /* 0x805F4188@l */
lbl_805F3460:
/* 805F3460  7F 63 DB 78 */	mr r3, r27
/* 805F3464  38 80 00 22 */	li r4, 0x22
/* 805F3468  7F C5 F3 78 */	mr r5, r30
/* 805F346C  38 C0 00 80 */	li r6, 0x80
/* 805F3470  4B A4 8E 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F3474  7C 7A 1B 78 */	mr r26, r3
/* 805F3478  3C 80 00 08 */	lis r4, 8
/* 805F347C  38 BC 02 84 */	addi r5, r28, 0x284
/* 805F3480  4B A2 17 D5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805F3484  7C 9F EA 14 */	add r4, r31, r29
/* 805F3488  90 64 06 F8 */	stw r3, 0x6f8(r4)
/* 805F348C  80 04 06 F8 */	lwz r0, 0x6f8(r4)
/* 805F3490  28 00 00 00 */	cmplwi r0, 0
/* 805F3494  40 82 00 0C */	bne lbl_805F34A0
/* 805F3498  38 60 00 00 */	li r3, 0
/* 805F349C  48 00 00 A4 */	b lbl_805F3540
lbl_805F34A0:
/* 805F34A0  D3 E4 07 0C */	stfs f31, 0x70c(r4)
/* 805F34A4  3B 39 00 01 */	addi r25, r25, 1
/* 805F34A8  2C 19 00 04 */	cmpwi r25, 4
/* 805F34AC  3B BD 00 04 */	addi r29, r29, 4
/* 805F34B0  41 80 FF B0 */	blt lbl_805F3460
/* 805F34B4  38 60 00 18 */	li r3, 0x18
/* 805F34B8  4B CD B7 95 */	bl __nw__FUl
/* 805F34BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 805F34C0  41 82 00 20 */	beq lbl_805F34E0
/* 805F34C4  3C 80 80 5F */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805F4764@ha */
/* 805F34C8  38 04 47 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805F4764@l */
/* 805F34CC  90 1D 00 00 */	stw r0, 0(r29)
/* 805F34D0  38 80 00 00 */	li r4, 0
/* 805F34D4  4B D3 4F 29 */	bl init__12J3DFrameCtrlFs
/* 805F34D8  38 00 00 00 */	li r0, 0
/* 805F34DC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_805F34E0:
/* 805F34E0  93 BF 07 08 */	stw r29, 0x708(r31)
/* 805F34E4  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 805F34E8  28 00 00 00 */	cmplwi r0, 0
/* 805F34EC  40 82 00 0C */	bne lbl_805F34F8
/* 805F34F0  38 60 00 00 */	li r3, 0
/* 805F34F4  48 00 00 4C */	b lbl_805F3540
lbl_805F34F8:
/* 805F34F8  3C 60 80 5F */	lis r3, d_a_b_gm__stringBase0@ha /* 0x805F4388@ha */
/* 805F34FC  38 63 43 88 */	addi r3, r3, d_a_b_gm__stringBase0@l /* 0x805F4388@l */
/* 805F3500  38 80 00 2A */	li r4, 0x2a
/* 805F3504  7F C5 F3 78 */	mr r5, r30
/* 805F3508  38 C0 00 80 */	li r6, 0x80
/* 805F350C  4B A4 8D E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F3510  7C 65 1B 78 */	mr r5, r3
/* 805F3514  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 805F3518  38 9A 00 58 */	addi r4, r26, 0x58
/* 805F351C  38 C0 00 01 */	li r6, 1
/* 805F3520  38 E0 00 02 */	li r7, 2
/* 805F3524  3D 00 80 5F */	lis r8, lit_3774@ha /* 0x805F4188@ha */
/* 805F3528  C0 28 41 88 */	lfs f1, lit_3774@l(r8)  /* 0x805F4188@l */
/* 805F352C  39 00 00 00 */	li r8, 0
/* 805F3530  39 20 FF FF */	li r9, -1
/* 805F3534  4B A1 A1 09 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805F3538  30 03 FF FF */	addic r0, r3, -1
/* 805F353C  7C 60 19 10 */	subfe r3, r0, r3
lbl_805F3540:
/* 805F3540  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805F3544  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805F3548  39 61 00 40 */	addi r11, r1, 0x40
/* 805F354C  4B D6 EC CD */	bl _restgpr_25
/* 805F3550  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F3554  7C 08 03 A6 */	mtlr r0
/* 805F3558  38 21 00 50 */	addi r1, r1, 0x50
/* 805F355C  4E 80 00 20 */	blr 
