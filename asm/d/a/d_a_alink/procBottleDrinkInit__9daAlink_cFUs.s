lbl_8010F54C:
/* 8010F54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010F550  7C 08 02 A6 */	mflr r0
/* 8010F554  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010F55C  93 C1 00 08 */	stw r30, 8(r1)
/* 8010F560  7C 7F 1B 78 */	mr r31, r3
/* 8010F564  7C 9E 23 78 */	mr r30, r4
/* 8010F568  80 03 06 14 */	lwz r0, 0x614(r3)
/* 8010F56C  28 00 00 2A */	cmplwi r0, 0x2a
/* 8010F570  40 82 00 18 */	bne lbl_8010F588
/* 8010F574  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8010F578  28 00 00 B3 */	cmplwi r0, 0xb3
/* 8010F57C  40 82 00 44 */	bne lbl_8010F5C0
/* 8010F580  38 60 00 01 */	li r3, 1
/* 8010F584  48 00 00 FC */	b lbl_8010F680
lbl_8010F588:
/* 8010F588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010F58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010F590  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8010F594  7F E4 FB 78 */	mr r4, r31
/* 8010F598  38 A0 00 00 */	li r5, 0
/* 8010F59C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8010F5A0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8010F5A4  4B F3 3B C9 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8010F5A8  2C 03 00 00 */	cmpwi r3, 0
/* 8010F5AC  40 82 00 0C */	bne lbl_8010F5B8
/* 8010F5B0  38 60 00 00 */	li r3, 0
/* 8010F5B4  48 00 00 CC */	b lbl_8010F680
lbl_8010F5B8:
/* 8010F5B8  38 00 00 05 */	li r0, 5
/* 8010F5BC  B0 1F 06 04 */	sth r0, 0x604(r31)
lbl_8010F5C0:
/* 8010F5C0  7F E3 FB 78 */	mr r3, r31
/* 8010F5C4  38 80 00 B3 */	li r4, 0xb3
/* 8010F5C8  4B FB 29 A5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010F5CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010F5D0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8010F5D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010F5D8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8010F5DC  38 00 00 04 */	li r0, 4
/* 8010F5E0  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 8010F5E4  7F E3 FB 78 */	mr r3, r31
/* 8010F5E8  38 80 01 00 */	li r4, 0x100
/* 8010F5EC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010F5F0  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010F5F4  4B F9 DB 01 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010F5F8  7F E3 FB 78 */	mr r3, r31
/* 8010F5FC  4B FB 02 59 */	bl keepItemData__9daAlink_cFv
/* 8010F600  7F E3 FB 78 */	mr r3, r31
/* 8010F604  7F C4 F3 78 */	mr r4, r30
/* 8010F608  4B FF EF D1 */	bl setBottleModel__9daAlink_cFUs
/* 8010F60C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010F610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010F614  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010F618  60 00 20 00 */	ori r0, r0, 0x2000
/* 8010F61C  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010F620  38 00 00 01 */	li r0, 1
/* 8010F624  90 1F 31 94 */	stw r0, 0x3194(r31)
/* 8010F628  38 00 00 00 */	li r0, 0
/* 8010F62C  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8010F630  28 1F 00 00 */	cmplwi r31, 0
/* 8010F634  41 82 00 0C */	beq lbl_8010F640
/* 8010F638  83 DF 00 04 */	lwz r30, 4(r31)
/* 8010F63C  48 00 00 08 */	b lbl_8010F644
lbl_8010F640:
/* 8010F640  3B C0 FF FF */	li r30, -1
lbl_8010F644:
/* 8010F644  48 07 1F FD */	bl dCam_getBody__Fv
/* 8010F648  38 80 00 12 */	li r4, 0x12
/* 8010F64C  7F C5 F3 78 */	mr r5, r30
/* 8010F650  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8010F654  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8010F658  38 C6 00 43 */	addi r6, r6, 0x43
/* 8010F65C  38 E0 00 01 */	li r7, 1
/* 8010F660  39 1F 31 94 */	addi r8, r31, 0x3194
/* 8010F664  39 20 00 00 */	li r9, 0
/* 8010F668  4C C6 31 82 */	crclr 6
/* 8010F66C  4B F7 94 11 */	bl StartEventCamera__9dCamera_cFiie
/* 8010F670  38 00 00 00 */	li r0, 0
/* 8010F674  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010F678  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8010F67C  38 60 00 01 */	li r3, 1
lbl_8010F680:
/* 8010F680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010F684  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010F688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010F68C  7C 08 03 A6 */	mtlr r0
/* 8010F690  38 21 00 10 */	addi r1, r1, 0x10
/* 8010F694  4E 80 00 20 */	blr 
