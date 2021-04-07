lbl_80990A9C:
/* 80990A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990AA0  7C 08 02 A6 */	mflr r0
/* 80990AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80990AAC  7C 7F 1B 78 */	mr r31, r3
/* 80990AB0  80 04 00 00 */	lwz r0, 0(r4)
/* 80990AB4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80990AB8  41 82 00 40 */	beq lbl_80990AF8
/* 80990ABC  40 80 00 10 */	bge lbl_80990ACC
/* 80990AC0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80990AC4  41 82 00 14 */	beq lbl_80990AD8
/* 80990AC8  48 00 00 F8 */	b lbl_80990BC0
lbl_80990ACC:
/* 80990ACC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80990AD0  41 82 00 80 */	beq lbl_80990B50
/* 80990AD4  48 00 00 EC */	b lbl_80990BC0
lbl_80990AD8:
/* 80990AD8  38 60 00 00 */	li r3, 0
/* 80990ADC  4B 81 7D 09 */	bl dKy_change_colpat__FUc
/* 80990AE0  38 00 00 01 */	li r0, 1
/* 80990AE4  98 1F 0E 6C */	stb r0, 0xe6c(r31)
/* 80990AE8  3C 60 80 99 */	lis r3, lit_3884@ha /* 0x80991978@ha */
/* 80990AEC  C0 03 19 78 */	lfs f0, lit_3884@l(r3)  /* 0x80991978@l */
/* 80990AF0  D0 1F 0E 40 */	stfs f0, 0xe40(r31)
/* 80990AF4  48 00 00 CC */	b lbl_80990BC0
lbl_80990AF8:
/* 80990AF8  38 00 00 00 */	li r0, 0
/* 80990AFC  90 1F 09 50 */	stw r0, 0x950(r31)
/* 80990B00  38 60 00 0B */	li r3, 0xb
/* 80990B04  4B 7C 4C 31 */	bl daNpcF_offTmpBit__FUl
/* 80990B08  7F E3 FB 78 */	mr r3, r31
/* 80990B0C  A8 9F 0E 00 */	lha r4, 0xe00(r31)
/* 80990B10  38 A0 00 00 */	li r5, 0
/* 80990B14  4B 7C 32 09 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80990B18  38 00 00 00 */	li r0, 0
/* 80990B1C  98 1F 0E 06 */	stb r0, 0xe06(r31)
/* 80990B20  7F E3 FB 78 */	mr r3, r31
/* 80990B24  38 80 00 00 */	li r4, 0
/* 80990B28  3C A0 80 99 */	lis r5, lit_4627@ha /* 0x809919A4@ha */
/* 80990B2C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)  /* 0x809919A4@l */
/* 80990B30  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80990B34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80990B38  7D 89 03 A6 */	mtctr r12
/* 80990B3C  4E 80 04 21 */	bctrl 
/* 80990B40  7F E3 FB 78 */	mr r3, r31
/* 80990B44  38 80 00 03 */	li r4, 3
/* 80990B48  4B FF DB 25 */	bl setLookMode__11daNpcChin_cFi
/* 80990B4C  48 00 00 74 */	b lbl_80990BC0
lbl_80990B50:
/* 80990B50  38 00 00 00 */	li r0, 0
/* 80990B54  90 1F 09 50 */	stw r0, 0x950(r31)
/* 80990B58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80990B5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80990B60  80 63 00 00 */	lwz r3, 0(r3)
/* 80990B64  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80990B68  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100007A@ha */
/* 80990B6C  38 84 00 7A */	addi r4, r4, 0x007A /* 0x0100007A@l */
/* 80990B70  38 A0 00 00 */	li r5, 0
/* 80990B74  38 C0 00 00 */	li r6, 0
/* 80990B78  4B 91 E4 99 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 80990B7C  7F E3 FB 78 */	mr r3, r31
/* 80990B80  A8 9F 0E 00 */	lha r4, 0xe00(r31)
/* 80990B84  38 A0 00 00 */	li r5, 0
/* 80990B88  4B 7C 31 95 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80990B8C  38 00 00 00 */	li r0, 0
/* 80990B90  98 1F 0E 06 */	stb r0, 0xe06(r31)
/* 80990B94  7F E3 FB 78 */	mr r3, r31
/* 80990B98  38 80 00 00 */	li r4, 0
/* 80990B9C  3C A0 80 99 */	lis r5, lit_4627@ha /* 0x809919A4@ha */
/* 80990BA0  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)  /* 0x809919A4@l */
/* 80990BA4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80990BA8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80990BAC  7D 89 03 A6 */	mtctr r12
/* 80990BB0  4E 80 04 21 */	bctrl 
/* 80990BB4  7F E3 FB 78 */	mr r3, r31
/* 80990BB8  38 80 00 03 */	li r4, 3
/* 80990BBC  4B FF DA B1 */	bl setLookMode__11daNpcChin_cFi
lbl_80990BC0:
/* 80990BC0  38 60 00 01 */	li r3, 1
/* 80990BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80990BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990BCC  7C 08 03 A6 */	mtlr r0
/* 80990BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80990BD4  4E 80 00 20 */	blr 
