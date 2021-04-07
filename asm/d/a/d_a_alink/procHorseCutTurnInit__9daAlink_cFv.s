lbl_800F1AAC:
/* 800F1AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F1AB0  7C 08 02 A6 */	mflr r0
/* 800F1AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F1AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F1ABC  7C 7F 1B 78 */	mr r31, r3
/* 800F1AC0  38 80 00 43 */	li r4, 0x43
/* 800F1AC4  4B FD 04 A9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F1AC8  A0 1F 1F 80 */	lhz r0, 0x1f80(r31)
/* 800F1ACC  28 00 00 19 */	cmplwi r0, 0x19
/* 800F1AD0  40 82 00 14 */	bne lbl_800F1AE4
/* 800F1AD4  7F E3 FB 78 */	mr r3, r31
/* 800F1AD8  38 80 00 02 */	li r4, 2
/* 800F1ADC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F1AE0  4B FB C0 0D */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F1AE4:
/* 800F1AE4  7F E3 FB 78 */	mr r3, r31
/* 800F1AE8  38 80 00 50 */	li r4, 0x50
/* 800F1AEC  3C A0 80 39 */	lis r5, m__25daAlinkHIO_hoCutCharge_c0@ha /* 0x8038DC9C@ha */
/* 800F1AF0  38 A5 DC 9C */	addi r5, r5, m__25daAlinkHIO_hoCutCharge_c0@l /* 0x8038DC9C@l */
/* 800F1AF4  38 A5 00 28 */	addi r5, r5, 0x28
/* 800F1AF8  4B FB B5 FD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800F1AFC  7F E3 FB 78 */	mr r3, r31
/* 800F1B00  38 80 00 2B */	li r4, 0x2b
/* 800F1B04  4B FD FA 29 */	bl setCutType__9daAlink_cFUc
/* 800F1B08  7F E3 FB 78 */	mr r3, r31
/* 800F1B0C  38 80 00 01 */	li r4, 1
/* 800F1B10  4B FF CE 09 */	bl setSyncRide__9daAlink_cFi
/* 800F1B14  3C 60 80 39 */	lis r3, m__25daAlinkHIO_hoCutCharge_c0@ha /* 0x8038DC9C@ha */
/* 800F1B18  38 63 DC 9C */	addi r3, r3, m__25daAlinkHIO_hoCutCharge_c0@l /* 0x8038DC9C@l */
/* 800F1B1C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800F1B20  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800F1B24  4B FD F4 39 */	bl getSwordAtType__9daAlink_cFv
/* 800F1B28  7C 64 1B 78 */	mr r4, r3
/* 800F1B2C  7F E3 FB 78 */	mr r3, r31
/* 800F1B30  38 A0 00 01 */	li r5, 1
/* 800F1B34  38 C0 00 03 */	li r6, 3
/* 800F1B38  38 E0 00 01 */	li r7, 1
/* 800F1B3C  39 00 00 03 */	li r8, 3
/* 800F1B40  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800F1B44  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800F1B48  EC 21 00 32 */	fmuls f1, f1, f0
/* 800F1B4C  C0 42 93 68 */	lfs f2, lit_8472(r2)
/* 800F1B50  4B FD F9 F1 */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 800F1B54  3C 60 80 39 */	lis r3, m__25daAlinkHIO_hoCutCharge_c0@ha /* 0x8038DC9C@ha */
/* 800F1B58  38 63 DC 9C */	addi r3, r3, m__25daAlinkHIO_hoCutCharge_c0@l /* 0x8038DC9C@l */
/* 800F1B5C  A8 03 00 3E */	lha r0, 0x3e(r3)
/* 800F1B60  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800F1B64  7F E3 FB 78 */	mr r3, r31
/* 800F1B68  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010051@ha */
/* 800F1B6C  38 84 00 51 */	addi r4, r4, 0x0051 /* 0x00010051@l */
/* 800F1B70  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F1B74  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F1B78  7D 89 03 A6 */	mtctr r12
/* 800F1B7C  4E 80 04 21 */	bctrl 
/* 800F1B80  7F E3 FB 78 */	mr r3, r31
/* 800F1B84  48 03 25 C1 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800F1B88  4B FF AC 29 */	bl setHorseZeldaDamage__9daAlink_cFv
/* 800F1B8C  38 60 00 01 */	li r3, 1
/* 800F1B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F1B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F1B98  7C 08 03 A6 */	mtlr r0
/* 800F1B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F1BA0  4E 80 00 20 */	blr 
