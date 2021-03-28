lbl_80BA3270:
/* 80BA3270  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA3274  7C 08 02 A6 */	mflr r0
/* 80BA3278  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA327C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BA3280  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BA3284  7C 7E 1B 78 */	mr r30, r3
/* 80BA3288  3C 60 80 BA */	lis r3, lit_3776@ha
/* 80BA328C  3B E3 54 08 */	addi r31, r3, lit_3776@l
/* 80BA3290  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80BA3294  2C 00 00 00 */	cmpwi r0, 0
/* 80BA3298  40 82 00 80 */	bne lbl_80BA3318
/* 80BA329C  38 61 00 08 */	addi r3, r1, 8
/* 80BA32A0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80BA32A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA32A8  4B 6C 38 8C */	b __mi__4cXyzCFRC3Vec
/* 80BA32AC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BA32B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BA32B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BA32B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BA32BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BA32C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BA32C4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80BA32C8  4B 6C 46 C4 */	b cM_rndFX__Ff
/* 80BA32CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BA32D0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA32D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BA32D8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80BA32DC  4B 6C 46 B0 */	b cM_rndFX__Ff
/* 80BA32E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BA32E4  EC 40 08 2A */	fadds f2, f0, f1
/* 80BA32E8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BA32EC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BA32F0  4B 6C 43 84 */	b cM_atan2s__Fff
/* 80BA32F4  B0 7E 05 F4 */	sth r3, 0x5f4(r30)
/* 80BA32F8  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80BA32FC  4B 6C 46 58 */	b cM_rndF__Ff
/* 80BA3300  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80BA3304  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA3308  FC 00 00 1E */	fctiwz f0, f0
/* 80BA330C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BA3310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA3314  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80BA3318:
/* 80BA3318  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80BA331C  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 80BA3320  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80BA3324  A8 9E 05 F4 */	lha r4, 0x5f4(r30)
/* 80BA3328  38 A0 00 15 */	li r5, 0x15
/* 80BA332C  38 C0 00 50 */	li r6, 0x50
/* 80BA3330  4B 6C D2 D8 */	b cLib_addCalcAngleS2__FPssss
/* 80BA3334  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80BA3338  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BA333C  A8 1E 05 F4 */	lha r0, 0x5f4(r30)
/* 80BA3340  7C 04 00 50 */	subf r0, r4, r0
/* 80BA3344  7C 04 07 34 */	extsh r4, r0
/* 80BA3348  38 A0 00 08 */	li r5, 8
/* 80BA334C  38 C0 01 00 */	li r6, 0x100
/* 80BA3350  4B 6C D2 B8 */	b cLib_addCalcAngleS2__FPssss
/* 80BA3354  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BA3358  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BA335C  7F C3 F3 78 */	mr r3, r30
/* 80BA3360  4B FF F9 45 */	bl WallWalk__10daObjARI_cFv
/* 80BA3364  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BA3368  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BA336C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA3370  7C 08 03 A6 */	mtlr r0
/* 80BA3374  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA3378  4E 80 00 20 */	blr 
