lbl_806883D0:
/* 806883D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806883D4  7C 08 02 A6 */	mflr r0
/* 806883D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806883DC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 806883E0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 806883E4  39 61 00 50 */	addi r11, r1, 0x50
/* 806883E8  4B CD 9D F5 */	bl _savegpr_29
/* 806883EC  7C 7D 1B 78 */	mr r29, r3
/* 806883F0  3C 80 80 69 */	lis r4, lit_3768@ha /* 0x8068A244@ha */
/* 806883F4  3B E4 A2 44 */	addi r31, r4, lit_3768@l /* 0x8068A244@l */
/* 806883F8  4B FF DB 0D */	bl search_esa__8daE_BG_cFv
/* 806883FC  28 03 00 00 */	cmplwi r3, 0
/* 80688400  40 82 00 18 */	bne lbl_80688418
/* 80688404  7F A3 EB 78 */	mr r3, r29
/* 80688408  38 80 00 01 */	li r4, 1
/* 8068840C  38 A0 00 00 */	li r5, 0
/* 80688410  4B FF D8 05 */	bl setActionMode__8daE_BG_cFii
/* 80688414  48 00 0D 34 */	b lbl_80689148
lbl_80688418:
/* 80688418  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8068841C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80688420  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80688424  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80688428  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8068842C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80688430  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80688434  38 81 00 24 */	addi r4, r1, 0x24
/* 80688438  4B BE 87 CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8068843C  7C 7E 07 34 */	extsh r30, r3
/* 80688440  38 00 0C 00 */	li r0, 0xc00
/* 80688444  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 80688448  A8 7D 06 9C */	lha r3, 0x69c(r29)
/* 8068844C  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 80688450  7C 03 02 14 */	add r0, r3, r0
/* 80688454  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80688458  80 1D 06 74 */	lwz r0, 0x674(r29)
/* 8068845C  28 00 00 07 */	cmplwi r0, 7
/* 80688460  41 81 0C E0 */	bgt lbl_80689140
/* 80688464  3C 60 80 69 */	lis r3, lit_5098@ha /* 0x8068A3CC@ha */
/* 80688468  38 63 A3 CC */	addi r3, r3, lit_5098@l /* 0x8068A3CC@l */
/* 8068846C  54 00 10 3A */	slwi r0, r0, 2
/* 80688470  7C 03 00 2E */	lwzx r0, r3, r0
/* 80688474  7C 09 03 A6 */	mtctr r0
/* 80688478  4E 80 04 20 */	bctr 
lbl_8068847C:
/* 8068847C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80688480  4B BD F5 0D */	bl cM_rndFX__Ff
/* 80688484  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80688488  EC 00 08 2A */	fadds f0, f0, f1
/* 8068848C  D0 1D 06 64 */	stfs f0, 0x664(r29)
/* 80688490  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80688494  C0 5D 06 84 */	lfs f2, 0x684(r29)
/* 80688498  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8068849C  41 82 00 1C */	beq lbl_806884B8
/* 806884A0  C0 3D 06 64 */	lfs f1, 0x664(r29)
/* 806884A4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806884A8  EC 02 00 28 */	fsubs f0, f2, f0
/* 806884AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806884B0  40 81 00 08 */	ble lbl_806884B8
/* 806884B4  D0 1D 06 64 */	stfs f0, 0x664(r29)
lbl_806884B8:
/* 806884B8  4B BD F3 B5 */	bl cM_rnd__Fv
/* 806884BC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806884C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806884C4  40 80 00 10 */	bge lbl_806884D4
/* 806884C8  38 1E 20 00 */	addi r0, r30, 0x2000
/* 806884CC  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 806884D0  48 00 00 0C */	b lbl_806884DC
lbl_806884D4:
/* 806884D4  38 1E E0 00 */	addi r0, r30, -8192
/* 806884D8  B0 1D 06 9A */	sth r0, 0x69a(r29)
lbl_806884DC:
/* 806884DC  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 806884E0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806884E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806884E8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806884EC  7F E3 04 2E */	lfsx f31, r3, r0
/* 806884F0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 806884F4  4B BD F4 61 */	bl cM_rndF__Ff
/* 806884F8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806884FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80688500  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80688504  D0 1D 06 60 */	stfs f0, 0x660(r29)
/* 80688508  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8068850C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688510  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 80688514  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688518  7C 63 02 14 */	add r3, r3, r0
/* 8068851C  C3 E3 00 04 */	lfs f31, 4(r3)
/* 80688520  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80688524  4B BD F4 31 */	bl cM_rndF__Ff
/* 80688528  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8068852C  EC 00 08 2A */	fadds f0, f0, f1
/* 80688530  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80688534  D0 1D 06 68 */	stfs f0, 0x668(r29)
/* 80688538  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8068853C  4B BD F4 51 */	bl cM_rndFX__Ff
/* 80688540  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80688544  EC 00 08 2A */	fadds f0, f0, f1
/* 80688548  FC 00 00 1E */	fctiwz f0, f0
/* 8068854C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80688550  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80688554  98 1D 06 8F */	stb r0, 0x68f(r29)
/* 80688558  38 00 00 01 */	li r0, 1
/* 8068855C  90 1D 06 74 */	stw r0, 0x674(r29)
lbl_80688560:
/* 80688560  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80688564  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 80688568  7C 03 00 50 */	subf r0, r3, r0
/* 8068856C  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80688570  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80688574  A8 9D 06 9A */	lha r4, 0x69a(r29)
/* 80688578  38 A0 00 10 */	li r5, 0x10
/* 8068857C  38 C0 04 00 */	li r6, 0x400
/* 80688580  38 E0 01 00 */	li r7, 0x100
/* 80688584  4B BE 7F BD */	bl cLib_addCalcAngleS__FPsssss
/* 80688588  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8068858C  38 80 00 00 */	li r4, 0
/* 80688590  38 A0 00 10 */	li r5, 0x10
/* 80688594  38 C0 04 00 */	li r6, 0x400
/* 80688598  38 E0 01 00 */	li r7, 0x100
/* 8068859C  4B BE 7F A5 */	bl cLib_addCalcAngleS__FPsssss
/* 806885A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806885A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806885A8  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 806885AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806885B0  7C 63 02 14 */	add r3, r3, r0
/* 806885B4  C0 23 00 04 */	lfs f1, 4(r3)
/* 806885B8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 806885BC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806885C0  EC 20 00 72 */	fmuls f1, f0, f1
/* 806885C4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806885C8  4B BE 81 79 */	bl cLib_chaseF__FPfff
/* 806885CC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 806885D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806885D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806885D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806885DC  7C 23 04 2E */	lfsx f1, r3, r0
/* 806885E0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 806885E4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806885E8  EC 20 00 72 */	fmuls f1, f0, f1
/* 806885EC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806885F0  4B BE 81 51 */	bl cLib_chaseF__FPfff
/* 806885F4  38 00 20 00 */	li r0, 0x2000
/* 806885F8  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 806885FC  A8 7D 06 9A */	lha r3, 0x69a(r29)
/* 80688600  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80688604  7C 03 00 50 */	subf r0, r3, r0
/* 80688608  7C 03 07 34 */	extsh r3, r0
/* 8068860C  4B CD CA C5 */	bl abs
/* 80688610  2C 03 08 00 */	cmpwi r3, 0x800
/* 80688614  40 80 00 0C */	bge lbl_80688620
/* 80688618  38 00 00 02 */	li r0, 2
/* 8068861C  90 1D 06 74 */	stw r0, 0x674(r29)
lbl_80688620:
/* 80688620  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80688624  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 80688628  7C 03 00 50 */	subf r0, r3, r0
/* 8068862C  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80688630  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80688634  A8 9D 06 9A */	lha r4, 0x69a(r29)
/* 80688638  38 A0 00 10 */	li r5, 0x10
/* 8068863C  38 C0 04 00 */	li r6, 0x400
/* 80688640  38 E0 01 00 */	li r7, 0x100
/* 80688644  4B BE 7E FD */	bl cLib_addCalcAngleS__FPsssss
/* 80688648  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8068864C  38 9D 06 60 */	addi r4, r29, 0x660
/* 80688650  4B BE 86 25 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80688654  7C 64 07 34 */	extsh r4, r3
/* 80688658  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8068865C  38 A0 00 10 */	li r5, 0x10
/* 80688660  38 C0 04 00 */	li r6, 0x400
/* 80688664  38 E0 01 00 */	li r7, 0x100
/* 80688668  4B BE 7E D9 */	bl cLib_addCalcAngleS__FPsssss
/* 8068866C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688670  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688674  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688678  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8068867C  7C 63 02 14 */	add r3, r3, r0
/* 80688680  C0 23 00 04 */	lfs f1, 4(r3)
/* 80688684  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80688688  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8068868C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80688690  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80688694  4B BE 80 AD */	bl cLib_chaseF__FPfff
/* 80688698  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 8068869C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806886A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806886A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806886A8  7C 23 04 2E */	lfsx f1, r3, r0
/* 806886AC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 806886B0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806886B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 806886B8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806886BC  4B BE 80 85 */	bl cLib_chaseF__FPfff
/* 806886C0  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 806886C4  38 80 0C 00 */	li r4, 0xc00
/* 806886C8  38 A0 00 08 */	li r5, 8
/* 806886CC  38 C0 04 00 */	li r6, 0x400
/* 806886D0  38 E0 01 00 */	li r7, 0x100
/* 806886D4  4B BE 7E 6D */	bl cLib_addCalcAngleS__FPsssss
/* 806886D8  38 7D 06 60 */	addi r3, r29, 0x660
/* 806886DC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806886E0  4B CB EC BD */	bl PSVECSquareDistance
/* 806886E4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806886E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806886EC  40 81 00 58 */	ble lbl_80688744
/* 806886F0  FC 00 08 34 */	frsqrte f0, f1
/* 806886F4  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 806886F8  FC 44 00 32 */	fmul f2, f4, f0
/* 806886FC  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80688700  FC 00 00 32 */	fmul f0, f0, f0
/* 80688704  FC 01 00 32 */	fmul f0, f1, f0
/* 80688708  FC 03 00 28 */	fsub f0, f3, f0
/* 8068870C  FC 02 00 32 */	fmul f0, f2, f0
/* 80688710  FC 44 00 32 */	fmul f2, f4, f0
/* 80688714  FC 00 00 32 */	fmul f0, f0, f0
/* 80688718  FC 01 00 32 */	fmul f0, f1, f0
/* 8068871C  FC 03 00 28 */	fsub f0, f3, f0
/* 80688720  FC 02 00 32 */	fmul f0, f2, f0
/* 80688724  FC 44 00 32 */	fmul f2, f4, f0
/* 80688728  FC 00 00 32 */	fmul f0, f0, f0
/* 8068872C  FC 01 00 32 */	fmul f0, f1, f0
/* 80688730  FC 03 00 28 */	fsub f0, f3, f0
/* 80688734  FC 02 00 32 */	fmul f0, f2, f0
/* 80688738  FC 21 00 32 */	fmul f1, f1, f0
/* 8068873C  FC 20 08 18 */	frsp f1, f1
/* 80688740  48 00 00 88 */	b lbl_806887C8
lbl_80688744:
/* 80688744  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80688748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068874C  40 80 00 10 */	bge lbl_8068875C
/* 80688750  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688754  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80688758  48 00 00 70 */	b lbl_806887C8
lbl_8068875C:
/* 8068875C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80688760  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80688764  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80688768  3C 00 7F 80 */	lis r0, 0x7f80
/* 8068876C  7C 03 00 00 */	cmpw r3, r0
/* 80688770  41 82 00 14 */	beq lbl_80688784
/* 80688774  40 80 00 40 */	bge lbl_806887B4
/* 80688778  2C 03 00 00 */	cmpwi r3, 0
/* 8068877C  41 82 00 20 */	beq lbl_8068879C
/* 80688780  48 00 00 34 */	b lbl_806887B4
lbl_80688784:
/* 80688784  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688788  41 82 00 0C */	beq lbl_80688794
/* 8068878C  38 00 00 01 */	li r0, 1
/* 80688790  48 00 00 28 */	b lbl_806887B8
lbl_80688794:
/* 80688794  38 00 00 02 */	li r0, 2
/* 80688798  48 00 00 20 */	b lbl_806887B8
lbl_8068879C:
/* 8068879C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806887A0  41 82 00 0C */	beq lbl_806887AC
/* 806887A4  38 00 00 05 */	li r0, 5
/* 806887A8  48 00 00 10 */	b lbl_806887B8
lbl_806887AC:
/* 806887AC  38 00 00 03 */	li r0, 3
/* 806887B0  48 00 00 08 */	b lbl_806887B8
lbl_806887B4:
/* 806887B4  38 00 00 04 */	li r0, 4
lbl_806887B8:
/* 806887B8  2C 00 00 01 */	cmpwi r0, 1
/* 806887BC  40 82 00 0C */	bne lbl_806887C8
/* 806887C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806887C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806887C8:
/* 806887C8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806887CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806887D0  40 80 00 0C */	bge lbl_806887DC
/* 806887D4  38 00 00 03 */	li r0, 3
/* 806887D8  90 1D 06 74 */	stw r0, 0x674(r29)
lbl_806887DC:
/* 806887DC  88 1D 06 8F */	lbz r0, 0x68f(r29)
/* 806887E0  28 00 00 00 */	cmplwi r0, 0
/* 806887E4  40 82 09 5C */	bne lbl_80689140
/* 806887E8  38 00 00 03 */	li r0, 3
/* 806887EC  90 1D 06 74 */	stw r0, 0x674(r29)
/* 806887F0  48 00 09 50 */	b lbl_80689140
lbl_806887F4:
/* 806887F4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 806887F8  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 806887FC  7C 03 00 50 */	subf r0, r3, r0
/* 80688800  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80688804  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80688808  A8 9D 06 9A */	lha r4, 0x69a(r29)
/* 8068880C  38 A0 00 10 */	li r5, 0x10
/* 80688810  38 C0 04 00 */	li r6, 0x400
/* 80688814  38 E0 01 00 */	li r7, 0x100
/* 80688818  4B BE 7D 29 */	bl cLib_addCalcAngleS__FPsssss
/* 8068881C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80688820  38 80 00 00 */	li r4, 0
/* 80688824  38 A0 00 10 */	li r5, 0x10
/* 80688828  38 C0 04 00 */	li r6, 0x400
/* 8068882C  38 E0 01 00 */	li r7, 0x100
/* 80688830  4B BE 7D 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80688834  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80688838  38 80 08 00 */	li r4, 0x800
/* 8068883C  38 A0 00 08 */	li r5, 8
/* 80688840  38 C0 04 00 */	li r6, 0x400
/* 80688844  38 E0 01 00 */	li r7, 0x100
/* 80688848  4B BE 7C F9 */	bl cLib_addCalcAngleS__FPsssss
/* 8068884C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688850  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688854  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688858  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8068885C  7C 63 02 14 */	add r3, r3, r0
/* 80688860  C0 23 00 04 */	lfs f1, 4(r3)
/* 80688864  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80688868  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8068886C  4B BE 7E D5 */	bl cLib_chaseF__FPfff
/* 80688870  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688874  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688878  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8068887C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688880  7C 23 04 2E */	lfsx f1, r3, r0
/* 80688884  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80688888  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8068888C  4B BE 7E B5 */	bl cLib_chaseF__FPfff
/* 80688890  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80688894  4B CB E8 A5 */	bl PSVECSquareMag
/* 80688898  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8068889C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806888A0  40 81 00 58 */	ble lbl_806888F8
/* 806888A4  FC 00 08 34 */	frsqrte f0, f1
/* 806888A8  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 806888AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806888B0  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 806888B4  FC 00 00 32 */	fmul f0, f0, f0
/* 806888B8  FC 01 00 32 */	fmul f0, f1, f0
/* 806888BC  FC 03 00 28 */	fsub f0, f3, f0
/* 806888C0  FC 02 00 32 */	fmul f0, f2, f0
/* 806888C4  FC 44 00 32 */	fmul f2, f4, f0
/* 806888C8  FC 00 00 32 */	fmul f0, f0, f0
/* 806888CC  FC 01 00 32 */	fmul f0, f1, f0
/* 806888D0  FC 03 00 28 */	fsub f0, f3, f0
/* 806888D4  FC 02 00 32 */	fmul f0, f2, f0
/* 806888D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806888DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806888E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806888E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806888E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806888EC  FC 21 00 32 */	fmul f1, f1, f0
/* 806888F0  FC 20 08 18 */	frsp f1, f1
/* 806888F4  48 00 00 88 */	b lbl_8068897C
lbl_806888F8:
/* 806888F8  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806888FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688900  40 80 00 10 */	bge lbl_80688910
/* 80688904  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688908  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8068890C  48 00 00 70 */	b lbl_8068897C
lbl_80688910:
/* 80688910  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80688914  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80688918  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068891C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80688920  7C 03 00 00 */	cmpw r3, r0
/* 80688924  41 82 00 14 */	beq lbl_80688938
/* 80688928  40 80 00 40 */	bge lbl_80688968
/* 8068892C  2C 03 00 00 */	cmpwi r3, 0
/* 80688930  41 82 00 20 */	beq lbl_80688950
/* 80688934  48 00 00 34 */	b lbl_80688968
lbl_80688938:
/* 80688938  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068893C  41 82 00 0C */	beq lbl_80688948
/* 80688940  38 00 00 01 */	li r0, 1
/* 80688944  48 00 00 28 */	b lbl_8068896C
lbl_80688948:
/* 80688948  38 00 00 02 */	li r0, 2
/* 8068894C  48 00 00 20 */	b lbl_8068896C
lbl_80688950:
/* 80688950  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688954  41 82 00 0C */	beq lbl_80688960
/* 80688958  38 00 00 05 */	li r0, 5
/* 8068895C  48 00 00 10 */	b lbl_8068896C
lbl_80688960:
/* 80688960  38 00 00 03 */	li r0, 3
/* 80688964  48 00 00 08 */	b lbl_8068896C
lbl_80688968:
/* 80688968  38 00 00 04 */	li r0, 4
lbl_8068896C:
/* 8068896C  2C 00 00 01 */	cmpwi r0, 1
/* 80688970  40 82 00 0C */	bne lbl_8068897C
/* 80688974  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688978  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8068897C:
/* 8068897C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80688980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688984  4C 40 13 82 */	cror 2, 0, 2
/* 80688988  40 82 07 B8 */	bne lbl_80689140
/* 8068898C  38 61 00 24 */	addi r3, r1, 0x24
/* 80688990  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80688994  4B CB EA 09 */	bl PSVECSquareDistance
/* 80688998  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8068899C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806889A0  40 81 00 58 */	ble lbl_806889F8
/* 806889A4  FC 00 08 34 */	frsqrte f0, f1
/* 806889A8  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 806889AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806889B0  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 806889B4  FC 00 00 32 */	fmul f0, f0, f0
/* 806889B8  FC 01 00 32 */	fmul f0, f1, f0
/* 806889BC  FC 03 00 28 */	fsub f0, f3, f0
/* 806889C0  FC 02 00 32 */	fmul f0, f2, f0
/* 806889C4  FC 44 00 32 */	fmul f2, f4, f0
/* 806889C8  FC 00 00 32 */	fmul f0, f0, f0
/* 806889CC  FC 01 00 32 */	fmul f0, f1, f0
/* 806889D0  FC 03 00 28 */	fsub f0, f3, f0
/* 806889D4  FC 02 00 32 */	fmul f0, f2, f0
/* 806889D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806889DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806889E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806889E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806889E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806889EC  FC 21 00 32 */	fmul f1, f1, f0
/* 806889F0  FC 20 08 18 */	frsp f1, f1
/* 806889F4  48 00 00 88 */	b lbl_80688A7C
lbl_806889F8:
/* 806889F8  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806889FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688A00  40 80 00 10 */	bge lbl_80688A10
/* 80688A04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688A08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80688A0C  48 00 00 70 */	b lbl_80688A7C
lbl_80688A10:
/* 80688A10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80688A14  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80688A18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80688A1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80688A20  7C 03 00 00 */	cmpw r3, r0
/* 80688A24  41 82 00 14 */	beq lbl_80688A38
/* 80688A28  40 80 00 40 */	bge lbl_80688A68
/* 80688A2C  2C 03 00 00 */	cmpwi r3, 0
/* 80688A30  41 82 00 20 */	beq lbl_80688A50
/* 80688A34  48 00 00 34 */	b lbl_80688A68
lbl_80688A38:
/* 80688A38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688A3C  41 82 00 0C */	beq lbl_80688A48
/* 80688A40  38 00 00 01 */	li r0, 1
/* 80688A44  48 00 00 28 */	b lbl_80688A6C
lbl_80688A48:
/* 80688A48  38 00 00 02 */	li r0, 2
/* 80688A4C  48 00 00 20 */	b lbl_80688A6C
lbl_80688A50:
/* 80688A50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688A54  41 82 00 0C */	beq lbl_80688A60
/* 80688A58  38 00 00 05 */	li r0, 5
/* 80688A5C  48 00 00 10 */	b lbl_80688A6C
lbl_80688A60:
/* 80688A60  38 00 00 03 */	li r0, 3
/* 80688A64  48 00 00 08 */	b lbl_80688A6C
lbl_80688A68:
/* 80688A68  38 00 00 04 */	li r0, 4
lbl_80688A6C:
/* 80688A6C  2C 00 00 01 */	cmpwi r0, 1
/* 80688A70  40 82 00 0C */	bne lbl_80688A7C
/* 80688A74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688A78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80688A7C:
/* 80688A7C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80688A80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688A84  40 80 00 10 */	bge lbl_80688A94
/* 80688A88  38 00 00 05 */	li r0, 5
/* 80688A8C  90 1D 06 74 */	stw r0, 0x674(r29)
/* 80688A90  48 00 06 B0 */	b lbl_80689140
lbl_80688A94:
/* 80688A94  38 00 00 00 */	li r0, 0
/* 80688A98  90 1D 06 74 */	stw r0, 0x674(r29)
/* 80688A9C  48 00 06 A4 */	b lbl_80689140
lbl_80688AA0:
/* 80688AA0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80688AA4  7C 00 F0 50 */	subf r0, r0, r30
/* 80688AA8  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80688AAC  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80688AB0  38 80 08 00 */	li r4, 0x800
/* 80688AB4  38 A0 00 08 */	li r5, 8
/* 80688AB8  38 C0 04 00 */	li r6, 0x400
/* 80688ABC  38 E0 01 00 */	li r7, 0x100
/* 80688AC0  4B BE 7A 81 */	bl cLib_addCalcAngleS__FPsssss
/* 80688AC4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80688AC8  7F C4 F3 78 */	mr r4, r30
/* 80688ACC  38 A0 00 10 */	li r5, 0x10
/* 80688AD0  38 C0 04 00 */	li r6, 0x400
/* 80688AD4  38 E0 01 00 */	li r7, 0x100
/* 80688AD8  4B BE 7A 69 */	bl cLib_addCalcAngleS__FPsssss
/* 80688ADC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80688AE0  38 81 00 24 */	addi r4, r1, 0x24
/* 80688AE4  4B BE 81 91 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80688AE8  7C 64 07 34 */	extsh r4, r3
/* 80688AEC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80688AF0  38 A0 00 10 */	li r5, 0x10
/* 80688AF4  38 C0 04 00 */	li r6, 0x400
/* 80688AF8  38 E0 01 00 */	li r7, 0x100
/* 80688AFC  4B BE 7A 45 */	bl cLib_addCalcAngleS__FPsssss
/* 80688B00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688B04  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688B08  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688B0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688B10  7C 63 02 14 */	add r3, r3, r0
/* 80688B14  C0 23 00 04 */	lfs f1, 4(r3)
/* 80688B18  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80688B1C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80688B20  4B BE 7C 21 */	bl cLib_chaseF__FPfff
/* 80688B24  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688B28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688B2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688B30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688B34  7C 23 04 2E */	lfsx f1, r3, r0
/* 80688B38  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80688B3C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80688B40  4B BE 7C 01 */	bl cLib_chaseF__FPfff
/* 80688B44  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80688B48  7C 1E 00 50 */	subf r0, r30, r0
/* 80688B4C  7C 03 07 34 */	extsh r3, r0
/* 80688B50  4B CD C5 81 */	bl abs
/* 80688B54  2C 03 08 00 */	cmpwi r3, 0x800
/* 80688B58  40 80 00 0C */	bge lbl_80688B64
/* 80688B5C  38 00 00 06 */	li r0, 6
/* 80688B60  90 1D 06 74 */	stw r0, 0x674(r29)
lbl_80688B64:
/* 80688B64  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80688B68  7C 00 F0 50 */	subf r0, r0, r30
/* 80688B6C  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80688B70  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80688B74  38 80 24 00 */	li r4, 0x2400
/* 80688B78  38 A0 00 08 */	li r5, 8
/* 80688B7C  38 C0 04 00 */	li r6, 0x400
/* 80688B80  38 E0 01 00 */	li r7, 0x100
/* 80688B84  4B BE 79 BD */	bl cLib_addCalcAngleS__FPsssss
/* 80688B88  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80688B8C  7F C4 F3 78 */	mr r4, r30
/* 80688B90  38 A0 00 10 */	li r5, 0x10
/* 80688B94  38 C0 04 00 */	li r6, 0x400
/* 80688B98  38 E0 01 00 */	li r7, 0x100
/* 80688B9C  4B BE 79 A5 */	bl cLib_addCalcAngleS__FPsssss
/* 80688BA0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80688BA4  38 81 00 24 */	addi r4, r1, 0x24
/* 80688BA8  4B BE 80 CD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80688BAC  7C 64 07 34 */	extsh r4, r3
/* 80688BB0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80688BB4  38 A0 00 10 */	li r5, 0x10
/* 80688BB8  38 C0 04 00 */	li r6, 0x400
/* 80688BBC  38 E0 01 00 */	li r7, 0x100
/* 80688BC0  4B BE 79 81 */	bl cLib_addCalcAngleS__FPsssss
/* 80688BC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688BC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688BCC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688BD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688BD4  7C 63 02 14 */	add r3, r3, r0
/* 80688BD8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80688BDC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80688BE0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80688BE4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80688BE8  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80688BEC  4B BE 7B 55 */	bl cLib_chaseF__FPfff
/* 80688BF0  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688BF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688BF8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688BFC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688C00  7C 23 04 2E */	lfsx f1, r3, r0
/* 80688C04  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80688C08  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80688C0C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80688C10  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80688C14  4B BE 7B 2D */	bl cLib_chaseF__FPfff
/* 80688C18  38 61 00 24 */	addi r3, r1, 0x24
/* 80688C1C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80688C20  4B CB E7 7D */	bl PSVECSquareDistance
/* 80688C24  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80688C28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688C2C  40 81 00 58 */	ble lbl_80688C84
/* 80688C30  FC 00 08 34 */	frsqrte f0, f1
/* 80688C34  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80688C38  FC 44 00 32 */	fmul f2, f4, f0
/* 80688C3C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80688C40  FC 00 00 32 */	fmul f0, f0, f0
/* 80688C44  FC 01 00 32 */	fmul f0, f1, f0
/* 80688C48  FC 03 00 28 */	fsub f0, f3, f0
/* 80688C4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80688C50  FC 44 00 32 */	fmul f2, f4, f0
/* 80688C54  FC 00 00 32 */	fmul f0, f0, f0
/* 80688C58  FC 01 00 32 */	fmul f0, f1, f0
/* 80688C5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80688C60  FC 02 00 32 */	fmul f0, f2, f0
/* 80688C64  FC 44 00 32 */	fmul f2, f4, f0
/* 80688C68  FC 00 00 32 */	fmul f0, f0, f0
/* 80688C6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80688C70  FC 03 00 28 */	fsub f0, f3, f0
/* 80688C74  FC 02 00 32 */	fmul f0, f2, f0
/* 80688C78  FC 21 00 32 */	fmul f1, f1, f0
/* 80688C7C  FC 20 08 18 */	frsp f1, f1
/* 80688C80  48 00 00 88 */	b lbl_80688D08
lbl_80688C84:
/* 80688C84  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80688C88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688C8C  40 80 00 10 */	bge lbl_80688C9C
/* 80688C90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688C94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80688C98  48 00 00 70 */	b lbl_80688D08
lbl_80688C9C:
/* 80688C9C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80688CA0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80688CA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80688CA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80688CAC  7C 03 00 00 */	cmpw r3, r0
/* 80688CB0  41 82 00 14 */	beq lbl_80688CC4
/* 80688CB4  40 80 00 40 */	bge lbl_80688CF4
/* 80688CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80688CBC  41 82 00 20 */	beq lbl_80688CDC
/* 80688CC0  48 00 00 34 */	b lbl_80688CF4
lbl_80688CC4:
/* 80688CC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688CC8  41 82 00 0C */	beq lbl_80688CD4
/* 80688CCC  38 00 00 01 */	li r0, 1
/* 80688CD0  48 00 00 28 */	b lbl_80688CF8
lbl_80688CD4:
/* 80688CD4  38 00 00 02 */	li r0, 2
/* 80688CD8  48 00 00 20 */	b lbl_80688CF8
lbl_80688CDC:
/* 80688CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688CE0  41 82 00 0C */	beq lbl_80688CEC
/* 80688CE4  38 00 00 05 */	li r0, 5
/* 80688CE8  48 00 00 10 */	b lbl_80688CF8
lbl_80688CEC:
/* 80688CEC  38 00 00 03 */	li r0, 3
/* 80688CF0  48 00 00 08 */	b lbl_80688CF8
lbl_80688CF4:
/* 80688CF4  38 00 00 04 */	li r0, 4
lbl_80688CF8:
/* 80688CF8  2C 00 00 01 */	cmpwi r0, 1
/* 80688CFC  40 82 00 0C */	bne lbl_80688D08
/* 80688D00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688D04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80688D08:
/* 80688D08  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80688D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688D10  40 80 04 30 */	bge lbl_80689140
/* 80688D14  38 00 00 07 */	li r0, 7
/* 80688D18  90 1D 06 74 */	stw r0, 0x674(r29)
/* 80688D1C  FC 20 00 90 */	fmr f1, f0
/* 80688D20  4B BD EC 35 */	bl cM_rndF__Ff
/* 80688D24  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80688D28  EC 00 08 2A */	fadds f0, f0, f1
/* 80688D2C  FC 00 00 1E */	fctiwz f0, f0
/* 80688D30  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80688D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80688D38  98 1D 06 8F */	stb r0, 0x68f(r29)
/* 80688D3C  48 00 04 04 */	b lbl_80689140
lbl_80688D40:
/* 80688D40  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80688D44  7C 00 F0 50 */	subf r0, r0, r30
/* 80688D48  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80688D4C  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80688D50  38 80 20 00 */	li r4, 0x2000
/* 80688D54  38 A0 00 08 */	li r5, 8
/* 80688D58  38 C0 04 00 */	li r6, 0x400
/* 80688D5C  38 E0 01 00 */	li r7, 0x100
/* 80688D60  4B BE 77 E1 */	bl cLib_addCalcAngleS__FPsssss
/* 80688D64  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80688D68  7F C4 F3 78 */	mr r4, r30
/* 80688D6C  38 A0 00 10 */	li r5, 0x10
/* 80688D70  38 C0 04 00 */	li r6, 0x400
/* 80688D74  38 E0 01 00 */	li r7, 0x100
/* 80688D78  4B BE 77 C9 */	bl cLib_addCalcAngleS__FPsssss
/* 80688D7C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80688D80  38 80 00 00 */	li r4, 0
/* 80688D84  38 A0 00 10 */	li r5, 0x10
/* 80688D88  38 C0 04 00 */	li r6, 0x400
/* 80688D8C  38 E0 01 00 */	li r7, 0x100
/* 80688D90  4B BE 77 B1 */	bl cLib_addCalcAngleS__FPsssss
/* 80688D94  38 61 00 24 */	addi r3, r1, 0x24
/* 80688D98  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80688D9C  4B CB E6 01 */	bl PSVECSquareDistance
/* 80688DA0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80688DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688DA8  40 81 00 58 */	ble lbl_80688E00
/* 80688DAC  FC 00 08 34 */	frsqrte f0, f1
/* 80688DB0  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80688DB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80688DB8  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80688DBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80688DC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80688DC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80688DC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80688DCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80688DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80688DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80688DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80688DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80688DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80688DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80688DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80688DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80688DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80688DF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80688DF8  FC 20 08 18 */	frsp f1, f1
/* 80688DFC  48 00 00 88 */	b lbl_80688E84
lbl_80688E00:
/* 80688E00  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80688E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688E08  40 80 00 10 */	bge lbl_80688E18
/* 80688E0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688E10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80688E14  48 00 00 70 */	b lbl_80688E84
lbl_80688E18:
/* 80688E18  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80688E1C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80688E20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80688E24  3C 00 7F 80 */	lis r0, 0x7f80
/* 80688E28  7C 03 00 00 */	cmpw r3, r0
/* 80688E2C  41 82 00 14 */	beq lbl_80688E40
/* 80688E30  40 80 00 40 */	bge lbl_80688E70
/* 80688E34  2C 03 00 00 */	cmpwi r3, 0
/* 80688E38  41 82 00 20 */	beq lbl_80688E58
/* 80688E3C  48 00 00 34 */	b lbl_80688E70
lbl_80688E40:
/* 80688E40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688E44  41 82 00 0C */	beq lbl_80688E50
/* 80688E48  38 00 00 01 */	li r0, 1
/* 80688E4C  48 00 00 28 */	b lbl_80688E74
lbl_80688E50:
/* 80688E50  38 00 00 02 */	li r0, 2
/* 80688E54  48 00 00 20 */	b lbl_80688E74
lbl_80688E58:
/* 80688E58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688E5C  41 82 00 0C */	beq lbl_80688E68
/* 80688E60  38 00 00 05 */	li r0, 5
/* 80688E64  48 00 00 10 */	b lbl_80688E74
lbl_80688E68:
/* 80688E68  38 00 00 03 */	li r0, 3
/* 80688E6C  48 00 00 08 */	b lbl_80688E74
lbl_80688E70:
/* 80688E70  38 00 00 04 */	li r0, 4
lbl_80688E74:
/* 80688E74  2C 00 00 01 */	cmpwi r0, 1
/* 80688E78  40 82 00 0C */	bne lbl_80688E84
/* 80688E7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688E80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80688E84:
/* 80688E84  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80688E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688E8C  40 81 00 28 */	ble lbl_80688EB4
/* 80688E90  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80688E94  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80688E98  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80688E9C  4B BE 78 A5 */	bl cLib_chaseF__FPfff
/* 80688EA0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80688EA4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80688EA8  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80688EAC  4B BE 78 95 */	bl cLib_chaseF__FPfff
/* 80688EB0  48 00 00 58 */	b lbl_80688F08
lbl_80688EB4:
/* 80688EB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688EB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688EBC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688EC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688EC4  7C 63 02 14 */	add r3, r3, r0
/* 80688EC8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80688ECC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80688ED0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80688ED4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80688ED8  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80688EDC  4B BE 78 65 */	bl cLib_chaseF__FPfff
/* 80688EE0  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80688EE4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80688EE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80688EEC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80688EF0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80688EF4  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80688EF8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80688EFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80688F00  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80688F04  4B BE 78 3D */	bl cLib_chaseF__FPfff
lbl_80688F08:
/* 80688F08  38 61 00 24 */	addi r3, r1, 0x24
/* 80688F0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80688F10  4B CB E4 8D */	bl PSVECSquareDistance
/* 80688F14  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80688F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688F1C  40 81 00 58 */	ble lbl_80688F74
/* 80688F20  FC 00 08 34 */	frsqrte f0, f1
/* 80688F24  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80688F28  FC 44 00 32 */	fmul f2, f4, f0
/* 80688F2C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80688F30  FC 00 00 32 */	fmul f0, f0, f0
/* 80688F34  FC 01 00 32 */	fmul f0, f1, f0
/* 80688F38  FC 03 00 28 */	fsub f0, f3, f0
/* 80688F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80688F40  FC 44 00 32 */	fmul f2, f4, f0
/* 80688F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80688F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80688F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80688F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80688F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80688F58  FC 00 00 32 */	fmul f0, f0, f0
/* 80688F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80688F60  FC 03 00 28 */	fsub f0, f3, f0
/* 80688F64  FC 02 00 32 */	fmul f0, f2, f0
/* 80688F68  FC 21 00 32 */	fmul f1, f1, f0
/* 80688F6C  FC 20 08 18 */	frsp f1, f1
/* 80688F70  48 00 00 88 */	b lbl_80688FF8
lbl_80688F74:
/* 80688F74  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80688F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80688F7C  40 80 00 10 */	bge lbl_80688F8C
/* 80688F80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688F84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80688F88  48 00 00 70 */	b lbl_80688FF8
lbl_80688F8C:
/* 80688F8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80688F90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80688F94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80688F98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80688F9C  7C 03 00 00 */	cmpw r3, r0
/* 80688FA0  41 82 00 14 */	beq lbl_80688FB4
/* 80688FA4  40 80 00 40 */	bge lbl_80688FE4
/* 80688FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80688FAC  41 82 00 20 */	beq lbl_80688FCC
/* 80688FB0  48 00 00 34 */	b lbl_80688FE4
lbl_80688FB4:
/* 80688FB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688FB8  41 82 00 0C */	beq lbl_80688FC4
/* 80688FBC  38 00 00 01 */	li r0, 1
/* 80688FC0  48 00 00 28 */	b lbl_80688FE8
lbl_80688FC4:
/* 80688FC4  38 00 00 02 */	li r0, 2
/* 80688FC8  48 00 00 20 */	b lbl_80688FE8
lbl_80688FCC:
/* 80688FCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80688FD0  41 82 00 0C */	beq lbl_80688FDC
/* 80688FD4  38 00 00 05 */	li r0, 5
/* 80688FD8  48 00 00 10 */	b lbl_80688FE8
lbl_80688FDC:
/* 80688FDC  38 00 00 03 */	li r0, 3
/* 80688FE0  48 00 00 08 */	b lbl_80688FE8
lbl_80688FE4:
/* 80688FE4  38 00 00 04 */	li r0, 4
lbl_80688FE8:
/* 80688FE8  2C 00 00 01 */	cmpwi r0, 1
/* 80688FEC  40 82 00 0C */	bne lbl_80688FF8
/* 80688FF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80688FF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80688FF8:
/* 80688FF8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80688FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80689000  40 81 01 48 */	ble lbl_80689148
/* 80689004  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80689008  4B CB E1 31 */	bl PSVECSquareMag
/* 8068900C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80689010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80689014  40 81 00 58 */	ble lbl_8068906C
/* 80689018  FC 00 08 34 */	frsqrte f0, f1
/* 8068901C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80689020  FC 44 00 32 */	fmul f2, f4, f0
/* 80689024  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80689028  FC 00 00 32 */	fmul f0, f0, f0
/* 8068902C  FC 01 00 32 */	fmul f0, f1, f0
/* 80689030  FC 03 00 28 */	fsub f0, f3, f0
/* 80689034  FC 02 00 32 */	fmul f0, f2, f0
/* 80689038  FC 44 00 32 */	fmul f2, f4, f0
/* 8068903C  FC 00 00 32 */	fmul f0, f0, f0
/* 80689040  FC 01 00 32 */	fmul f0, f1, f0
/* 80689044  FC 03 00 28 */	fsub f0, f3, f0
/* 80689048  FC 02 00 32 */	fmul f0, f2, f0
/* 8068904C  FC 44 00 32 */	fmul f2, f4, f0
/* 80689050  FC 00 00 32 */	fmul f0, f0, f0
/* 80689054  FC 01 00 32 */	fmul f0, f1, f0
/* 80689058  FC 03 00 28 */	fsub f0, f3, f0
/* 8068905C  FC 02 00 32 */	fmul f0, f2, f0
/* 80689060  FC 21 00 32 */	fmul f1, f1, f0
/* 80689064  FC 20 08 18 */	frsp f1, f1
/* 80689068  48 00 00 88 */	b lbl_806890F0
lbl_8068906C:
/* 8068906C  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80689070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80689074  40 80 00 10 */	bge lbl_80689084
/* 80689078  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8068907C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80689080  48 00 00 70 */	b lbl_806890F0
lbl_80689084:
/* 80689084  D0 21 00 08 */	stfs f1, 8(r1)
/* 80689088  80 81 00 08 */	lwz r4, 8(r1)
/* 8068908C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80689090  3C 00 7F 80 */	lis r0, 0x7f80
/* 80689094  7C 03 00 00 */	cmpw r3, r0
/* 80689098  41 82 00 14 */	beq lbl_806890AC
/* 8068909C  40 80 00 40 */	bge lbl_806890DC
/* 806890A0  2C 03 00 00 */	cmpwi r3, 0
/* 806890A4  41 82 00 20 */	beq lbl_806890C4
/* 806890A8  48 00 00 34 */	b lbl_806890DC
lbl_806890AC:
/* 806890AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806890B0  41 82 00 0C */	beq lbl_806890BC
/* 806890B4  38 00 00 01 */	li r0, 1
/* 806890B8  48 00 00 28 */	b lbl_806890E0
lbl_806890BC:
/* 806890BC  38 00 00 02 */	li r0, 2
/* 806890C0  48 00 00 20 */	b lbl_806890E0
lbl_806890C4:
/* 806890C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806890C8  41 82 00 0C */	beq lbl_806890D4
/* 806890CC  38 00 00 05 */	li r0, 5
/* 806890D0  48 00 00 10 */	b lbl_806890E0
lbl_806890D4:
/* 806890D4  38 00 00 03 */	li r0, 3
/* 806890D8  48 00 00 08 */	b lbl_806890E0
lbl_806890DC:
/* 806890DC  38 00 00 04 */	li r0, 4
lbl_806890E0:
/* 806890E0  2C 00 00 01 */	cmpwi r0, 1
/* 806890E4  40 82 00 0C */	bne lbl_806890F0
/* 806890E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806890EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806890F0:
/* 806890F0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806890F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806890F8  40 82 00 50 */	bne lbl_80689148
/* 806890FC  38 00 00 05 */	li r0, 5
/* 80689100  90 1D 06 74 */	stw r0, 0x674(r29)
/* 80689104  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80689108  4B BD E8 4D */	bl cM_rndF__Ff
/* 8068910C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80689110  EC 00 08 2A */	fadds f0, f0, f1
/* 80689114  FC 00 00 1E */	fctiwz f0, f0
/* 80689118  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8068911C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80689120  98 1D 06 8F */	stb r0, 0x68f(r29)
/* 80689124  4B BD E7 49 */	bl cM_rnd__Fv
/* 80689128  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8068912C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80689130  40 80 00 18 */	bge lbl_80689148
/* 80689134  38 00 00 00 */	li r0, 0
/* 80689138  90 1D 06 74 */	stw r0, 0x674(r29)
/* 8068913C  48 00 00 0C */	b lbl_80689148
lbl_80689140:
/* 80689140  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80689144  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80689148:
/* 80689148  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8068914C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80689150  39 61 00 50 */	addi r11, r1, 0x50
/* 80689154  4B CD 90 D5 */	bl _restgpr_29
/* 80689158  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8068915C  7C 08 03 A6 */	mtlr r0
/* 80689160  38 21 00 60 */	addi r1, r1, 0x60
/* 80689164  4E 80 00 20 */	blr 
