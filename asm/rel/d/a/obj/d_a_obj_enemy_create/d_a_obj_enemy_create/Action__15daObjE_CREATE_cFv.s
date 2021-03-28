lbl_80BE3544:
/* 80BE3544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3548  7C 08 02 A6 */	mflr r0
/* 80BE354C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3550  88 03 05 84 */	lbz r0, 0x584(r3)
/* 80BE3554  2C 00 00 01 */	cmpwi r0, 1
/* 80BE3558  41 82 00 28 */	beq lbl_80BE3580
/* 80BE355C  40 80 00 10 */	bge lbl_80BE356C
/* 80BE3560  2C 00 00 00 */	cmpwi r0, 0
/* 80BE3564  40 80 00 14 */	bge lbl_80BE3578
/* 80BE3568  48 00 00 24 */	b lbl_80BE358C
lbl_80BE356C:
/* 80BE356C  2C 00 00 03 */	cmpwi r0, 3
/* 80BE3570  40 80 00 1C */	bge lbl_80BE358C
/* 80BE3574  48 00 00 14 */	b lbl_80BE3588
lbl_80BE3578:
/* 80BE3578  4B FF FC 45 */	bl NormalAction__15daObjE_CREATE_cFv
/* 80BE357C  48 00 00 10 */	b lbl_80BE358C
lbl_80BE3580:
/* 80BE3580  4B FF FE DD */	bl SearchAction__15daObjE_CREATE_cFv
/* 80BE3584  48 00 00 08 */	b lbl_80BE358C
lbl_80BE3588:
/* 80BE3588  4B FF FF 19 */	bl LoopAction__15daObjE_CREATE_cFv
lbl_80BE358C:
/* 80BE358C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3590  7C 08 03 A6 */	mtlr r0
/* 80BE3594  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3598  4E 80 00 20 */	blr 
