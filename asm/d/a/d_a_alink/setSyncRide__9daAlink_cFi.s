lbl_800EE918:
/* 800EE918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EE91C  7C 08 02 A6 */	mflr r0
/* 800EE920  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EE924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EE928  93 C1 00 08 */	stw r30, 8(r1)
/* 800EE92C  7C 7E 1B 78 */	mr r30, r3
/* 800EE930  2C 04 00 00 */	cmpwi r4, 0
/* 800EE934  41 82 00 5C */	beq lbl_800EE990
/* 800EE938  88 1E 2F B2 */	lbz r0, 0x2fb2(r30)
/* 800EE93C  28 00 00 00 */	cmplwi r0, 0
/* 800EE940  40 82 00 50 */	bne lbl_800EE990
/* 800EE944  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EE948  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EE94C  88 04 5E 24 */	lbz r0, 0x5e24(r4)
/* 800EE950  28 00 00 00 */	cmplwi r0, 0
/* 800EE954  40 82 00 3C */	bne lbl_800EE990
/* 800EE958  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800EE95C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EE960  7D 89 03 A6 */	mtctr r12
/* 800EE964  4E 80 04 21 */	bctrl 
/* 800EE968  28 03 00 00 */	cmplwi r3, 0
/* 800EE96C  41 82 00 1C */	beq lbl_800EE988
/* 800EE970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EE974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EE978  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800EE97C  A0 03 16 C4 */	lhz r0, 0x16c4(r3)
/* 800EE980  28 00 00 07 */	cmplwi r0, 7
/* 800EE984  41 82 00 0C */	beq lbl_800EE990
lbl_800EE988:
/* 800EE988  3B E0 00 01 */	li r31, 1
/* 800EE98C  48 00 00 08 */	b lbl_800EE994
lbl_800EE990:
/* 800EE990  3B E0 00 00 */	li r31, 0
lbl_800EE994:
/* 800EE994  7F C3 F3 78 */	mr r3, r30
/* 800EE998  4B FC 5E 1D */	bl checkServiceWaitMode__9daAlink_cFv
/* 800EE99C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE9A0  41 82 00 F0 */	beq lbl_800EEA90
/* 800EE9A4  7F C3 F3 78 */	mr r3, r30
/* 800EE9A8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800EE9AC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EE9B0  7D 89 03 A6 */	mtctr r12
/* 800EE9B4  4E 80 04 21 */	bctrl 
/* 800EE9B8  28 03 00 00 */	cmplwi r3, 0
/* 800EE9BC  41 82 00 D4 */	beq lbl_800EEA90
/* 800EE9C0  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800EE9C4  28 00 00 3C */	cmplwi r0, 0x3c
/* 800EE9C8  40 82 00 C8 */	bne lbl_800EEA90
/* 800EE9CC  7F C3 F3 78 */	mr r3, r30
/* 800EE9D0  A0 9E 2F DC */	lhz r4, 0x2fdc(r30)
/* 800EE9D4  4B FE FD AD */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800EE9D8  2C 03 00 00 */	cmpwi r3, 0
/* 800EE9DC  40 82 00 B4 */	bne lbl_800EEA90
/* 800EE9E0  7F C3 F3 78 */	mr r3, r30
/* 800EE9E4  4B FC 4F 21 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EE9E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE9EC  41 82 00 A4 */	beq lbl_800EEA90
/* 800EE9F0  7F C3 F3 78 */	mr r3, r30
/* 800EE9F4  38 80 00 5A */	li r4, 0x5a
/* 800EE9F8  4B FB DB 61 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EE9FC  2C 03 00 00 */	cmpwi r3, 0
/* 800EEA00  40 82 00 90 */	bne lbl_800EEA90
/* 800EEA04  7F C3 F3 78 */	mr r3, r30
/* 800EEA08  38 80 00 5B */	li r4, 0x5b
/* 800EEA0C  4B FB DB 4D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EEA10  2C 03 00 00 */	cmpwi r3, 0
/* 800EEA14  40 82 00 7C */	bne lbl_800EEA90
/* 800EEA18  7F C3 F3 78 */	mr r3, r30
/* 800EEA1C  38 80 00 4D */	li r4, 0x4d
/* 800EEA20  4B FB DB 39 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EEA24  2C 03 00 00 */	cmpwi r3, 0
/* 800EEA28  40 82 00 68 */	bne lbl_800EEA90
/* 800EEA2C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800EEA30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800EEA34  41 82 00 5C */	beq lbl_800EEA90
/* 800EEA38  A8 7E 30 CA */	lha r3, 0x30ca(r30)
/* 800EEA3C  2C 03 00 00 */	cmpwi r3, 0
/* 800EEA40  41 82 00 10 */	beq lbl_800EEA50
/* 800EEA44  38 03 FF FF */	addi r0, r3, -1
/* 800EEA48  B0 1E 30 CA */	sth r0, 0x30ca(r30)
/* 800EEA4C  48 00 00 4C */	b lbl_800EEA98
lbl_800EEA50:
/* 800EEA50  48 17 8E 1D */	bl cM_rnd__Fv
/* 800EEA54  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800EEA58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EEA5C  40 80 00 18 */	bge lbl_800EEA74
/* 800EEA60  7F C3 F3 78 */	mr r3, r30
/* 800EEA64  38 80 00 51 */	li r4, 0x51
/* 800EEA68  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800EEA6C  4B FB E5 45 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800EEA70  48 00 00 14 */	b lbl_800EEA84
lbl_800EEA74:
/* 800EEA74  7F C3 F3 78 */	mr r3, r30
/* 800EEA78  38 80 00 52 */	li r4, 0x52
/* 800EEA7C  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800EEA80  4B FB E5 31 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_800EEA84:
/* 800EEA84  7F C3 F3 78 */	mr r3, r30
/* 800EEA88  4B FC 4D BD */	bl initServiceWaitTime__9daAlink_cFv
/* 800EEA8C  48 00 00 0C */	b lbl_800EEA98
lbl_800EEA90:
/* 800EEA90  7F C3 F3 78 */	mr r3, r30
/* 800EEA94  4B FC 4D B1 */	bl initServiceWaitTime__9daAlink_cFv
lbl_800EEA98:
/* 800EEA98  7F C3 F3 78 */	mr r3, r30
/* 800EEA9C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800EEAA0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EEAA4  7D 89 03 A6 */	mtctr r12
/* 800EEAA8  4E 80 04 21 */	bctrl 
/* 800EEAAC  28 03 00 00 */	cmplwi r3, 0
/* 800EEAB0  41 82 00 14 */	beq lbl_800EEAC4
/* 800EEAB4  7F C3 F3 78 */	mr r3, r30
/* 800EEAB8  7F E4 FB 78 */	mr r4, r31
/* 800EEABC  4B FF F4 31 */	bl setSyncHorse__9daAlink_cFi
/* 800EEAC0  48 00 00 10 */	b lbl_800EEAD0
lbl_800EEAC4:
/* 800EEAC4  7F C3 F3 78 */	mr r3, r30
/* 800EEAC8  7F E4 FB 78 */	mr r4, r31
/* 800EEACC  4B FF FB 81 */	bl setSyncBoar__9daAlink_cFi
lbl_800EEAD0:
/* 800EEAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EEAD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EEAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EEADC  7C 08 03 A6 */	mtlr r0
/* 800EEAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 800EEAE4  4E 80 00 20 */	blr 
