lbl_805CD628:
/* 805CD628  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805CD62C  7C 08 02 A6 */	mflr r0
/* 805CD630  90 01 00 44 */	stw r0, 0x44(r1)
/* 805CD634  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805CD638  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805CD63C  7C 7E 1B 78 */	mr r30, r3
/* 805CD640  38 00 00 00 */	li r0, 0
/* 805CD644  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805CD648  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805CD64C  B0 01 00 08 */	sth r0, 8(r1)
/* 805CD650  80 03 06 80 */	lwz r0, 0x680(r3)
/* 805CD654  2C 00 00 01 */	cmpwi r0, 1
/* 805CD658  41 82 01 D4 */	beq lbl_805CD82C
/* 805CD65C  2C 00 00 03 */	cmpwi r0, 3
/* 805CD660  41 82 01 CC */	beq lbl_805CD82C
/* 805CD664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD668  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805CD66C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805CD670  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 805CD674  C0 1E 07 54 */	lfs f0, 0x754(r30)
/* 805CD678  EC 01 00 28 */	fsubs f0, f1, f0
/* 805CD67C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805CD680  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 805CD684  C0 1E 07 5C */	lfs f0, 0x75c(r30)
/* 805CD688  EC 01 00 28 */	fsubs f0, f1, f0
/* 805CD68C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805CD690  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 805CD694  C0 3E 07 58 */	lfs f1, 0x758(r30)
/* 805CD698  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805CD69C  54 00 10 3A */	slwi r0, r0, 2
/* 805CD6A0  3C 60 80 5E */	lis r3, HeadAngleDt@ha
/* 805CD6A4  38 63 D4 9C */	addi r3, r3, HeadAngleDt@l
/* 805CD6A8  7C 03 04 2E */	lfsx f0, r3, r0
/* 805CD6AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805CD6B0  EC 02 00 28 */	fsubs f0, f2, f0
/* 805CD6B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805CD6B8  38 61 00 10 */	addi r3, r1, 0x10
/* 805CD6BC  4B C9 9A 94 */	b atan2sY_XZ__4cXyzCFv
/* 805CD6C0  7C 60 07 34 */	extsh r0, r3
/* 805CD6C4  7C 00 00 D0 */	neg r0, r0
/* 805CD6C8  3C 60 80 5E */	lis r3, lit_5154@ha
/* 805CD6CC  C8 23 CA EC */	lfd f1, lit_5154@l(r3)
/* 805CD6D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805CD6D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD6D8  3C 00 43 30 */	lis r0, 0x4330
/* 805CD6DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 805CD6E0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805CD6E4  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CD6E8  3C 60 80 5E */	lis r3, lit_4649@ha
/* 805CD6EC  C0 03 CA CC */	lfs f0, lit_4649@l(r3)
/* 805CD6F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805CD6F4  FC 00 00 1E */	fctiwz f0, f0
/* 805CD6F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805CD6FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805CD700  B0 01 00 08 */	sth r0, 8(r1)
/* 805CD704  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 805CD708  2C 00 00 06 */	cmpwi r0, 6
/* 805CD70C  40 82 00 20 */	bne lbl_805CD72C
/* 805CD710  A8 7E 07 CC */	lha r3, 0x7cc(r30)
/* 805CD714  B0 61 00 08 */	sth r3, 8(r1)
/* 805CD718  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805CD71C  1C 00 00 C8 */	mulli r0, r0, 0xc8
/* 805CD720  7C 00 07 34 */	extsh r0, r0
/* 805CD724  7C 03 02 14 */	add r0, r3, r0
/* 805CD728  B0 01 00 08 */	sth r0, 8(r1)
lbl_805CD72C:
/* 805CD72C  A8 01 00 08 */	lha r0, 8(r1)
/* 805CD730  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805CD734  40 81 00 10 */	ble lbl_805CD744
/* 805CD738  38 00 20 00 */	li r0, 0x2000
/* 805CD73C  B0 01 00 08 */	sth r0, 8(r1)
/* 805CD740  48 00 00 14 */	b lbl_805CD754
lbl_805CD744:
/* 805CD744  2C 00 FC 00 */	cmpwi r0, -1024
/* 805CD748  40 80 00 0C */	bge lbl_805CD754
/* 805CD74C  38 00 FC 00 */	li r0, -1024
/* 805CD750  B0 01 00 08 */	sth r0, 8(r1)
lbl_805CD754:
/* 805CD754  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 805CD758  A8 01 00 08 */	lha r0, 8(r1)
/* 805CD75C  7C 00 00 D0 */	neg r0, r0
/* 805CD760  7C 04 07 34 */	extsh r4, r0
/* 805CD764  38 A0 00 14 */	li r5, 0x14
/* 805CD768  38 C0 01 00 */	li r6, 0x100
/* 805CD76C  4B CA 2E 9C */	b cLib_addCalcAngleS2__FPssss
/* 805CD770  38 61 00 10 */	addi r3, r1, 0x10
/* 805CD774  4B C9 99 B4 */	b atan2sX_Z__4cXyzCFv
/* 805CD778  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805CD77C  7C 63 00 50 */	subf r3, r3, r0
/* 805CD780  7C 60 07 34 */	extsh r0, r3
/* 805CD784  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805CD788  2C 00 30 00 */	cmpwi r0, 0x3000
/* 805CD78C  40 81 00 10 */	ble lbl_805CD79C
/* 805CD790  38 00 30 00 */	li r0, 0x3000
/* 805CD794  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805CD798  48 00 00 14 */	b lbl_805CD7AC
lbl_805CD79C:
/* 805CD79C  2C 00 D0 00 */	cmpwi r0, -12288
/* 805CD7A0  40 80 00 0C */	bge lbl_805CD7AC
/* 805CD7A4  38 00 D0 00 */	li r0, -12288
/* 805CD7A8  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_805CD7AC:
/* 805CD7AC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 805CD7B0  A8 1E 07 AA */	lha r0, 0x7aa(r30)
/* 805CD7B4  7C 03 00 50 */	subf r0, r3, r0
/* 805CD7B8  7C 03 07 34 */	extsh r3, r0
/* 805CD7BC  4B D9 79 14 */	b abs
/* 805CD7C0  2C 03 01 00 */	cmpwi r3, 0x100
/* 805CD7C4  40 81 00 68 */	ble lbl_805CD82C
/* 805CD7C8  7F C3 F3 78 */	mr r3, r30
/* 805CD7CC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CD7D0  4B A4 CF 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CD7D4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805CD7D8  7C 00 18 50 */	subf r0, r0, r3
/* 805CD7DC  7C 03 07 34 */	extsh r3, r0
/* 805CD7E0  4B D9 78 F0 */	b abs
/* 805CD7E4  2C 03 40 00 */	cmpwi r3, 0x4000
/* 805CD7E8  40 80 00 3C */	bge lbl_805CD824
/* 805CD7EC  7F C3 F3 78 */	mr r3, r30
/* 805CD7F0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CD7F4  4B A4 CF EC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CD7F8  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CD7FC  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805CD800  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805CD804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CD808  40 81 00 1C */	ble lbl_805CD824
/* 805CD80C  38 7E 07 AA */	addi r3, r30, 0x7aa
/* 805CD810  A8 81 00 0A */	lha r4, 0xa(r1)
/* 805CD814  38 A0 00 14 */	li r5, 0x14
/* 805CD818  38 C0 02 00 */	li r6, 0x200
/* 805CD81C  4B CA 2D EC */	b cLib_addCalcAngleS2__FPssss
/* 805CD820  48 00 00 0C */	b lbl_805CD82C
lbl_805CD824:
/* 805CD824  7F C3 F3 78 */	mr r3, r30
/* 805CD828  4B FF E4 D9 */	bl mHeadAngle_Clear__8daB_DS_cFv
lbl_805CD82C:
/* 805CD82C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805CD830  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805CD834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805CD838  7C 08 03 A6 */	mtlr r0
/* 805CD83C  38 21 00 40 */	addi r1, r1, 0x40
/* 805CD840  4E 80 00 20 */	blr 
