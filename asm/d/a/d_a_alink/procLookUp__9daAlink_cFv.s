lbl_8011CA4C:
/* 8011CA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CA50  7C 08 02 A6 */	mflr r0
/* 8011CA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011CA58  7C 64 1B 78 */	mr r4, r3
/* 8011CA5C  88 03 2F 99 */	lbz r0, 0x2f99(r3)
/* 8011CA60  28 00 00 0C */	cmplwi r0, 0xc
/* 8011CA64  41 82 00 0C */	beq lbl_8011CA70
/* 8011CA68  38 00 00 04 */	li r0, 4
/* 8011CA6C  98 04 2F 99 */	stb r0, 0x2f99(r4)
lbl_8011CA70:
/* 8011CA70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011CA74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011CA78  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011CA7C  80 84 31 84 */	lwz r4, 0x3184(r4)
/* 8011CA80  4B F2 B6 FD */	bl cutEnd__16dEvent_manager_cFi
/* 8011CA84  38 60 00 01 */	li r3, 1
/* 8011CA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CA8C  7C 08 03 A6 */	mtlr r0
/* 8011CA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CA94  4E 80 00 20 */	blr 
