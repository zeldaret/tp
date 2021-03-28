lbl_8003D740:
/* 8003D740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D744  7C 08 02 A6 */	mflr r0
/* 8003D748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D74C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003D750  93 C1 00 08 */	stw r30, 8(r1)
/* 8003D754  7C 7E 1B 79 */	or. r30, r3, r3
/* 8003D758  7C 9F 23 78 */	mr r31, r4
/* 8003D75C  41 82 00 18 */	beq lbl_8003D774
/* 8003D760  4B FF F1 95 */	bl remove__Q28dMpath_n18dTexObjAggregate_cFv
/* 8003D764  7F E0 07 35 */	extsh. r0, r31
/* 8003D768  40 81 00 0C */	ble lbl_8003D774
/* 8003D76C  7F C3 F3 78 */	mr r3, r30
/* 8003D770  48 29 15 CD */	bl __dl__FPv
lbl_8003D774:
/* 8003D774  7F C3 F3 78 */	mr r3, r30
/* 8003D778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003D77C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003D780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D784  7C 08 03 A6 */	mtlr r0
/* 8003D788  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D78C  4E 80 00 20 */	blr 
