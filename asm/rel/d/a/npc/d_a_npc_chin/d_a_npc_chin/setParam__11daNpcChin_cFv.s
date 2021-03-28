lbl_8098D024:
/* 8098D024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098D028  7C 08 02 A6 */	mflr r0
/* 8098D02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098D030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098D034  93 C1 00 08 */	stw r30, 8(r1)
/* 8098D038  7C 7F 1B 78 */	mr r31, r3
/* 8098D03C  3C 80 80 99 */	lis r4, m__17daNpcChin_Param_c@ha
/* 8098D040  38 A4 19 0C */	addi r5, r4, m__17daNpcChin_Param_c@l
/* 8098D044  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 8098D048  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 8098D04C  4B 7C 72 2C */	b getDistTableIdx__8daNpcF_cFii
/* 8098D050  98 7F 05 44 */	stb r3, 0x544(r31)
/* 8098D054  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 8098D058  98 1F 05 45 */	stb r0, 0x545(r31)
/* 8098D05C  7F E3 FB 78 */	mr r3, r31
/* 8098D060  3C 80 80 99 */	lis r4, m__17daNpcChin_Param_c@ha
/* 8098D064  38 A4 19 0C */	addi r5, r4, m__17daNpcChin_Param_c@l
/* 8098D068  A8 85 00 48 */	lha r4, 0x48(r5)
/* 8098D06C  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 8098D070  4B 7C 72 08 */	b getDistTableIdx__8daNpcF_cFii
/* 8098D074  98 7F 05 47 */	stb r3, 0x547(r31)
/* 8098D078  38 00 00 0A */	li r0, 0xa
/* 8098D07C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8098D080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098D084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098D088  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8098D08C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8098D090  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8098D094  41 82 00 10 */	beq lbl_8098D0A4
/* 8098D098  3C 60 00 80 */	lis r3, 0x0080 /* 0x0080000A@ha */
/* 8098D09C  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0080000A@l */
/* 8098D0A0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8098D0A4:
/* 8098D0A4  3B C0 00 00 */	li r30, 0
/* 8098D0A8  88 1F 09 F2 */	lbz r0, 0x9f2(r31)
/* 8098D0AC  28 00 00 00 */	cmplwi r0, 0
/* 8098D0B0  40 82 00 1C */	bne lbl_8098D0CC
/* 8098D0B4  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 8098D0B8  28 00 00 00 */	cmplwi r0, 0
/* 8098D0BC  41 82 00 14 */	beq lbl_8098D0D0
/* 8098D0C0  4B 6A 29 94 */	b dComIfGs_wolfeye_effect_check__Fv
/* 8098D0C4  2C 03 00 00 */	cmpwi r3, 0
/* 8098D0C8  40 82 00 08 */	bne lbl_8098D0D0
lbl_8098D0CC:
/* 8098D0CC  3B C0 00 01 */	li r30, 1
lbl_8098D0D0:
/* 8098D0D0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8098D0D4  41 82 00 0C */	beq lbl_8098D0E0
/* 8098D0D8  38 00 00 00 */	li r0, 0
/* 8098D0DC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8098D0E0:
/* 8098D0E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098D0E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8098D0E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098D0EC  7C 08 03 A6 */	mtlr r0
/* 8098D0F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8098D0F4  4E 80 00 20 */	blr 
