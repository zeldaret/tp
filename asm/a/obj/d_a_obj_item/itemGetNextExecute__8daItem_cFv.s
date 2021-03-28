lbl_8015CEEC:
/* 8015CEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015CEF0  7C 08 02 A6 */	mflr r0
/* 8015CEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015CEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8015CEFC  48 20 52 E1 */	bl _savegpr_29
/* 8015CF00  7C 7F 1B 78 */	mr r31, r3
/* 8015CF04  88 83 09 48 */	lbz r4, 0x948(r3)
/* 8015CF08  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8015CF0C  40 82 01 84 */	bne lbl_8015D090
/* 8015CF10  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8015CF14  40 82 01 7C */	bne lbl_8015D090
/* 8015CF18  60 80 00 10 */	ori r0, r4, 0x10
/* 8015CF1C  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015CF20  3B A0 00 00 */	li r29, 0
/* 8015CF24  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015CF28  2C 00 00 12 */	cmpwi r0, 0x12
/* 8015CF2C  41 82 00 50 */	beq lbl_8015CF7C
/* 8015CF30  40 80 00 2C */	bge lbl_8015CF5C
/* 8015CF34  2C 00 00 08 */	cmpwi r0, 8
/* 8015CF38  40 80 00 18 */	bge lbl_8015CF50
/* 8015CF3C  2C 00 00 02 */	cmpwi r0, 2
/* 8015CF40  40 80 00 3C */	bge lbl_8015CF7C
/* 8015CF44  2C 00 00 00 */	cmpwi r0, 0
/* 8015CF48  40 80 00 20 */	bge lbl_8015CF68
/* 8015CF4C  48 00 00 F0 */	b lbl_8015D03C
lbl_8015CF50:
/* 8015CF50  2C 00 00 0E */	cmpwi r0, 0xe
/* 8015CF54  40 80 00 14 */	bge lbl_8015CF68
/* 8015CF58  48 00 00 E4 */	b lbl_8015D03C
lbl_8015CF5C:
/* 8015CF5C  2C 00 00 40 */	cmpwi r0, 0x40
/* 8015CF60  41 82 00 D8 */	beq lbl_8015D038
/* 8015CF64  48 00 00 D8 */	b lbl_8015D03C
lbl_8015CF68:
/* 8015CF68  7F E3 FB 78 */	mr r3, r31
/* 8015CF6C  4B FF F0 ED */	bl procInitSimpleGetDemo__8daItem_cFv
/* 8015CF70  7F E3 FB 78 */	mr r3, r31
/* 8015CF74  48 00 01 35 */	bl itemGet__8daItem_cFv
/* 8015CF78  48 00 00 C4 */	b lbl_8015D03C
lbl_8015CF7C:
/* 8015CF7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015CF80  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8015CF84  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8015CF88  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015CF8C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8015CF90  7D 89 03 A6 */	mtctr r12
/* 8015CF94  4E 80 04 21 */	bctrl 
/* 8015CF98  28 03 00 00 */	cmplwi r3, 0
/* 8015CF9C  40 82 00 20 */	bne lbl_8015CFBC
/* 8015CFA0  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8015CFA4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015CFA8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8015CFAC  7D 89 03 A6 */	mtctr r12
/* 8015CFB0  4E 80 04 21 */	bctrl 
/* 8015CFB4  28 03 00 00 */	cmplwi r3, 0
/* 8015CFB8  41 82 00 4C */	beq lbl_8015D004
lbl_8015CFBC:
/* 8015CFBC  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015CFC0  38 80 00 01 */	li r4, 1
/* 8015CFC4  4B F3 AF 1D */	bl checkItemGet__FUci
/* 8015CFC8  2C 03 00 00 */	cmpwi r3, 0
/* 8015CFCC  41 82 00 08 */	beq lbl_8015CFD4
/* 8015CFD0  3B A0 00 01 */	li r29, 1
lbl_8015CFD4:
/* 8015CFD4  7F E3 FB 78 */	mr r3, r31
/* 8015CFD8  4B FF F0 81 */	bl procInitSimpleGetDemo__8daItem_cFv
/* 8015CFDC  7F E3 FB 78 */	mr r3, r31
/* 8015CFE0  48 00 00 C9 */	bl itemGet__8daItem_cFv
/* 8015CFE4  2C 1D 00 00 */	cmpwi r29, 0
/* 8015CFE8  40 82 00 54 */	bne lbl_8015D03C
/* 8015CFEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015CFF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015CFF4  38 63 00 CC */	addi r3, r3, 0xcc
/* 8015CFF8  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 8015CFFC  4B ED 6E 99 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 8015D000  48 00 00 3C */	b lbl_8015D03C
lbl_8015D004:
/* 8015D004  88 7F 09 2A */	lbz r3, 0x92a(r31)
/* 8015D008  38 80 00 01 */	li r4, 1
/* 8015D00C  4B F3 AE D5 */	bl checkItemGet__FUci
/* 8015D010  2C 03 00 00 */	cmpwi r3, 0
/* 8015D014  40 82 00 10 */	bne lbl_8015D024
/* 8015D018  7F E3 FB 78 */	mr r3, r31
/* 8015D01C  4B FF F1 E5 */	bl procInitGetDemoEvent__8daItem_cFv
/* 8015D020  48 00 00 1C */	b lbl_8015D03C
lbl_8015D024:
/* 8015D024  7F E3 FB 78 */	mr r3, r31
/* 8015D028  4B FF F0 31 */	bl procInitSimpleGetDemo__8daItem_cFv
/* 8015D02C  7F E3 FB 78 */	mr r3, r31
/* 8015D030  48 00 00 79 */	bl itemGet__8daItem_cFv
/* 8015D034  48 00 00 08 */	b lbl_8015D03C
lbl_8015D038:
/* 8015D038  4B FF F1 C9 */	bl procInitGetDemoEvent__8daItem_cFv
lbl_8015D03C:
/* 8015D03C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015D040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015D044  80 9F 09 20 */	lwz r4, 0x920(r31)
/* 8015D048  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8015D04C  7C 05 07 74 */	extsb r5, r0
/* 8015D050  4B ED 84 91 */	bl onItem__10dSv_info_cFii
/* 8015D054  38 00 00 00 */	li r0, 0
/* 8015D058  90 1F 08 08 */	stw r0, 0x808(r31)
/* 8015D05C  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 8015D060  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8015D064  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 8015D068  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015D06C  81 9F 08 1C */	lwz r12, 0x81c(r31)
/* 8015D070  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8015D074  7D 89 03 A6 */	mtctr r12
/* 8015D078  4E 80 04 21 */	bctrl 
/* 8015D07C  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015D080  81 9F 08 1C */	lwz r12, 0x81c(r31)
/* 8015D084  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8015D088  7D 89 03 A6 */	mtctr r12
/* 8015D08C  4E 80 04 21 */	bctrl 
lbl_8015D090:
/* 8015D090  39 61 00 20 */	addi r11, r1, 0x20
/* 8015D094  48 20 51 95 */	bl _restgpr_29
/* 8015D098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D09C  7C 08 03 A6 */	mtlr r0
/* 8015D0A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D0A4  4E 80 00 20 */	blr 
