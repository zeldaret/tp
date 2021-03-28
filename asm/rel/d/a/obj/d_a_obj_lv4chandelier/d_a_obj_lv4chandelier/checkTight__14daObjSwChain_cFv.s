lbl_80C665A4:
/* 80C665A4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C665A8  7C 08 02 A6 */	mflr r0
/* 80C665AC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C665B0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C665B4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C665B8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80C665BC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80C665C0  39 61 00 60 */	addi r11, r1, 0x60
/* 80C665C4  4B 6F BC 18 */	b _savegpr_29
/* 80C665C8  7C 7D 1B 78 */	mr r29, r3
/* 80C665CC  3C 60 80 C6 */	lis r3, l_bmdidx@ha
/* 80C665D0  3B E3 68 60 */	addi r31, r3, l_bmdidx@l
/* 80C665D4  88 1D 0A 62 */	lbz r0, 0xa62(r29)
/* 80C665D8  28 00 00 00 */	cmplwi r0, 0
/* 80C665DC  41 82 02 50 */	beq lbl_80C6682C
/* 80C665E0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C665E4  7C 00 07 74 */	extsb r0, r0
/* 80C665E8  2C 00 00 04 */	cmpwi r0, 4
/* 80C665EC  41 82 00 0C */	beq lbl_80C665F8
/* 80C665F0  2C 00 00 06 */	cmpwi r0, 6
/* 80C665F4  40 82 02 38 */	bne lbl_80C6682C
lbl_80C665F8:
/* 80C665F8  88 9D 0A 64 */	lbz r4, 0xa64(r29)
/* 80C665FC  88 1D 0A 69 */	lbz r0, 0xa69(r29)
/* 80C66600  7C 04 00 40 */	cmplw r4, r0
/* 80C66604  41 80 02 28 */	blt lbl_80C6682C
/* 80C66608  88 1D 0A 9C */	lbz r0, 0xa9c(r29)
/* 80C6660C  28 00 00 00 */	cmplwi r0, 0
/* 80C66610  40 82 02 1C */	bne lbl_80C6682C
/* 80C66614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C66618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6661C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C66620  1C 64 00 50 */	mulli r3, r4, 0x50
/* 80C66624  80 BD 0A 74 */	lwz r5, 0xa74(r29)
/* 80C66628  88 1D 0A 65 */	lbz r0, 0xa65(r29)
/* 80C6662C  1C 80 00 50 */	mulli r4, r0, 0x50
/* 80C66630  7C 05 22 14 */	add r0, r5, r4
/* 80C66634  7C 63 00 50 */	subf r3, r3, r0
/* 80C66638  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80C6663C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C66640  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80C66644  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C66648  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80C6664C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C66650  38 64 00 34 */	addi r3, r4, 0x34
/* 80C66654  7C 65 1A 14 */	add r3, r5, r3
/* 80C66658  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C6665C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C66660  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C66664  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C66668  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C6666C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C66670  38 61 00 30 */	addi r3, r1, 0x30
/* 80C66674  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C66678  4B 6E 0D 24 */	b PSVECSquareDistance
/* 80C6667C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C66680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C66684  40 81 00 58 */	ble lbl_80C666DC
/* 80C66688  FC 00 08 34 */	frsqrte f0, f1
/* 80C6668C  C8 9F 00 F0 */	lfd f4, 0xf0(r31)
/* 80C66690  FC 44 00 32 */	fmul f2, f4, f0
/* 80C66694  C8 7F 00 F8 */	lfd f3, 0xf8(r31)
/* 80C66698  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6669C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C666A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C666A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C666A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C666AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C666B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C666B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C666B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C666BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C666C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C666C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C666C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C666CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C666D0  FF E1 00 32 */	fmul f31, f1, f0
/* 80C666D4  FF E0 F8 18 */	frsp f31, f31
/* 80C666D8  48 00 00 90 */	b lbl_80C66768
lbl_80C666DC:
/* 80C666DC  C8 1F 01 00 */	lfd f0, 0x100(r31)
/* 80C666E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C666E4  40 80 00 10 */	bge lbl_80C666F4
/* 80C666E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C666EC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C666F0  48 00 00 78 */	b lbl_80C66768
lbl_80C666F4:
/* 80C666F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C666F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C666FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C66700  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C66704  7C 03 00 00 */	cmpw r3, r0
/* 80C66708  41 82 00 14 */	beq lbl_80C6671C
/* 80C6670C  40 80 00 40 */	bge lbl_80C6674C
/* 80C66710  2C 03 00 00 */	cmpwi r3, 0
/* 80C66714  41 82 00 20 */	beq lbl_80C66734
/* 80C66718  48 00 00 34 */	b lbl_80C6674C
lbl_80C6671C:
/* 80C6671C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C66720  41 82 00 0C */	beq lbl_80C6672C
/* 80C66724  38 00 00 01 */	li r0, 1
/* 80C66728  48 00 00 28 */	b lbl_80C66750
lbl_80C6672C:
/* 80C6672C  38 00 00 02 */	li r0, 2
/* 80C66730  48 00 00 20 */	b lbl_80C66750
lbl_80C66734:
/* 80C66734  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C66738  41 82 00 0C */	beq lbl_80C66744
/* 80C6673C  38 00 00 05 */	li r0, 5
/* 80C66740  48 00 00 10 */	b lbl_80C66750
lbl_80C66744:
/* 80C66744  38 00 00 03 */	li r0, 3
/* 80C66748  48 00 00 08 */	b lbl_80C66750
lbl_80C6674C:
/* 80C6674C  38 00 00 04 */	li r0, 4
lbl_80C66750:
/* 80C66750  2C 00 00 01 */	cmpwi r0, 1
/* 80C66754  40 82 00 10 */	bne lbl_80C66764
/* 80C66758  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C6675C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C66760  48 00 00 08 */	b lbl_80C66768
lbl_80C66764:
/* 80C66764  FF E0 08 90 */	fmr f31, f1
lbl_80C66768:
/* 80C66768  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C6676C  88 7D 0A 67 */	lbz r3, 0xa67(r29)
/* 80C66770  38 03 FF FE */	addi r0, r3, -2
/* 80C66774  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C66778  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6677C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C66780  3C 00 43 30 */	lis r0, 0x4330
/* 80C66784  90 01 00 48 */	stw r0, 0x48(r1)
/* 80C66788  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C6678C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C66790  EF C2 00 32 */	fmuls f30, f2, f0
/* 80C66794  80 DD 0A 74 */	lwz r6, 0xa74(r29)
/* 80C66798  38 61 00 0C */	addi r3, r1, 0xc
/* 80C6679C  38 86 00 34 */	addi r4, r6, 0x34
/* 80C667A0  88 1D 0A 65 */	lbz r0, 0xa65(r29)
/* 80C667A4  1C A0 00 50 */	mulli r5, r0, 0x50
/* 80C667A8  38 A5 00 34 */	addi r5, r5, 0x34
/* 80C667AC  7C A6 2A 14 */	add r5, r6, r5
/* 80C667B0  4B 60 03 84 */	b __mi__4cXyzCFRC3Vec
/* 80C667B4  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80C667B8  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80C667BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C667C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C667C4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80C667C8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C667CC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C667D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C667D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C667D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C667DC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C667E0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C667E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C667E8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C667EC  7C 63 02 14 */	add r3, r3, r0
/* 80C667F0  C0 83 00 04 */	lfs f4, 4(r3)
/* 80C667F4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C667F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C667FC  EC 23 00 72 */	fmuls f1, f3, f1
/* 80C66800  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C66804  EC 21 00 2A */	fadds f1, f1, f0
/* 80C66808  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C6680C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C66810  40 80 00 1C */	bge lbl_80C6682C
/* 80C66814  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C66818  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80C6681C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C66820  40 81 00 0C */	ble lbl_80C6682C
/* 80C66824  38 60 00 01 */	li r3, 1
/* 80C66828  48 00 00 08 */	b lbl_80C66830
lbl_80C6682C:
/* 80C6682C  38 60 00 00 */	li r3, 0
lbl_80C66830:
/* 80C66830  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C66834  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C66838  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80C6683C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80C66840  39 61 00 60 */	addi r11, r1, 0x60
/* 80C66844  4B 6F B9 E4 */	b _restgpr_29
/* 80C66848  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C6684C  7C 08 03 A6 */	mtlr r0
/* 80C66850  38 21 00 80 */	addi r1, r1, 0x80
/* 80C66854  4E 80 00 20 */	blr 
