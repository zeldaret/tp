lbl_802CBF60:
/* 802CBF60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802CBF64  7C 08 02 A6 */	mflr r0
/* 802CBF68  90 01 00 54 */	stw r0, 0x54(r1)
/* 802CBF6C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802CBF70  7C 7F 1B 78 */	mr r31, r3
/* 802CBF74  88 03 03 FE */	lbz r0, 0x3fe(r3)
/* 802CBF78  28 00 00 63 */	cmplwi r0, 0x63
/* 802CBF7C  41 82 02 00 */	beq lbl_802CC17C
/* 802CBF80  38 00 00 00 */	li r0, 0
/* 802CBF84  98 1F 03 FF */	stb r0, 0x3ff(r31)
/* 802CBF88  7C 84 07 34 */	extsh r4, r4
/* 802CBF8C  30 04 FF FF */	addic r0, r4, -1
/* 802CBF90  7C 60 01 10 */	subfe r3, r0, r0
/* 802CBF94  38 04 FF FF */	addi r0, r4, -1
/* 802CBF98  7C 00 18 78 */	andc r0, r0, r3
/* 802CBF9C  7C 03 07 34 */	extsh r3, r0
/* 802CBFA0  38 80 00 00 */	li r4, 0
/* 802CBFA4  A8 1F 03 FA */	lha r0, 0x3fa(r31)
/* 802CBFA8  2C 00 00 00 */	cmpwi r0, 0
/* 802CBFAC  40 82 00 14 */	bne lbl_802CBFC0
/* 802CBFB0  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 802CBFB4  7C 03 00 00 */	cmpw r3, r0
/* 802CBFB8  41 80 00 08 */	blt lbl_802CBFC0
/* 802CBFBC  38 80 00 01 */	li r4, 1
lbl_802CBFC0:
/* 802CBFC0  B0 7F 03 FA */	sth r3, 0x3fa(r31)
/* 802CBFC4  A8 1F 03 FA */	lha r0, 0x3fa(r31)
/* 802CBFC8  A8 7F 03 F8 */	lha r3, 0x3f8(r31)
/* 802CBFCC  7C 00 18 00 */	cmpw r0, r3
/* 802CBFD0  41 80 00 08 */	blt lbl_802CBFD8
/* 802CBFD4  B0 7F 03 FA */	sth r3, 0x3fa(r31)
lbl_802CBFD8:
/* 802CBFD8  88 1F 03 FE */	lbz r0, 0x3fe(r31)
/* 802CBFDC  28 00 00 01 */	cmplwi r0, 1
/* 802CBFE0  41 82 00 0C */	beq lbl_802CBFEC
/* 802CBFE4  28 00 00 02 */	cmplwi r0, 2
/* 802CBFE8  40 82 00 20 */	bne lbl_802CC008
lbl_802CBFEC:
/* 802CBFEC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802CBFF0  28 00 00 00 */	cmplwi r0, 0
/* 802CBFF4  40 82 01 88 */	bne lbl_802CC17C
/* 802CBFF8  7F E3 FB 78 */	mr r3, r31
/* 802CBFFC  38 80 00 00 */	li r4, 0
/* 802CC000  48 00 01 91 */	bl speakOneWord__12Z2SpeechMgr2Fb
/* 802CC004  48 00 01 78 */	b lbl_802CC17C
lbl_802CC008:
/* 802CC008  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802CC00C  41 82 00 58 */	beq lbl_802CC064
/* 802CC010  A0 1F 03 FC */	lhz r0, 0x3fc(r31)
/* 802CC014  28 00 00 00 */	cmplwi r0, 0
/* 802CC018  40 82 01 64 */	bne lbl_802CC17C
/* 802CC01C  38 00 00 7A */	li r0, 0x7a
/* 802CC020  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CC024  38 7F 00 0C */	addi r3, r31, 0xc
/* 802CC028  38 81 00 34 */	addi r4, r1, 0x34
/* 802CC02C  38 BF 00 04 */	addi r5, r31, 4
/* 802CC030  38 C0 00 00 */	li r6, 0
/* 802CC034  38 E0 00 00 */	li r7, 0
/* 802CC038  C0 22 C5 30 */	lfs f1, lit_3836(r2)
/* 802CC03C  C0 42 C5 34 */	lfs f2, lit_3837(r2)
/* 802CC040  FC 60 10 90 */	fmr f3, f2
/* 802CC044  C0 82 C5 38 */	lfs f4, lit_3838(r2)
/* 802CC048  FC A0 20 90 */	fmr f5, f4
/* 802CC04C  39 00 00 00 */	li r8, 0
/* 802CC050  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 802CC054  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CC058  7D 89 03 A6 */	mtctr r12
/* 802CC05C  4E 80 04 21 */	bctrl 
/* 802CC060  48 00 01 1C */	b lbl_802CC17C
lbl_802CC064:
/* 802CC064  7F E3 FB 78 */	mr r3, r31
/* 802CC068  48 00 02 95 */	bl isNonVerbal__12Z2SpeechMgr2Fv
/* 802CC06C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802CC070  40 82 01 0C */	bne lbl_802CC17C
/* 802CC074  88 7F 03 FE */	lbz r3, 0x3fe(r31)
/* 802CC078  38 03 FF F5 */	addi r0, r3, -11
/* 802CC07C  28 00 00 14 */	cmplwi r0, 0x14
/* 802CC080  41 81 00 B8 */	bgt lbl_802CC138
/* 802CC084  3C 60 80 3D */	lis r3, lit_3839@ha
/* 802CC088  38 63 BE D0 */	addi r3, r3, lit_3839@l
/* 802CC08C  54 00 10 3A */	slwi r0, r0, 2
/* 802CC090  7C 03 00 2E */	lwzx r0, r3, r0
/* 802CC094  7C 09 03 A6 */	mtctr r0
/* 802CC098  4E 80 04 20 */	bctr 
/* 802CC09C  38 00 00 7B */	li r0, 0x7b
/* 802CC0A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CC0A4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC0A8  48 00 00 90 */	b lbl_802CC138
/* 802CC0AC  38 00 00 7C */	li r0, 0x7c
/* 802CC0B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802CC0B4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC0B8  48 00 00 80 */	b lbl_802CC138
/* 802CC0BC  38 00 00 7D */	li r0, 0x7d
/* 802CC0C0  90 01 00 28 */	stw r0, 0x28(r1)
/* 802CC0C4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC0C8  48 00 00 70 */	b lbl_802CC138
/* 802CC0CC  38 00 00 7E */	li r0, 0x7e
/* 802CC0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CC0D4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC0D8  48 00 00 60 */	b lbl_802CC138
/* 802CC0DC  38 00 00 7F */	li r0, 0x7f
/* 802CC0E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802CC0E4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC0E8  48 00 00 50 */	b lbl_802CC138
/* 802CC0EC  38 00 00 80 */	li r0, 0x80
/* 802CC0F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802CC0F4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC0F8  48 00 00 40 */	b lbl_802CC138
/* 802CC0FC  38 00 00 81 */	li r0, 0x81
/* 802CC100  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CC104  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC108  48 00 00 30 */	b lbl_802CC138
/* 802CC10C  38 00 00 82 */	li r0, 0x82
/* 802CC110  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC114  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC118  48 00 00 20 */	b lbl_802CC138
/* 802CC11C  38 00 00 83 */	li r0, 0x83
/* 802CC120  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CC124  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CC128  48 00 00 10 */	b lbl_802CC138
/* 802CC12C  38 00 00 84 */	li r0, 0x84
/* 802CC130  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CC134  90 01 00 38 */	stw r0, 0x38(r1)
lbl_802CC138:
/* 802CC138  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802CC13C  90 01 00 08 */	stw r0, 8(r1)
/* 802CC140  38 7F 00 0C */	addi r3, r31, 0xc
/* 802CC144  38 81 00 08 */	addi r4, r1, 8
/* 802CC148  38 BF 00 04 */	addi r5, r31, 4
/* 802CC14C  38 C0 00 00 */	li r6, 0
/* 802CC150  38 E0 00 00 */	li r7, 0
/* 802CC154  C0 22 C5 30 */	lfs f1, lit_3836(r2)
/* 802CC158  C0 42 C5 34 */	lfs f2, lit_3837(r2)
/* 802CC15C  FC 60 10 90 */	fmr f3, f2
/* 802CC160  C0 82 C5 38 */	lfs f4, lit_3838(r2)
/* 802CC164  FC A0 20 90 */	fmr f5, f4
/* 802CC168  39 00 00 00 */	li r8, 0
/* 802CC16C  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 802CC170  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CC174  7D 89 03 A6 */	mtctr r12
/* 802CC178  4E 80 04 21 */	bctrl 
lbl_802CC17C:
/* 802CC17C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802CC180  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802CC184  7C 08 03 A6 */	mtlr r0
/* 802CC188  38 21 00 50 */	addi r1, r1, 0x50
/* 802CC18C  4E 80 00 20 */	blr 
