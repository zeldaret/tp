lbl_800C85D8:
/* 800C85D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C85DC  7C 08 02 A6 */	mflr r0
/* 800C85E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C85E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C85E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C85EC  7C 7E 1B 78 */	mr r30, r3
/* 800C85F0  4B FD 9C 91 */	bl checkGoronRide__9daAlink_cFv
/* 800C85F4  28 03 00 00 */	cmplwi r3, 0
/* 800C85F8  40 82 00 14 */	bne lbl_800C860C
/* 800C85FC  7F C3 F3 78 */	mr r3, r30
/* 800C8600  38 80 00 00 */	li r4, 0
/* 800C8604  4B FF 1A CD */	bl checkNextAction__9daAlink_cFi
/* 800C8608  48 00 00 DC */	b lbl_800C86E4
lbl_800C860C:
/* 800C860C  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800C8610  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C8614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C8618  40 81 00 1C */	ble lbl_800C8634
/* 800C861C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 800C8620  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800C8624  38 A0 00 02 */	li r5, 2
/* 800C8628  38 C0 01 F4 */	li r6, 0x1f4
/* 800C862C  38 E0 00 64 */	li r7, 0x64
/* 800C8630  48 1A 7F 11 */	bl cLib_addCalcAngleS__FPsssss
lbl_800C8634:
/* 800C8634  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800C8638  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C863C  7C 03 00 50 */	subf r0, r3, r0
/* 800C8640  7C 03 07 35 */	extsh. r3, r0
/* 800C8644  40 81 00 0C */	ble lbl_800C8650
/* 800C8648  3B E0 00 15 */	li r31, 0x15
/* 800C864C  48 00 00 18 */	b lbl_800C8664
lbl_800C8650:
/* 800C8650  7C 60 07 35 */	extsh. r0, r3
/* 800C8654  40 80 00 0C */	bge lbl_800C8660
/* 800C8658  3B E0 00 16 */	li r31, 0x16
/* 800C865C  48 00 00 08 */	b lbl_800C8664
lbl_800C8660:
/* 800C8660  3B E0 00 19 */	li r31, 0x19
lbl_800C8664:
/* 800C8664  48 29 CA 6D */	bl abs
/* 800C8668  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800C866C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800C8670  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C8674  3C 00 43 30 */	lis r0, 0x4330
/* 800C8678  90 01 00 08 */	stw r0, 8(r1)
/* 800C867C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800C8680  EC 20 08 28 */	fsubs f1, f0, f1
/* 800C8684  C0 02 94 C8 */	lfs f0, lit_18706(r2)
/* 800C8688  EC 20 00 72 */	fmuls f1, f0, f1
/* 800C868C  C0 02 94 08 */	lfs f0, lit_14064(r2)
/* 800C8690  EC 20 08 2A */	fadds f1, f0, f1
/* 800C8694  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C8698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C869C  40 81 00 08 */	ble lbl_800C86A4
/* 800C86A0  FC 20 00 90 */	fmr f1, f0
lbl_800C86A4:
/* 800C86A4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C86A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 800C86AC  7F C3 F3 78 */	mr r3, r30
/* 800C86B0  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C86B4  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C86B8  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 800C86BC  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800C86C0  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800C86C4  C0 64 00 1C */	lfs f3, 0x1c(r4)
/* 800C86C8  7F E4 FB 78 */	mr r4, r31
/* 800C86CC  38 A0 00 19 */	li r5, 0x19
/* 800C86D0  38 C0 00 02 */	li r6, 2
/* 800C86D4  C0 82 92 BC */	lfs f4, lit_6041(r2)
/* 800C86D8  4B FE 43 3D */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800C86DC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C86E0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800C86E4:
/* 800C86E4  38 60 00 01 */	li r3, 1
/* 800C86E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C86EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C86F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C86F4  7C 08 03 A6 */	mtlr r0
/* 800C86F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800C86FC  4E 80 00 20 */	blr 
