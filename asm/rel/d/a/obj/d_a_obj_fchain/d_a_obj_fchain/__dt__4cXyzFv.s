lbl_80BE6368:
/* 80BE6368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE636C  7C 08 02 A6 */	mflr r0
/* 80BE6370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE6374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE6378  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE637C  41 82 00 10 */	beq lbl_80BE638C
/* 80BE6380  7C 80 07 35 */	extsh. r0, r4
/* 80BE6384  40 81 00 08 */	ble lbl_80BE638C
/* 80BE6388  4B 6E 89 B5 */	bl __dl__FPv
lbl_80BE638C:
/* 80BE638C  7F E3 FB 78 */	mr r3, r31
/* 80BE6390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE6394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE6398  7C 08 03 A6 */	mtlr r0
/* 80BE639C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE63A0  4E 80 00 20 */	blr 
