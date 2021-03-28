lbl_802349D8:
/* 802349D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802349DC  7C 08 02 A6 */	mflr r0
/* 802349E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802349E4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802349E8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802349EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802349F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802349F4  7C 7E 1B 78 */	mr r30, r3
/* 802349F8  80 63 01 18 */	lwz r3, 0x118(r3)
/* 802349FC  4B FF 4D E9 */	bl shiftCharCountBuffer__19jmessage_tReferenceFv
/* 80234A00  7F C3 F3 78 */	mr r3, r30
/* 80234A04  48 00 28 09 */	bl isBookMessage__12dMsgObject_cFv
/* 80234A08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234A0C  41 82 00 80 */	beq lbl_80234A8C
/* 80234A10  A8 7E 01 6A */	lha r3, 0x16a(r30)
/* 80234A14  2C 03 00 00 */	cmpwi r3, 0
/* 80234A18  40 81 00 74 */	ble lbl_80234A8C
/* 80234A1C  38 03 FF FF */	addi r0, r3, -1
/* 80234A20  B0 1E 01 6A */	sth r0, 0x16a(r30)
/* 80234A24  A8 1E 01 6A */	lha r0, 0x16a(r30)
/* 80234A28  20 00 00 0A */	subfic r0, r0, 0xa
/* 80234A2C  C8 22 B1 20 */	lfd f1, lit_4965(r2)
/* 80234A30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80234A34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80234A38  3C 00 43 30 */	lis r0, 0x4330
/* 80234A3C  90 01 00 08 */	stw r0, 8(r1)
/* 80234A40  C8 01 00 08 */	lfd f0, 8(r1)
/* 80234A44  EC 20 08 28 */	fsubs f1, f0, f1
/* 80234A48  C0 02 B1 28 */	lfs f0, lit_5044(r2)
/* 80234A4C  EF E1 00 24 */	fdivs f31, f1, f0
/* 80234A50  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234A54  FC 20 F8 90 */	fmr f1, f31
/* 80234A58  81 83 00 00 */	lwz r12, 0(r3)
/* 80234A5C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80234A60  7D 89 03 A6 */	mtctr r12
/* 80234A64  4E 80 04 21 */	bctrl 
/* 80234A68  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80234A6C  FC 20 F8 90 */	fmr f1, f31
/* 80234A70  81 83 00 00 */	lwz r12, 0(r3)
/* 80234A74  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80234A78  7D 89 03 A6 */	mtctr r12
/* 80234A7C  4E 80 04 21 */	bctrl 
/* 80234A80  A8 1E 01 6A */	lha r0, 0x16a(r30)
/* 80234A84  2C 00 00 00 */	cmpwi r0, 0
/* 80234A88  41 81 02 24 */	bgt lbl_80234CAC
lbl_80234A8C:
/* 80234A8C  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 80234A90  83 E3 00 04 */	lwz r31, 4(r3)
/* 80234A94  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 80234A98  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 80234A9C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80234AA0  40 80 00 60 */	bge lbl_80234B00
/* 80234AA4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80234AA8  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80234AAC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80234AB0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80234AB4  41 82 00 0C */	beq lbl_80234AC0
/* 80234AB8  D0 3F 04 5C */	stfs f1, 0x45c(r31)
/* 80234ABC  48 00 00 20 */	b lbl_80234ADC
lbl_80234AC0:
/* 80234AC0  C0 1F 04 58 */	lfs f0, 0x458(r31)
/* 80234AC4  EC 02 00 2A */	fadds f0, f2, f0
/* 80234AC8  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 80234ACC  C0 1F 04 5C */	lfs f0, 0x45c(r31)
/* 80234AD0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80234AD4  40 81 00 08 */	ble lbl_80234ADC
/* 80234AD8  D0 3F 04 5C */	stfs f1, 0x45c(r31)
lbl_80234ADC:
/* 80234ADC  C0 3F 04 5C */	lfs f1, 0x45c(r31)
/* 80234AE0  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234AE4  D0 23 00 BC */	stfs f1, 0xbc(r3)
/* 80234AE8  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80234AEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80234AF0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80234AF4  7D 89 03 A6 */	mtctr r12
/* 80234AF8  4E 80 04 21 */	bctrl 
/* 80234AFC  48 00 01 B0 */	b lbl_80234CAC
lbl_80234B00:
/* 80234B00  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80234B04  4B FF 4E 49 */	bl isLightEnd__19jmessage_tReferenceFv
/* 80234B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234B0C  41 82 01 A0 */	beq lbl_80234CAC
/* 80234B10  88 1F 12 4B */	lbz r0, 0x124b(r31)
/* 80234B14  28 00 00 00 */	cmplwi r0, 0
/* 80234B18  41 82 00 20 */	beq lbl_80234B38
/* 80234B1C  7F C3 F3 78 */	mr r3, r30
/* 80234B20  48 00 30 DD */	bl setButtonStatusLocal__12dMsgObject_cFv
/* 80234B24  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234B28  81 83 00 00 */	lwz r12, 0(r3)
/* 80234B2C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80234B30  7D 89 03 A6 */	mtctr r12
/* 80234B34  4E 80 04 21 */	bctrl 
lbl_80234B38:
/* 80234B38  88 1F 12 4D */	lbz r0, 0x124d(r31)
/* 80234B3C  28 00 00 01 */	cmplwi r0, 1
/* 80234B40  40 82 00 28 */	bne lbl_80234B68
/* 80234B44  38 00 00 00 */	li r0, 0
/* 80234B48  B0 1E 01 6A */	sth r0, 0x16a(r30)
/* 80234B4C  98 1E 01 96 */	stb r0, 0x196(r30)
/* 80234B50  7F C3 F3 78 */	mr r3, r30
/* 80234B54  38 80 00 05 */	li r4, 5
/* 80234B58  48 00 1D 8D */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234B5C  38 00 00 00 */	li r0, 0
/* 80234B60  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80234B64  48 00 01 48 */	b lbl_80234CAC
lbl_80234B68:
/* 80234B68  28 00 00 07 */	cmplwi r0, 7
/* 80234B6C  40 82 00 54 */	bne lbl_80234BC0
/* 80234B70  38 00 00 01 */	li r0, 1
/* 80234B74  98 1E 01 96 */	stb r0, 0x196(r30)
/* 80234B78  88 1E 04 CB */	lbz r0, 0x4cb(r30)
/* 80234B7C  28 00 00 00 */	cmplwi r0, 0
/* 80234B80  41 82 00 20 */	beq lbl_80234BA0
/* 80234B84  88 1E 04 D4 */	lbz r0, 0x4d4(r30)
/* 80234B88  28 00 00 00 */	cmplwi r0, 0
/* 80234B8C  40 82 00 14 */	bne lbl_80234BA0
/* 80234B90  7F C3 F3 78 */	mr r3, r30
/* 80234B94  38 80 00 0E */	li r4, 0xe
/* 80234B98  48 00 1D 4D */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234B9C  48 00 00 18 */	b lbl_80234BB4
lbl_80234BA0:
/* 80234BA0  38 00 00 00 */	li r0, 0
/* 80234BA4  98 1E 01 99 */	stb r0, 0x199(r30)
/* 80234BA8  7F C3 F3 78 */	mr r3, r30
/* 80234BAC  38 80 00 10 */	li r4, 0x10
/* 80234BB0  48 00 1D 35 */	bl setStatusLocal__12dMsgObject_cFUs
lbl_80234BB4:
/* 80234BB4  38 00 00 00 */	li r0, 0
/* 80234BB8  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80234BBC  48 00 00 F0 */	b lbl_80234CAC
lbl_80234BC0:
/* 80234BC0  28 00 00 02 */	cmplwi r0, 2
/* 80234BC4  40 82 00 50 */	bne lbl_80234C14
/* 80234BC8  38 00 00 00 */	li r0, 0
/* 80234BCC  98 1E 01 A3 */	stb r0, 0x1a3(r30)
/* 80234BD0  7F C3 F3 78 */	mr r3, r30
/* 80234BD4  38 80 00 08 */	li r4, 8
/* 80234BD8  48 00 1D 0D */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234BDC  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234BE0  38 80 00 02 */	li r4, 2
/* 80234BE4  88 BF 12 44 */	lbz r5, 0x1244(r31)
/* 80234BE8  38 05 00 01 */	addi r0, r5, 1
/* 80234BEC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80234BF0  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 80234BF4  88 DF 12 4E */	lbz r6, 0x124e(r31)
/* 80234BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80234BFC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80234C00  7D 89 03 A6 */	mtctr r12
/* 80234C04  4E 80 04 21 */	bctrl 
/* 80234C08  38 00 00 00 */	li r0, 0
/* 80234C0C  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80234C10  48 00 00 9C */	b lbl_80234CAC
lbl_80234C14:
/* 80234C14  28 00 00 03 */	cmplwi r0, 3
/* 80234C18  40 82 00 48 */	bne lbl_80234C60
/* 80234C1C  38 00 00 00 */	li r0, 0
/* 80234C20  98 1E 01 A3 */	stb r0, 0x1a3(r30)
/* 80234C24  7F C3 F3 78 */	mr r3, r30
/* 80234C28  38 80 00 09 */	li r4, 9
/* 80234C2C  48 00 1C B9 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234C30  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80234C34  38 80 00 03 */	li r4, 3
/* 80234C38  88 BF 12 44 */	lbz r5, 0x1244(r31)
/* 80234C3C  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 80234C40  88 DF 12 4E */	lbz r6, 0x124e(r31)
/* 80234C44  81 83 00 00 */	lwz r12, 0(r3)
/* 80234C48  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80234C4C  7D 89 03 A6 */	mtctr r12
/* 80234C50  4E 80 04 21 */	bctrl 
/* 80234C54  38 00 00 00 */	li r0, 0
/* 80234C58  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80234C5C  48 00 00 50 */	b lbl_80234CAC
lbl_80234C60:
/* 80234C60  28 00 00 04 */	cmplwi r0, 4
/* 80234C64  41 82 00 0C */	beq lbl_80234C70
/* 80234C68  28 00 00 05 */	cmplwi r0, 5
/* 80234C6C  40 82 00 24 */	bne lbl_80234C90
lbl_80234C70:
/* 80234C70  38 00 00 00 */	li r0, 0
/* 80234C74  98 1E 01 A3 */	stb r0, 0x1a3(r30)
/* 80234C78  7F C3 F3 78 */	mr r3, r30
/* 80234C7C  38 80 00 14 */	li r4, 0x14
/* 80234C80  48 00 1C 65 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234C84  38 00 00 00 */	li r0, 0
/* 80234C88  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80234C8C  48 00 00 20 */	b lbl_80234CAC
lbl_80234C90:
/* 80234C90  28 00 00 06 */	cmplwi r0, 6
/* 80234C94  40 82 00 18 */	bne lbl_80234CAC
/* 80234C98  7F C3 F3 78 */	mr r3, r30
/* 80234C9C  38 80 00 15 */	li r4, 0x15
/* 80234CA0  48 00 1C 45 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234CA4  38 00 00 00 */	li r0, 0
/* 80234CA8  98 1F 12 4D */	stb r0, 0x124d(r31)
lbl_80234CAC:
/* 80234CAC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80234CB0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80234CB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80234CB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80234CBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80234CC0  7C 08 03 A6 */	mtlr r0
/* 80234CC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80234CC8  4E 80 00 20 */	blr 
