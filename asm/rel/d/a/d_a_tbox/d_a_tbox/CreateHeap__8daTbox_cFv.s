lbl_804916A4:
/* 804916A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804916A8  7C 08 02 A6 */	mflr r0
/* 804916AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804916B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804916B4  7C 7F 1B 78 */	mr r31, r3
/* 804916B8  4B FF F7 B5 */	bl commonShapeSet__8daTbox_cFv
/* 804916BC  2C 03 00 04 */	cmpwi r3, 4
/* 804916C0  41 82 00 0C */	beq lbl_804916CC
/* 804916C4  38 60 00 00 */	li r3, 0
/* 804916C8  48 00 00 68 */	b lbl_80491730
lbl_804916CC:
/* 804916CC  7F E3 FB 78 */	mr r3, r31
/* 804916D0  4B FF FC 8D */	bl checkEnv__8daTbox_cFv
/* 804916D4  2C 03 00 00 */	cmpwi r3, 0
/* 804916D8  41 82 00 1C */	beq lbl_804916F4
/* 804916DC  7F E3 FB 78 */	mr r3, r31
/* 804916E0  4B FF FA E1 */	bl envShapeSet__8daTbox_cFv
/* 804916E4  2C 03 00 04 */	cmpwi r3, 4
/* 804916E8  41 82 00 0C */	beq lbl_804916F4
/* 804916EC  38 60 00 00 */	li r3, 0
/* 804916F0  48 00 00 40 */	b lbl_80491730
lbl_804916F4:
/* 804916F4  7F E3 FB 78 */	mr r3, r31
/* 804916F8  4B FF FC A5 */	bl checkOpen__8daTbox_cFv
/* 804916FC  2C 03 00 00 */	cmpwi r3, 0
/* 80491700  40 82 00 1C */	bne lbl_8049171C
/* 80491704  7F E3 FB 78 */	mr r3, r31
/* 80491708  4B FF FA B1 */	bl effectShapeSet__8daTbox_cFv
/* 8049170C  2C 03 00 04 */	cmpwi r3, 4
/* 80491710  41 82 00 0C */	beq lbl_8049171C
/* 80491714  38 60 00 00 */	li r3, 0
/* 80491718  48 00 00 18 */	b lbl_80491730
lbl_8049171C:
/* 8049171C  7F E3 FB 78 */	mr r3, r31
/* 80491720  4B FF FA A9 */	bl bgCheckSet__8daTbox_cFv
/* 80491724  20 03 00 04 */	subfic r0, r3, 4
/* 80491728  7C 00 00 34 */	cntlzw r0, r0
/* 8049172C  54 03 D9 7E */	srwi r3, r0, 5
lbl_80491730:
/* 80491730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491738  7C 08 03 A6 */	mtlr r0
/* 8049173C  38 21 00 10 */	addi r1, r1, 0x10
/* 80491740  4E 80 00 20 */	blr 
