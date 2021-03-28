lbl_80BE64E0:
/* 80BE64E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BE64E4  7C 08 02 A6 */	mflr r0
/* 80BE64E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BE64EC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BE64F0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BE64F4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80BE64F8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80BE64FC  7C DE 33 78 */	mr r30, r6
/* 80BE6500  3C 60 80 BE */	lis r3, l_arcName@ha
/* 80BE6504  3B E3 74 38 */	addi r31, r3, l_arcName@l
/* 80BE6508  38 61 00 24 */	addi r3, r1, 0x24
/* 80BE650C  4B 68 06 28 */	b __mi__4cXyzCFRC3Vec
/* 80BE6510  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80BE6514  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80BE6518  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BE651C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BE6520  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80BE6524  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BE6528  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BE652C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE6530  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BE6534  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BE6538  38 61 00 0C */	addi r3, r1, 0xc
/* 80BE653C  4B 76 0B FC */	b PSVECSquareMag
/* 80BE6540  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE6544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6548  40 81 00 58 */	ble lbl_80BE65A0
/* 80BE654C  FC 00 08 34 */	frsqrte f0, f1
/* 80BE6550  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80BE6554  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6558  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80BE655C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6560  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6564  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6568  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE656C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6570  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6574  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6578  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE657C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6580  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6584  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6588  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE658C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6590  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6594  FF E1 00 32 */	fmul f31, f1, f0
/* 80BE6598  FF E0 F8 18 */	frsp f31, f31
/* 80BE659C  48 00 00 90 */	b lbl_80BE662C
lbl_80BE65A0:
/* 80BE65A0  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80BE65A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE65A8  40 80 00 10 */	bge lbl_80BE65B8
/* 80BE65AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BE65B0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BE65B4  48 00 00 78 */	b lbl_80BE662C
lbl_80BE65B8:
/* 80BE65B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE65BC  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE65C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE65C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE65C8  7C 03 00 00 */	cmpw r3, r0
/* 80BE65CC  41 82 00 14 */	beq lbl_80BE65E0
/* 80BE65D0  40 80 00 40 */	bge lbl_80BE6610
/* 80BE65D4  2C 03 00 00 */	cmpwi r3, 0
/* 80BE65D8  41 82 00 20 */	beq lbl_80BE65F8
/* 80BE65DC  48 00 00 34 */	b lbl_80BE6610
lbl_80BE65E0:
/* 80BE65E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE65E4  41 82 00 0C */	beq lbl_80BE65F0
/* 80BE65E8  38 00 00 01 */	li r0, 1
/* 80BE65EC  48 00 00 28 */	b lbl_80BE6614
lbl_80BE65F0:
/* 80BE65F0  38 00 00 02 */	li r0, 2
/* 80BE65F4  48 00 00 20 */	b lbl_80BE6614
lbl_80BE65F8:
/* 80BE65F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE65FC  41 82 00 0C */	beq lbl_80BE6608
/* 80BE6600  38 00 00 05 */	li r0, 5
/* 80BE6604  48 00 00 10 */	b lbl_80BE6614
lbl_80BE6608:
/* 80BE6608  38 00 00 03 */	li r0, 3
/* 80BE660C  48 00 00 08 */	b lbl_80BE6614
lbl_80BE6610:
/* 80BE6610  38 00 00 04 */	li r0, 4
lbl_80BE6614:
/* 80BE6614  2C 00 00 01 */	cmpwi r0, 1
/* 80BE6618  40 82 00 10 */	bne lbl_80BE6628
/* 80BE661C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BE6620  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BE6624  48 00 00 08 */	b lbl_80BE662C
lbl_80BE6628:
/* 80BE6628  FF E0 08 90 */	fmr f31, f1
lbl_80BE662C:
/* 80BE662C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BE6630  FC 00 02 10 */	fabs f0, f0
/* 80BE6634  FC 20 00 18 */	frsp f1, f0
/* 80BE6638  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BE663C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6640  40 80 00 54 */	bge lbl_80BE6694
/* 80BE6644  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BE6648  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BE664C  40 80 00 48 */	bge lbl_80BE6694
/* 80BE6650  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE6654  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BE6658  38 61 00 18 */	addi r3, r1, 0x18
/* 80BE665C  38 81 00 30 */	addi r4, r1, 0x30
/* 80BE6660  4B 68 08 E8 */	b normalizeZP__4cXyzFv
/* 80BE6664  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BE6668  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80BE666C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BE6670  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BE6674  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BE6678  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE667C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80BE6680  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BE6684  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BE6688  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BE668C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE6690  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80BE6694:
/* 80BE6694  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BE6698  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BE669C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80BE66A0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80BE66A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BE66A8  7C 08 03 A6 */	mtlr r0
/* 80BE66AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80BE66B0  4E 80 00 20 */	blr 
