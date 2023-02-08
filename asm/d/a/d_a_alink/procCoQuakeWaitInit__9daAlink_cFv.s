lbl_8011C890:
/* 8011C890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C894  7C 08 02 A6 */	mflr r0
/* 8011C898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011C8A0  7C 7F 1B 78 */	mr r31, r3
/* 8011C8A4  38 80 01 5F */	li r4, 0x15f
/* 8011C8A8  4B FA 64 FD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011C8AC  2C 03 00 00 */	cmpwi r3, 0
/* 8011C8B0  40 82 00 0C */	bne lbl_8011C8BC
/* 8011C8B4  38 60 00 00 */	li r3, 0
/* 8011C8B8  48 00 00 38 */	b lbl_8011C8F0
lbl_8011C8BC:
/* 8011C8BC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011C8C0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011C8C4  41 82 00 14 */	beq lbl_8011C8D8
/* 8011C8C8  7F E3 FB 78 */	mr r3, r31
/* 8011C8CC  38 80 00 71 */	li r4, 0x71
/* 8011C8D0  48 00 CD A9 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011C8D4  48 00 00 10 */	b lbl_8011C8E4
lbl_8011C8D8:
/* 8011C8D8  7F E3 FB 78 */	mr r3, r31
/* 8011C8DC  38 80 00 FF */	li r4, 0xff
/* 8011C8E0  4B F9 06 A1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_8011C8E4:
/* 8011C8E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011C8E8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011C8EC  38 60 00 01 */	li r3, 1
lbl_8011C8F0:
/* 8011C8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011C8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C8F8  7C 08 03 A6 */	mtlr r0
/* 8011C8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C900  4E 80 00 20 */	blr 
