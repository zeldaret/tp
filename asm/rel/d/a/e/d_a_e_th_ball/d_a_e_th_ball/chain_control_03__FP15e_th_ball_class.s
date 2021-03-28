lbl_807B54B4:
/* 807B54B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807B54B8  7C 08 02 A6 */	mflr r0
/* 807B54BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 807B54C0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807B54C4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807B54C8  39 61 00 60 */	addi r11, r1, 0x60
/* 807B54CC  4B BA CD 08 */	b _savegpr_27
/* 807B54D0  7C 7B 1B 78 */	mr r27, r3
/* 807B54D4  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B54D8  3B C3 7E B8 */	addi r30, r3, lit_3746@l
/* 807B54DC  3B FB 06 5C */	addi r31, r27, 0x65c
/* 807B54E0  A8 1B 0D D0 */	lha r0, 0xdd0(r27)
/* 807B54E4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807B54E8  7C BF 02 14 */	add r5, r31, r0
/* 807B54EC  38 61 00 18 */	addi r3, r1, 0x18
/* 807B54F0  38 85 03 20 */	addi r4, r5, 0x320
/* 807B54F4  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 807B54F8  4B AB 16 3C */	b __mi__4cXyzCFRC3Vec
/* 807B54FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B5500  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B5504  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807B5508  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B550C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B5510  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807B5514  38 61 00 24 */	addi r3, r1, 0x24
/* 807B5518  4B B9 1C 20 */	b PSVECSquareMag
/* 807B551C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B5520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B5524  40 81 00 58 */	ble lbl_807B557C
/* 807B5528  FC 00 08 34 */	frsqrte f0, f1
/* 807B552C  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 807B5530  FC 44 00 32 */	fmul f2, f4, f0
/* 807B5534  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 807B5538  FC 00 00 32 */	fmul f0, f0, f0
/* 807B553C  FC 01 00 32 */	fmul f0, f1, f0
/* 807B5540  FC 03 00 28 */	fsub f0, f3, f0
/* 807B5544  FC 02 00 32 */	fmul f0, f2, f0
/* 807B5548  FC 44 00 32 */	fmul f2, f4, f0
/* 807B554C  FC 00 00 32 */	fmul f0, f0, f0
/* 807B5550  FC 01 00 32 */	fmul f0, f1, f0
/* 807B5554  FC 03 00 28 */	fsub f0, f3, f0
/* 807B5558  FC 02 00 32 */	fmul f0, f2, f0
/* 807B555C  FC 44 00 32 */	fmul f2, f4, f0
/* 807B5560  FC 00 00 32 */	fmul f0, f0, f0
/* 807B5564  FC 01 00 32 */	fmul f0, f1, f0
/* 807B5568  FC 03 00 28 */	fsub f0, f3, f0
/* 807B556C  FC 02 00 32 */	fmul f0, f2, f0
/* 807B5570  FC 21 00 32 */	fmul f1, f1, f0
/* 807B5574  FC 20 08 18 */	frsp f1, f1
/* 807B5578  48 00 00 88 */	b lbl_807B5600
lbl_807B557C:
/* 807B557C  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 807B5580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B5584  40 80 00 10 */	bge lbl_807B5594
/* 807B5588  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B558C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807B5590  48 00 00 70 */	b lbl_807B5600
lbl_807B5594:
/* 807B5594  D0 21 00 08 */	stfs f1, 8(r1)
/* 807B5598  80 81 00 08 */	lwz r4, 8(r1)
/* 807B559C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807B55A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807B55A4  7C 03 00 00 */	cmpw r3, r0
/* 807B55A8  41 82 00 14 */	beq lbl_807B55BC
/* 807B55AC  40 80 00 40 */	bge lbl_807B55EC
/* 807B55B0  2C 03 00 00 */	cmpwi r3, 0
/* 807B55B4  41 82 00 20 */	beq lbl_807B55D4
/* 807B55B8  48 00 00 34 */	b lbl_807B55EC
lbl_807B55BC:
/* 807B55BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B55C0  41 82 00 0C */	beq lbl_807B55CC
/* 807B55C4  38 00 00 01 */	li r0, 1
/* 807B55C8  48 00 00 28 */	b lbl_807B55F0
lbl_807B55CC:
/* 807B55CC  38 00 00 02 */	li r0, 2
/* 807B55D0  48 00 00 20 */	b lbl_807B55F0
lbl_807B55D4:
/* 807B55D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B55D8  41 82 00 0C */	beq lbl_807B55E4
/* 807B55DC  38 00 00 05 */	li r0, 5
/* 807B55E0  48 00 00 10 */	b lbl_807B55F0
lbl_807B55E4:
/* 807B55E4  38 00 00 03 */	li r0, 3
/* 807B55E8  48 00 00 08 */	b lbl_807B55F0
lbl_807B55EC:
/* 807B55EC  38 00 00 04 */	li r0, 4
lbl_807B55F0:
/* 807B55F0  2C 00 00 01 */	cmpwi r0, 1
/* 807B55F4  40 82 00 0C */	bne lbl_807B5600
/* 807B55F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B55FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807B5600:
/* 807B5600  D0 3B 0D CC */	stfs f1, 0xdcc(r27)
/* 807B5604  A8 1B 0D D0 */	lha r0, 0xdd0(r27)
/* 807B5608  1C 60 00 0C */	mulli r3, r0, 0xc
/* 807B560C  3B A3 00 C8 */	addi r29, r3, 0xc8
/* 807B5610  7F BF EA 14 */	add r29, r31, r29
/* 807B5614  23 80 00 32 */	subfic r28, r0, 0x32
/* 807B5618  3B 60 00 00 */	li r27, 0
/* 807B561C  CB FE 00 58 */	lfd f31, 0x58(r30)
/* 807B5620  3F C0 43 30 */	lis r30, 0x4330
/* 807B5624  6F 9F 80 00 */	xoris r31, r28, 0x8000
/* 807B5628  48 00 00 54 */	b lbl_807B567C
lbl_807B562C:
/* 807B562C  38 61 00 0C */	addi r3, r1, 0xc
/* 807B5630  38 81 00 24 */	addi r4, r1, 0x24
/* 807B5634  7C 1B E0 50 */	subf r0, r27, r28
/* 807B5638  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807B563C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B5640  93 C1 00 30 */	stw r30, 0x30(r1)
/* 807B5644  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807B5648  EC 20 F8 28 */	fsubs f1, f0, f31
/* 807B564C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807B5650  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807B5654  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 807B5658  EC 00 F8 28 */	fsubs f0, f0, f31
/* 807B565C  EC 21 00 24 */	fdivs f1, f1, f0
/* 807B5660  4B AB 15 24 */	b __ml__4cXyzCFf
/* 807B5664  7F A3 EB 78 */	mr r3, r29
/* 807B5668  38 81 00 0C */	addi r4, r1, 0xc
/* 807B566C  7F A5 EB 78 */	mr r5, r29
/* 807B5670  4B B9 1A 20 */	b PSVECAdd
/* 807B5674  3B 7B 00 01 */	addi r27, r27, 1
/* 807B5678  3B BD 00 0C */	addi r29, r29, 0xc
lbl_807B567C:
/* 807B567C  7C 1B E0 00 */	cmpw r27, r28
/* 807B5680  41 80 FF AC */	blt lbl_807B562C
/* 807B5684  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807B5688  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807B568C  39 61 00 60 */	addi r11, r1, 0x60
/* 807B5690  4B BA CB 90 */	b _restgpr_27
/* 807B5694  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807B5698  7C 08 03 A6 */	mtlr r0
/* 807B569C  38 21 00 70 */	addi r1, r1, 0x70
/* 807B56A0  4E 80 00 20 */	blr 
