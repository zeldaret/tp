lbl_8049141C:
/* 8049141C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80491420  7C 08 02 A6 */	mflr r0
/* 80491424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049142C  7C 7F 1B 78 */	mr r31, r3
/* 80491430  4B FF FF A1 */	bl clrDzb__8daTbox_cFv
/* 80491434  7F E3 FB 78 */	mr r3, r31
/* 80491438  4B FF FF 65 */	bl checkOpen__8daTbox_cFv
/* 8049143C  2C 03 00 00 */	cmpwi r3, 0
/* 80491440  41 82 00 10 */	beq lbl_80491450
/* 80491444  80 1F 07 38 */	lwz r0, 0x738(r31)
/* 80491448  90 1F 07 3C */	stw r0, 0x73c(r31)
/* 8049144C  48 00 00 0C */	b lbl_80491458
lbl_80491450:
/* 80491450  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80491454  90 1F 07 3C */	stw r0, 0x73c(r31)
lbl_80491458:
/* 80491458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049145C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80491460  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80491464  80 9F 07 3C */	lwz r4, 0x73c(r31)
/* 80491468  7F E5 FB 78 */	mr r5, r31
/* 8049146C  4B BE 35 9C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80491470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491478  7C 08 03 A6 */	mtlr r0
/* 8049147C  38 21 00 10 */	addi r1, r1, 0x10
/* 80491480  4E 80 00 20 */	blr 
