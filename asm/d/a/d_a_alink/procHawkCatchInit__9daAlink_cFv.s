lbl_801121B4:
/* 801121B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801121B8  7C 08 02 A6 */	mflr r0
/* 801121BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801121C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801121C4  7C 7F 1B 78 */	mr r31, r3
/* 801121C8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801121CC  28 00 00 BC */	cmplwi r0, 0xbc
/* 801121D0  41 82 00 14 */	beq lbl_801121E4
/* 801121D4  38 80 00 BB */	li r4, 0xbb
/* 801121D8  4B FB 0B CD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801121DC  2C 03 00 00 */	cmpwi r3, 0
/* 801121E0  40 82 00 0C */	bne lbl_801121EC
lbl_801121E4:
/* 801121E4  38 60 00 00 */	li r3, 0
/* 801121E8  48 00 00 24 */	b lbl_8011220C
lbl_801121EC:
/* 801121EC  7F E3 FB 78 */	mr r3, r31
/* 801121F0  38 80 01 11 */	li r4, 0x111
/* 801121F4  4B F9 AD 8D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 801121F8  7F E3 FB 78 */	mr r3, r31
/* 801121FC  38 80 00 00 */	li r4, 0
/* 80112200  38 A0 00 01 */	li r5, 1
/* 80112204  4B FA F0 D9 */	bl deleteEquipItem__9daAlink_cFii
/* 80112208  38 60 00 01 */	li r3, 1
lbl_8011220C:
/* 8011220C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80112210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80112214  7C 08 03 A6 */	mtlr r0
/* 80112218  38 21 00 10 */	addi r1, r1, 0x10
/* 8011221C  4E 80 00 20 */	blr 
