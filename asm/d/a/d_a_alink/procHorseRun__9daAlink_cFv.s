lbl_800F2F98:
/* 800F2F98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800F2F9C  7C 08 02 A6 */	mflr r0
/* 800F2FA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800F2FA4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800F2FA8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800F2FAC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800F2FB0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800F2FB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800F2FB8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800F2FBC  7C 7E 1B 78 */	mr r30, r3
/* 800F2FC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F2FC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F2FC8  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800F2FCC  4B FF A5 11 */	bl setSyncHorsePos__9daAlink_cFv
/* 800F2FD0  2C 03 00 00 */	cmpwi r3, 0
/* 800F2FD4  40 82 00 1C */	bne lbl_800F2FF0
/* 800F2FD8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800F2FDC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 800F2FE0  38 80 00 01 */	li r4, 1
/* 800F2FE4  48 1B EE 11 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 800F2FE8  38 60 00 01 */	li r3, 1
/* 800F2FEC  48 00 04 1C */	b lbl_800F3408
lbl_800F2FF0:
/* 800F2FF0  80 1E 32 CC */	lwz r0, 0x32cc(r30)
/* 800F2FF4  28 00 00 00 */	cmplwi r0, 0
/* 800F2FF8  41 82 00 2C */	beq lbl_800F3024
/* 800F2FFC  7F C3 F3 78 */	mr r3, r30
/* 800F3000  38 80 00 11 */	li r4, 0x11
/* 800F3004  38 A0 00 FF */	li r5, 0xff
/* 800F3008  38 C0 00 00 */	li r6, 0
/* 800F300C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F3010  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 800F3014  7D 89 03 A6 */	mtctr r12
/* 800F3018  4E 80 04 21 */	bctrl 
/* 800F301C  38 60 00 01 */	li r3, 1
/* 800F3020  48 00 03 E8 */	b lbl_800F3408
lbl_800F3024:
/* 800F3024  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800F3028  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F302C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F3030  40 81 03 48 */	ble lbl_800F3378
/* 800F3034  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800F3038  2C 03 00 00 */	cmpwi r3, 0
/* 800F303C  41 82 00 0C */	beq lbl_800F3048
/* 800F3040  38 03 FF FF */	addi r0, r3, -1
/* 800F3044  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800F3048:
/* 800F3048  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800F304C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800F3050  41 82 00 5C */	beq lbl_800F30AC
/* 800F3054  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F3058  2C 00 00 00 */	cmpwi r0, 0
/* 800F305C  41 82 00 14 */	beq lbl_800F3070
/* 800F3060  A8 7E 30 12 */	lha r3, 0x3012(r30)
/* 800F3064  38 03 FF 6A */	addi r0, r3, -150
/* 800F3068  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F306C  48 00 00 10 */	b lbl_800F307C
lbl_800F3070:
/* 800F3070  A8 7E 30 12 */	lha r3, 0x3012(r30)
/* 800F3074  38 03 FD A8 */	addi r0, r3, -600
/* 800F3078  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_800F307C:
/* 800F307C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F3080  2C 00 00 00 */	cmpwi r0, 0
/* 800F3084  40 82 00 7C */	bne lbl_800F3100
/* 800F3088  38 00 00 7A */	li r0, 0x7a
/* 800F308C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F3090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F3094  98 03 5E 26 */	stb r0, 0x5e26(r3)
/* 800F3098  38 00 00 04 */	li r0, 4
/* 800F309C  98 03 5E 2D */	stb r0, 0x5e2d(r3)
/* 800F30A0  38 00 00 00 */	li r0, 0
/* 800F30A4  98 03 5E 4B */	stb r0, 0x5e4b(r3)
/* 800F30A8  48 00 00 58 */	b lbl_800F3100
lbl_800F30AC:
/* 800F30AC  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F30B0  2C 00 00 00 */	cmpwi r0, 0
/* 800F30B4  41 82 00 14 */	beq lbl_800F30C8
/* 800F30B8  A8 7E 30 12 */	lha r3, 0x3012(r30)
/* 800F30BC  38 03 00 96 */	addi r0, r3, 0x96
/* 800F30C0  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F30C4  48 00 00 10 */	b lbl_800F30D4
lbl_800F30C8:
/* 800F30C8  A8 7E 30 12 */	lha r3, 0x3012(r30)
/* 800F30CC  38 03 02 58 */	addi r0, r3, 0x258
/* 800F30D0  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_800F30D4:
/* 800F30D4  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F30D8  2C 00 00 00 */	cmpwi r0, 0
/* 800F30DC  40 82 00 24 */	bne lbl_800F3100
/* 800F30E0  38 00 00 7A */	li r0, 0x7a
/* 800F30E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F30E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F30EC  98 03 5E 26 */	stb r0, 0x5e26(r3)
/* 800F30F0  38 00 00 01 */	li r0, 1
/* 800F30F4  98 03 5E 2D */	stb r0, 0x5e2d(r3)
/* 800F30F8  38 00 00 00 */	li r0, 0
/* 800F30FC  98 03 5E 4B */	stb r0, 0x5e4b(r3)
lbl_800F3100:
/* 800F3100  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800F3104  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F3108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F310C  40 81 00 DC */	ble lbl_800F31E8
/* 800F3110  A8 7E 2F E0 */	lha r3, 0x2fe0(r30)
/* 800F3114  4B FC 03 81 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800F3118  A8 9E 30 12 */	lha r4, 0x3012(r30)
/* 800F311C  2C 03 00 02 */	cmpwi r3, 2
/* 800F3120  40 82 00 58 */	bne lbl_800F3178
/* 800F3124  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800F3128  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800F312C  40 82 00 4C */	bne lbl_800F3178
/* 800F3130  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F3134  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800F3138  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F313C  3C 00 43 30 */	lis r0, 0x4330
/* 800F3140  90 01 00 08 */	stw r0, 8(r1)
/* 800F3144  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F3148  EC 60 08 28 */	fsubs f3, f0, f1
/* 800F314C  C0 42 94 9C */	lfs f2, lit_16567(r2)
/* 800F3150  C0 22 94 FC */	lfs f1, lit_20400(r2)
/* 800F3154  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800F3158  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F315C  EC 02 00 2A */	fadds f0, f2, f0
/* 800F3160  EC 03 00 28 */	fsubs f0, f3, f0
/* 800F3164  FC 00 00 1E */	fctiwz f0, f0
/* 800F3168  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800F316C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F3170  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F3174  48 00 00 60 */	b lbl_800F31D4
lbl_800F3178:
/* 800F3178  2C 03 00 03 */	cmpwi r3, 3
/* 800F317C  40 82 00 58 */	bne lbl_800F31D4
/* 800F3180  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800F3184  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800F3188  41 82 00 4C */	beq lbl_800F31D4
/* 800F318C  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F3190  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F3194  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F3198  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F319C  3C 00 43 30 */	lis r0, 0x4330
/* 800F31A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 800F31A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800F31A8  EC 60 08 28 */	fsubs f3, f0, f1
/* 800F31AC  C0 42 94 9C */	lfs f2, lit_16567(r2)
/* 800F31B0  C0 22 94 FC */	lfs f1, lit_20400(r2)
/* 800F31B4  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800F31B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F31BC  EC 02 00 2A */	fadds f0, f2, f0
/* 800F31C0  EC 03 00 2A */	fadds f0, f3, f0
/* 800F31C4  FC 00 00 1E */	fctiwz f0, f0
/* 800F31C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 800F31CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800F31D0  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_800F31D4:
/* 800F31D4  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F31D8  7C 04 01 D7 */	mullw. r0, r4, r0
/* 800F31DC  41 81 00 0C */	bgt lbl_800F31E8
/* 800F31E0  38 00 00 00 */	li r0, 0
/* 800F31E4  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_800F31E8:
/* 800F31E8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800F31EC  C0 3E 1F E0 */	lfs f1, 0x1fe0(r30)
/* 800F31F0  A8 1E 1F D8 */	lha r0, 0x1fd8(r30)
/* 800F31F4  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800F31F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F31FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F3200  3C 60 43 30 */	lis r3, 0x4330
/* 800F3204  90 61 00 10 */	stw r3, 0x10(r1)
/* 800F3208  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800F320C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F3210  EF E1 00 24 */	fdivs f31, f1, f0
/* 800F3214  C0 22 95 00 */	lfs f1, lit_20401(r2)
/* 800F3218  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F321C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F3220  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F3224  90 61 00 08 */	stw r3, 8(r1)
/* 800F3228  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F322C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F3230  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F3234  FC 00 02 10 */	fabs f0, f0
/* 800F3238  FF C0 00 18 */	frsp f30, f0
/* 800F323C  C0 22 95 04 */	lfs f1, lit_20402(r2)
/* 800F3240  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800F3244  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800F3248  EC 21 00 32 */	fmuls f1, f1, f0
/* 800F324C  48 17 43 99 */	bl cM_rad2s__Ff
/* 800F3250  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F3254  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F3258  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F325C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800F3260  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800F3264  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800F3268  EC 03 00 2A */	fadds f0, f3, f0
/* 800F326C  EC 41 00 32 */	fmuls f2, f1, f0
/* 800F3270  C0 22 94 58 */	lfs f1, lit_14785(r2)
/* 800F3274  EC 03 F0 28 */	fsubs f0, f3, f30
/* 800F3278  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F327C  EC 02 00 2A */	fadds f0, f2, f0
/* 800F3280  FC 00 00 1E */	fctiwz f0, f0
/* 800F3284  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800F3288  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F328C  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800F3290  C0 22 95 04 */	lfs f1, lit_20402(r2)
/* 800F3294  EC 1F 18 28 */	fsubs f0, f31, f3
/* 800F3298  EC 21 00 32 */	fmuls f1, f1, f0
/* 800F329C  48 17 43 49 */	bl cM_rad2s__Ff
/* 800F32A0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F32A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F32A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F32AC  7C 43 04 2E */	lfsx f2, r3, r0
/* 800F32B0  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800F32B4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F32B8  EC 00 10 2A */	fadds f0, f0, f2
/* 800F32BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F32C0  FC 00 00 1E */	fctiwz f0, f0
/* 800F32C4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800F32C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F32CC  B0 1E 30 88 */	sth r0, 0x3088(r30)
/* 800F32D0  7F E3 FB 78 */	mr r3, r31
/* 800F32D4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F32D8  48 23 51 55 */	bl checkPass__12J3DFrameCtrlFf
/* 800F32DC  2C 03 00 00 */	cmpwi r3, 0
/* 800F32E0  41 82 00 18 */	beq lbl_800F32F8
/* 800F32E4  C0 22 93 18 */	lfs f1, lit_7308(r2)
/* 800F32E8  48 17 46 6D */	bl cM_rndF__Ff
/* 800F32EC  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800F32F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F32F4  D0 1E 34 78 */	stfs f0, 0x3478(r30)
lbl_800F32F8:
/* 800F32F8  A8 7E 30 12 */	lha r3, 0x3012(r30)
/* 800F32FC  48 27 1D D5 */	bl abs
/* 800F3300  2C 03 27 10 */	cmpwi r3, 0x2710
/* 800F3304  40 80 00 10 */	bge lbl_800F3314
/* 800F3308  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F330C  2C 00 00 00 */	cmpwi r0, 0
/* 800F3310  41 82 00 F4 */	beq lbl_800F3404
lbl_800F3314:
/* 800F3314  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F3318  2C 00 00 00 */	cmpwi r0, 0
/* 800F331C  41 82 00 30 */	beq lbl_800F334C
/* 800F3320  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F3324  2C 00 27 10 */	cmpwi r0, 0x2710
/* 800F3328  41 80 00 10 */	blt lbl_800F3338
/* 800F332C  38 00 27 10 */	li r0, 0x2710
/* 800F3330  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F3334  48 00 00 D0 */	b lbl_800F3404
lbl_800F3338:
/* 800F3338  2C 00 D8 F0 */	cmpwi r0, -10000
/* 800F333C  41 81 00 C8 */	bgt lbl_800F3404
/* 800F3340  38 00 D8 F0 */	li r0, -10000
/* 800F3344  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F3348  48 00 00 BC */	b lbl_800F3404
lbl_800F334C:
/* 800F334C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800F3350  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F3354  7C 03 02 14 */	add r0, r3, r0
/* 800F3358  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800F335C  7F C3 F3 78 */	mr r3, r30
/* 800F3360  4B FF BF FD */	bl boarForceGetOff__9daAlink_cFv
/* 800F3364  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800F3368  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 800F336C  38 80 00 01 */	li r4, 1
/* 800F3370  48 1B EA 85 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 800F3374  48 00 00 90 */	b lbl_800F3404
lbl_800F3378:
/* 800F3378  88 1F 16 BB */	lbz r0, 0x16bb(r31)
/* 800F337C  28 00 00 00 */	cmplwi r0, 0
/* 800F3380  41 82 00 84 */	beq lbl_800F3404
/* 800F3384  80 1F 17 48 */	lwz r0, 0x1748(r31)
/* 800F3388  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800F338C  41 82 00 78 */	beq lbl_800F3404
/* 800F3390  7F C3 F3 78 */	mr r3, r30
/* 800F3394  38 80 00 6F */	li r4, 0x6f
/* 800F3398  4B FB FE B9 */	bl setDoStatus__9daAlink_cFUc
/* 800F339C  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800F33A0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800F33A4  41 82 00 58 */	beq lbl_800F33FC
/* 800F33A8  38 00 00 01 */	li r0, 1
/* 800F33AC  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800F33B0  7F C3 F3 78 */	mr r3, r30
/* 800F33B4  38 80 00 11 */	li r4, 0x11
/* 800F33B8  38 A0 00 FF */	li r5, 0xff
/* 800F33BC  38 C0 00 00 */	li r6, 0
/* 800F33C0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F33C4  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 800F33C8  7D 89 03 A6 */	mtctr r12
/* 800F33CC  4E 80 04 21 */	bctrl 
/* 800F33D0  80 9F 17 44 */	lwz r4, 0x1744(r31)
/* 800F33D4  3C 60 7F C0 */	lis r3, 0x7FC0 /* 0x7FBFFFFF@ha */
/* 800F33D8  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x7FBFFFFF@l */
/* 800F33DC  7C 80 00 38 */	and r0, r4, r0
/* 800F33E0  90 1F 17 44 */	stw r0, 0x1744(r31)
/* 800F33E4  38 00 00 00 */	li r0, 0
/* 800F33E8  98 1F 16 BC */	stb r0, 0x16bc(r31)
/* 800F33EC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800F33F0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 800F33F4  48 1B C4 91 */	bl subBgmStop__8Z2SeqMgrFv
/* 800F33F8  48 00 00 0C */	b lbl_800F3404
lbl_800F33FC:
/* 800F33FC  38 00 00 01 */	li r0, 1
/* 800F3400  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800F3404:
/* 800F3404  38 60 00 01 */	li r3, 1
lbl_800F3408:
/* 800F3408  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800F340C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800F3410  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800F3414  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800F3418  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800F341C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800F3420  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800F3424  7C 08 03 A6 */	mtlr r0
/* 800F3428  38 21 00 50 */	addi r1, r1, 0x50
/* 800F342C  4E 80 00 20 */	blr 
