lbl_800FFAB0:
/* 800FFAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FFAB4  7C 08 02 A6 */	mflr r0
/* 800FFAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FFABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FFAC0  93 C1 00 08 */	stw r30, 8(r1)
/* 800FFAC4  7C 7E 1B 78 */	mr r30, r3
/* 800FFAC8  7C 9F 23 78 */	mr r31, r4
/* 800FFACC  38 80 00 82 */	li r4, 0x82
/* 800FFAD0  4B FC 24 9D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FFAD4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FFAD8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800FFADC  2C 1F 00 00 */	cmpwi r31, 0
/* 800FFAE0  41 82 00 28 */	beq lbl_800FFB08
/* 800FFAE4  38 00 00 00 */	li r0, 0
/* 800FFAE8  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800FFAEC  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFAF0  28 00 00 00 */	cmplwi r0, 0
/* 800FFAF4  40 82 00 0C */	bne lbl_800FFB00
/* 800FFAF8  3B E0 00 A3 */	li r31, 0xa3
/* 800FFAFC  48 00 00 2C */	b lbl_800FFB28
lbl_800FFB00:
/* 800FFB00  3B E0 00 A4 */	li r31, 0xa4
/* 800FFB04  48 00 00 24 */	b lbl_800FFB28
lbl_800FFB08:
/* 800FFB08  38 00 00 01 */	li r0, 1
/* 800FFB0C  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800FFB10  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFB14  28 00 00 00 */	cmplwi r0, 0
/* 800FFB18  40 82 00 0C */	bne lbl_800FFB24
/* 800FFB1C  3B E0 00 A4 */	li r31, 0xa4
/* 800FFB20  48 00 00 08 */	b lbl_800FFB28
lbl_800FFB24:
/* 800FFB24  3B E0 00 A3 */	li r31, 0xa3
lbl_800FFB28:
/* 800FFB28  7F C3 F3 78 */	mr r3, r30
/* 800FFB2C  38 80 00 A3 */	li r4, 0xa3
/* 800FFB30  4B FA CA 29 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800FFB34  2C 03 00 00 */	cmpwi r3, 0
/* 800FFB38  40 82 00 38 */	bne lbl_800FFB70
/* 800FFB3C  7F C3 F3 78 */	mr r3, r30
/* 800FFB40  38 80 00 A4 */	li r4, 0xa4
/* 800FFB44  4B FA CA 15 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800FFB48  2C 03 00 00 */	cmpwi r3, 0
/* 800FFB4C  40 82 00 24 */	bne lbl_800FFB70
/* 800FFB50  7F C3 F3 78 */	mr r3, r30
/* 800FFB54  4B FF E4 BD */	bl getClimbMoveUpDownAnmSpeed__9daAlink_cFv
/* 800FFB58  7F C3 F3 78 */	mr r3, r30
/* 800FFB5C  38 80 00 A2 */	li r4, 0xa2
/* 800FFB60  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800FFB64  4B FA D4 7D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FFB68  93 FE 32 CC */	stw r31, 0x32cc(r30)
/* 800FFB6C  48 00 00 38 */	b lbl_800FFBA4
lbl_800FFB70:
/* 800FFB70  7F C3 F3 78 */	mr r3, r30
/* 800FFB74  4B FF E4 9D */	bl getClimbMoveUpDownAnmSpeed__9daAlink_cFv
/* 800FFB78  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFB7C  28 00 00 01 */	cmplwi r0, 1
/* 800FFB80  40 82 00 0C */	bne lbl_800FFB8C
/* 800FFB84  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FFB88  EC 21 00 32 */	fmuls f1, f1, f0
lbl_800FFB8C:
/* 800FFB8C  7F C3 F3 78 */	mr r3, r30
/* 800FFB90  7F E4 FB 78 */	mr r4, r31
/* 800FFB94  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800FFB98  4B FA D4 49 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FFB9C  38 00 00 00 */	li r0, 0
/* 800FFBA0  90 1E 32 CC */	stw r0, 0x32cc(r30)
lbl_800FFBA4:
/* 800FFBA4  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFBA8  28 00 00 00 */	cmplwi r0, 0
/* 800FFBAC  40 82 00 18 */	bne lbl_800FFBC4
/* 800FFBB0  38 00 E8 00 */	li r0, -6144
/* 800FFBB4  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800FFBB8  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FFBBC  D0 1E 33 F4 */	stfs f0, 0x33f4(r30)
/* 800FFBC0  48 00 00 14 */	b lbl_800FFBD4
lbl_800FFBC4:
/* 800FFBC4  38 00 28 00 */	li r0, 0x2800
/* 800FFBC8  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800FFBCC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FFBD0  D0 1E 33 F4 */	stfs f0, 0x33f4(r30)
lbl_800FFBD4:
/* 800FFBD4  38 00 00 0A */	li r0, 0xa
/* 800FFBD8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FFBDC  7F C3 F3 78 */	mr r3, r30
/* 800FFBE0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FFBE4  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800FFBE8  38 80 00 00 */	li r4, 0
/* 800FFBEC  4B FB BB 85 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FFBF0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FFBF4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800FFBF8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800FFBFC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 800FFC00  38 00 00 01 */	li r0, 1
/* 800FFC04  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FFC08  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FFC0C  7F C3 F3 78 */	mr r3, r30
/* 800FFC10  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010058@ha */
/* 800FFC14  38 84 00 58 */	addi r4, r4, 0x0058 /* 0x00010058@l */
/* 800FFC18  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800FFC1C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FFC20  7D 89 03 A6 */	mtctr r12
/* 800FFC24  4E 80 04 21 */	bctrl 
/* 800FFC28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FFC2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FFC30  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FFC34  60 00 00 08 */	ori r0, r0, 8
/* 800FFC38  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FFC3C  38 60 00 01 */	li r3, 1
/* 800FFC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FFC44  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FFC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FFC4C  7C 08 03 A6 */	mtlr r0
/* 800FFC50  38 21 00 10 */	addi r1, r1, 0x10
/* 800FFC54  4E 80 00 20 */	blr 
