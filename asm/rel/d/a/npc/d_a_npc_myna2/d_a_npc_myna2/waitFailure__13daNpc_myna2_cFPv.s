lbl_80A86194:
/* 80A86194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A86198  7C 08 02 A6 */	mflr r0
/* 80A8619C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A861A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A861A4  7C 7F 1B 78 */	mr r31, r3
/* 80A861A8  A0 03 0E 0A */	lhz r0, 0xe0a(r3)
/* 80A861AC  2C 00 00 02 */	cmpwi r0, 2
/* 80A861B0  41 82 00 58 */	beq lbl_80A86208
/* 80A861B4  40 80 00 F0 */	bge lbl_80A862A4
/* 80A861B8  2C 00 00 00 */	cmpwi r0, 0
/* 80A861BC  41 82 00 0C */	beq lbl_80A861C8
/* 80A861C0  48 00 00 E4 */	b lbl_80A862A4
/* 80A861C4  48 00 00 E0 */	b lbl_80A862A4
lbl_80A861C8:
/* 80A861C8  38 80 00 07 */	li r4, 7
/* 80A861CC  3C A0 80 A9 */	lis r5, lit_4982@ha /* 0x80A885C0@ha */
/* 80A861D0  C0 25 85 C0 */	lfs f1, lit_4982@l(r5)  /* 0x80A885C0@l */
/* 80A861D4  38 A0 00 00 */	li r5, 0
/* 80A861D8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A861DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A861E0  7D 89 03 A6 */	mtctr r12
/* 80A861E4  4E 80 04 21 */	bctrl 
/* 80A861E8  7F E3 FB 78 */	mr r3, r31
/* 80A861EC  38 80 00 00 */	li r4, 0
/* 80A861F0  4B FF F9 B5 */	bl setLookMode__13daNpc_myna2_cFi
/* 80A861F4  38 00 00 00 */	li r0, 0
/* 80A861F8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A861FC  38 00 00 02 */	li r0, 2
/* 80A86200  B0 1F 0E 0A */	sth r0, 0xe0a(r31)
/* 80A86204  48 00 00 A0 */	b lbl_80A862A4
lbl_80A86208:
/* 80A86208  38 7F 0B E8 */	addi r3, r31, 0xbe8
/* 80A8620C  38 80 00 00 */	li r4, 0
/* 80A86210  4B 83 BA 15 */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A86214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8621C  88 9F 0E 0D */	lbz r4, 0xe0d(r31)
/* 80A86220  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A86224  7C 05 07 74 */	extsb r5, r0
/* 80A86228  4B 5A F1 39 */	bl isSwitch__10dSv_info_cCFii
/* 80A8622C  2C 03 00 00 */	cmpwi r3, 0
/* 80A86230  40 82 00 1C */	bne lbl_80A8624C
/* 80A86234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8623C  88 9F 0E 0D */	lbz r4, 0xe0d(r31)
/* 80A86240  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A86244  7C 05 07 74 */	extsb r5, r0
/* 80A86248  4B 5A EF B9 */	bl onSwitch__10dSv_info_cFii
lbl_80A8624C:
/* 80A8624C  3C 60 80 A8 */	lis r3, s_sub__FPvPv@ha /* 0x80A8613C@ha */
/* 80A86250  38 63 61 3C */	addi r3, r3, s_sub__FPvPv@l /* 0x80A8613C@l */
/* 80A86254  7F E4 FB 78 */	mr r4, r31
/* 80A86258  4B 59 B0 E1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A8625C  28 03 00 00 */	cmplwi r3, 0
/* 80A86260  41 82 00 08 */	beq lbl_80A86268
/* 80A86264  4B 59 3A 19 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A86268:
/* 80A86268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8626C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86270  38 00 00 00 */	li r0, 0
/* 80A86274  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80A86278  28 03 00 00 */	cmplwi r3, 0
/* 80A8627C  41 82 00 0C */	beq lbl_80A86288
/* 80A86280  28 03 00 02 */	cmplwi r3, 2
/* 80A86284  40 82 00 08 */	bne lbl_80A8628C
lbl_80A86288:
/* 80A86288  38 00 00 01 */	li r0, 1
lbl_80A8628C:
/* 80A8628C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A86290  41 82 00 14 */	beq lbl_80A862A4
/* 80A86294  38 00 00 02 */	li r0, 2
/* 80A86298  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80A8629C  38 00 00 01 */	li r0, 1
/* 80A862A0  98 1F 09 ED */	stb r0, 0x9ed(r31)
lbl_80A862A4:
/* 80A862A4  38 60 00 01 */	li r3, 1
/* 80A862A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A862AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A862B0  7C 08 03 A6 */	mtlr r0
/* 80A862B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A862B8  4E 80 00 20 */	blr 
