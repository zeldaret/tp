lbl_8072A8CC:
/* 8072A8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072A8D0  7C 08 02 A6 */	mflr r0
/* 8072A8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072A8D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072A8DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8072A8E0  7C 7E 1B 78 */	mr r30, r3
/* 8072A8E4  3C 80 80 73 */	lis r4, lit_3789@ha
/* 8072A8E8  3B E4 C1 80 */	addi r31, r4, lit_3789@l
/* 8072A8EC  38 00 00 06 */	li r0, 6
/* 8072A8F0  B0 03 06 AA */	sth r0, 0x6aa(r3)
/* 8072A8F4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8072A8F8  2C 00 00 01 */	cmpwi r0, 1
/* 8072A8FC  41 82 00 6C */	beq lbl_8072A968
/* 8072A900  40 80 01 78 */	bge lbl_8072AA78
/* 8072A904  2C 00 00 00 */	cmpwi r0, 0
/* 8072A908  40 80 00 08 */	bge lbl_8072A910
/* 8072A90C  48 00 01 6C */	b lbl_8072AA78
lbl_8072A910:
/* 8072A910  38 80 00 04 */	li r4, 4
/* 8072A914  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8072A918  38 A0 00 00 */	li r5, 0
/* 8072A91C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A920  4B FF F1 1D */	bl anm_init__FP10e_nz_classifUcf
/* 8072A924  38 00 00 01 */	li r0, 1
/* 8072A928  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8072A92C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8072A930  4B B3 D0 24 */	b cM_rndF__Ff
/* 8072A934  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8072A938  EC 00 08 2A */	fadds f0, f0, f1
/* 8072A93C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8072A940  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8072A944  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8072A948  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8072A94C  4B B3 D0 08 */	b cM_rndF__Ff
/* 8072A950  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8072A954  EC 00 08 2A */	fadds f0, f0, f1
/* 8072A958  FC 00 00 1E */	fctiwz f0, f0
/* 8072A95C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8072A960  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8072A964  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
lbl_8072A968:
/* 8072A968  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 8072A96C  2C 00 00 00 */	cmpwi r0, 0
/* 8072A970  40 82 01 08 */	bne lbl_8072AA78
/* 8072A974  7F C3 F3 78 */	mr r3, r30
/* 8072A978  38 9E 05 38 */	addi r4, r30, 0x538
/* 8072A97C  38 A0 00 06 */	li r5, 6
/* 8072A980  38 C0 00 03 */	li r6, 3
/* 8072A984  38 E0 00 27 */	li r7, 0x27
/* 8072A988  4B 8F 21 50 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8072A98C  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 8072A990  28 00 00 01 */	cmplwi r0, 1
/* 8072A994  40 82 00 DC */	bne lbl_8072AA70
/* 8072A998  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8072A99C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8072A9A0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8072A9A4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8072A9A8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8072A9AC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8072A9B0  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 8072A9B4  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8072A9B8  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8072A9BC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8072A9C0  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 8072A9C4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8072A9C8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8072A9CC  98 1E 04 E2 */	stb r0, 0x4e2(r30)
/* 8072A9D0  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 8072A9D4  98 1E 04 E3 */	stb r0, 0x4e3(r30)
/* 8072A9D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8072A9DC  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8072A9E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8072A9E4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8072A9E8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8072A9EC  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8072A9F0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8072A9F4  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 8072A9F8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8072A9FC  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 8072AA00  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8072AA04  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 8072AA08  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8072AA0C  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 8072AA10  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 8072AA14  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 8072AA18  38 00 00 0A */	li r0, 0xa
/* 8072AA1C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8072AA20  38 C0 00 00 */	li r6, 0
/* 8072AA24  B0 DE 06 9A */	sth r6, 0x69a(r30)
/* 8072AA28  B0 DE 05 B4 */	sth r6, 0x5b4(r30)
/* 8072AA2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072AA30  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8072AA34  88 FE 06 AC */	lbz r7, 0x6ac(r30)
/* 8072AA38  7C E0 07 75 */	extsb. r0, r7
/* 8072AA3C  41 82 00 3C */	beq lbl_8072AA78
/* 8072AA40  3C 60 80 73 */	lis r3, data_8072C454@ha
/* 8072AA44  38 A3 C4 54 */	addi r5, r3, data_8072C454@l
/* 8072AA48  88 85 00 00 */	lbz r4, 0(r5)
/* 8072AA4C  3C 60 80 73 */	lis r3, stick_bit@ha
/* 8072AA50  38 63 C2 84 */	addi r3, r3, stick_bit@l
/* 8072AA54  7C E0 07 74 */	extsb r0, r7
/* 8072AA58  7C 63 02 14 */	add r3, r3, r0
/* 8072AA5C  88 03 FF FF */	lbz r0, -1(r3)
/* 8072AA60  7C 80 00 78 */	andc r0, r4, r0
/* 8072AA64  98 05 00 00 */	stb r0, 0(r5)
/* 8072AA68  98 DE 06 AC */	stb r6, 0x6ac(r30)
/* 8072AA6C  48 00 00 0C */	b lbl_8072AA78
lbl_8072AA70:
/* 8072AA70  7F C3 F3 78 */	mr r3, r30
/* 8072AA74  4B 8E F2 08 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8072AA78:
/* 8072AA78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072AA7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8072AA80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072AA84  7C 08 03 A6 */	mtlr r0
/* 8072AA88  38 21 00 20 */	addi r1, r1, 0x20
/* 8072AA8C  4E 80 00 20 */	blr 
