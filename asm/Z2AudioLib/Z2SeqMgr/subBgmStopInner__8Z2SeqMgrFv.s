lbl_802AF9D0:
/* 802AF9D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF9D4  7C 08 02 A6 */	mflr r0
/* 802AF9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF9DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AF9E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AF9E4  7C 7E 1B 78 */	mr r30, r3
/* 802AF9E8  A8 03 00 B8 */	lha r0, 0xb8(r3)
/* 802AF9EC  2C 00 FF FF */	cmpwi r0, -1
/* 802AF9F0  41 82 01 8C */	beq lbl_802AFB7C
/* 802AF9F4  80 7E 00 04 */	lwz r3, 4(r30)
/* 802AF9F8  28 03 00 00 */	cmplwi r3, 0
/* 802AF9FC  41 82 01 80 */	beq lbl_802AFB7C
/* 802AFA00  8B ED 82 E2 */	lbz r31, struct_80450860+0x2(r13)
/* 802AFA04  41 82 00 10 */	beq lbl_802AFA14
/* 802AFA08  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802AFA0C  90 81 00 08 */	stw r4, 8(r1)
/* 802AFA10  48 00 00 08 */	b lbl_802AFA18
lbl_802AFA14:
/* 802AFA14  38 80 FF FF */	li r4, -1
lbl_802AFA18:
/* 802AFA18  3C 60 01 00 */	lis r3, 0x0100 /* 0x01000047@ha */
/* 802AFA1C  38 03 00 47 */	addi r0, r3, 0x0047 /* 0x01000047@l */
/* 802AFA20  7C 04 00 00 */	cmpw r4, r0
/* 802AFA24  41 82 00 AC */	beq lbl_802AFAD0
/* 802AFA28  40 80 00 60 */	bge lbl_802AFA88
/* 802AFA2C  38 03 00 29 */	addi r0, r3, 0x29
/* 802AFA30  7C 04 00 00 */	cmpw r4, r0
/* 802AFA34  40 80 00 34 */	bge lbl_802AFA68
/* 802AFA38  38 03 00 21 */	addi r0, r3, 0x21
/* 802AFA3C  7C 04 00 00 */	cmpw r4, r0
/* 802AFA40  41 82 00 88 */	beq lbl_802AFAC8
/* 802AFA44  40 80 00 14 */	bge lbl_802AFA58
/* 802AFA48  38 03 00 1D */	addi r0, r3, 0x1d
/* 802AFA4C  7C 04 00 00 */	cmpw r4, r0
/* 802AFA50  41 82 00 78 */	beq lbl_802AFAC8
/* 802AFA54  48 00 00 A8 */	b lbl_802AFAFC
lbl_802AFA58:
/* 802AFA58  38 03 00 27 */	addi r0, r3, 0x27
/* 802AFA5C  7C 04 00 00 */	cmpw r4, r0
/* 802AFA60  40 80 00 68 */	bge lbl_802AFAC8
/* 802AFA64  48 00 00 98 */	b lbl_802AFAFC
lbl_802AFA68:
/* 802AFA68  38 03 00 39 */	addi r0, r3, 0x39
/* 802AFA6C  7C 04 00 00 */	cmpw r4, r0
/* 802AFA70  41 82 00 58 */	beq lbl_802AFAC8
/* 802AFA74  40 80 00 88 */	bge lbl_802AFAFC
/* 802AFA78  38 03 00 2B */	addi r0, r3, 0x2b
/* 802AFA7C  7C 04 00 00 */	cmpw r4, r0
/* 802AFA80  41 82 00 48 */	beq lbl_802AFAC8
/* 802AFA84  48 00 00 78 */	b lbl_802AFAFC
lbl_802AFA88:
/* 802AFA88  38 03 00 6E */	addi r0, r3, 0x6e
/* 802AFA8C  7C 04 00 00 */	cmpw r4, r0
/* 802AFA90  41 82 00 48 */	beq lbl_802AFAD8
/* 802AFA94  40 80 00 24 */	bge lbl_802AFAB8
/* 802AFA98  38 03 00 63 */	addi r0, r3, 0x63
/* 802AFA9C  7C 04 00 00 */	cmpw r4, r0
/* 802AFAA0  41 82 00 28 */	beq lbl_802AFAC8
/* 802AFAA4  40 80 00 58 */	bge lbl_802AFAFC
/* 802AFAA8  38 03 00 4B */	addi r0, r3, 0x4b
/* 802AFAAC  7C 04 00 00 */	cmpw r4, r0
/* 802AFAB0  41 82 00 3C */	beq lbl_802AFAEC
/* 802AFAB4  48 00 00 48 */	b lbl_802AFAFC
lbl_802AFAB8:
/* 802AFAB8  38 03 00 A5 */	addi r0, r3, 0xa5
/* 802AFABC  7C 04 00 00 */	cmpw r4, r0
/* 802AFAC0  41 82 00 18 */	beq lbl_802AFAD8
/* 802AFAC4  48 00 00 38 */	b lbl_802AFAFC
lbl_802AFAC8:
/* 802AFAC8  3B E0 00 0A */	li r31, 0xa
/* 802AFACC  48 00 00 30 */	b lbl_802AFAFC
lbl_802AFAD0:
/* 802AFAD0  3B E0 00 32 */	li r31, 0x32
/* 802AFAD4  48 00 00 28 */	b lbl_802AFAFC
lbl_802AFAD8:
/* 802AFAD8  3B E0 00 21 */	li r31, 0x21
/* 802AFADC  7F C3 F3 78 */	mr r3, r30
/* 802AFAE0  38 80 00 00 */	li r4, 0
/* 802AFAE4  48 00 46 81 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802AFAE8  48 00 00 14 */	b lbl_802AFAFC
lbl_802AFAEC:
/* 802AFAEC  3B E0 00 5A */	li r31, 0x5a
/* 802AFAF0  7F C3 F3 78 */	mr r3, r30
/* 802AFAF4  38 80 00 00 */	li r4, 0
/* 802AFAF8  48 00 46 6D */	bl setBattleBgmOff__8Z2SeqMgrFb
lbl_802AFAFC:
/* 802AFAFC  80 7E 00 04 */	lwz r3, 4(r30)
/* 802AFB00  7F E4 FB 78 */	mr r4, r31
/* 802AFB04  4B FF 29 D9 */	bl stop__8JAISoundFUl
/* 802AFB08  38 7E 00 04 */	addi r3, r30, 4
/* 802AFB0C  4B FF 26 79 */	bl releaseSound__14JAISoundHandleFv
/* 802AFB10  88 0D 82 E2 */	lbz r0, struct_80450860+0x2(r13)
/* 802AFB14  28 00 00 00 */	cmplwi r0, 0
/* 802AFB18  41 82 00 40 */	beq lbl_802AFB58
/* 802AFB1C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 802AFB20  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802AFB24  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802AFB28  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AFB2C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802AFB30  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AFB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AFB38  3C 00 43 30 */	lis r0, 0x4330
/* 802AFB3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AFB40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802AFB44  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AFB48  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AFB4C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802AFB50  D0 7E 00 1C */	stfs f3, 0x1c(r30)
/* 802AFB54  48 00 00 20 */	b lbl_802AFB74
lbl_802AFB58:
/* 802AFB58  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AFB5C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802AFB60  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AFB64  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802AFB68  38 00 00 00 */	li r0, 0
/* 802AFB6C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802AFB70  D0 1E 00 1C */	stfs f0, 0x1c(r30)
lbl_802AFB74:
/* 802AFB74  38 00 FF FF */	li r0, -1
/* 802AFB78  B0 1E 00 B8 */	sth r0, 0xb8(r30)
lbl_802AFB7C:
/* 802AFB7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AFB80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AFB84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AFB88  7C 08 03 A6 */	mtlr r0
/* 802AFB8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802AFB90  4E 80 00 20 */	blr 
