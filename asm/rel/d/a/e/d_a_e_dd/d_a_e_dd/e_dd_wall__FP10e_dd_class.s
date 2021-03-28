lbl_806A2F14:
/* 806A2F14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806A2F18  7C 08 02 A6 */	mflr r0
/* 806A2F1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 806A2F20  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806A2F24  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806A2F28  39 61 00 60 */	addi r11, r1, 0x60
/* 806A2F2C  4B CB F2 B0 */	b _savegpr_29
/* 806A2F30  7C 7E 1B 78 */	mr r30, r3
/* 806A2F34  3C 80 80 6A */	lis r4, lit_3903@ha
/* 806A2F38  3B E4 71 C4 */	addi r31, r4, lit_3903@l
/* 806A2F3C  80 83 05 C0 */	lwz r4, 0x5c0(r3)
/* 806A2F40  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806A2F44  FC 00 00 1E */	fctiwz f0, f0
/* 806A2F48  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A2F4C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 806A2F50  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806A2F54  A8 03 06 8C */	lha r0, 0x68c(r3)
/* 806A2F58  2C 00 00 64 */	cmpwi r0, 0x64
/* 806A2F5C  41 82 01 E4 */	beq lbl_806A3140
/* 806A2F60  40 80 00 1C */	bge lbl_806A2F7C
/* 806A2F64  2C 00 00 01 */	cmpwi r0, 1
/* 806A2F68  41 82 01 4C */	beq lbl_806A30B4
/* 806A2F6C  40 80 04 50 */	bge lbl_806A33BC
/* 806A2F70  2C 00 00 00 */	cmpwi r0, 0
/* 806A2F74  40 80 00 18 */	bge lbl_806A2F8C
/* 806A2F78  48 00 04 44 */	b lbl_806A33BC
lbl_806A2F7C:
/* 806A2F7C  2C 00 00 66 */	cmpwi r0, 0x66
/* 806A2F80  41 82 04 28 */	beq lbl_806A33A8
/* 806A2F84  40 80 04 38 */	bge lbl_806A33BC
/* 806A2F88  48 00 02 04 */	b lbl_806A318C
lbl_806A2F8C:
/* 806A2F8C  38 00 00 00 */	li r0, 0
/* 806A2F90  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 806A2F94  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A2F98  2C 00 00 00 */	cmpwi r0, 0
/* 806A2F9C  40 82 04 20 */	bne lbl_806A33BC
/* 806A2FA0  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 806A2FA4  28 00 00 00 */	cmplwi r0, 0
/* 806A2FA8  41 82 00 1C */	beq lbl_806A2FC4
/* 806A2FAC  4B FF FD 3D */	bl path_check__FP10e_dd_class
/* 806A2FB0  2C 03 00 00 */	cmpwi r3, 0
/* 806A2FB4  41 82 00 10 */	beq lbl_806A2FC4
/* 806A2FB8  38 00 00 64 */	li r0, 0x64
/* 806A2FBC  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A2FC0  48 00 03 FC */	b lbl_806A33BC
lbl_806A2FC4:
/* 806A2FC4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806A2FC8  4B BC 49 C4 */	b cM_rndFX__Ff
/* 806A2FCC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806A2FD0  EC 00 08 2A */	fadds f0, f0, f1
/* 806A2FD4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806A2FD8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806A2FDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806A2FE0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806A2FE4  4B BC 49 A8 */	b cM_rndFX__Ff
/* 806A2FE8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806A2FEC  EC 00 08 2A */	fadds f0, f0, f1
/* 806A2FF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A2FF4  38 61 00 18 */	addi r3, r1, 0x18
/* 806A2FF8  38 81 00 24 */	addi r4, r1, 0x24
/* 806A2FFC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A3000  4B BC 3B 34 */	b __mi__4cXyzCFRC3Vec
/* 806A3004  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806A3008  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806A300C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806A3010  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A3014  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806A3018  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806A301C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A3020  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A3024  80 63 00 00 */	lwz r3, 0(r3)
/* 806A3028  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806A302C  7C 00 00 D0 */	neg r0, r0
/* 806A3030  7C 04 07 34 */	extsh r4, r0
/* 806A3034  4B 96 93 10 */	b mDoMtx_XrotS__FPA4_fs
/* 806A3038  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A303C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A3040  80 63 00 00 */	lwz r3, 0(r3)
/* 806A3044  A8 1E 06 D8 */	lha r0, 0x6d8(r30)
/* 806A3048  7C 00 00 D0 */	neg r0, r0
/* 806A304C  7C 04 07 34 */	extsh r4, r0
/* 806A3050  4B 96 93 E4 */	b mDoMtx_YrotM__FPA4_fs
/* 806A3054  38 61 00 30 */	addi r3, r1, 0x30
/* 806A3058  38 81 00 24 */	addi r4, r1, 0x24
/* 806A305C  4B BC DE 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 806A3060  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 806A3064  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 806A3068  4B BC 46 0C */	b cM_atan2s__Fff
/* 806A306C  B0 7E 06 9C */	sth r3, 0x69c(r30)
/* 806A3070  7F C3 F3 78 */	mr r3, r30
/* 806A3074  38 80 00 16 */	li r4, 0x16
/* 806A3078  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A307C  38 A0 00 02 */	li r5, 2
/* 806A3080  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3084  4B FF F2 49 */	bl anm_init__FP10e_dd_classifUcf
/* 806A3088  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806A308C  4B BC 48 C8 */	b cM_rndF__Ff
/* 806A3090  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806A3094  EC 00 08 2A */	fadds f0, f0, f1
/* 806A3098  FC 00 00 1E */	fctiwz f0, f0
/* 806A309C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A30A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A30A4  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A30A8  38 00 00 01 */	li r0, 1
/* 806A30AC  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A30B0  48 00 03 0C */	b lbl_806A33BC
lbl_806A30B4:
/* 806A30B4  2C 1D 00 0C */	cmpwi r29, 0xc
/* 806A30B8  41 80 00 0C */	blt lbl_806A30C4
/* 806A30BC  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 806A30C0  40 81 00 14 */	ble lbl_806A30D4
lbl_806A30C4:
/* 806A30C4  2C 1D 00 02 */	cmpwi r29, 2
/* 806A30C8  40 81 00 0C */	ble lbl_806A30D4
/* 806A30CC  2C 1D 00 25 */	cmpwi r29, 0x25
/* 806A30D0  41 80 00 10 */	blt lbl_806A30E0
lbl_806A30D4:
/* 806A30D4  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A30D8  38 63 74 C8 */	addi r3, r3, l_HIO@l
/* 806A30DC  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_806A30E0:
/* 806A30E0  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A30E4  2C 00 00 00 */	cmpwi r0, 0
/* 806A30E8  40 82 02 D4 */	bne lbl_806A33BC
/* 806A30EC  2C 1D 00 07 */	cmpwi r29, 7
/* 806A30F0  41 82 00 0C */	beq lbl_806A30FC
/* 806A30F4  2C 1D 00 21 */	cmpwi r29, 0x21
/* 806A30F8  40 82 02 C4 */	bne lbl_806A33BC
lbl_806A30FC:
/* 806A30FC  38 00 00 00 */	li r0, 0
/* 806A3100  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3104  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806A3108  4B BC 48 4C */	b cM_rndF__Ff
/* 806A310C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A3110  EC 00 08 2A */	fadds f0, f0, f1
/* 806A3114  FC 00 00 1E */	fctiwz f0, f0
/* 806A3118  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A311C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A3120  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A3124  7F C3 F3 78 */	mr r3, r30
/* 806A3128  38 80 00 15 */	li r4, 0x15
/* 806A312C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A3130  38 A0 00 02 */	li r5, 2
/* 806A3134  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3138  4B FF F1 95 */	bl anm_init__FP10e_dd_classifUcf
/* 806A313C  48 00 02 80 */	b lbl_806A33BC
lbl_806A3140:
/* 806A3140  38 80 00 16 */	li r4, 0x16
/* 806A3144  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A3148  38 A0 00 02 */	li r5, 2
/* 806A314C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3150  4B FF F1 7D */	bl anm_init__FP10e_dd_classifUcf
/* 806A3154  38 00 00 65 */	li r0, 0x65
/* 806A3158  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A315C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A3160  80 63 00 08 */	lwz r3, 8(r3)
/* 806A3164  88 1E 05 BC */	lbz r0, 0x5bc(r30)
/* 806A3168  7C 00 07 74 */	extsb r0, r0
/* 806A316C  54 00 20 36 */	slwi r0, r0, 4
/* 806A3170  7C 63 02 14 */	add r3, r3, r0
/* 806A3174  C0 03 00 04 */	lfs f0, 4(r3)
/* 806A3178  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 806A317C  C0 03 00 08 */	lfs f0, 8(r3)
/* 806A3180  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 806A3184  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806A3188  D0 1E 06 98 */	stfs f0, 0x698(r30)
lbl_806A318C:
/* 806A318C  2C 1D 00 0C */	cmpwi r29, 0xc
/* 806A3190  41 80 00 0C */	blt lbl_806A319C
/* 806A3194  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 806A3198  40 81 00 14 */	ble lbl_806A31AC
lbl_806A319C:
/* 806A319C  2C 1D 00 02 */	cmpwi r29, 2
/* 806A31A0  40 81 00 0C */	ble lbl_806A31AC
/* 806A31A4  2C 1D 00 25 */	cmpwi r29, 0x25
/* 806A31A8  41 80 00 10 */	blt lbl_806A31B8
lbl_806A31AC:
/* 806A31AC  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A31B0  38 63 74 C8 */	addi r3, r3, l_HIO@l
/* 806A31B4  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_806A31B8:
/* 806A31B8  38 61 00 0C */	addi r3, r1, 0xc
/* 806A31BC  38 9E 06 90 */	addi r4, r30, 0x690
/* 806A31C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A31C4  4B BC 39 70 */	b __mi__4cXyzCFRC3Vec
/* 806A31C8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 806A31CC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806A31D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806A31D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A31D8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 806A31DC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806A31E0  4B BC 44 94 */	b cM_atan2s__Fff
/* 806A31E4  B0 7E 06 9C */	sth r3, 0x69c(r30)
/* 806A31E8  2C 1D 00 07 */	cmpwi r29, 7
/* 806A31EC  41 82 00 0C */	beq lbl_806A31F8
/* 806A31F0  2C 1D 00 21 */	cmpwi r29, 0x21
/* 806A31F4  40 82 01 C8 */	bne lbl_806A33BC
lbl_806A31F8:
/* 806A31F8  38 61 00 30 */	addi r3, r1, 0x30
/* 806A31FC  4B CA 3F 3C */	b PSVECSquareMag
/* 806A3200  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A3204  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3208  40 81 00 58 */	ble lbl_806A3260
/* 806A320C  FC 00 08 34 */	frsqrte f0, f1
/* 806A3210  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806A3214  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3218  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806A321C  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3220  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3224  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3228  FC 02 00 32 */	fmul f0, f2, f0
/* 806A322C  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3230  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3234  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3238  FC 03 00 28 */	fsub f0, f3, f0
/* 806A323C  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3240  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3244  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3248  FC 01 00 32 */	fmul f0, f1, f0
/* 806A324C  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3250  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3254  FC 21 00 32 */	fmul f1, f1, f0
/* 806A3258  FC 20 08 18 */	frsp f1, f1
/* 806A325C  48 00 00 88 */	b lbl_806A32E4
lbl_806A3260:
/* 806A3260  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806A3264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3268  40 80 00 10 */	bge lbl_806A3278
/* 806A326C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806A3270  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806A3274  48 00 00 70 */	b lbl_806A32E4
lbl_806A3278:
/* 806A3278  D0 21 00 08 */	stfs f1, 8(r1)
/* 806A327C  80 81 00 08 */	lwz r4, 8(r1)
/* 806A3280  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A3284  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A3288  7C 03 00 00 */	cmpw r3, r0
/* 806A328C  41 82 00 14 */	beq lbl_806A32A0
/* 806A3290  40 80 00 40 */	bge lbl_806A32D0
/* 806A3294  2C 03 00 00 */	cmpwi r3, 0
/* 806A3298  41 82 00 20 */	beq lbl_806A32B8
/* 806A329C  48 00 00 34 */	b lbl_806A32D0
lbl_806A32A0:
/* 806A32A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A32A4  41 82 00 0C */	beq lbl_806A32B0
/* 806A32A8  38 00 00 01 */	li r0, 1
/* 806A32AC  48 00 00 28 */	b lbl_806A32D4
lbl_806A32B0:
/* 806A32B0  38 00 00 02 */	li r0, 2
/* 806A32B4  48 00 00 20 */	b lbl_806A32D4
lbl_806A32B8:
/* 806A32B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A32BC  41 82 00 0C */	beq lbl_806A32C8
/* 806A32C0  38 00 00 05 */	li r0, 5
/* 806A32C4  48 00 00 10 */	b lbl_806A32D4
lbl_806A32C8:
/* 806A32C8  38 00 00 03 */	li r0, 3
/* 806A32CC  48 00 00 08 */	b lbl_806A32D4
lbl_806A32D0:
/* 806A32D0  38 00 00 04 */	li r0, 4
lbl_806A32D4:
/* 806A32D4  2C 00 00 01 */	cmpwi r0, 1
/* 806A32D8  40 82 00 0C */	bne lbl_806A32E4
/* 806A32DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806A32E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806A32E4:
/* 806A32E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A32E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A32EC  40 80 00 D0 */	bge lbl_806A33BC
/* 806A32F0  88 7E 05 BC */	lbz r3, 0x5bc(r30)
/* 806A32F4  88 1E 05 BD */	lbz r0, 0x5bd(r30)
/* 806A32F8  7C 03 02 14 */	add r0, r3, r0
/* 806A32FC  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 806A3300  88 BE 05 BC */	lbz r5, 0x5bc(r30)
/* 806A3304  7C A3 07 74 */	extsb r3, r5
/* 806A3308  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 806A330C  A0 04 00 00 */	lhz r0, 0(r4)
/* 806A3310  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806A3314  7C 03 00 00 */	cmpw r3, r0
/* 806A3318  41 80 00 38 */	blt lbl_806A3350
/* 806A331C  88 04 00 05 */	lbz r0, 5(r4)
/* 806A3320  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A3324  41 82 00 10 */	beq lbl_806A3334
/* 806A3328  38 00 00 00 */	li r0, 0
/* 806A332C  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 806A3330  48 00 00 34 */	b lbl_806A3364
lbl_806A3334:
/* 806A3334  38 00 FF FF */	li r0, -1
/* 806A3338  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 806A333C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A3340  A0 63 00 00 */	lhz r3, 0(r3)
/* 806A3344  38 03 FF FE */	addi r0, r3, -2
/* 806A3348  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 806A334C  48 00 00 18 */	b lbl_806A3364
lbl_806A3350:
/* 806A3350  7C A0 07 75 */	extsb. r0, r5
/* 806A3354  40 80 00 10 */	bge lbl_806A3364
/* 806A3358  38 00 00 01 */	li r0, 1
/* 806A335C  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 806A3360  98 1E 05 BC */	stb r0, 0x5bc(r30)
lbl_806A3364:
/* 806A3364  38 00 00 66 */	li r0, 0x66
/* 806A3368  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A336C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806A3370  4B BC 45 E4 */	b cM_rndF__Ff
/* 806A3374  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A3378  EC 00 08 2A */	fadds f0, f0, f1
/* 806A337C  FC 00 00 1E */	fctiwz f0, f0
/* 806A3380  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A3384  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A3388  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A338C  7F C3 F3 78 */	mr r3, r30
/* 806A3390  38 80 00 15 */	li r4, 0x15
/* 806A3394  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806A3398  38 A0 00 02 */	li r5, 2
/* 806A339C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A33A0  4B FF EF 2D */	bl anm_init__FP10e_dd_classifUcf
/* 806A33A4  48 00 00 18 */	b lbl_806A33BC
lbl_806A33A8:
/* 806A33A8  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A33AC  2C 00 00 00 */	cmpwi r0, 0
/* 806A33B0  40 82 00 0C */	bne lbl_806A33BC
/* 806A33B4  38 00 00 64 */	li r0, 0x64
/* 806A33B8  B0 1E 06 8C */	sth r0, 0x68c(r30)
lbl_806A33BC:
/* 806A33BC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A33C0  FC 20 F8 90 */	fmr f1, f31
/* 806A33C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A33C8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 806A33CC  3C 80 80 6A */	lis r4, l_HIO@ha
/* 806A33D0  38 84 74 C8 */	addi r4, r4, l_HIO@l
/* 806A33D4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806A33D8  EC 63 00 32 */	fmuls f3, f3, f0
/* 806A33DC  4B BC C6 60 */	b cLib_addCalc2__FPffff
/* 806A33E0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806A33E4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806A33E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A33EC  FC 00 00 1E */	fctiwz f0, f0
/* 806A33F0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806A33F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A33F8  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 806A33FC  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 806A3400  2C 00 00 16 */	cmpwi r0, 0x16
/* 806A3404  40 82 00 70 */	bne lbl_806A3474
/* 806A3408  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806A340C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806A3410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3414  4C 41 13 82 */	cror 2, 1, 2
/* 806A3418  40 82 00 18 */	bne lbl_806A3430
/* 806A341C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806A3420  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 806A3424  38 A0 00 08 */	li r5, 8
/* 806A3428  A8 DE 06 A8 */	lha r6, 0x6a8(r30)
/* 806A342C  4B BC D1 DC */	b cLib_addCalcAngleS2__FPssss
lbl_806A3430:
/* 806A3430  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806A3434  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806A3438  7C 03 00 50 */	subf r0, r3, r0
/* 806A343C  7C 00 07 34 */	extsh r0, r0
/* 806A3440  2C 00 08 00 */	cmpwi r0, 0x800
/* 806A3444  41 81 00 0C */	bgt lbl_806A3450
/* 806A3448  2C 00 F8 00 */	cmpwi r0, -2048
/* 806A344C  40 80 00 28 */	bge lbl_806A3474
lbl_806A3450:
/* 806A3450  7C 00 07 35 */	extsh. r0, r0
/* 806A3454  40 81 00 10 */	ble lbl_806A3464
/* 806A3458  38 00 0A 00 */	li r0, 0xa00
/* 806A345C  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 806A3460  48 00 00 0C */	b lbl_806A346C
lbl_806A3464:
/* 806A3464  38 00 F6 00 */	li r0, -2560
/* 806A3468  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_806A346C:
/* 806A346C  38 00 00 80 */	li r0, 0x80
/* 806A3470  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_806A3474:
/* 806A3474  7F C3 F3 78 */	mr r3, r30
/* 806A3478  3C 80 80 6A */	lis r4, l_HIO@ha
/* 806A347C  38 84 74 C8 */	addi r4, r4, l_HIO@l
/* 806A3480  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 806A3484  38 80 7F FF */	li r4, 0x7fff
/* 806A3488  4B FF F2 A5 */	bl pl_check__FP10e_dd_classfs
/* 806A348C  2C 03 00 00 */	cmpwi r3, 0
/* 806A3490  41 82 00 2C */	beq lbl_806A34BC
/* 806A3494  38 00 00 04 */	li r0, 4
/* 806A3498  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A349C  38 00 00 00 */	li r0, 0
/* 806A34A0  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A34A4  7F C3 F3 78 */	mr r3, r30
/* 806A34A8  38 80 00 12 */	li r4, 0x12
/* 806A34AC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A34B0  38 A0 00 02 */	li r5, 2
/* 806A34B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A34B8  4B FF EE 15 */	bl anm_init__FP10e_dd_classifUcf
lbl_806A34BC:
/* 806A34BC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806A34C0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806A34C4  39 61 00 60 */	addi r11, r1, 0x60
/* 806A34C8  4B CB ED 60 */	b _restgpr_29
/* 806A34CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806A34D0  7C 08 03 A6 */	mtlr r0
/* 806A34D4  38 21 00 70 */	addi r1, r1, 0x70
/* 806A34D8  4E 80 00 20 */	blr 
