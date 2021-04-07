lbl_805BD3E4:
/* 805BD3E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BD3E8  7C 08 02 A6 */	mflr r0
/* 805BD3EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BD3F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805BD3F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805BD3F8  7C 7F 1B 78 */	mr r31, r3
/* 805BD3FC  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805BD400  3B C3 6C 74 */	addi r30, r3, lit_3800@l /* 0x805C6C74@l */
/* 805BD404  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805BD408  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805BD40C  88 7F 07 E7 */	lbz r3, 0x7e7(r31)
/* 805BD410  A8 1F 07 52 */	lha r0, 0x752(r31)
/* 805BD414  7C 03 01 D6 */	mullw r0, r3, r0
/* 805BD418  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805BD41C  7C 64 02 14 */	add r3, r4, r0
/* 805BD420  C0 43 00 04 */	lfs f2, 4(r3)
/* 805BD424  7C 04 04 2E */	lfsx f0, r4, r0
/* 805BD428  C0 3E 03 84 */	lfs f1, 0x384(r30)
/* 805BD42C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805BD430  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BD434  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BD438  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BD43C  EC 01 00 B2 */	fmuls f0, f1, f2
/* 805BD440  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805BD444  38 61 00 24 */	addi r3, r1, 0x24
/* 805BD448  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805BD44C  7C 65 1B 78 */	mr r5, r3
/* 805BD450  4B D8 9C 41 */	bl PSVECAdd
/* 805BD454  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805BD458  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BD45C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805BD460  38 81 00 24 */	addi r4, r1, 0x24
/* 805BD464  C0 3E 03 88 */	lfs f1, 0x388(r30)
/* 805BD468  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805BD46C  C0 7F 07 44 */	lfs f3, 0x744(r31)
/* 805BD470  4B CB 26 49 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805BD474  38 7F 07 44 */	addi r3, r31, 0x744
/* 805BD478  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805BD47C  C0 5E 03 8C */	lfs f2, 0x38c(r30)
/* 805BD480  C0 7E 03 90 */	lfs f3, 0x390(r30)
/* 805BD484  4B CB 25 B9 */	bl cLib_addCalc2__FPffff
/* 805BD488  38 61 00 0C */	addi r3, r1, 0xc
/* 805BD48C  38 81 00 24 */	addi r4, r1, 0x24
/* 805BD490  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805BD494  4B CA 96 A1 */	bl __mi__4cXyzCFRC3Vec
/* 805BD498  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805BD49C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BD4A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805BD4A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BD4A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805BD4AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BD4B0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BD4B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BD4B8  38 61 00 18 */	addi r3, r1, 0x18
/* 805BD4BC  4B D8 9C 7D */	bl PSVECSquareMag
/* 805BD4C0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BD4C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD4C8  40 81 00 58 */	ble lbl_805BD520
/* 805BD4CC  FC 00 08 34 */	frsqrte f0, f1
/* 805BD4D0  C8 9E 03 98 */	lfd f4, 0x398(r30)
/* 805BD4D4  FC 44 00 32 */	fmul f2, f4, f0
/* 805BD4D8  C8 7E 03 A0 */	lfd f3, 0x3a0(r30)
/* 805BD4DC  FC 00 00 32 */	fmul f0, f0, f0
/* 805BD4E0  FC 01 00 32 */	fmul f0, f1, f0
/* 805BD4E4  FC 03 00 28 */	fsub f0, f3, f0
/* 805BD4E8  FC 02 00 32 */	fmul f0, f2, f0
/* 805BD4EC  FC 44 00 32 */	fmul f2, f4, f0
/* 805BD4F0  FC 00 00 32 */	fmul f0, f0, f0
/* 805BD4F4  FC 01 00 32 */	fmul f0, f1, f0
/* 805BD4F8  FC 03 00 28 */	fsub f0, f3, f0
/* 805BD4FC  FC 02 00 32 */	fmul f0, f2, f0
/* 805BD500  FC 44 00 32 */	fmul f2, f4, f0
/* 805BD504  FC 00 00 32 */	fmul f0, f0, f0
/* 805BD508  FC 01 00 32 */	fmul f0, f1, f0
/* 805BD50C  FC 03 00 28 */	fsub f0, f3, f0
/* 805BD510  FC 02 00 32 */	fmul f0, f2, f0
/* 805BD514  FC 21 00 32 */	fmul f1, f1, f0
/* 805BD518  FC 20 08 18 */	frsp f1, f1
/* 805BD51C  48 00 00 88 */	b lbl_805BD5A4
lbl_805BD520:
/* 805BD520  C8 1E 03 A8 */	lfd f0, 0x3a8(r30)
/* 805BD524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD528  40 80 00 10 */	bge lbl_805BD538
/* 805BD52C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BD530  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805BD534  48 00 00 70 */	b lbl_805BD5A4
lbl_805BD538:
/* 805BD538  D0 21 00 08 */	stfs f1, 8(r1)
/* 805BD53C  80 81 00 08 */	lwz r4, 8(r1)
/* 805BD540  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805BD544  3C 00 7F 80 */	lis r0, 0x7f80
/* 805BD548  7C 03 00 00 */	cmpw r3, r0
/* 805BD54C  41 82 00 14 */	beq lbl_805BD560
/* 805BD550  40 80 00 40 */	bge lbl_805BD590
/* 805BD554  2C 03 00 00 */	cmpwi r3, 0
/* 805BD558  41 82 00 20 */	beq lbl_805BD578
/* 805BD55C  48 00 00 34 */	b lbl_805BD590
lbl_805BD560:
/* 805BD560  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BD564  41 82 00 0C */	beq lbl_805BD570
/* 805BD568  38 00 00 01 */	li r0, 1
/* 805BD56C  48 00 00 28 */	b lbl_805BD594
lbl_805BD570:
/* 805BD570  38 00 00 02 */	li r0, 2
/* 805BD574  48 00 00 20 */	b lbl_805BD594
lbl_805BD578:
/* 805BD578  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BD57C  41 82 00 0C */	beq lbl_805BD588
/* 805BD580  38 00 00 05 */	li r0, 5
/* 805BD584  48 00 00 10 */	b lbl_805BD594
lbl_805BD588:
/* 805BD588  38 00 00 03 */	li r0, 3
/* 805BD58C  48 00 00 08 */	b lbl_805BD594
lbl_805BD590:
/* 805BD590  38 00 00 04 */	li r0, 4
lbl_805BD594:
/* 805BD594  2C 00 00 01 */	cmpwi r0, 1
/* 805BD598  40 82 00 0C */	bne lbl_805BD5A4
/* 805BD59C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BD5A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805BD5A4:
/* 805BD5A4  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805BD5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD5AC  40 80 00 38 */	bge lbl_805BD5E4
/* 805BD5B0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BD5B4  D0 1F 07 44 */	stfs f0, 0x744(r31)
/* 805BD5B8  C0 3E 03 B4 */	lfs f1, 0x3b4(r30)
/* 805BD5BC  4B CA A3 D1 */	bl cM_rndFX__Ff
/* 805BD5C0  C0 1E 03 B0 */	lfs f0, 0x3b0(r30)
/* 805BD5C4  EC 00 08 2A */	fadds f0, f0, f1
/* 805BD5C8  FC 00 00 1E */	fctiwz f0, f0
/* 805BD5CC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805BD5D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BD5D4  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 805BD5D8  88 7F 07 E7 */	lbz r3, 0x7e7(r31)
/* 805BD5DC  38 03 00 01 */	addi r0, r3, 1
/* 805BD5E0  98 1F 07 E7 */	stb r0, 0x7e7(r31)
lbl_805BD5E4:
/* 805BD5E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805BD5E8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805BD5EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BD5F0  7C 08 03 A6 */	mtlr r0
/* 805BD5F4  38 21 00 40 */	addi r1, r1, 0x40
/* 805BD5F8  4E 80 00 20 */	blr 
