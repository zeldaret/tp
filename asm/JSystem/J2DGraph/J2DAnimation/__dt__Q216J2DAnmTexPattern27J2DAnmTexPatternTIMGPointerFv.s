lbl_8030CB3C:
/* 8030CB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CB40  7C 08 02 A6 */	mflr r0
/* 8030CB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CB48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CB4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8030CB50  7C 7E 1B 79 */	or. r30, r3, r3
/* 8030CB54  7C 9F 23 78 */	mr r31, r4
/* 8030CB58  41 82 00 1C */	beq lbl_8030CB74
/* 8030CB5C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8030CB60  4B FC 21 DD */	bl __dl__FPv
/* 8030CB64  7F E0 07 35 */	extsh. r0, r31
/* 8030CB68  40 81 00 0C */	ble lbl_8030CB74
/* 8030CB6C  7F C3 F3 78 */	mr r3, r30
/* 8030CB70  4B FC 21 CD */	bl __dl__FPv
lbl_8030CB74:
/* 8030CB74  7F C3 F3 78 */	mr r3, r30
/* 8030CB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CB7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030CB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CB84  7C 08 03 A6 */	mtlr r0
/* 8030CB88  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CB8C  4E 80 00 20 */	blr 
