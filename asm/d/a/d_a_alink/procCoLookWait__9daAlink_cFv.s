lbl_8011BA20:
/* 8011BA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BA24  7C 08 02 A6 */	mflr r0
/* 8011BA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BA30  7C 7F 1B 78 */	mr r31, r3
/* 8011BA34  4B FF C6 B9 */	bl getDemoLookActor__9daAlink_cFv
/* 8011BA38  7C 64 1B 79 */	or. r4, r3, r3
/* 8011BA3C  41 82 00 54 */	beq lbl_8011BA90
/* 8011BA40  38 7F 34 E0 */	addi r3, r31, 0x34e0
/* 8011BA44  38 84 05 38 */	addi r4, r4, 0x538
/* 8011BA48  48 15 51 BD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8011BA4C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8011BA50  7C 04 18 50 */	subf r0, r4, r3
/* 8011BA54  7C 00 07 34 */	extsh r0, r0
/* 8011BA58  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8011BA5C  40 81 00 10 */	ble lbl_8011BA6C
/* 8011BA60  38 04 60 00 */	addi r0, r4, 0x6000
/* 8011BA64  7C 04 07 34 */	extsh r4, r0
/* 8011BA68  48 00 00 14 */	b lbl_8011BA7C
lbl_8011BA6C:
/* 8011BA6C  2C 00 A0 00 */	cmpwi r0, -24576
/* 8011BA70  40 80 00 0C */	bge lbl_8011BA7C
/* 8011BA74  38 04 A0 00 */	addi r0, r4, -24576
/* 8011BA78  7C 04 07 34 */	extsh r4, r0
lbl_8011BA7C:
/* 8011BA7C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8011BA80  38 A0 00 02 */	li r5, 2
/* 8011BA84  38 C0 08 00 */	li r6, 0x800
/* 8011BA88  38 E0 01 00 */	li r7, 0x100
/* 8011BA8C  48 15 4A B5 */	bl cLib_addCalcAngleS__FPsssss
lbl_8011BA90:
/* 8011BA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011BA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011BA98  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011BA9C  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011BAA0  4B F2 C6 DD */	bl cutEnd__16dEvent_manager_cFi
/* 8011BAA4  38 60 00 01 */	li r3, 1
/* 8011BAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BAB0  7C 08 03 A6 */	mtlr r0
/* 8011BAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BAB8  4E 80 00 20 */	blr 
