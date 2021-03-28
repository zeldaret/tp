lbl_801107BC:
/* 801107BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801107C0  7C 08 02 A6 */	mflr r0
/* 801107C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801107C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801107CC  7C 7F 1B 78 */	mr r31, r3
/* 801107D0  80 03 05 78 */	lwz r0, 0x578(r3)
/* 801107D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801107D8  41 82 00 54 */	beq lbl_8011082C
/* 801107DC  4B FF FF B1 */	bl checkWaterInKandelaarOffset__9daAlink_cFf
/* 801107E0  2C 03 00 00 */	cmpwi r3, 0
/* 801107E4  41 82 00 48 */	beq lbl_8011082C
/* 801107E8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 801107EC  28 00 00 48 */	cmplwi r0, 0x48
/* 801107F0  40 82 00 18 */	bne lbl_80110808
/* 801107F4  7F E3 FB 78 */	mr r3, r31
/* 801107F8  38 80 00 01 */	li r4, 1
/* 801107FC  38 A0 00 01 */	li r5, 1
/* 80110800  4B FB 0A DD */	bl deleteEquipItem__9daAlink_cFii
/* 80110804  48 00 00 28 */	b lbl_8011082C
lbl_80110808:
/* 80110808  7F E3 FB 78 */	mr r3, r31
/* 8011080C  48 00 00 35 */	bl offKandelaarModel__9daAlink_cFv
/* 80110810  7F E3 FB 78 */	mr r3, r31
/* 80110814  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002002D@ha */
/* 80110818  38 84 00 2D */	addi r4, r4, 0x002D /* 0x0002002D@l */
/* 8011081C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80110820  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80110824  7D 89 03 A6 */	mtctr r12
/* 80110828  4E 80 04 21 */	bctrl 
lbl_8011082C:
/* 8011082C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80110830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110834  7C 08 03 A6 */	mtlr r0
/* 80110838  38 21 00 10 */	addi r1, r1, 0x10
/* 8011083C  4E 80 00 20 */	blr 
