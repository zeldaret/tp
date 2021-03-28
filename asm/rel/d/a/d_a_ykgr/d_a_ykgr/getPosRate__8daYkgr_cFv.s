lbl_805A85D4:
/* 805A85D4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805A85D8  7C 08 02 A6 */	mflr r0
/* 805A85DC  90 01 00 94 */	stw r0, 0x94(r1)
/* 805A85E0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805A85E4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805A85E8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805A85EC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805A85F0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805A85F4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805A85F8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805A85FC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805A8600  39 61 00 50 */	addi r11, r1, 0x50
/* 805A8604  4B DB 9B D4 */	b _savegpr_28
/* 805A8608  3C 60 80 5B */	lis r3, lit_3759@ha
/* 805A860C  3B E3 8F BC */	addi r31, r3, lit_3759@l
/* 805A8610  3C 60 80 45 */	lis r3, m_path__8daYkgr_c@ha
/* 805A8614  80 83 0D 94 */	lwz r4, m_path__8daYkgr_c@l(r3)
/* 805A8618  28 04 00 00 */	cmplwi r4, 0
/* 805A861C  40 82 00 0C */	bne lbl_805A8628
/* 805A8620  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A8624  48 00 01 D0 */	b lbl_805A87F4
lbl_805A8628:
/* 805A8628  3C 60 80 45 */	lis r3, __float_max@ha
/* 805A862C  C3 83 0A E8 */	lfs f28, __float_max@l(r3)
/* 805A8630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A8634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A8638  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805A863C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 805A8640  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805A8644  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 805A8648  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805A864C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 805A8650  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805A8654  83 C4 00 08 */	lwz r30, 8(r4)
/* 805A8658  A3 A4 00 00 */	lhz r29, 0(r4)
/* 805A865C  3B 80 00 00 */	li r28, 0
/* 805A8660  FF A0 08 18 */	frsp f29, f1
/* 805A8664  C3 DF 00 08 */	lfs f30, 8(r31)
/* 805A8668  FF E0 00 18 */	frsp f31, f0
/* 805A866C  48 00 01 34 */	b lbl_805A87A0
lbl_805A8670:
/* 805A8670  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805A8674  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805A8678  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805A867C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805A8680  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805A8684  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805A8688  D3 A1 00 0C */	stfs f29, 0xc(r1)
/* 805A868C  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 805A8690  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 805A8694  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A8698  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 805A869C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805A86A0  38 61 00 0C */	addi r3, r1, 0xc
/* 805A86A4  38 81 00 18 */	addi r4, r1, 0x18
/* 805A86A8  4B D9 EC F4 */	b PSVECSquareDistance
/* 805A86AC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 805A86B0  40 81 00 58 */	ble lbl_805A8708
/* 805A86B4  FC 00 08 34 */	frsqrte f0, f1
/* 805A86B8  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 805A86BC  FC 44 00 32 */	fmul f2, f4, f0
/* 805A86C0  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 805A86C4  FC 00 00 32 */	fmul f0, f0, f0
/* 805A86C8  FC 01 00 32 */	fmul f0, f1, f0
/* 805A86CC  FC 03 00 28 */	fsub f0, f3, f0
/* 805A86D0  FC 02 00 32 */	fmul f0, f2, f0
/* 805A86D4  FC 44 00 32 */	fmul f2, f4, f0
/* 805A86D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805A86DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805A86E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805A86E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805A86E8  FC 44 00 32 */	fmul f2, f4, f0
/* 805A86EC  FC 00 00 32 */	fmul f0, f0, f0
/* 805A86F0  FC 01 00 32 */	fmul f0, f1, f0
/* 805A86F4  FC 03 00 28 */	fsub f0, f3, f0
/* 805A86F8  FC 02 00 32 */	fmul f0, f2, f0
/* 805A86FC  FC 21 00 32 */	fmul f1, f1, f0
/* 805A8700  FC 20 08 18 */	frsp f1, f1
/* 805A8704  48 00 00 88 */	b lbl_805A878C
lbl_805A8708:
/* 805A8708  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 805A870C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A8710  40 80 00 10 */	bge lbl_805A8720
/* 805A8714  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805A8718  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805A871C  48 00 00 70 */	b lbl_805A878C
lbl_805A8720:
/* 805A8720  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A8724  80 81 00 08 */	lwz r4, 8(r1)
/* 805A8728  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805A872C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805A8730  7C 03 00 00 */	cmpw r3, r0
/* 805A8734  41 82 00 14 */	beq lbl_805A8748
/* 805A8738  40 80 00 40 */	bge lbl_805A8778
/* 805A873C  2C 03 00 00 */	cmpwi r3, 0
/* 805A8740  41 82 00 20 */	beq lbl_805A8760
/* 805A8744  48 00 00 34 */	b lbl_805A8778
lbl_805A8748:
/* 805A8748  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A874C  41 82 00 0C */	beq lbl_805A8758
/* 805A8750  38 00 00 01 */	li r0, 1
/* 805A8754  48 00 00 28 */	b lbl_805A877C
lbl_805A8758:
/* 805A8758  38 00 00 02 */	li r0, 2
/* 805A875C  48 00 00 20 */	b lbl_805A877C
lbl_805A8760:
/* 805A8760  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A8764  41 82 00 0C */	beq lbl_805A8770
/* 805A8768  38 00 00 05 */	li r0, 5
/* 805A876C  48 00 00 10 */	b lbl_805A877C
lbl_805A8770:
/* 805A8770  38 00 00 03 */	li r0, 3
/* 805A8774  48 00 00 08 */	b lbl_805A877C
lbl_805A8778:
/* 805A8778  38 00 00 04 */	li r0, 4
lbl_805A877C:
/* 805A877C  2C 00 00 01 */	cmpwi r0, 1
/* 805A8780  40 82 00 0C */	bne lbl_805A878C
/* 805A8784  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805A8788  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805A878C:
/* 805A878C  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 805A8790  40 80 00 08 */	bge lbl_805A8798
/* 805A8794  FF 80 08 90 */	fmr f28, f1
lbl_805A8798:
/* 805A8798  3B 9C 00 01 */	addi r28, r28, 1
/* 805A879C  3B DE 00 10 */	addi r30, r30, 0x10
lbl_805A87A0:
/* 805A87A0  7C 1C E8 00 */	cmpw r28, r29
/* 805A87A4  41 80 FE CC */	blt lbl_805A8670
/* 805A87A8  3C 60 80 5B */	lis r3, l_HIO@ha
/* 805A87AC  38 63 91 04 */	addi r3, r3, l_HIO@l
/* 805A87B0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805A87B4  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805A87B8  40 81 00 0C */	ble lbl_805A87C4
/* 805A87BC  FF 80 00 90 */	fmr f28, f0
/* 805A87C0  48 00 00 14 */	b lbl_805A87D4
lbl_805A87C4:
/* 805A87C4  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 805A87C8  FC 1C 08 40 */	fcmpo cr0, f28, f1
/* 805A87CC  40 80 00 08 */	bge lbl_805A87D4
/* 805A87D0  FF 80 08 90 */	fmr f28, f1
lbl_805A87D4:
/* 805A87D4  3C 60 80 5B */	lis r3, l_HIO@ha
/* 805A87D8  38 63 91 04 */	addi r3, r3, l_HIO@l
/* 805A87DC  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805A87E0  EC 3C 10 28 */	fsubs f1, f28, f2
/* 805A87E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 805A87E8  EC 21 00 24 */	fdivs f1, f1, f0
/* 805A87EC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A87F0  EC 20 08 28 */	fsubs f1, f0, f1
lbl_805A87F4:
/* 805A87F4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805A87F8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805A87FC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805A8800  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805A8804  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805A8808  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805A880C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805A8810  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805A8814  39 61 00 50 */	addi r11, r1, 0x50
/* 805A8818  4B DB 9A 0C */	b _restgpr_28
/* 805A881C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805A8820  7C 08 03 A6 */	mtlr r0
/* 805A8824  38 21 00 90 */	addi r1, r1, 0x90
/* 805A8828  4E 80 00 20 */	blr 
