lbl_8011EE40:
/* 8011EE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EE44  7C 08 02 A6 */	mflr r0
/* 8011EE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EE4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EE50  3B E0 00 00 */	li r31, 0
/* 8011EE54  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011EE58  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011EE5C  38 63 01 15 */	addi r3, r3, 0x115
/* 8011EE60  4B F7 EC 01 */	bl checkStageName__9daAlink_cFPCc
/* 8011EE64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011EE68  41 82 00 14 */	beq lbl_8011EE7C
/* 8011EE6C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8011EE70  2C 00 00 10 */	cmpwi r0, 0x10
/* 8011EE74  40 82 00 08 */	bne lbl_8011EE7C
/* 8011EE78  3B E0 00 01 */	li r31, 1
lbl_8011EE7C:
/* 8011EE7C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8011EE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EE88  7C 08 03 A6 */	mtlr r0
/* 8011EE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EE90  4E 80 00 20 */	blr 
