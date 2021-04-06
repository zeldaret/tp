lbl_800E53F8:
/* 800E53F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E53FC  7C 08 02 A6 */	mflr r0
/* 800E5400  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E5404  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E5408  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E540C  7C 7E 1B 78 */	mr r30, r3
/* 800E5410  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 800E5414  28 1F 00 00 */	cmplwi r31, 0
/* 800E5418  41 82 03 7C */	beq lbl_800E5794
/* 800E541C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E5420  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E5424  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800E5428  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E542C  41 82 00 20 */	beq lbl_800E544C
/* 800E5430  3C 60 80 39 */	lis r3, m__18daAlinkHIO_bomb_c0@ha /* 0x8038E714@ha */
/* 800E5434  38 63 E7 14 */	addi r3, r3, m__18daAlinkHIO_bomb_c0@l /* 0x8038E714@l */
/* 800E5438  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800E543C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800E5440  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 800E5444  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800E5448  48 00 03 38 */	b lbl_800E5780
lbl_800E544C:
/* 800E544C  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 800E5450  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 800E5454  41 82 00 18 */	beq lbl_800E546C
/* 800E5458  3C 60 80 39 */	lis r3, m__18daAlinkHIO_bomb_c0@ha /* 0x8038E714@ha */
/* 800E545C  38 63 E7 14 */	addi r3, r3, m__18daAlinkHIO_bomb_c0@l /* 0x8038E714@l */
/* 800E5460  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 800E5464  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 800E5468  48 00 00 14 */	b lbl_800E547C
lbl_800E546C:
/* 800E546C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_bomb_c0@ha /* 0x8038E714@ha */
/* 800E5470  38 63 E7 14 */	addi r3, r3, m__18daAlinkHIO_bomb_c0@l /* 0x8038E714@l */
/* 800E5474  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 800E5478  C0 43 00 34 */	lfs f2, 0x34(r3)
lbl_800E547C:
/* 800E547C  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 800E5480  41 82 01 A4 */	beq lbl_800E5624
/* 800E5484  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E5488  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E548C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800E5490  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800E5494  38 7E 2C 48 */	addi r3, r30, 0x2c48
/* 800E5498  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E549C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E54A0  48 26 10 11 */	bl PSMTXCopy
/* 800E54A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E54A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E54AC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800E54B0  4B F2 6F 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 800E54B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E54B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E54BC  38 81 00 24 */	addi r4, r1, 0x24
/* 800E54C0  7C 85 23 78 */	mr r5, r4
/* 800E54C4  48 26 19 89 */	bl PSMTXMultVecSR
/* 800E54C8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E54CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E54D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E54D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E54D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E54DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E54E0  38 61 00 0C */	addi r3, r1, 0xc
/* 800E54E4  48 26 1C 55 */	bl PSVECSquareMag
/* 800E54E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E54EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E54F0  40 81 00 58 */	ble lbl_800E5548
/* 800E54F4  FC 00 08 34 */	frsqrte f0, f1
/* 800E54F8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E54FC  FC 44 00 32 */	fmul f2, f4, f0
/* 800E5500  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E5504  FC 00 00 32 */	fmul f0, f0, f0
/* 800E5508  FC 01 00 32 */	fmul f0, f1, f0
/* 800E550C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5510  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5514  FC 44 00 32 */	fmul f2, f4, f0
/* 800E5518  FC 00 00 32 */	fmul f0, f0, f0
/* 800E551C  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5520  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5524  FC 02 00 32 */	fmul f0, f2, f0
/* 800E5528  FC 44 00 32 */	fmul f2, f4, f0
/* 800E552C  FC 00 00 32 */	fmul f0, f0, f0
/* 800E5530  FC 01 00 32 */	fmul f0, f1, f0
/* 800E5534  FC 03 00 28 */	fsub f0, f3, f0
/* 800E5538  FC 02 00 32 */	fmul f0, f2, f0
/* 800E553C  FC 21 00 32 */	fmul f1, f1, f0
/* 800E5540  FC 20 08 18 */	frsp f1, f1
/* 800E5544  48 00 00 88 */	b lbl_800E55CC
lbl_800E5548:
/* 800E5548  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E554C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5550  40 80 00 10 */	bge lbl_800E5560
/* 800E5554  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E5558  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E555C  48 00 00 70 */	b lbl_800E55CC
lbl_800E5560:
/* 800E5560  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E5564  80 81 00 08 */	lwz r4, 8(r1)
/* 800E5568  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E556C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E5570  7C 03 00 00 */	cmpw r3, r0
/* 800E5574  41 82 00 14 */	beq lbl_800E5588
/* 800E5578  40 80 00 40 */	bge lbl_800E55B8
/* 800E557C  2C 03 00 00 */	cmpwi r3, 0
/* 800E5580  41 82 00 20 */	beq lbl_800E55A0
/* 800E5584  48 00 00 34 */	b lbl_800E55B8
lbl_800E5588:
/* 800E5588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E558C  41 82 00 0C */	beq lbl_800E5598
/* 800E5590  38 00 00 01 */	li r0, 1
/* 800E5594  48 00 00 28 */	b lbl_800E55BC
lbl_800E5598:
/* 800E5598  38 00 00 02 */	li r0, 2
/* 800E559C  48 00 00 20 */	b lbl_800E55BC
lbl_800E55A0:
/* 800E55A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E55A4  41 82 00 0C */	beq lbl_800E55B0
/* 800E55A8  38 00 00 05 */	li r0, 5
/* 800E55AC  48 00 00 10 */	b lbl_800E55BC
lbl_800E55B0:
/* 800E55B0  38 00 00 03 */	li r0, 3
/* 800E55B4  48 00 00 08 */	b lbl_800E55BC
lbl_800E55B8:
/* 800E55B8  38 00 00 04 */	li r0, 4
lbl_800E55BC:
/* 800E55BC  2C 00 00 01 */	cmpwi r0, 1
/* 800E55C0  40 82 00 0C */	bne lbl_800E55CC
/* 800E55C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E55C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800E55CC:
/* 800E55CC  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 800E55D0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E55D4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800E55D8  38 61 00 24 */	addi r3, r1, 0x24
/* 800E55DC  48 18 1B 4D */	bl atan2sX_Z__4cXyzCFv
/* 800E55E0  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 800E55E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E55E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E55EC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800E55F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E55F4  C0 02 94 68 */	lfs f0, lit_14955(r2)
/* 800E55F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E55FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E5600  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E5604  38 81 00 24 */	addi r4, r1, 0x24
/* 800E5608  7C 85 23 78 */	mr r5, r4
/* 800E560C  48 26 18 41 */	bl PSMTXMultVecSR
/* 800E5610  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800E5614  38 81 00 24 */	addi r4, r1, 0x24
/* 800E5618  7C 65 1B 78 */	mr r5, r3
/* 800E561C  48 26 1A 75 */	bl PSVECAdd
/* 800E5620  48 00 00 74 */	b lbl_800E5694
lbl_800E5624:
/* 800E5624  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 800E5628  D0 5F 04 FC */	stfs f2, 0x4fc(r31)
/* 800E562C  7F C3 F3 78 */	mr r3, r30
/* 800E5630  38 80 00 00 */	li r4, 0
/* 800E5634  4B FD 5A 51 */	bl getBodyAngleXAtnActor__9daAlink_cFi
/* 800E5638  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 800E563C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E5640  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E5644  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800E5648  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800E564C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800E5650  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800E5654  C0 42 94 68 */	lfs f2, lit_14955(r2)
/* 800E5658  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E565C  EC 01 00 2A */	fadds f0, f1, f0
/* 800E5660  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800E5664  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800E5668  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800E566C  EC 01 00 2A */	fadds f0, f1, f0
/* 800E5670  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800E5674  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E5678  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E567C  7C 63 02 14 */	add r3, r3, r0
/* 800E5680  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E5684  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800E5688  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E568C  EC 01 00 2A */	fadds f0, f1, f0
/* 800E5690  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_800E5694:
/* 800E5694  80 9E 27 EC */	lwz r4, 0x27ec(r30)
/* 800E5698  28 04 00 00 */	cmplwi r4, 0
/* 800E569C  41 82 00 74 */	beq lbl_800E5710
/* 800E56A0  38 60 00 00 */	li r3, 0
/* 800E56A4  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800E56A8  28 00 00 51 */	cmplwi r0, 0x51
/* 800E56AC  41 82 00 10 */	beq lbl_800E56BC
/* 800E56B0  A0 1E 1F 94 */	lhz r0, 0x1f94(r30)
/* 800E56B4  28 00 00 51 */	cmplwi r0, 0x51
/* 800E56B8  40 82 00 08 */	bne lbl_800E56C0
lbl_800E56BC:
/* 800E56BC  38 60 00 01 */	li r3, 1
lbl_800E56C0:
/* 800E56C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E56C4  41 82 00 4C */	beq lbl_800E5710
/* 800E56C8  38 61 00 18 */	addi r3, r1, 0x18
/* 800E56CC  38 84 05 38 */	addi r4, r4, 0x538
/* 800E56D0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800E56D4  48 18 14 61 */	bl __mi__4cXyzCFRC3Vec
/* 800E56D8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E56DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E56E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E56E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E56E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800E56EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E56F0  7F C3 F3 78 */	mr r3, r30
/* 800E56F4  38 81 00 24 */	addi r4, r1, 0x24
/* 800E56F8  4B FF CD 85 */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800E56FC  38 61 00 24 */	addi r3, r1, 0x24
/* 800E5700  48 18 1A 29 */	bl atan2sX_Z__4cXyzCFv
/* 800E5704  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 800E5708  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800E570C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_800E5710:
/* 800E5710  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 800E5714  70 00 00 42 */	andi. r0, r0, 0x42
/* 800E5718  41 82 00 24 */	beq lbl_800E573C
/* 800E571C  7F C3 F3 78 */	mr r3, r30
/* 800E5720  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010012@ha */
/* 800E5724  38 84 00 12 */	addi r4, r4, 0x0012 /* 0x00010012@l */
/* 800E5728  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E572C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E5730  7D 89 03 A6 */	mtctr r12
/* 800E5734  4E 80 04 21 */	bctrl 
/* 800E5738  48 00 00 48 */	b lbl_800E5780
lbl_800E573C:
/* 800E573C  A8 1F 00 08 */	lha r0, 8(r31)
/* 800E5740  2C 00 02 21 */	cmpwi r0, 0x221
/* 800E5744  40 82 00 20 */	bne lbl_800E5764
/* 800E5748  7F C3 F3 78 */	mr r3, r30
/* 800E574C  3C 80 00 01 */	lis r4, 1
/* 800E5750  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E5754  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E5758  7D 89 03 A6 */	mtctr r12
/* 800E575C  4E 80 04 21 */	bctrl 
/* 800E5760  48 00 00 20 */	b lbl_800E5780
lbl_800E5764:
/* 800E5764  7F C3 F3 78 */	mr r3, r30
/* 800E5768  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010011@ha */
/* 800E576C  38 84 00 11 */	addi r4, r4, 0x0011 /* 0x00010011@l */
/* 800E5770  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E5774  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E5778  7D 89 03 A6 */	mtctr r12
/* 800E577C  4E 80 04 21 */	bctrl 
lbl_800E5780:
/* 800E5780  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800E5784  60 00 00 04 */	ori r0, r0, 4
/* 800E5788  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800E578C  7F C3 F3 78 */	mr r3, r30
/* 800E5790  4B FF F4 45 */	bl freeGrabItem__9daAlink_cFv
lbl_800E5794:
/* 800E5794  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E5798  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E579C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E57A0  7C 08 03 A6 */	mtlr r0
/* 800E57A4  38 21 00 40 */	addi r1, r1, 0x40
/* 800E57A8  4E 80 00 20 */	blr 
