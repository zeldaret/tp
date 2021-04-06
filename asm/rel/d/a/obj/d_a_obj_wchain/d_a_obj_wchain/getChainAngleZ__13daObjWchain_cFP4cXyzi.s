lbl_80D305E4:
/* 80D305E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D305E8  7C 08 02 A6 */	mflr r0
/* 80D305EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D305F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D305F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D305F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D305FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D30600  7C BE 2B 78 */	mr r30, r5
/* 80D30604  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D31924@ha */
/* 80D30608  3B E3 19 24 */	addi r31, r3, l_arcName@l /* 0x80D31924@l */
/* 80D3060C  C0 24 00 08 */	lfs f1, 8(r4)
/* 80D30610  C0 04 00 00 */	lfs f0, 0(r4)
/* 80D30614  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D30618  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D3061C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D30620  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D30624  38 61 00 0C */	addi r3, r1, 0xc
/* 80D30628  4B 61 6B 11 */	bl PSVECSquareMag
/* 80D3062C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D30630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D30634  40 81 00 58 */	ble lbl_80D3068C
/* 80D30638  FC 00 08 34 */	frsqrte f0, f1
/* 80D3063C  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 80D30640  FC 44 00 32 */	fmul f2, f4, f0
/* 80D30644  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80D30648  FC 00 00 32 */	fmul f0, f0, f0
/* 80D3064C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D30650  FC 03 00 28 */	fsub f0, f3, f0
/* 80D30654  FC 02 00 32 */	fmul f0, f2, f0
/* 80D30658  FC 44 00 32 */	fmul f2, f4, f0
/* 80D3065C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D30660  FC 01 00 32 */	fmul f0, f1, f0
/* 80D30664  FC 03 00 28 */	fsub f0, f3, f0
/* 80D30668  FC 02 00 32 */	fmul f0, f2, f0
/* 80D3066C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D30670  FC 00 00 32 */	fmul f0, f0, f0
/* 80D30674  FC 01 00 32 */	fmul f0, f1, f0
/* 80D30678  FC 03 00 28 */	fsub f0, f3, f0
/* 80D3067C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D30680  FF E1 00 32 */	fmul f31, f1, f0
/* 80D30684  FF E0 F8 18 */	frsp f31, f31
/* 80D30688  48 00 00 90 */	b lbl_80D30718
lbl_80D3068C:
/* 80D3068C  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80D30690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D30694  40 80 00 10 */	bge lbl_80D306A4
/* 80D30698  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D3069C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D306A0  48 00 00 78 */	b lbl_80D30718
lbl_80D306A4:
/* 80D306A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D306A8  80 81 00 08 */	lwz r4, 8(r1)
/* 80D306AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D306B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D306B4  7C 03 00 00 */	cmpw r3, r0
/* 80D306B8  41 82 00 14 */	beq lbl_80D306CC
/* 80D306BC  40 80 00 40 */	bge lbl_80D306FC
/* 80D306C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D306C4  41 82 00 20 */	beq lbl_80D306E4
/* 80D306C8  48 00 00 34 */	b lbl_80D306FC
lbl_80D306CC:
/* 80D306CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D306D0  41 82 00 0C */	beq lbl_80D306DC
/* 80D306D4  38 00 00 01 */	li r0, 1
/* 80D306D8  48 00 00 28 */	b lbl_80D30700
lbl_80D306DC:
/* 80D306DC  38 00 00 02 */	li r0, 2
/* 80D306E0  48 00 00 20 */	b lbl_80D30700
lbl_80D306E4:
/* 80D306E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D306E8  41 82 00 0C */	beq lbl_80D306F4
/* 80D306EC  38 00 00 05 */	li r0, 5
/* 80D306F0  48 00 00 10 */	b lbl_80D30700
lbl_80D306F4:
/* 80D306F4  38 00 00 03 */	li r0, 3
/* 80D306F8  48 00 00 08 */	b lbl_80D30700
lbl_80D306FC:
/* 80D306FC  38 00 00 04 */	li r0, 4
lbl_80D30700:
/* 80D30700  2C 00 00 01 */	cmpwi r0, 1
/* 80D30704  40 82 00 10 */	bne lbl_80D30714
/* 80D30708  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D3070C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D30710  48 00 00 08 */	b lbl_80D30718
lbl_80D30714:
/* 80D30714  FF E0 08 90 */	fmr f31, f1
lbl_80D30718:
/* 80D30718  2C 1E 50 00 */	cmpwi r30, 0x5000
/* 80D3071C  40 81 00 34 */	ble lbl_80D30750
/* 80D30720  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80D30724  4B 53 72 31 */	bl cM_rndF__Ff
/* 80D30728  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D3072C  EC 20 08 2A */	fadds f1, f0, f1
/* 80D30730  FC 00 F8 50 */	fneg f0, f31
/* 80D30734  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D30738  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D3073C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D30740  FC 00 00 1E */	fctiwz f0, f0
/* 80D30744  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D30748  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80D3074C  48 00 00 A0 */	b lbl_80D307EC
lbl_80D30750:
/* 80D30750  2C 1E 30 00 */	cmpwi r30, 0x3000
/* 80D30754  40 80 00 30 */	bge lbl_80D30784
/* 80D30758  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80D3075C  4B 53 71 F9 */	bl cM_rndF__Ff
/* 80D30760  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D30764  EC 00 08 2A */	fadds f0, f0, f1
/* 80D30768  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80D3076C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D30770  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D30774  FC 00 00 1E */	fctiwz f0, f0
/* 80D30778  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D3077C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80D30780  48 00 00 6C */	b lbl_80D307EC
lbl_80D30784:
/* 80D30784  4B 53 70 E9 */	bl cM_rnd__Fv
/* 80D30788  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D3078C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D30790  40 80 00 34 */	bge lbl_80D307C4
/* 80D30794  FC 20 00 90 */	fmr f1, f0
/* 80D30798  4B 53 71 BD */	bl cM_rndF__Ff
/* 80D3079C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D307A0  EC 20 08 2A */	fadds f1, f0, f1
/* 80D307A4  FC 00 F8 50 */	fneg f0, f31
/* 80D307A8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D307AC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D307B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D307B4  FC 00 00 1E */	fctiwz f0, f0
/* 80D307B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D307BC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80D307C0  48 00 00 2C */	b lbl_80D307EC
lbl_80D307C4:
/* 80D307C4  FC 20 00 90 */	fmr f1, f0
/* 80D307C8  4B 53 71 8D */	bl cM_rndF__Ff
/* 80D307CC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D307D0  EC 00 08 2A */	fadds f0, f0, f1
/* 80D307D4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80D307D8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D307DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D307E0  FC 00 00 1E */	fctiwz f0, f0
/* 80D307E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D307E8  80 61 00 1C */	lwz r3, 0x1c(r1)
lbl_80D307EC:
/* 80D307EC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D307F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D307F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D307F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D307FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D30800  7C 08 03 A6 */	mtlr r0
/* 80D30804  38 21 00 40 */	addi r1, r1, 0x40
/* 80D30808  4E 80 00 20 */	blr 
