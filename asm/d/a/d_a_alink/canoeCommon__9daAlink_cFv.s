lbl_800F47D8:
/* 800F47D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F47DC  7C 08 02 A6 */	mflr r0
/* 800F47E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F47E4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800F47E8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800F47EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F47F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800F47F4  7C 7F 1B 78 */	mr r31, r3
/* 800F47F8  80 03 28 18 */	lwz r0, 0x2818(r3)
/* 800F47FC  28 00 00 00 */	cmplwi r0, 0
/* 800F4800  40 82 00 10 */	bne lbl_800F4810
/* 800F4804  38 80 00 00 */	li r4, 0
/* 800F4808  4B FC 58 C9 */	bl checkNextAction__9daAlink_cFi
/* 800F480C  48 00 00 F8 */	b lbl_800F4904
lbl_800F4810:
/* 800F4810  4B FF FD 8D */	bl setSyncCanoePos__9daAlink_cFv
/* 800F4814  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F4818  88 03 14 40 */	lbz r0, 0x1440(r3)
/* 800F481C  28 00 00 03 */	cmplwi r0, 3
/* 800F4820  40 82 00 E0 */	bne lbl_800F4900
/* 800F4824  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800F4828  80 1F 1F 44 */	lwz r0, 0x1f44(r31)
/* 800F482C  7C 03 00 40 */	cmplw r3, r0
/* 800F4830  41 82 00 0C */	beq lbl_800F483C
/* 800F4834  C3 FF 20 24 */	lfs f31, 0x2024(r31)
/* 800F4838  48 00 00 08 */	b lbl_800F4840
lbl_800F483C:
/* 800F483C  C3 FF 1F DC */	lfs f31, 0x1fdc(r31)
lbl_800F4840:
/* 800F4840  A3 DF 1F 94 */	lhz r30, 0x1f94(r31)
/* 800F4844  7F E3 FB 78 */	mr r3, r31
/* 800F4848  38 80 00 DD */	li r4, 0xdd
/* 800F484C  4B FB 7C 05 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F4850  A0 63 00 02 */	lhz r3, 2(r3)
/* 800F4854  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800F4858  7C 00 18 40 */	cmplw r0, r3
/* 800F485C  41 82 00 24 */	beq lbl_800F4880
/* 800F4860  A3 DF 1F 94 */	lhz r30, 0x1f94(r31)
/* 800F4864  7F E3 FB 78 */	mr r3, r31
/* 800F4868  38 80 00 DE */	li r4, 0xde
/* 800F486C  4B FB 7B E5 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F4870  A0 63 00 02 */	lhz r3, 2(r3)
/* 800F4874  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800F4878  7C 00 18 40 */	cmplw r0, r3
/* 800F487C  40 82 00 10 */	bne lbl_800F488C
lbl_800F4880:
/* 800F4880  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020022@ha */
/* 800F4884  38 83 00 22 */	addi r4, r3, 0x0022 /* 0x00020022@l */
/* 800F4888  48 00 00 0C */	b lbl_800F4894
lbl_800F488C:
/* 800F488C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020021@ha */
/* 800F4890  38 83 00 21 */	addi r4, r3, 0x0021 /* 0x00020021@l */
lbl_800F4894:
/* 800F4894  FC 00 FA 10 */	fabs f0, f31
/* 800F4898  C0 42 94 B8 */	lfs f2, lit_17592(r2)
/* 800F489C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F48A0  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F48A4  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 800F48A8  FC 00 00 18 */	frsp f0, f0
/* 800F48AC  EC 20 18 28 */	fsubs f1, f0, f3
/* 800F48B0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800F48B4  EC 00 18 28 */	fsubs f0, f0, f3
/* 800F48B8  EC 01 00 24 */	fdivs f0, f1, f0
/* 800F48BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F48C0  FC 00 00 1E */	fctiwz f0, f0
/* 800F48C4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800F48C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F48CC  2C 00 00 00 */	cmpwi r0, 0
/* 800F48D0  40 80 00 0C */	bge lbl_800F48DC
/* 800F48D4  38 A0 00 00 */	li r5, 0
/* 800F48D8  48 00 00 14 */	b lbl_800F48EC
lbl_800F48DC:
/* 800F48DC  2C 00 00 7F */	cmpwi r0, 0x7f
/* 800F48E0  38 A0 00 7F */	li r5, 0x7f
/* 800F48E4  41 81 00 08 */	bgt lbl_800F48EC
/* 800F48E8  7C 05 03 78 */	mr r5, r0
lbl_800F48EC:
/* 800F48EC  90 81 00 08 */	stw r4, 8(r1)
/* 800F48F0  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800F48F4  38 81 00 08 */	addi r4, r1, 8
/* 800F48F8  88 DF 2F 9A */	lbz r6, 0x2f9a(r31)
/* 800F48FC  48 1C FD F5 */	bl startLinkSwordSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_800F4900:
/* 800F4900  38 60 00 00 */	li r3, 0
lbl_800F4904:
/* 800F4904  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800F4908  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800F490C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F4910  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800F4914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F4918  7C 08 03 A6 */	mtlr r0
/* 800F491C  38 21 00 30 */	addi r1, r1, 0x30
/* 800F4920  4E 80 00 20 */	blr 
