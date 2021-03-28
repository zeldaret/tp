lbl_80BE66B4:
/* 80BE66B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE66B8  7C 08 02 A6 */	mflr r0
/* 80BE66BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE66C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BE66C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BE66C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BE66CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BE66D0  7C 9E 23 78 */	mr r30, r4
/* 80BE66D4  FF E0 08 90 */	fmr f31, f1
/* 80BE66D8  3C 60 80 BE */	lis r3, l_arcName@ha
/* 80BE66DC  3B E3 74 38 */	addi r31, r3, l_arcName@l
/* 80BE66E0  C0 24 00 08 */	lfs f1, 8(r4)
/* 80BE66E4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BE66E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BE66EC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE66F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BE66F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BE66F8  38 61 00 0C */	addi r3, r1, 0xc
/* 80BE66FC  4B 76 0A 3C */	b PSVECSquareMag
/* 80BE6700  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE6704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6708  40 81 00 58 */	ble lbl_80BE6760
/* 80BE670C  FC 00 08 34 */	frsqrte f0, f1
/* 80BE6710  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80BE6714  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6718  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80BE671C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6720  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6724  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6728  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE672C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6730  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6734  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6738  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE673C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6740  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6744  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6748  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE674C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6750  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6754  FC 21 00 32 */	fmul f1, f1, f0
/* 80BE6758  FC 20 08 18 */	frsp f1, f1
/* 80BE675C  48 00 00 88 */	b lbl_80BE67E4
lbl_80BE6760:
/* 80BE6760  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80BE6764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6768  40 80 00 10 */	bge lbl_80BE6778
/* 80BE676C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BE6770  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BE6774  48 00 00 70 */	b lbl_80BE67E4
lbl_80BE6778:
/* 80BE6778  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE677C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE6780  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE6784  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE6788  7C 03 00 00 */	cmpw r3, r0
/* 80BE678C  41 82 00 14 */	beq lbl_80BE67A0
/* 80BE6790  40 80 00 40 */	bge lbl_80BE67D0
/* 80BE6794  2C 03 00 00 */	cmpwi r3, 0
/* 80BE6798  41 82 00 20 */	beq lbl_80BE67B8
/* 80BE679C  48 00 00 34 */	b lbl_80BE67D0
lbl_80BE67A0:
/* 80BE67A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE67A4  41 82 00 0C */	beq lbl_80BE67B0
/* 80BE67A8  38 00 00 01 */	li r0, 1
/* 80BE67AC  48 00 00 28 */	b lbl_80BE67D4
lbl_80BE67B0:
/* 80BE67B0  38 00 00 02 */	li r0, 2
/* 80BE67B4  48 00 00 20 */	b lbl_80BE67D4
lbl_80BE67B8:
/* 80BE67B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE67BC  41 82 00 0C */	beq lbl_80BE67C8
/* 80BE67C0  38 00 00 05 */	li r0, 5
/* 80BE67C4  48 00 00 10 */	b lbl_80BE67D4
lbl_80BE67C8:
/* 80BE67C8  38 00 00 03 */	li r0, 3
/* 80BE67CC  48 00 00 08 */	b lbl_80BE67D4
lbl_80BE67D0:
/* 80BE67D0  38 00 00 04 */	li r0, 4
lbl_80BE67D4:
/* 80BE67D4  2C 00 00 01 */	cmpwi r0, 1
/* 80BE67D8  40 82 00 0C */	bne lbl_80BE67E4
/* 80BE67DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BE67E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BE67E4:
/* 80BE67E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BE67E8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BE67EC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80BE67F0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BE67F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE67F8  40 80 00 14 */	bge lbl_80BE680C
/* 80BE67FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BE6800  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BE6804  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80BE6808  48 00 00 34 */	b lbl_80BE683C
lbl_80BE680C:
/* 80BE680C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BE6810  EC 40 08 24 */	fdivs f2, f0, f1
/* 80BE6814  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BE6818  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80BE681C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE6820  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE6824  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80BE6828  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BE682C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80BE6830  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE6834  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE6838  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80BE683C:
/* 80BE683C  38 61 00 18 */	addi r3, r1, 0x18
/* 80BE6840  7F C4 F3 78 */	mr r4, r30
/* 80BE6844  4B 68 07 04 */	b normalizeZP__4cXyzFv
/* 80BE6848  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BE684C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BE6850  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BE6854  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BE6858  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE685C  7C 08 03 A6 */	mtlr r0
/* 80BE6860  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE6864  4E 80 00 20 */	blr 
