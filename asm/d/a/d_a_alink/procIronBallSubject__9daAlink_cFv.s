lbl_80115564:
/* 80115564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80115568  7C 08 02 A6 */	mflr r0
/* 8011556C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80115570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80115574  7C 7F 1B 78 */	mr r31, r3
/* 80115578  4B FF FB 6D */	bl checkIronBallAnime__9daAlink_cCFv
/* 8011557C  2C 03 00 00 */	cmpwi r3, 0
/* 80115580  41 82 00 10 */	beq lbl_80115590
/* 80115584  7F E3 FB 78 */	mr r3, r31
/* 80115588  38 80 00 12 */	li r4, 0x12
/* 8011558C  4B F9 DC C5 */	bl setDoStatus__9daAlink_cFUc
lbl_80115590:
/* 80115590  7F E3 FB 78 */	mr r3, r31
/* 80115594  38 80 00 00 */	li r4, 0
/* 80115598  4B F9 E1 9D */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8011559C  7F E3 FB 78 */	mr r3, r31
/* 801155A0  38 80 00 00 */	li r4, 0
/* 801155A4  4B FA 4B 2D */	bl checkNextAction__9daAlink_cFi
/* 801155A8  2C 03 00 00 */	cmpwi r3, 0
/* 801155AC  40 82 00 28 */	bne lbl_801155D4
/* 801155B0  7F E3 FB 78 */	mr r3, r31
/* 801155B4  4B F9 D0 51 */	bl itemButton__9daAlink_cFv
/* 801155B8  2C 03 00 00 */	cmpwi r3, 0
/* 801155BC  41 82 00 18 */	beq lbl_801155D4
/* 801155C0  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 801155C4  2C 00 00 02 */	cmpwi r0, 2
/* 801155C8  40 82 00 0C */	bne lbl_801155D4
/* 801155CC  7F E3 FB 78 */	mr r3, r31
/* 801155D0  4B FB 92 D1 */	bl setBodyAngleToCamera__9daAlink_cFv
lbl_801155D4:
/* 801155D4  38 60 00 01 */	li r3, 1
/* 801155D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801155DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801155E0  7C 08 03 A6 */	mtlr r0
/* 801155E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801155E8  4E 80 00 20 */	blr 
