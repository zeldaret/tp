lbl_80AD134C:
/* 80AD134C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD1350  7C 08 02 A6 */	mflr r0
/* 80AD1354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD1358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD135C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD1360  41 82 00 10 */	beq lbl_80AD1370
/* 80AD1364  7C 80 07 35 */	extsh. r0, r4
/* 80AD1368  40 81 00 08 */	ble lbl_80AD1370
/* 80AD136C  4B 7F D9 D1 */	bl __dl__FPv
lbl_80AD1370:
/* 80AD1370  7F E3 FB 78 */	mr r3, r31
/* 80AD1374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD1378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD137C  7C 08 03 A6 */	mtlr r0
/* 80AD1380  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1384  4E 80 00 20 */	blr 
