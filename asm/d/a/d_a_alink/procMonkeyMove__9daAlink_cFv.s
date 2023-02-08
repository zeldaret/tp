lbl_8011BD18:
/* 8011BD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BD1C  7C 08 02 A6 */	mflr r0
/* 8011BD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BD28  7C 7F 1B 78 */	mr r31, r3
/* 8011BD2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011BD30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011BD34  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011BD38  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011BD3C  4B F2 C4 41 */	bl cutEnd__16dEvent_manager_cFi
/* 8011BD40  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011BD44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BD48  40 82 00 0C */	bne lbl_8011BD54
/* 8011BD4C  7F E3 FB 78 */	mr r3, r31
/* 8011BD50  4B FF FE C5 */	bl setMonkeyMoveAnime__9daAlink_cFv
lbl_8011BD54:
/* 8011BD54  38 60 00 01 */	li r3, 1
/* 8011BD58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BD60  7C 08 03 A6 */	mtlr r0
/* 8011BD64  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BD68  4E 80 00 20 */	blr 
