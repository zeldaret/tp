lbl_80110FE0:
/* 80110FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110FE4  7C 08 02 A6 */	mflr r0
/* 80110FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80110FF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80110FF4  7C 7E 1B 78 */	mr r30, r3
/* 80110FF8  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80110FFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80111000  41 82 00 10 */	beq lbl_80111010
/* 80111004  38 00 00 01 */	li r0, 1
/* 80111008  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8011100C  48 00 00 0C */	b lbl_80111018
lbl_80111010:
/* 80111010  38 00 00 00 */	li r0, 0
/* 80111014  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_80111018:
/* 80111018  7F C3 F3 78 */	mr r3, r30
/* 8011101C  4B FA E8 39 */	bl keepItemData__9daAlink_cFv
/* 80111020  7F C3 F3 78 */	mr r3, r30
/* 80111024  4B FF FE 61 */	bl setKandelaarModel__9daAlink_cFv
/* 80111028  88 7E 2F 9C */	lbz r3, 0x2f9c(r30)
/* 8011102C  4B F1 CE F1 */	bl dComIfGp_getSelectItem__Fi
/* 80111030  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80111034  7F C3 F3 78 */	mr r3, r30
/* 80111038  4B FF D5 A1 */	bl setBottleModel__9daAlink_cFUs
/* 8011103C  38 00 00 00 */	li r0, 0
/* 80111040  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 80111044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011104C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80111050  60 00 20 00 */	ori r0, r0, 0x2000
/* 80111054  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 80111058  38 00 00 0A */	li r0, 0xa
/* 8011105C  90 1E 31 94 */	stw r0, 0x3194(r30)
/* 80111060  28 1E 00 00 */	cmplwi r30, 0
/* 80111064  41 82 00 0C */	beq lbl_80111070
/* 80111068  83 FE 00 04 */	lwz r31, 4(r30)
/* 8011106C  48 00 00 08 */	b lbl_80111074
lbl_80111070:
/* 80111070  3B E0 FF FF */	li r31, -1
lbl_80111074:
/* 80111074  48 07 05 CD */	bl dCam_getBody__Fv
/* 80111078  38 80 00 12 */	li r4, 0x12
/* 8011107C  7F E5 FB 78 */	mr r5, r31
/* 80111080  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80111084  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80111088  38 C6 00 43 */	addi r6, r6, 0x43
/* 8011108C  38 E0 00 01 */	li r7, 1
/* 80111090  39 1E 31 94 */	addi r8, r30, 0x3194
/* 80111094  39 20 00 00 */	li r9, 0
/* 80111098  4C C6 31 82 */	crclr 6
/* 8011109C  4B F7 79 E1 */	bl StartEventCamera__9dCamera_cFiie
/* 801110A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801110A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801110A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801110AC  7C 08 03 A6 */	mtlr r0
/* 801110B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801110B4  4E 80 00 20 */	blr 
