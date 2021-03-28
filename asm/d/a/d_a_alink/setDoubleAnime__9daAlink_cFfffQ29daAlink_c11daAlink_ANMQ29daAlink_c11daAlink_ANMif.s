lbl_800ACA14:
/* 800ACA14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800ACA18  7C 08 02 A6 */	mflr r0
/* 800ACA1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800ACA20  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800ACA24  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800ACA28  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800ACA2C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 800ACA30  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800ACA34  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 800ACA38  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 800ACA3C  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 800ACA40  39 61 00 30 */	addi r11, r1, 0x30
/* 800ACA44  48 2B 57 8D */	bl _savegpr_26
/* 800ACA48  7C 7B 1B 78 */	mr r27, r3
/* 800ACA4C  FF 80 08 90 */	fmr f28, f1
/* 800ACA50  FF A0 10 90 */	fmr f29, f2
/* 800ACA54  FF C0 18 90 */	fmr f30, f3
/* 800ACA58  7C 9C 23 78 */	mr r28, r4
/* 800ACA5C  7C BD 2B 78 */	mr r29, r5
/* 800ACA60  7C DE 33 78 */	mr r30, r6
/* 800ACA64  FF E0 20 90 */	fmr f31, f4
/* 800ACA68  3C A0 80 39 */	lis r5, lit_3757@ha
/* 800ACA6C  3B E5 D6 58 */	addi r31, r5, lit_3757@l
/* 800ACA70  38 A1 00 14 */	addi r5, r1, 0x14
/* 800ACA74  38 C1 00 10 */	addi r6, r1, 0x10
/* 800ACA78  38 E0 00 00 */	li r7, 0
/* 800ACA7C  39 00 2C 00 */	li r8, 0x2c00
/* 800ACA80  4B FF FB 91 */	bl getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
/* 800ACA84  7C 7A 1B 78 */	mr r26, r3
/* 800ACA88  7F 63 DB 78 */	mr r3, r27
/* 800ACA8C  7F A4 EB 78 */	mr r4, r29
/* 800ACA90  38 A1 00 0C */	addi r5, r1, 0xc
/* 800ACA94  38 C1 00 08 */	addi r6, r1, 8
/* 800ACA98  38 E0 00 01 */	li r7, 1
/* 800ACA9C  39 00 2C 00 */	li r8, 0x2c00
/* 800ACAA0  4B FF FB 71 */	bl getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
/* 800ACAA4  7F 40 1B 79 */	or. r0, r26, r3
/* 800ACAA8  41 82 00 84 */	beq lbl_800ACB2C
/* 800ACAAC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ACAB0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800ACAB4  40 80 00 78 */	bge lbl_800ACB2C
/* 800ACAB8  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 800ACABC  40 82 00 1C */	bne lbl_800ACAD8
/* 800ACAC0  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 800ACAC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800ACAC8  41 82 00 10 */	beq lbl_800ACAD8
/* 800ACACC  38 7F 00 64 */	addi r3, r31, 0x64
/* 800ACAD0  C3 E3 00 4C */	lfs f31, 0x4c(r3)
/* 800ACAD4  48 00 00 0C */	b lbl_800ACAE0
lbl_800ACAD8:
/* 800ACAD8  38 7F 00 0C */	addi r3, r31, 0xc
/* 800ACADC  C3 E3 00 18 */	lfs f31, 0x18(r3)
lbl_800ACAE0:
/* 800ACAE0  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 800ACAE4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800ACAE8  41 82 00 B4 */	beq lbl_800ACB9C
/* 800ACAEC  7F 63 DB 78 */	mr r3, r27
/* 800ACAF0  48 01 32 C1 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800ACAF4  2C 03 00 00 */	cmpwi r3, 0
/* 800ACAF8  41 82 00 1C */	beq lbl_800ACB14
/* 800ACAFC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACB00  38 7F 11 9C */	addi r3, r31, 0x119c
/* 800ACB04  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800ACB08  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACB0C  EF FF 00 32 */	fmuls f31, f31, f0
/* 800ACB10  48 00 00 8C */	b lbl_800ACB9C
lbl_800ACB14:
/* 800ACB14  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACB18  38 7F 11 9C */	addi r3, r31, 0x119c
/* 800ACB1C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800ACB20  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACB24  EF FF 00 32 */	fmuls f31, f31, f0
/* 800ACB28  48 00 00 74 */	b lbl_800ACB9C
lbl_800ACB2C:
/* 800ACB2C  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 800ACB30  40 82 00 6C */	bne lbl_800ACB9C
/* 800ACB34  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 800ACB38  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800ACB3C  41 82 00 60 */	beq lbl_800ACB9C
/* 800ACB40  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ACB44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800ACB48  40 81 00 54 */	ble lbl_800ACB9C
/* 800ACB4C  38 7F 00 64 */	addi r3, r31, 0x64
/* 800ACB50  C3 E3 00 4C */	lfs f31, 0x4c(r3)
/* 800ACB54  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 800ACB58  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800ACB5C  41 82 00 40 */	beq lbl_800ACB9C
/* 800ACB60  7F 63 DB 78 */	mr r3, r27
/* 800ACB64  48 01 32 4D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800ACB68  2C 03 00 00 */	cmpwi r3, 0
/* 800ACB6C  41 82 00 1C */	beq lbl_800ACB88
/* 800ACB70  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACB74  38 7F 11 9C */	addi r3, r31, 0x119c
/* 800ACB78  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800ACB7C  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACB80  EF FF 00 32 */	fmuls f31, f31, f0
/* 800ACB84  48 00 00 18 */	b lbl_800ACB9C
lbl_800ACB88:
/* 800ACB88  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACB8C  38 7F 11 9C */	addi r3, r31, 0x119c
/* 800ACB90  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800ACB94  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACB98  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800ACB9C:
/* 800ACB9C  7F 63 DB 78 */	mr r3, r27
/* 800ACBA0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 800ACBA4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 800ACBA8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800ACBAC  80 E1 00 08 */	lwz r7, 8(r1)
/* 800ACBB0  FC 20 E0 90 */	fmr f1, f28
/* 800ACBB4  FC 40 E8 90 */	fmr f2, f29
/* 800ACBB8  FC 60 F0 90 */	fmr f3, f30
/* 800ACBBC  7F C8 F3 78 */	mr r8, r30
/* 800ACBC0  4B FF FB 95 */	bl commonDoubleAnime__9daAlink_cFP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformP15J3DAnmTransformfffi
/* 800ACBC4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ACBC8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800ACBCC  4C 41 13 82 */	cror 2, 1, 2
/* 800ACBD0  40 82 00 18 */	bne lbl_800ACBE8
/* 800ACBD4  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 800ACBD8  FC 20 F8 90 */	fmr f1, f31
/* 800ACBDC  38 80 00 00 */	li r4, 0
/* 800ACBE0  38 A0 00 23 */	li r5, 0x23
/* 800ACBE4  4B F6 2C 65 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800ACBE8:
/* 800ACBE8  7F 63 DB 78 */	mr r3, r27
/* 800ACBEC  7F 84 E3 78 */	mr r4, r28
/* 800ACBF0  4B FF D6 CD */	bl setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800ACBF4  38 00 00 00 */	li r0, 0
/* 800ACBF8  88 7B 2F AA */	lbz r3, 0x2faa(r27)
/* 800ACBFC  28 03 00 01 */	cmplwi r3, 1
/* 800ACC00  41 82 00 0C */	beq lbl_800ACC0C
/* 800ACC04  28 03 00 02 */	cmplwi r3, 2
/* 800ACC08  40 82 00 08 */	bne lbl_800ACC10
lbl_800ACC0C:
/* 800ACC0C  38 00 00 01 */	li r0, 1
lbl_800ACC10:
/* 800ACC10  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800ACC14  41 82 00 BC */	beq lbl_800ACCD0
/* 800ACC18  7F 63 DB 78 */	mr r3, r27
/* 800ACC1C  48 00 67 C9 */	bl checkRestHPAnime__9daAlink_cFv
/* 800ACC20  2C 03 00 00 */	cmpwi r3, 0
/* 800ACC24  41 82 00 80 */	beq lbl_800ACCA4
/* 800ACC28  7F 63 DB 78 */	mr r3, r27
/* 800ACC2C  38 80 00 48 */	li r4, 0x48
/* 800ACC30  4B FF F9 29 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ACC34  2C 03 00 00 */	cmpwi r3, 0
/* 800ACC38  40 82 00 2C */	bne lbl_800ACC64
/* 800ACC3C  7F 63 DB 78 */	mr r3, r27
/* 800ACC40  38 80 00 49 */	li r4, 0x49
/* 800ACC44  4B FF F9 15 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ACC48  2C 03 00 00 */	cmpwi r3, 0
/* 800ACC4C  40 82 00 18 */	bne lbl_800ACC64
/* 800ACC50  7F 63 DB 78 */	mr r3, r27
/* 800ACC54  38 80 00 4A */	li r4, 0x4a
/* 800ACC58  4B FF F9 01 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ACC5C  2C 03 00 00 */	cmpwi r3, 0
/* 800ACC60  41 82 00 44 */	beq lbl_800ACCA4
lbl_800ACC64:
/* 800ACC64  7F 63 DB 78 */	mr r3, r27
/* 800ACC68  48 00 C5 ED */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800ACC6C  2C 03 00 00 */	cmpwi r3, 0
/* 800ACC70  41 82 00 18 */	beq lbl_800ACC88
/* 800ACC74  7F 63 DB 78 */	mr r3, r27
/* 800ACC78  38 80 02 63 */	li r4, 0x263
/* 800ACC7C  38 BF 0F 4C */	addi r5, r31, 0xf4c
/* 800ACC80  C0 25 00 68 */	lfs f1, 0x68(r5)
/* 800ACC84  48 00 06 F1 */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
lbl_800ACC88:
/* 800ACC88  7F 63 DB 78 */	mr r3, r27
/* 800ACC8C  38 80 00 B6 */	li r4, 0xb6
/* 800ACC90  48 00 2D 19 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800ACC94  7F 63 DB 78 */	mr r3, r27
/* 800ACC98  38 9B 20 48 */	addi r4, r27, 0x2048
/* 800ACC9C  48 00 66 BD */	bl setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c
/* 800ACCA0  48 00 00 64 */	b lbl_800ACD04
lbl_800ACCA4:
/* 800ACCA4  A0 1B 1F BC */	lhz r0, 0x1fbc(r27)
/* 800ACCA8  28 00 02 63 */	cmplwi r0, 0x263
/* 800ACCAC  40 82 00 14 */	bne lbl_800ACCC0
/* 800ACCB0  7F 63 DB 78 */	mr r3, r27
/* 800ACCB4  38 80 00 02 */	li r4, 2
/* 800ACCB8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800ACCBC  48 00 0A 69 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800ACCC0:
/* 800ACCC0  7F 63 DB 78 */	mr r3, r27
/* 800ACCC4  7F 84 E3 78 */	mr r4, r28
/* 800ACCC8  48 00 2C E1 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800ACCCC  48 00 00 38 */	b lbl_800ACD04
lbl_800ACCD0:
/* 800ACCD0  2C 1D 00 0E */	cmpwi r29, 0xe
/* 800ACCD4  40 82 00 0C */	bne lbl_800ACCE0
/* 800ACCD8  2C 1C 00 19 */	cmpwi r28, 0x19
/* 800ACCDC  41 82 00 0C */	beq lbl_800ACCE8
lbl_800ACCE0:
/* 800ACCE0  2C 1D 00 4C */	cmpwi r29, 0x4c
/* 800ACCE4  40 82 00 14 */	bne lbl_800ACCF8
lbl_800ACCE8:
/* 800ACCE8  7F 63 DB 78 */	mr r3, r27
/* 800ACCEC  7F A4 EB 78 */	mr r4, r29
/* 800ACCF0  48 00 2C B9 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800ACCF4  48 00 00 10 */	b lbl_800ACD04
lbl_800ACCF8:
/* 800ACCF8  7F 63 DB 78 */	mr r3, r27
/* 800ACCFC  7F 84 E3 78 */	mr r4, r28
/* 800ACD00  48 00 2C A9 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800ACD04:
/* 800ACD04  38 60 00 01 */	li r3, 1
/* 800ACD08  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800ACD0C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800ACD10  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 800ACD14  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800ACD18  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 800ACD1C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800ACD20  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 800ACD24  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 800ACD28  39 61 00 30 */	addi r11, r1, 0x30
/* 800ACD2C  48 2B 54 F1 */	bl _restgpr_26
/* 800ACD30  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800ACD34  7C 08 03 A6 */	mtlr r0
/* 800ACD38  38 21 00 70 */	addi r1, r1, 0x70
/* 800ACD3C  4E 80 00 20 */	blr 
