lbl_800DFEC0:
/* 800DFEC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DFEC4  7C 08 02 A6 */	mflr r0
/* 800DFEC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DFECC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800DFED0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800DFED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DFED8  7C 7F 1B 78 */	mr r31, r3
/* 800DFEDC  4B FF EF 41 */	bl cancelBowMove__9daAlink_cFv
/* 800DFEE0  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 800DFEE4  2C 00 00 00 */	cmpwi r0, 0
/* 800DFEE8  40 82 00 3C */	bne lbl_800DFF24
/* 800DFEEC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800DFEF0  2C 00 00 00 */	cmpwi r0, 0
/* 800DFEF4  41 82 00 30 */	beq lbl_800DFF24
/* 800DFEF8  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800DFEFC  28 00 00 0D */	cmplwi r0, 0xd
/* 800DFF00  40 82 00 24 */	bne lbl_800DFF24
/* 800DFF04  7F E3 FB 78 */	mr r3, r31
/* 800DFF08  4B FD 26 FD */	bl itemButton__9daAlink_cFv
/* 800DFF0C  2C 03 00 00 */	cmpwi r3, 0
/* 800DFF10  40 82 00 14 */	bne lbl_800DFF24
/* 800DFF14  7F E3 FB 78 */	mr r3, r31
/* 800DFF18  38 80 00 02 */	li r4, 2
/* 800DFF1C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DFF20  4B FC D8 05 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800DFF24:
/* 800DFF24  38 00 00 01 */	li r0, 1
/* 800DFF28  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800DFF2C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800DFF30  64 00 08 00 */	oris r0, r0, 0x800
/* 800DFF34  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800DFF38  7F E3 FB 78 */	mr r3, r31
/* 800DFF3C  38 80 00 00 */	li r4, 0
/* 800DFF40  4B FD A1 91 */	bl checkNextAction__9daAlink_cFi
/* 800DFF44  2C 03 00 00 */	cmpwi r3, 0
/* 800DFF48  40 82 00 78 */	bne lbl_800DFFC0
/* 800DFF4C  C3 E2 92 BC */	lfs f31, lit_6041(r2)
/* 800DFF50  7F E3 FB 78 */	mr r3, r31
/* 800DFF54  4B FD 39 B1 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800DFF58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DFF5C  41 82 00 40 */	beq lbl_800DFF9C
/* 800DFF60  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DFF64  60 00 00 01 */	ori r0, r0, 1
/* 800DFF68  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800DFF6C  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800DFF70  28 00 00 03 */	cmplwi r0, 3
/* 800DFF74  41 82 00 18 */	beq lbl_800DFF8C
/* 800DFF78  38 00 00 03 */	li r0, 3
/* 800DFF7C  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800DFF80  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800DFF84  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800DFF88  C3 E3 00 18 */	lfs f31, 0x18(r3)
lbl_800DFF8C:
/* 800DFF8C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800DFF90  38 03 C0 00 */	addi r0, r3, -16384
/* 800DFF94  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800DFF98  48 00 00 10 */	b lbl_800DFFA8
lbl_800DFF9C:
/* 800DFF9C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DFFA0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800DFFA4  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800DFFA8:
/* 800DFFA8  7F E3 FB 78 */	mr r3, r31
/* 800DFFAC  FC 20 F8 90 */	fmr f1, f31
/* 800DFFB0  4B FC EA C1 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800DFFB4  7F E3 FB 78 */	mr r3, r31
/* 800DFFB8  38 80 00 00 */	li r4, 0
/* 800DFFBC  4B FD B2 F5 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
lbl_800DFFC0:
/* 800DFFC0  38 60 00 01 */	li r3, 1
/* 800DFFC4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800DFFC8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800DFFCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DFFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DFFD4  7C 08 03 A6 */	mtlr r0
/* 800DFFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 800DFFDC  4E 80 00 20 */	blr 
