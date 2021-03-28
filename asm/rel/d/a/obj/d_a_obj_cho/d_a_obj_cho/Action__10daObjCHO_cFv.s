lbl_80BCB210:
/* 80BCB210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCB214  7C 08 02 A6 */	mflr r0
/* 80BCB218  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCB21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCB220  7C 7F 1B 78 */	mr r31, r3
/* 80BCB224  88 03 09 80 */	lbz r0, 0x980(r3)
/* 80BCB228  2C 00 00 01 */	cmpwi r0, 1
/* 80BCB22C  41 82 00 1C */	beq lbl_80BCB248
/* 80BCB230  40 80 00 1C */	bge lbl_80BCB24C
/* 80BCB234  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB238  40 80 00 08 */	bge lbl_80BCB240
/* 80BCB23C  48 00 00 10 */	b lbl_80BCB24C
lbl_80BCB240:
/* 80BCB240  4B FF F9 11 */	bl WaitAction__10daObjCHO_cFv
/* 80BCB244  48 00 00 08 */	b lbl_80BCB24C
lbl_80BCB248:
/* 80BCB248  4B FF FC 95 */	bl MoveAction__10daObjCHO_cFv
lbl_80BCB24C:
/* 80BCB24C  7F E3 FB 78 */	mr r3, r31
/* 80BCB250  4B 59 2E 28 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80BCB254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCB258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCB25C  7C 08 03 A6 */	mtlr r0
/* 80BCB260  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCB264  4E 80 00 20 */	blr 
