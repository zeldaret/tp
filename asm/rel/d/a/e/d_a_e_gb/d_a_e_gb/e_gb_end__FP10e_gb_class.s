lbl_806C3194:
/* 806C3194  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806C3198  7C 08 02 A6 */	mflr r0
/* 806C319C  90 01 00 54 */	stw r0, 0x54(r1)
/* 806C31A0  39 61 00 50 */	addi r11, r1, 0x50
/* 806C31A4  4B C9 F0 2D */	bl _savegpr_26
/* 806C31A8  7C 7D 1B 78 */	mr r29, r3
/* 806C31AC  3C 80 80 6C */	lis r4, lit_3906@ha /* 0x806C74E8@ha */
/* 806C31B0  3B C4 74 E8 */	addi r30, r4, lit_3906@l /* 0x806C74E8@l */
/* 806C31B4  38 00 00 14 */	li r0, 0x14
/* 806C31B8  B0 03 06 CE */	sth r0, 0x6ce(r3)
/* 806C31BC  A8 03 06 9C */	lha r0, 0x69c(r3)
/* 806C31C0  2C 00 00 02 */	cmpwi r0, 2
/* 806C31C4  41 82 00 7C */	beq lbl_806C3240
/* 806C31C8  40 80 00 14 */	bge lbl_806C31DC
/* 806C31CC  2C 00 00 00 */	cmpwi r0, 0
/* 806C31D0  41 82 00 18 */	beq lbl_806C31E8
/* 806C31D4  40 80 00 34 */	bge lbl_806C3208
/* 806C31D8  48 00 01 C8 */	b lbl_806C33A0
lbl_806C31DC:
/* 806C31DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806C31E0  41 82 01 C0 */	beq lbl_806C33A0
/* 806C31E4  48 00 01 BC */	b lbl_806C33A0
lbl_806C31E8:
/* 806C31E8  38 80 00 0F */	li r4, 0xf
/* 806C31EC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806C31F0  38 A0 00 00 */	li r5, 0
/* 806C31F4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C31F8  4B FF EB 45 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C31FC  38 00 00 01 */	li r0, 1
/* 806C3200  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 806C3204  48 00 01 9C */	b lbl_806C33A0
lbl_806C3208:
/* 806C3208  38 00 00 02 */	li r0, 2
/* 806C320C  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 806C3210  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070153@ha */
/* 806C3214  38 03 01 53 */	addi r0, r3, 0x0153 /* 0x00070153@l */
/* 806C3218  90 01 00 20 */	stw r0, 0x20(r1)
/* 806C321C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 806C3220  38 81 00 20 */	addi r4, r1, 0x20
/* 806C3224  38 A0 00 00 */	li r5, 0
/* 806C3228  38 C0 FF FF */	li r6, -1
/* 806C322C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 806C3230  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C3234  7D 89 03 A6 */	mtctr r12
/* 806C3238  4E 80 04 21 */	bctrl 
/* 806C323C  48 00 01 64 */	b lbl_806C33A0
lbl_806C3240:
/* 806C3240  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 806C3244  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C3248  40 82 01 58 */	bne lbl_806C33A0
/* 806C324C  3B E0 00 00 */	li r31, 0
/* 806C3250  88 1D 09 39 */	lbz r0, 0x939(r29)
/* 806C3254  7C 00 07 74 */	extsb r0, r0
/* 806C3258  54 00 10 3A */	slwi r0, r0, 2
/* 806C325C  7C 9D 02 14 */	add r4, r29, r0
/* 806C3260  93 E4 08 28 */	stw r31, 0x828(r4)
/* 806C3264  88 1D 09 39 */	lbz r0, 0x939(r29)
/* 806C3268  2C 00 00 11 */	cmpwi r0, 0x11
/* 806C326C  40 82 00 B0 */	bne lbl_806C331C
/* 806C3270  38 00 00 0A */	li r0, 0xa
/* 806C3274  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 806C3278  38 9D 05 38 */	addi r4, r29, 0x538
/* 806C327C  38 A0 00 0C */	li r5, 0xc
/* 806C3280  38 C0 00 00 */	li r6, 0
/* 806C3284  88 FD 05 64 */	lbz r7, 0x564(r29)
/* 806C3288  4B 95 98 51 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806C328C  38 60 00 00 */	li r3, 0
/* 806C3290  98 7D 09 68 */	stb r3, 0x968(r29)
/* 806C3294  38 00 00 03 */	li r0, 3
/* 806C3298  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 806C329C  B0 7D 06 A0 */	sth r3, 0x6a0(r29)
/* 806C32A0  38 00 00 50 */	li r0, 0x50
/* 806C32A4  B0 1D 06 C4 */	sth r0, 0x6c4(r29)
/* 806C32A8  38 00 00 01 */	li r0, 1
/* 806C32AC  98 1D 06 68 */	stb r0, 0x668(r29)
/* 806C32B0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 806C32B4  4B BF D4 41 */	bl stopAnime__10Z2CreatureFv
/* 806C32B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806C32BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806C32C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806C32C4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 806C32C8  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 806C32CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C32D0  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 806C32D4  38 00 00 00 */	li r0, 0
/* 806C32D8  90 03 04 10 */	stw r0, 0x410(r3)
/* 806C32DC  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 806C32E0  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 806C32E4  38 00 00 21 */	li r0, 0x21
/* 806C32E8  90 03 04 20 */	stw r0, 0x420(r3)
/* 806C32EC  EC 43 00 28 */	fsubs f2, f3, f0
/* 806C32F0  80 03 04 20 */	lwz r0, 0x420(r3)
/* 806C32F4  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 806C32F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806C32FC  3C 00 43 30 */	lis r0, 0x4330
/* 806C3300  90 01 00 28 */	stw r0, 0x28(r1)
/* 806C3304  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 806C3308  EC 00 08 28 */	fsubs f0, f0, f1
/* 806C330C  EC 02 00 24 */	fdivs f0, f2, f0
/* 806C3310  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 806C3314  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 806C3318  48 00 00 7C */	b lbl_806C3394
lbl_806C331C:
/* 806C331C  3B 40 00 00 */	li r26, 0
/* 806C3320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C3324  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C3328  3C 60 80 6C */	lis r3, eno_4381@ha /* 0x806C76FC@ha */
/* 806C332C  3B 83 76 FC */	addi r28, r3, eno_4381@l /* 0x806C76FC@l */
lbl_806C3330:
/* 806C3330  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806C3334  38 80 00 00 */	li r4, 0
/* 806C3338  90 81 00 08 */	stw r4, 8(r1)
/* 806C333C  38 00 FF FF */	li r0, -1
/* 806C3340  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C3344  90 81 00 10 */	stw r4, 0x10(r1)
/* 806C3348  90 81 00 14 */	stw r4, 0x14(r1)
/* 806C334C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C3350  38 80 00 00 */	li r4, 0
/* 806C3354  7C BC FA 2E */	lhzx r5, r28, r31
/* 806C3358  88 1D 09 39 */	lbz r0, 0x939(r29)
/* 806C335C  7C 00 07 74 */	extsb r0, r0
/* 806C3360  1C C0 00 0C */	mulli r6, r0, 0xc
/* 806C3364  38 C6 06 E4 */	addi r6, r6, 0x6e4
/* 806C3368  7C DD 32 14 */	add r6, r29, r6
/* 806C336C  38 E0 00 00 */	li r7, 0
/* 806C3370  39 00 00 00 */	li r8, 0
/* 806C3374  39 20 00 00 */	li r9, 0
/* 806C3378  39 40 00 FF */	li r10, 0xff
/* 806C337C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C3380  4B 98 97 11 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C3384  3B 5A 00 01 */	addi r26, r26, 1
/* 806C3388  2C 1A 00 02 */	cmpwi r26, 2
/* 806C338C  3B FF 00 02 */	addi r31, r31, 2
/* 806C3390  41 80 FF A0 */	blt lbl_806C3330
lbl_806C3394:
/* 806C3394  88 7D 09 39 */	lbz r3, 0x939(r29)
/* 806C3398  38 03 00 01 */	addi r0, r3, 1
/* 806C339C  98 1D 09 39 */	stb r0, 0x939(r29)
lbl_806C33A0:
/* 806C33A0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806C33A4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 806C33A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C33AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806C33B0  39 61 00 50 */	addi r11, r1, 0x50
/* 806C33B4  4B C9 EE 69 */	bl _restgpr_26
/* 806C33B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C33BC  7C 08 03 A6 */	mtlr r0
/* 806C33C0  38 21 00 50 */	addi r1, r1, 0x50
/* 806C33C4  4E 80 00 20 */	blr 
