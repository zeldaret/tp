lbl_807B300C:
/* 807B300C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807B3010  7C 08 02 A6 */	mflr r0
/* 807B3014  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B3018  39 61 00 40 */	addi r11, r1, 0x40
/* 807B301C  4B BA F1 B5 */	bl _savegpr_26
/* 807B3020  7C 7F 1B 78 */	mr r31, r3
/* 807B3024  3C 60 80 7B */	lis r3, lit_3906@ha /* 0x807B449C@ha */
/* 807B3028  3B A3 44 9C */	addi r29, r3, lit_3906@l /* 0x807B449C@l */
/* 807B302C  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807B3030  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l /* 0x80450C98@l */
/* 807B3034  88 64 00 00 */	lbz r3, 0(r4)
/* 807B3038  28 03 00 00 */	cmplwi r3, 0
/* 807B303C  41 82 00 0C */	beq lbl_807B3048
/* 807B3040  38 03 FF FF */	addi r0, r3, -1
/* 807B3044  98 04 00 00 */	stb r0, 0(r4)
lbl_807B3048:
/* 807B3048  A8 7F 06 84 */	lha r3, 0x684(r31)
/* 807B304C  38 03 00 01 */	addi r0, r3, 1
/* 807B3050  B0 1F 06 84 */	sth r0, 0x684(r31)
/* 807B3054  38 60 00 00 */	li r3, 0
/* 807B3058  38 00 00 04 */	li r0, 4
/* 807B305C  7C 09 03 A6 */	mtctr r0
lbl_807B3060:
/* 807B3060  38 A3 06 9C */	addi r5, r3, 0x69c
/* 807B3064  7C 9F 2A AE */	lhax r4, r31, r5
/* 807B3068  2C 04 00 00 */	cmpwi r4, 0
/* 807B306C  41 82 00 0C */	beq lbl_807B3078
/* 807B3070  38 04 FF FF */	addi r0, r4, -1
/* 807B3074  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807B3078:
/* 807B3078  38 63 00 02 */	addi r3, r3, 2
/* 807B307C  42 00 FF E4 */	bdnz lbl_807B3060
/* 807B3080  A8 7F 06 A4 */	lha r3, 0x6a4(r31)
/* 807B3084  2C 03 00 00 */	cmpwi r3, 0
/* 807B3088  41 82 00 0C */	beq lbl_807B3094
/* 807B308C  38 03 FF FF */	addi r0, r3, -1
/* 807B3090  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
lbl_807B3094:
/* 807B3094  A8 7F 06 A6 */	lha r3, 0x6a6(r31)
/* 807B3098  2C 03 00 00 */	cmpwi r3, 0
/* 807B309C  41 82 00 0C */	beq lbl_807B30A8
/* 807B30A0  38 03 FF FF */	addi r0, r3, -1
/* 807B30A4  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
lbl_807B30A8:
/* 807B30A8  7F E3 FB 78 */	mr r3, r31
/* 807B30AC  4B FF EA CD */	bl action__FP10e_th_class
/* 807B30B0  38 7F 07 34 */	addi r3, r31, 0x734
/* 807B30B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B30B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B30BC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807B30C0  4B 8C 39 ED */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807B30C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807B30C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807B30CC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807B30D0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807B30D4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807B30D8  4B B9 38 11 */	bl PSMTXTrans
/* 807B30DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807B30E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807B30E4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807B30E8  4B 85 93 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 807B30EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807B30F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807B30F4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807B30F8  4B 85 92 A5 */	bl mDoMtx_XrotM__FPA4_fs
/* 807B30FC  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B4880@ha */
/* 807B3100  3B C3 48 80 */	addi r30, r3, l_HIO@l /* 0x807B4880@l */
/* 807B3104  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807B3108  FC 40 08 90 */	fmr f2, f1
/* 807B310C  FC 60 08 90 */	fmr f3, f1
/* 807B3110  4B 85 9D 29 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807B3114  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 807B3118  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807B311C  FC 60 08 90 */	fmr f3, f1
/* 807B3120  4B 85 9C 7D */	bl transM__14mDoMtx_stack_cFfff
/* 807B3124  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B3128  83 83 00 04 */	lwz r28, 4(r3)
/* 807B312C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807B3130  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807B3134  38 9C 00 24 */	addi r4, r28, 0x24
/* 807B3138  4B B9 33 79 */	bl PSMTXCopy
/* 807B313C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807B3140  7C 03 07 74 */	extsb r3, r0
/* 807B3144  4B 87 9F 29 */	bl dComIfGp_getReverb__Fi
/* 807B3148  7C 65 1B 78 */	mr r5, r3
/* 807B314C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B3150  38 80 00 00 */	li r4, 0
/* 807B3154  4B 85 DF 5D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807B3158  7F E3 FB 78 */	mr r3, r31
/* 807B315C  4B FF FC 91 */	bl anm_se_set__FP10e_th_class
/* 807B3160  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B3164  4B 85 E0 89 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807B3168  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807B316C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B3170  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807B3174  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B3178  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B317C  80 84 00 00 */	lwz r4, 0(r4)
/* 807B3180  4B B9 33 31 */	bl PSMTXCopy
/* 807B3184  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B3188  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B318C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B3190  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B3194  38 61 00 14 */	addi r3, r1, 0x14
/* 807B3198  38 9F 0D 14 */	addi r4, r31, 0xd14
/* 807B319C  4B AB DD 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B31A0  38 7F 0A 6C */	addi r3, r31, 0xa6c
/* 807B31A4  38 9F 0D 14 */	addi r4, r31, 0xd14
/* 807B31A8  4B AB C4 A1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807B31AC  38 7F 0A 6C */	addi r3, r31, 0xa6c
/* 807B31B0  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 807B31B4  4B AB C5 55 */	bl SetR__8cM3dGSphFf
/* 807B31B8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807B31BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B31C0  38 63 00 30 */	addi r3, r3, 0x30
/* 807B31C4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B31C8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B31CC  80 84 00 00 */	lwz r4, 0(r4)
/* 807B31D0  4B B9 32 E1 */	bl PSMTXCopy
/* 807B31D4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B31D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B31DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B31E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B31E4  38 61 00 14 */	addi r3, r1, 0x14
/* 807B31E8  38 81 00 08 */	addi r4, r1, 8
/* 807B31EC  4B AB DD 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B31F0  38 7F 0B A4 */	addi r3, r31, 0xba4
/* 807B31F4  38 81 00 08 */	addi r4, r1, 8
/* 807B31F8  4B AB C4 51 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807B31FC  38 7F 0B A4 */	addi r3, r31, 0xba4
/* 807B3200  C0 3D 00 7C */	lfs f1, 0x7c(r29)
/* 807B3204  4B AB C5 05 */	bl SetR__8cM3dGSphFf
/* 807B3208  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807B320C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B3210  38 63 00 60 */	addi r3, r3, 0x60
/* 807B3214  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B3218  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B321C  80 84 00 00 */	lwz r4, 0(r4)
/* 807B3220  4B B9 32 91 */	bl PSMTXCopy
/* 807B3224  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B3228  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B322C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B3230  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B3234  38 61 00 14 */	addi r3, r1, 0x14
/* 807B3238  38 81 00 08 */	addi r4, r1, 8
/* 807B323C  4B AB DC B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B3240  38 7F 0C DC */	addi r3, r31, 0xcdc
/* 807B3244  38 81 00 08 */	addi r4, r1, 8
/* 807B3248  4B AB C4 01 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807B324C  38 7F 0C DC */	addi r3, r31, 0xcdc
/* 807B3250  C0 3D 01 88 */	lfs f1, 0x188(r29)
/* 807B3254  4B AB C4 B5 */	bl SetR__8cM3dGSphFf
/* 807B3258  38 00 00 00 */	li r0, 0
/* 807B325C  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 807B3260  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807B3264  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807B3268  7C 03 00 50 */	subf r0, r3, r0
/* 807B326C  7C 03 07 34 */	extsh r3, r0
/* 807B3270  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 807B3274  2C 00 00 14 */	cmpwi r0, 0x14
/* 807B3278  41 82 00 38 */	beq lbl_807B32B0
/* 807B327C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807B3280  40 80 00 30 */	bge lbl_807B32B0
/* 807B3284  2C 03 C0 00 */	cmpwi r3, -16384
/* 807B3288  40 81 00 28 */	ble lbl_807B32B0
/* 807B328C  C0 1F 0D 14 */	lfs f0, 0xd14(r31)
/* 807B3290  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807B3294  C0 1F 0D 18 */	lfs f0, 0xd18(r31)
/* 807B3298  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807B329C  C0 1F 0D 1C */	lfs f0, 0xd1c(r31)
/* 807B32A0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807B32A4  38 00 00 01 */	li r0, 1
/* 807B32A8  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 807B32AC  48 00 00 D4 */	b lbl_807B3380
lbl_807B32B0:
/* 807B32B0  A8 1F 06 A4 */	lha r0, 0x6a4(r31)
/* 807B32B4  2C 00 00 00 */	cmpwi r0, 0
/* 807B32B8  41 82 00 48 */	beq lbl_807B3300
/* 807B32BC  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 807B32C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B32C4  C0 1D 01 90 */	lfs f0, 0x190(r29)
/* 807B32C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807B32CC  C0 1D 01 94 */	lfs f0, 0x194(r29)
/* 807B32D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B32D4  3B 40 00 00 */	li r26, 0
/* 807B32D8  3B 60 00 00 */	li r27, 0
lbl_807B32DC:
/* 807B32DC  38 7B 0A 6C */	addi r3, r27, 0xa6c
/* 807B32E0  7C 7F 1A 14 */	add r3, r31, r3
/* 807B32E4  38 81 00 08 */	addi r4, r1, 8
/* 807B32E8  4B AB C3 61 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807B32EC  3B 5A 00 01 */	addi r26, r26, 1
/* 807B32F0  2C 1A 00 02 */	cmpwi r26, 2
/* 807B32F4  3B 7B 01 38 */	addi r27, r27, 0x138
/* 807B32F8  40 81 FF E4 */	ble lbl_807B32DC
/* 807B32FC  48 00 00 84 */	b lbl_807B3380
lbl_807B3300:
/* 807B3300  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807B3304  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B3308  38 63 05 10 */	addi r3, r3, 0x510
/* 807B330C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B3310  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B3314  80 84 00 00 */	lwz r4, 0(r4)
/* 807B3318  4B B9 31 99 */	bl PSMTXCopy
/* 807B331C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B3320  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B3324  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B3328  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B332C  38 61 00 14 */	addi r3, r1, 0x14
/* 807B3330  38 9F 0D 20 */	addi r4, r31, 0xd20
/* 807B3334  4B AB DB B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B3338  C0 1F 0D 20 */	lfs f0, 0xd20(r31)
/* 807B333C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807B3340  C0 1F 0D 24 */	lfs f0, 0xd24(r31)
/* 807B3344  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807B3348  C0 1F 0D 28 */	lfs f0, 0xd28(r31)
/* 807B334C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807B3350  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 807B3354  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B3358  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 807B335C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B3360  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B3364  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B3368  38 61 00 14 */	addi r3, r1, 0x14
/* 807B336C  38 81 00 08 */	addi r4, r1, 8
/* 807B3370  4B AB DB 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B3374  38 7F 0B A4 */	addi r3, r31, 0xba4
/* 807B3378  38 81 00 08 */	addi r4, r1, 8
/* 807B337C  4B AB C2 CD */	bl SetC__8cM3dGSphFRC4cXyz
lbl_807B3380:
/* 807B3380  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807B3384  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807B3388  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807B338C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807B3390  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807B3394  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807B3398  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 807B339C  C0 3D 01 98 */	lfs f1, 0x198(r29)
/* 807B33A0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807B33A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B33A8  EC 02 00 2A */	fadds f0, f2, f0
/* 807B33AC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807B33B0  3B C0 00 00 */	li r30, 0
/* 807B33B4  3B 60 00 00 */	li r27, 0
/* 807B33B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B33BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B33C0  3B 43 23 3C */	addi r26, r3, 0x233c
lbl_807B33C4:
/* 807B33C4  88 1F 06 EA */	lbz r0, 0x6ea(r31)
/* 807B33C8  7C 00 07 75 */	extsb. r0, r0
/* 807B33CC  41 82 00 20 */	beq lbl_807B33EC
/* 807B33D0  7C 7F DA 14 */	add r3, r31, r27
/* 807B33D4  80 03 09 E4 */	lwz r0, 0x9e4(r3)
/* 807B33D8  60 00 00 01 */	ori r0, r0, 1
/* 807B33DC  90 03 09 E4 */	stw r0, 0x9e4(r3)
/* 807B33E0  38 00 00 02 */	li r0, 2
/* 807B33E4  98 03 0A 02 */	stb r0, 0xa02(r3)
/* 807B33E8  48 00 00 1C */	b lbl_807B3404
lbl_807B33EC:
/* 807B33EC  7C 7F DA 14 */	add r3, r31, r27
/* 807B33F0  80 03 09 E4 */	lwz r0, 0x9e4(r3)
/* 807B33F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807B33F8  90 03 09 E4 */	stw r0, 0x9e4(r3)
/* 807B33FC  38 00 00 00 */	li r0, 0
/* 807B3400  98 03 0A 02 */	stb r0, 0xa02(r3)
lbl_807B3404:
/* 807B3404  7F 43 D3 78 */	mr r3, r26
/* 807B3408  38 9B 09 48 */	addi r4, r27, 0x948
/* 807B340C  7C 9F 22 14 */	add r4, r31, r4
/* 807B3410  4B AB 17 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 807B3414  3B DE 00 01 */	addi r30, r30, 1
/* 807B3418  2C 1E 00 02 */	cmpwi r30, 2
/* 807B341C  3B 7B 01 38 */	addi r27, r27, 0x138
/* 807B3420  40 81 FF A4 */	ble lbl_807B33C4
/* 807B3424  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807B3428  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B342C  38 63 02 40 */	addi r3, r3, 0x240
/* 807B3430  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B3434  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B3438  80 84 00 00 */	lwz r4, 0(r4)
/* 807B343C  4B B9 30 75 */	bl PSMTXCopy
/* 807B3440  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 807B3444  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B3448  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 807B344C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B3450  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B3454  38 61 00 14 */	addi r3, r1, 0x14
/* 807B3458  38 9F 06 A8 */	addi r4, r31, 0x6a8
/* 807B345C  4B AB DA 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B3460  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 807B3464  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B3468  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 807B346C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B3470  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 807B3474  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B3478  38 61 00 14 */	addi r3, r1, 0x14
/* 807B347C  38 9F 06 B4 */	addi r4, r31, 0x6b4
/* 807B3480  4B AB DA 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B3484  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807B3488  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B348C  38 63 03 30 */	addi r3, r3, 0x330
/* 807B3490  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B3494  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B3498  80 84 00 00 */	lwz r4, 0(r4)
/* 807B349C  4B B9 30 15 */	bl PSMTXCopy
/* 807B34A0  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 807B34A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B34A8  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 807B34AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B34B0  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 807B34B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B34B8  38 61 00 14 */	addi r3, r1, 0x14
/* 807B34BC  38 9F 06 C0 */	addi r4, r31, 0x6c0
/* 807B34C0  4B AB DA 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B34C4  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 807B34C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B34CC  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 807B34D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B34D4  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 807B34D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B34DC  38 61 00 14 */	addi r3, r1, 0x14
/* 807B34E0  38 9F 06 CC */	addi r4, r31, 0x6cc
/* 807B34E4  4B AB DA 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B34E8  7F E3 FB 78 */	mr r3, r31
/* 807B34EC  4B FF D5 81 */	bl ke_move__FP10e_th_class
/* 807B34F0  7F E3 FB 78 */	mr r3, r31
/* 807B34F4  4B FF EA A5 */	bl demo_camera__FP10e_th_class
/* 807B34F8  38 60 00 01 */	li r3, 1
/* 807B34FC  39 61 00 40 */	addi r11, r1, 0x40
/* 807B3500  4B BA ED 1D */	bl _restgpr_26
/* 807B3504  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807B3508  7C 08 03 A6 */	mtlr r0
/* 807B350C  38 21 00 40 */	addi r1, r1, 0x40
/* 807B3510  4E 80 00 20 */	blr 
