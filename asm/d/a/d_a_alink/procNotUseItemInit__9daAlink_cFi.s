lbl_8011E448:
/* 8011E448  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011E44C  7C 08 02 A6 */	mflr r0
/* 8011E450  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011E454  39 61 00 20 */	addi r11, r1, 0x20
/* 8011E458  48 24 3D 85 */	bl _savegpr_29
/* 8011E45C  7C 7F 1B 78 */	mr r31, r3
/* 8011E460  7C 9D 23 78 */	mr r29, r4
/* 8011E464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011E468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011E46C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011E470  7F E4 FB 78 */	mr r4, r31
/* 8011E474  38 A0 00 00 */	li r5, 0
/* 8011E478  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011E47C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011E480  4B F2 4C ED */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8011E484  2C 03 00 00 */	cmpwi r3, 0
/* 8011E488  40 82 00 0C */	bne lbl_8011E494
/* 8011E48C  38 60 00 00 */	li r3, 0
/* 8011E490  48 00 00 D4 */	b lbl_8011E564
lbl_8011E494:
/* 8011E494  38 00 00 05 */	li r0, 5
/* 8011E498  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 8011E49C  7F E3 FB 78 */	mr r3, r31
/* 8011E4A0  38 80 00 E3 */	li r4, 0xe3
/* 8011E4A4  4B FA 3A C9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011E4A8  7F E3 FB 78 */	mr r3, r31
/* 8011E4AC  38 80 01 88 */	li r4, 0x188
/* 8011E4B0  4B F8 EA D1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011E4B4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E4B8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011E4BC  3B C0 FF FF */	li r30, -1
/* 8011E4C0  93 DF 28 F0 */	stw r30, 0x28f0(r31)
/* 8011E4C4  93 BF 31 98 */	stw r29, 0x3198(r31)
/* 8011E4C8  38 00 00 00 */	li r0, 0
/* 8011E4CC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011E4D0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011E4D4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011E4D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011E4DC  38 00 00 03 */	li r0, 3
/* 8011E4E0  90 1F 31 94 */	stw r0, 0x3194(r31)
/* 8011E4E4  28 1F 00 00 */	cmplwi r31, 0
/* 8011E4E8  41 82 00 08 */	beq lbl_8011E4F0
/* 8011E4EC  83 DF 00 04 */	lwz r30, 4(r31)
lbl_8011E4F0:
/* 8011E4F0  48 06 31 51 */	bl dCam_getBody__Fv
/* 8011E4F4  38 80 00 12 */	li r4, 0x12
/* 8011E4F8  7F C5 F3 78 */	mr r5, r30
/* 8011E4FC  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011E500  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011E504  38 C6 00 43 */	addi r6, r6, 0x43
/* 8011E508  38 E0 00 01 */	li r7, 1
/* 8011E50C  39 1F 31 94 */	addi r8, r31, 0x3194
/* 8011E510  39 20 00 00 */	li r9, 0
/* 8011E514  4C C6 31 82 */	crclr 6
/* 8011E518  4B F6 A5 65 */	bl StartEventCamera__9dCamera_cFiie
/* 8011E51C  7F E3 FB 78 */	mr r3, r31
/* 8011E520  4B FA 13 35 */	bl keepItemData__9daAlink_cFv
/* 8011E524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011E528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011E52C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8011E530  64 00 04 00 */	oris r0, r0, 0x400
/* 8011E534  60 00 08 00 */	ori r0, r0, 0x800
/* 8011E538  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8011E53C  7F A3 EB 78 */	mr r3, r29
/* 8011E540  4B FF FE 99 */	bl checkLetterItem__9daAlink_cFi
/* 8011E544  2C 03 00 00 */	cmpwi r3, 0
/* 8011E548  41 82 00 10 */	beq lbl_8011E558
/* 8011E54C  38 00 00 00 */	li r0, 0
/* 8011E550  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011E554  48 00 00 0C */	b lbl_8011E560
lbl_8011E558:
/* 8011E558  38 00 00 01 */	li r0, 1
/* 8011E55C  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_8011E560:
/* 8011E560  38 60 00 01 */	li r3, 1
lbl_8011E564:
/* 8011E564  39 61 00 20 */	addi r11, r1, 0x20
/* 8011E568  48 24 3C C1 */	bl _restgpr_29
/* 8011E56C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011E570  7C 08 03 A6 */	mtlr r0
/* 8011E574  38 21 00 20 */	addi r1, r1, 0x20
/* 8011E578  4E 80 00 20 */	blr 
