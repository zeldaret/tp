lbl_800EED98:
/* 800EED98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EED9C  7C 08 02 A6 */	mflr r0
/* 800EEDA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EEDA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EEDA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EEDAC  7C 7E 1B 78 */	mr r30, r3
/* 800EEDB0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800EEDB4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EEDB8  7D 89 03 A6 */	mtctr r12
/* 800EEDBC  4E 80 04 21 */	bctrl 
/* 800EEDC0  28 03 00 00 */	cmplwi r3, 0
/* 800EEDC4  41 82 00 4C */	beq lbl_800EEE10
/* 800EEDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EEDCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EEDD0  83 E3 5D B8 */	lwz r31, 0x5db8(r3)
/* 800EEDD4  7F C3 F3 78 */	mr r3, r30
/* 800EEDD8  38 81 00 08 */	addi r4, r1, 8
/* 800EEDDC  4B FF ED 6D */	bl getBaseHorseAnime__9daAlink_cFPQ29daAlink_c11daAlink_ANM
/* 800EEDE0  7F C3 F3 78 */	mr r3, r30
/* 800EEDE4  C0 3F 05 9C */	lfs f1, 0x59c(r31)
/* 800EEDE8  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800EEDEC  FC 60 10 90 */	fmr f3, f2
/* 800EEDF0  80 81 00 08 */	lwz r4, 8(r1)
/* 800EEDF4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800EEDF8  38 C0 00 0A */	li r6, 0xa
/* 800EEDFC  C0 9F 17 50 */	lfs f4, 0x1750(r31)
/* 800EEE00  4B FB DC 15 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800EEE04  7F C3 F3 78 */	mr r3, r30
/* 800EEE08  4B FF FC E1 */	bl setBaseHorseAnimeFrame__9daAlink_cFv
/* 800EEE0C  48 00 00 0C */	b lbl_800EEE18
lbl_800EEE10:
/* 800EEE10  7F C3 F3 78 */	mr r3, r30
/* 800EEE14  4B FF FE 85 */	bl setBaseBoarAnime__9daAlink_cFv
lbl_800EEE18:
/* 800EEE18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EEE1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EEE20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EEE24  7C 08 03 A6 */	mtlr r0
/* 800EEE28  38 21 00 20 */	addi r1, r1, 0x20
/* 800EEE2C  4E 80 00 20 */	blr 
