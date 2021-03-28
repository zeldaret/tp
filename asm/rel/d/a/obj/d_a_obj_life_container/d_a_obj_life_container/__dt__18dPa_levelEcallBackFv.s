lbl_804CE33C:
/* 804CE33C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE340  7C 08 02 A6 */	mflr r0
/* 804CE344  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CE34C  93 C1 00 08 */	stw r30, 8(r1)
/* 804CE350  7C 7E 1B 79 */	or. r30, r3, r3
/* 804CE354  7C 9F 23 78 */	mr r31, r4
/* 804CE358  41 82 00 3C */	beq lbl_804CE394
/* 804CE35C  3C 80 80 4D */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 804CE360  38 04 E5 F0 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 804CE364  90 1E 00 00 */	stw r0, 0(r30)
/* 804CE368  81 83 00 00 */	lwz r12, 0(r3)
/* 804CE36C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804CE370  7D 89 03 A6 */	mtctr r12
/* 804CE374  4E 80 04 21 */	bctrl 
/* 804CE378  7F C3 F3 78 */	mr r3, r30
/* 804CE37C  38 80 00 00 */	li r4, 0
/* 804CE380  4B DB 03 24 */	b __dt__18JPAEmitterCallBackFv
/* 804CE384  7F E0 07 35 */	extsh. r0, r31
/* 804CE388  40 81 00 0C */	ble lbl_804CE394
/* 804CE38C  7F C3 F3 78 */	mr r3, r30
/* 804CE390  4B E0 09 AC */	b __dl__FPv
lbl_804CE394:
/* 804CE394  7F C3 F3 78 */	mr r3, r30
/* 804CE398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CE39C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CE3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE3A4  7C 08 03 A6 */	mtlr r0
/* 804CE3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE3AC  4E 80 00 20 */	blr 
