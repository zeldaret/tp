lbl_80B8A43C:
/* 80B8A43C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8A440  7C 08 02 A6 */	mflr r0
/* 80B8A444  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8A448  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B8A44C  7C 7F 1B 78 */	mr r31, r3
/* 80B8A450  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8A454  2C 00 00 02 */	cmpwi r0, 2
/* 80B8A458  41 82 00 90 */	beq lbl_80B8A4E8
/* 80B8A45C  40 80 00 D8 */	bge lbl_80B8A534
/* 80B8A460  2C 00 00 00 */	cmpwi r0, 0
/* 80B8A464  41 82 00 0C */	beq lbl_80B8A470
/* 80B8A468  48 00 00 CC */	b lbl_80B8A534
/* 80B8A46C  48 00 00 C8 */	b lbl_80B8A534
lbl_80B8A470:
/* 80B8A470  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B8A474  60 00 00 02 */	ori r0, r0, 2
/* 80B8A478  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B8A47C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B8A480  60 00 00 04 */	ori r0, r0, 4
/* 80B8A484  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B8A488  38 80 00 14 */	li r4, 0x14
/* 80B8A48C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8A490  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8A494  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B8A498  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8A49C  7D 89 03 A6 */	mtctr r12
/* 80B8A4A0  4E 80 04 21 */	bctrl 
/* 80B8A4A4  7F E3 FB 78 */	mr r3, r31
/* 80B8A4A8  38 80 00 00 */	li r4, 0
/* 80B8A4AC  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8A4B0  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8A4B4  38 A0 00 00 */	li r5, 0
/* 80B8A4B8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8A4BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8A4C0  7D 89 03 A6 */	mtctr r12
/* 80B8A4C4  4E 80 04 21 */	bctrl 
/* 80B8A4C8  7F E3 FB 78 */	mr r3, r31
/* 80B8A4CC  38 80 00 00 */	li r4, 0
/* 80B8A4D0  4B FF 42 25 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8A4D4  38 00 00 00 */	li r0, 0
/* 80B8A4D8  98 1F 15 94 */	stb r0, 0x1594(r31)
/* 80B8A4DC  98 1F 07 BC */	stb r0, 0x7bc(r31)
/* 80B8A4E0  38 00 00 02 */	li r0, 2
/* 80B8A4E4  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B8A4E8:
/* 80B8A4E8  3C 60 80 B9 */	lis r3, s_subMark__FPvPv@ha /* 0x80B8A3CC@ha */
/* 80B8A4EC  38 63 A3 CC */	addi r3, r3, s_subMark__FPvPv@l /* 0x80B8A3CC@l */
/* 80B8A4F0  7F E4 FB 78 */	mr r4, r31
/* 80B8A4F4  4B 49 6E 45 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B8A4F8  28 03 00 00 */	cmplwi r3, 0
/* 80B8A4FC  41 82 00 38 */	beq lbl_80B8A534
/* 80B8A500  7F E4 FB 78 */	mr r4, r31
/* 80B8A504  48 1B 8E 11 */	bl entryPointer__14daObjZraMark_cFP10fopAc_ac_c
/* 80B8A508  3C 60 80 B9 */	lis r3, lit_11290@ha /* 0x80B8D888@ha */
/* 80B8A50C  38 83 D8 88 */	addi r4, r3, lit_11290@l /* 0x80B8D888@l */
/* 80B8A510  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8A514  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8A518  90 61 00 08 */	stw r3, 8(r1)
/* 80B8A51C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8A520  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8A524  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8A528  7F E3 FB 78 */	mr r3, r31
/* 80B8A52C  38 81 00 08 */	addi r4, r1, 8
/* 80B8A530  4B FF 35 F1 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B8A534:
/* 80B8A534  38 60 00 01 */	li r3, 1
/* 80B8A538  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B8A53C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8A540  7C 08 03 A6 */	mtlr r0
/* 80B8A544  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8A548  4E 80 00 20 */	blr 
