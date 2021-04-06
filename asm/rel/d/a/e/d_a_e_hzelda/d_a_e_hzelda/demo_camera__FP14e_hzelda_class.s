lbl_806F3084:
/* 806F3084  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806F3088  7C 08 02 A6 */	mflr r0
/* 806F308C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806F3090  39 61 00 60 */	addi r11, r1, 0x60
/* 806F3094  4B C6 F1 49 */	bl _savegpr_29
/* 806F3098  7C 7E 1B 78 */	mr r30, r3
/* 806F309C  3C 80 80 6F */	lis r4, lit_3767@ha /* 0x806F5514@ha */
/* 806F30A0  3B E4 55 14 */	addi r31, r4, lit_3767@l /* 0x806F5514@l */
/* 806F30A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F30A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F30AC  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 806F30B0  7C 00 07 74 */	extsb r0, r0
/* 806F30B4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806F30B8  7C 84 02 14 */	add r4, r4, r0
/* 806F30BC  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 806F30C0  A8 03 14 40 */	lha r0, 0x1440(r3)
/* 806F30C4  2C 00 00 01 */	cmpwi r0, 1
/* 806F30C8  41 82 00 18 */	beq lbl_806F30E0
/* 806F30CC  40 80 00 08 */	bge lbl_806F30D4
/* 806F30D0  48 00 02 40 */	b lbl_806F3310
lbl_806F30D4:
/* 806F30D4  2C 00 00 03 */	cmpwi r0, 3
/* 806F30D8  40 80 02 38 */	bge lbl_806F3310
/* 806F30DC  48 00 00 84 */	b lbl_806F3160
lbl_806F30E0:
/* 806F30E0  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 806F30E4  28 00 00 02 */	cmplwi r0, 2
/* 806F30E8  41 82 00 28 */	beq lbl_806F3110
/* 806F30EC  38 80 00 02 */	li r4, 2
/* 806F30F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806F30F4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806F30F8  38 C0 00 00 */	li r6, 0
/* 806F30FC  4B 92 88 0D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806F3100  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 806F3104  60 00 00 02 */	ori r0, r0, 2
/* 806F3108  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 806F310C  48 00 02 64 */	b lbl_806F3370
lbl_806F3110:
/* 806F3110  38 7D 02 48 */	addi r3, r29, 0x248
/* 806F3114  4B A6 E3 BD */	bl Stop__9dCamera_cFv
/* 806F3118  38 00 00 02 */	li r0, 2
/* 806F311C  B0 1E 14 40 */	sth r0, 0x1440(r30)
/* 806F3120  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 806F3124  D0 1E 14 5C */	stfs f0, 0x145c(r30)
/* 806F3128  38 00 00 00 */	li r0, 0
/* 806F312C  B0 1E 14 42 */	sth r0, 0x1442(r30)
/* 806F3130  38 7D 02 48 */	addi r3, r29, 0x248
/* 806F3134  38 80 00 03 */	li r4, 3
/* 806F3138  4B A6 FE D5 */	bl SetTrimSize__9dCamera_cFl
/* 806F313C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F3140  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806F3144  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806F3148  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806F314C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806F3150  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806F3154  38 00 00 00 */	li r0, 0
/* 806F3158  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806F315C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806F3160:
/* 806F3160  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3164  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3168  80 63 00 00 */	lwz r3, 0(r3)
/* 806F316C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 806F3170  4B 91 92 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 806F3174  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806F3178  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F317C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806F3180  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 806F3184  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806F3188  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F318C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806F3190  EC 02 08 2A */	fadds f0, f2, f1
/* 806F3194  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F3198  A8 7E 14 42 */	lha r3, 0x1442(r30)
/* 806F319C  7C 60 07 35 */	extsh. r0, r3
/* 806F31A0  40 82 00 6C */	bne lbl_806F320C
/* 806F31A4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806F31A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F31AC  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806F31B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F31B4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806F31B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806F31BC  38 61 00 38 */	addi r3, r1, 0x38
/* 806F31C0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F31C4  4B B7 DD 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F31C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F31CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806F31D0  7C 65 1B 78 */	mr r5, r3
/* 806F31D4  4B C5 3E BD */	bl PSVECAdd
/* 806F31D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806F31DC  D0 1E 14 44 */	stfs f0, 0x1444(r30)
/* 806F31E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806F31E4  D0 1E 14 48 */	stfs f0, 0x1448(r30)
/* 806F31E8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806F31EC  D0 1E 14 4C */	stfs f0, 0x144c(r30)
/* 806F31F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806F31F4  D0 1E 14 50 */	stfs f0, 0x1450(r30)
/* 806F31F8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806F31FC  D0 1E 14 54 */	stfs f0, 0x1454(r30)
/* 806F3200  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806F3204  D0 1E 14 58 */	stfs f0, 0x1458(r30)
/* 806F3208  48 00 00 AC */	b lbl_806F32B4
lbl_806F320C:
/* 806F320C  2C 03 00 3C */	cmpwi r3, 0x3c
/* 806F3210  40 82 00 54 */	bne lbl_806F3264
/* 806F3214  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806F3218  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F321C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 806F3220  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F3224  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806F3228  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806F322C  38 61 00 38 */	addi r3, r1, 0x38
/* 806F3230  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F3234  4B B7 DC B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3238  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F323C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806F3240  7C 65 1B 78 */	mr r5, r3
/* 806F3244  4B C5 3E 4D */	bl PSVECAdd
/* 806F3248  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806F324C  D0 1E 14 44 */	stfs f0, 0x1444(r30)
/* 806F3250  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806F3254  D0 1E 14 48 */	stfs f0, 0x1448(r30)
/* 806F3258  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806F325C  D0 1E 14 4C */	stfs f0, 0x144c(r30)
/* 806F3260  48 00 00 54 */	b lbl_806F32B4
lbl_806F3264:
/* 806F3264  2C 03 00 A0 */	cmpwi r3, 0xa0
/* 806F3268  40 82 00 4C */	bne lbl_806F32B4
/* 806F326C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806F3270  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F3274  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806F3278  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F327C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806F3280  38 61 00 38 */	addi r3, r1, 0x38
/* 806F3284  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F3288  4B B7 DC 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F328C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F3290  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806F3294  7C 65 1B 78 */	mr r5, r3
/* 806F3298  4B C5 3D F9 */	bl PSVECAdd
/* 806F329C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806F32A0  D0 1E 14 44 */	stfs f0, 0x1444(r30)
/* 806F32A4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806F32A8  D0 1E 14 48 */	stfs f0, 0x1448(r30)
/* 806F32AC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806F32B0  D0 1E 14 4C */	stfs f0, 0x144c(r30)
lbl_806F32B4:
/* 806F32B4  38 7E 14 54 */	addi r3, r30, 0x1454
/* 806F32B8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 806F32BC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 806F32C0  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 806F32C4  4B B7 C7 79 */	bl cLib_addCalc2__FPffff
/* 806F32C8  A8 1E 14 42 */	lha r0, 0x1442(r30)
/* 806F32CC  2C 00 00 DC */	cmpwi r0, 0xdc
/* 806F32D0  40 82 00 14 */	bne lbl_806F32E4
/* 806F32D4  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 806F32D8  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 806F32DC  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 806F32E0  4B 91 4C F9 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_806F32E4:
/* 806F32E4  A8 1E 14 42 */	lha r0, 0x1442(r30)
/* 806F32E8  2C 00 01 18 */	cmpwi r0, 0x118
/* 806F32EC  40 82 00 24 */	bne lbl_806F3310
/* 806F32F0  38 60 00 01 */	li r3, 1
/* 806F32F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F32F8  38 80 00 00 */	li r4, 0
/* 806F32FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F3300  7C 05 07 74 */	extsb r5, r0
/* 806F3304  38 C0 00 00 */	li r6, 0
/* 806F3308  38 E0 FF FF */	li r7, -1
/* 806F330C  4B 93 3E 65 */	bl dStage_changeScene__FifUlScsi
lbl_806F3310:
/* 806F3310  A8 1E 14 40 */	lha r0, 0x1440(r30)
/* 806F3314  2C 00 00 00 */	cmpwi r0, 0
/* 806F3318  41 82 00 58 */	beq lbl_806F3370
/* 806F331C  C0 1E 14 50 */	lfs f0, 0x1450(r30)
/* 806F3320  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806F3324  C0 1E 14 54 */	lfs f0, 0x1454(r30)
/* 806F3328  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F332C  C0 1E 14 58 */	lfs f0, 0x1458(r30)
/* 806F3330  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F3334  C0 1E 14 44 */	lfs f0, 0x1444(r30)
/* 806F3338  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F333C  C0 1E 14 48 */	lfs f0, 0x1448(r30)
/* 806F3340  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806F3344  C0 1E 14 4C */	lfs f0, 0x144c(r30)
/* 806F3348  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806F334C  38 7D 02 48 */	addi r3, r29, 0x248
/* 806F3350  38 81 00 14 */	addi r4, r1, 0x14
/* 806F3354  38 A1 00 08 */	addi r5, r1, 8
/* 806F3358  C0 3E 14 5C */	lfs f1, 0x145c(r30)
/* 806F335C  38 C0 00 00 */	li r6, 0
/* 806F3360  4B A8 D7 81 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 806F3364  A8 7E 14 42 */	lha r3, 0x1442(r30)
/* 806F3368  38 03 00 01 */	addi r0, r3, 1
/* 806F336C  B0 1E 14 42 */	sth r0, 0x1442(r30)
lbl_806F3370:
/* 806F3370  39 61 00 60 */	addi r11, r1, 0x60
/* 806F3374  4B C6 EE B5 */	bl _restgpr_29
/* 806F3378  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806F337C  7C 08 03 A6 */	mtlr r0
/* 806F3380  38 21 00 60 */	addi r1, r1, 0x60
/* 806F3384  4E 80 00 20 */	blr 
