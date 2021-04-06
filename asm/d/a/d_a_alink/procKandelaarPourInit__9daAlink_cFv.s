lbl_8011167C:
/* 8011167C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80111680  7C 08 02 A6 */	mflr r0
/* 80111684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80111688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011168C  7C 7F 1B 78 */	mr r31, r3
/* 80111690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111698  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011169C  7F E4 FB 78 */	mr r4, r31
/* 801116A0  38 A0 00 00 */	li r5, 0
/* 801116A4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FBFF@ha */
/* 801116A8  38 C6 FB FF */	addi r6, r6, 0xFBFF /* 0x0000FBFF@l */
/* 801116AC  4B F3 1A C1 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 801116B0  2C 03 00 00 */	cmpwi r3, 0
/* 801116B4  40 82 00 0C */	bne lbl_801116C0
/* 801116B8  38 60 00 00 */	li r3, 0
/* 801116BC  48 00 00 54 */	b lbl_80111710
lbl_801116C0:
/* 801116C0  38 00 00 05 */	li r0, 5
/* 801116C4  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 801116C8  7F E3 FB 78 */	mr r3, r31
/* 801116CC  38 80 00 B8 */	li r4, 0xb8
/* 801116D0  4B FB 08 9D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801116D4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801116D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801116DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801116E0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801116E4  38 00 00 04 */	li r0, 4
/* 801116E8  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 801116EC  7F E3 FB 78 */	mr r3, r31
/* 801116F0  38 80 01 0C */	li r4, 0x10c
/* 801116F4  3C A0 80 39 */	lis r5, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 801116F8  38 A5 E7 7C */	addi r5, r5, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 801116FC  38 A5 00 14 */	addi r5, r5, 0x14
/* 80111700  4B F9 B9 F5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80111704  7F E3 FB 78 */	mr r3, r31
/* 80111708  4B FF F8 D9 */	bl commonKandelaarPourInit__9daAlink_cFv
/* 8011170C  38 60 00 01 */	li r3, 1
lbl_80111710:
/* 80111710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80111714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80111718  7C 08 03 A6 */	mtlr r0
/* 8011171C  38 21 00 10 */	addi r1, r1, 0x10
/* 80111720  4E 80 00 20 */	blr 
