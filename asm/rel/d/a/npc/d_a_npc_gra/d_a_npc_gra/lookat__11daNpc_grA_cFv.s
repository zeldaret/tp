lbl_809C3094:
/* 809C3094  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 809C3098  7C 08 02 A6 */	mflr r0
/* 809C309C  90 01 01 04 */	stw r0, 0x104(r1)
/* 809C30A0  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 809C30A4  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 809C30A8  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 809C30AC  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 809C30B0  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 809C30B4  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 809C30B8  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 809C30BC  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 809C30C0  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 809C30C4  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 809C30C8  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 809C30CC  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 809C30D0  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 809C30D4  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 809C30D8  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 809C30DC  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 809C30E0  39 61 00 80 */	addi r11, r1, 0x80
/* 809C30E4  4B 99 F0 F1 */	bl _savegpr_27
/* 809C30E8  7C 7B 1B 78 */	mr r27, r3
/* 809C30EC  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C30F0  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C30F4  38 60 00 00 */	li r3, 0
/* 809C30F8  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809C30FC  83 C4 00 04 */	lwz r30, 4(r4)
/* 809C3100  3B A0 00 00 */	li r29, 0
/* 809C3104  38 9F 00 00 */	addi r4, r31, 0
/* 809C3108  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809C310C  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809C3110  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809C3114  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809C3118  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809C311C  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809C3120  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809C3124  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809C3128  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809C312C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809C3130  7C 04 00 50 */	subf r0, r4, r0
/* 809C3134  7C 1C 07 34 */	extsh r28, r0
/* 809C3138  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809C313C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809C3140  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809C3144  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809C3148  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809C314C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809C3150  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809C3154  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809C3158  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809C315C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809C3160  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809C3164  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809C3168  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809C316C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809C3170  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809C3174  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809C3178  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809C317C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809C3180  80 9F 06 74 */	lwz r4, 0x674(r31)
/* 809C3184  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 809C3188  90 81 00 30 */	stw r4, 0x30(r1)
/* 809C318C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C3190  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 809C3194  90 01 00 38 */	stw r0, 0x38(r1)
/* 809C3198  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809C319C  90 01 00 30 */	stw r0, 0x30(r1)
/* 809C31A0  38 1B 09 20 */	addi r0, r27, 0x920
/* 809C31A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C31A8  38 1B 09 26 */	addi r0, r27, 0x926
/* 809C31AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 809C31B0  A8 1B 14 70 */	lha r0, 0x1470(r27)
/* 809C31B4  2C 00 00 04 */	cmpwi r0, 4
/* 809C31B8  41 82 00 5C */	beq lbl_809C3214
/* 809C31BC  40 80 00 14 */	bge lbl_809C31D0
/* 809C31C0  2C 00 00 01 */	cmpwi r0, 1
/* 809C31C4  41 82 00 20 */	beq lbl_809C31E4
/* 809C31C8  40 80 00 24 */	bge lbl_809C31EC
/* 809C31CC  48 00 00 48 */	b lbl_809C3214
lbl_809C31D0:
/* 809C31D0  2C 00 00 09 */	cmpwi r0, 9
/* 809C31D4  40 80 00 40 */	bge lbl_809C3214
/* 809C31D8  2C 00 00 06 */	cmpwi r0, 6
/* 809C31DC  40 80 00 38 */	bge lbl_809C3214
/* 809C31E0  48 00 00 2C */	b lbl_809C320C
lbl_809C31E4:
/* 809C31E4  3B A0 00 01 */	li r29, 1
/* 809C31E8  48 00 00 2C */	b lbl_809C3214
lbl_809C31EC:
/* 809C31EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C31F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C31F4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809C31F8  2C 00 00 03 */	cmpwi r0, 3
/* 809C31FC  40 82 00 18 */	bne lbl_809C3214
/* 809C3200  C3 3F 00 DC */	lfs f25, 0xdc(r31)
/* 809C3204  C3 1F 06 80 */	lfs f24, 0x680(r31)
/* 809C3208  48 00 00 0C */	b lbl_809C3214
lbl_809C320C:
/* 809C320C  38 7B 0C 8C */	addi r3, r27, 0xc8c
/* 809C3210  4B 78 D4 DD */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_809C3214:
/* 809C3214  28 03 00 00 */	cmplwi r3, 0
/* 809C3218  41 82 00 54 */	beq lbl_809C326C
/* 809C321C  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809C3220  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809C3224  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809C3228  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809C322C  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809C3230  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809C3234  A8 1B 14 70 */	lha r0, 0x1470(r27)
/* 809C3238  2C 00 00 02 */	cmpwi r0, 2
/* 809C323C  41 82 00 24 */	beq lbl_809C3260
/* 809C3240  2C 00 00 03 */	cmpwi r0, 3
/* 809C3244  41 82 00 1C */	beq lbl_809C3260
/* 809C3248  2C 00 00 04 */	cmpwi r0, 4
/* 809C324C  41 82 00 14 */	beq lbl_809C3260
/* 809C3250  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809C3254  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 809C3258  EC 01 00 28 */	fsubs f0, f1, f0
/* 809C325C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809C3260:
/* 809C3260  38 1B 08 78 */	addi r0, r27, 0x878
/* 809C3264  90 1B 0C 10 */	stw r0, 0xc10(r27)
/* 809C3268  48 00 01 04 */	b lbl_809C336C
lbl_809C326C:
/* 809C326C  A8 1B 14 70 */	lha r0, 0x1470(r27)
/* 809C3270  2C 00 00 06 */	cmpwi r0, 6
/* 809C3274  40 82 00 38 */	bne lbl_809C32AC
/* 809C3278  C0 1B 14 A0 */	lfs f0, 0x14a0(r27)
/* 809C327C  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809C3280  C0 1B 14 A4 */	lfs f0, 0x14a4(r27)
/* 809C3284  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809C3288  C0 1B 14 A8 */	lfs f0, 0x14a8(r27)
/* 809C328C  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809C3290  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809C3294  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 809C3298  EC 01 00 2A */	fadds f0, f1, f0
/* 809C329C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809C32A0  38 1B 08 78 */	addi r0, r27, 0x878
/* 809C32A4  90 1B 0C 10 */	stw r0, 0xc10(r27)
/* 809C32A8  48 00 00 C4 */	b lbl_809C336C
lbl_809C32AC:
/* 809C32AC  2C 00 00 07 */	cmpwi r0, 7
/* 809C32B0  40 82 00 58 */	bne lbl_809C3308
/* 809C32B4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C32B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809C32BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809C32C0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 809C32C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809C32C8  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 809C32CC  80 63 00 04 */	lwz r3, 4(r3)
/* 809C32D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C32D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C32D8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809C32DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C32E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C32E4  4B 98 31 CD */	bl PSMTXCopy
/* 809C32E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C32EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C32F0  38 81 00 24 */	addi r4, r1, 0x24
/* 809C32F4  38 BB 08 78 */	addi r5, r27, 0x878
/* 809C32F8  4B 98 3A 75 */	bl PSMTXMultVec
/* 809C32FC  38 1B 08 78 */	addi r0, r27, 0x878
/* 809C3300  90 1B 0C 10 */	stw r0, 0xc10(r27)
/* 809C3304  48 00 00 68 */	b lbl_809C336C
lbl_809C3308:
/* 809C3308  2C 00 00 08 */	cmpwi r0, 8
/* 809C330C  40 82 00 58 */	bne lbl_809C3364
/* 809C3310  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C3314  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809C3318  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809C331C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 809C3320  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809C3324  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 809C3328  80 63 00 04 */	lwz r3, 4(r3)
/* 809C332C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C3330  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C3334  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809C3338  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C333C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C3340  4B 98 31 71 */	bl PSMTXCopy
/* 809C3344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C3348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C334C  38 81 00 18 */	addi r4, r1, 0x18
/* 809C3350  38 BB 08 78 */	addi r5, r27, 0x878
/* 809C3354  4B 98 3A 19 */	bl PSMTXMultVec
/* 809C3358  38 1B 08 78 */	addi r0, r27, 0x878
/* 809C335C  90 1B 0C 10 */	stw r0, 0xc10(r27)
/* 809C3360  48 00 00 0C */	b lbl_809C336C
lbl_809C3364:
/* 809C3364  38 00 00 00 */	li r0, 0
/* 809C3368  90 1B 0C 10 */	stw r0, 0xc10(r27)
lbl_809C336C:
/* 809C336C  D3 61 00 08 */	stfs f27, 8(r1)
/* 809C3370  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809C3374  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809C3378  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809C337C  38 7B 0B E0 */	addi r3, r27, 0xbe0
/* 809C3380  FC 20 F8 90 */	fmr f1, f31
/* 809C3384  FC 40 F0 90 */	fmr f2, f30
/* 809C3388  FC 60 E8 90 */	fmr f3, f29
/* 809C338C  FC 80 E0 90 */	fmr f4, f28
/* 809C3390  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 809C3394  FC C0 28 90 */	fmr f6, f5
/* 809C3398  FC E0 28 90 */	fmr f7, f5
/* 809C339C  FD 00 28 90 */	fmr f8, f5
/* 809C33A0  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809C33A4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 809C33A8  4B 78 DD 11 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809C33AC  38 7B 0B E0 */	addi r3, r27, 0xbe0
/* 809C33B0  7F 64 DB 78 */	mr r4, r27
/* 809C33B4  38 BE 00 24 */	addi r5, r30, 0x24
/* 809C33B8  38 C1 00 30 */	addi r6, r1, 0x30
/* 809C33BC  7F A7 EB 78 */	mr r7, r29
/* 809C33C0  7F 88 E3 78 */	mr r8, r28
/* 809C33C4  39 20 00 00 */	li r9, 0
/* 809C33C8  4B 78 DF 89 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809C33CC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 809C33D0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 809C33D4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 809C33D8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 809C33DC  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 809C33E0  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 809C33E4  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 809C33E8  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 809C33EC  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 809C33F0  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 809C33F4  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 809C33F8  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 809C33FC  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 809C3400  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 809C3404  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 809C3408  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 809C340C  39 61 00 80 */	addi r11, r1, 0x80
/* 809C3410  4B 99 EE 11 */	bl _restgpr_27
/* 809C3414  80 01 01 04 */	lwz r0, 0x104(r1)
/* 809C3418  7C 08 03 A6 */	mtlr r0
/* 809C341C  38 21 01 00 */	addi r1, r1, 0x100
/* 809C3420  4E 80 00 20 */	blr 
