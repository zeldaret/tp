lbl_8011A42C:
/* 8011A42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A430  7C 08 02 A6 */	mflr r0
/* 8011A434  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A43C  7C 7F 1B 78 */	mr r31, r3
/* 8011A440  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8011A444  60 00 00 08 */	ori r0, r0, 8
/* 8011A448  90 03 05 8C */	stw r0, 0x58c(r3)
/* 8011A44C  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8011A450  2C 00 00 00 */	cmpwi r0, 0
/* 8011A454  40 82 00 10 */	bne lbl_8011A464
/* 8011A458  38 00 00 01 */	li r0, 1
/* 8011A45C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011A460  48 00 00 0C */	b lbl_8011A46C
lbl_8011A464:
/* 8011A464  38 00 00 04 */	li r0, 4
/* 8011A468  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8011A46C:
/* 8011A46C  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011A470  48 04 40 5D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011A474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011A478  41 82 00 30 */	beq lbl_8011A4A8
/* 8011A47C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011A480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011A484  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011A488  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011A48C  4B F2 DC F1 */	bl cutEnd__16dEvent_manager_cFi
/* 8011A490  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011A494  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8011A498  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011A49C  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011A4A0  60 00 20 00 */	ori r0, r0, 0x2000
/* 8011A4A4  90 1F 19 9C */	stw r0, 0x199c(r31)
lbl_8011A4A8:
/* 8011A4A8  38 60 00 01 */	li r3, 1
/* 8011A4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A4B4  7C 08 03 A6 */	mtlr r0
/* 8011A4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A4BC  4E 80 00 20 */	blr 
