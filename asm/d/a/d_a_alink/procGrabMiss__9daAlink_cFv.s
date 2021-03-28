lbl_800E637C:
/* 800E637C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6380  7C 08 02 A6 */	mflr r0
/* 800E6384  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E6388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E638C  7C 7F 1B 78 */	mr r31, r3
/* 800E6390  80 03 28 30 */	lwz r0, 0x2830(r3)
/* 800E6394  28 00 00 00 */	cmplwi r0, 0
/* 800E6398  40 82 00 10 */	bne lbl_800E63A8
/* 800E639C  38 80 00 00 */	li r4, 0
/* 800E63A0  4B FD 3D 31 */	bl checkNextAction__9daAlink_cFi
/* 800E63A4  48 00 00 34 */	b lbl_800E63D8
lbl_800E63A8:
/* 800E63A8  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800E63AC  48 07 81 21 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E63B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E63B4  41 82 00 24 */	beq lbl_800E63D8
/* 800E63B8  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800E63BC  2C 03 00 00 */	cmpwi r3, 0
/* 800E63C0  40 81 00 10 */	ble lbl_800E63D0
/* 800E63C4  38 03 FF FF */	addi r0, r3, -1
/* 800E63C8  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800E63CC  48 00 00 0C */	b lbl_800E63D8
lbl_800E63D0:
/* 800E63D0  7F E3 FB 78 */	mr r3, r31
/* 800E63D4  48 00 0B 19 */	bl procGrabStandInit__9daAlink_cFv
lbl_800E63D8:
/* 800E63D8  38 60 00 01 */	li r3, 1
/* 800E63DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E63E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E63E4  7C 08 03 A6 */	mtlr r0
/* 800E63E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E63EC  4E 80 00 20 */	blr 
