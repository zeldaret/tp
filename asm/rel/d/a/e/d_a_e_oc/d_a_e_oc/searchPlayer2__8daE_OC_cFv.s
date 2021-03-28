lbl_8072CF90:
/* 8072CF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072CF94  7C 08 02 A6 */	mflr r0
/* 8072CF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072CF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072CFA0  7C 7F 1B 78 */	mr r31, r3
/* 8072CFA4  38 00 00 00 */	li r0, 0
/* 8072CFA8  98 03 06 E2 */	stb r0, 0x6e2(r3)
/* 8072CFAC  80 03 06 B4 */	lwz r0, 0x6b4(r3)
/* 8072CFB0  2C 00 00 02 */	cmpwi r0, 2
/* 8072CFB4  40 82 00 94 */	bne lbl_8072D048
/* 8072CFB8  3C 60 80 73 */	lis r3, s_obj_sub__FPvPv@ha
/* 8072CFBC  38 63 CF 00 */	addi r3, r3, s_obj_sub__FPvPv@l
/* 8072CFC0  7F E4 FB 78 */	mr r4, r31
/* 8072CFC4  4B 8F 43 74 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8072CFC8  90 7F 06 78 */	stw r3, 0x678(r31)
/* 8072CFCC  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 8072CFD0  28 03 00 00 */	cmplwi r3, 0
/* 8072CFD4  41 82 00 74 */	beq lbl_8072D048
/* 8072CFD8  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 8072CFDC  28 00 00 00 */	cmplwi r0, 0
/* 8072CFE0  41 82 00 68 */	beq lbl_8072D048
/* 8072CFE4  88 03 05 B8 */	lbz r0, 0x5b8(r3)
/* 8072CFE8  28 00 00 00 */	cmplwi r0, 0
/* 8072CFEC  41 82 00 54 */	beq lbl_8072D040
/* 8072CFF0  88 9F 06 E1 */	lbz r4, 0x6e1(r31)
/* 8072CFF4  28 04 00 FF */	cmplwi r4, 0xff
/* 8072CFF8  41 82 00 38 */	beq lbl_8072D030
/* 8072CFFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072D000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072D004  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8072D008  7C 05 07 74 */	extsb r5, r0
/* 8072D00C  4B 90 83 54 */	b isSwitch__10dSv_info_cCFii
/* 8072D010  2C 03 00 00 */	cmpwi r3, 0
/* 8072D014  40 82 00 1C */	bne lbl_8072D030
/* 8072D018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072D01C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072D020  88 9F 06 E1 */	lbz r4, 0x6e1(r31)
/* 8072D024  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8072D028  7C 05 07 74 */	extsb r5, r0
/* 8072D02C  4B 90 81 D4 */	b onSwitch__10dSv_info_cFii
lbl_8072D030:
/* 8072D030  38 00 00 01 */	li r0, 1
/* 8072D034  98 1F 06 E2 */	stb r0, 0x6e2(r31)
/* 8072D038  38 60 00 01 */	li r3, 1
/* 8072D03C  48 00 00 B0 */	b lbl_8072D0EC
lbl_8072D040:
/* 8072D040  38 60 00 00 */	li r3, 0
/* 8072D044  48 00 00 A8 */	b lbl_8072D0EC
lbl_8072D048:
/* 8072D048  7F E3 FB 78 */	mr r3, r31
/* 8072D04C  4B FF FD B5 */	bl searchPlayer__8daE_OC_cFv
/* 8072D050  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072D054  41 82 00 60 */	beq lbl_8072D0B4
/* 8072D058  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 8072D05C  2C 00 00 02 */	cmpwi r0, 2
/* 8072D060  40 82 00 4C */	bne lbl_8072D0AC
/* 8072D064  88 9F 06 E1 */	lbz r4, 0x6e1(r31)
/* 8072D068  28 04 00 FF */	cmplwi r4, 0xff
/* 8072D06C  41 82 00 40 */	beq lbl_8072D0AC
/* 8072D070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072D074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072D078  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8072D07C  7C 05 07 74 */	extsb r5, r0
/* 8072D080  4B 90 82 E0 */	b isSwitch__10dSv_info_cCFii
/* 8072D084  2C 03 00 00 */	cmpwi r3, 0
/* 8072D088  40 82 00 24 */	bne lbl_8072D0AC
/* 8072D08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072D090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072D094  88 9F 06 E1 */	lbz r4, 0x6e1(r31)
/* 8072D098  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8072D09C  7C 05 07 74 */	extsb r5, r0
/* 8072D0A0  4B 90 81 60 */	b onSwitch__10dSv_info_cFii
/* 8072D0A4  38 00 00 01 */	li r0, 1
/* 8072D0A8  98 1F 06 E2 */	stb r0, 0x6e2(r31)
lbl_8072D0AC:
/* 8072D0AC  38 60 00 01 */	li r3, 1
/* 8072D0B0  48 00 00 3C */	b lbl_8072D0EC
lbl_8072D0B4:
/* 8072D0B4  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 8072D0B8  28 03 00 00 */	cmplwi r3, 0
/* 8072D0BC  41 82 00 2C */	beq lbl_8072D0E8
/* 8072D0C0  80 03 06 A8 */	lwz r0, 0x6a8(r3)
/* 8072D0C4  2C 00 00 03 */	cmpwi r0, 3
/* 8072D0C8  41 82 00 0C */	beq lbl_8072D0D4
/* 8072D0CC  38 60 00 01 */	li r3, 1
/* 8072D0D0  48 00 00 1C */	b lbl_8072D0EC
lbl_8072D0D4:
/* 8072D0D4  4B FF FD 2D */	bl searchPlayer__8daE_OC_cFv
/* 8072D0D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072D0DC  41 82 00 0C */	beq lbl_8072D0E8
/* 8072D0E0  38 60 00 01 */	li r3, 1
/* 8072D0E4  48 00 00 08 */	b lbl_8072D0EC
lbl_8072D0E8:
/* 8072D0E8  38 60 00 00 */	li r3, 0
lbl_8072D0EC:
/* 8072D0EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072D0F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072D0F4  7C 08 03 A6 */	mtlr r0
/* 8072D0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8072D0FC  4E 80 00 20 */	blr 
