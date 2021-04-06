lbl_80280B20:
/* 80280B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280B24  7C 08 02 A6 */	mflr r0
/* 80280B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280B30  93 C1 00 08 */	stw r30, 8(r1)
/* 80280B34  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280B38  7C 9F 23 78 */	mr r31, r4
/* 80280B3C  41 82 00 28 */	beq lbl_80280B64
/* 80280B40  3C 80 80 3C */	lis r4, __vt__Q26JStage13TAmbientLight@ha /* 0x803C4638@ha */
/* 80280B44  38 04 46 38 */	addi r0, r4, __vt__Q26JStage13TAmbientLight@l /* 0x803C4638@l */
/* 80280B48  90 1E 00 00 */	stw r0, 0(r30)
/* 80280B4C  38 80 00 00 */	li r4, 0
/* 80280B50  48 00 02 85 */	bl __dt__Q26JStage7TObjectFv
/* 80280B54  7F E0 07 35 */	extsh. r0, r31
/* 80280B58  40 81 00 0C */	ble lbl_80280B64
/* 80280B5C  7F C3 F3 78 */	mr r3, r30
/* 80280B60  48 04 E1 DD */	bl __dl__FPv
lbl_80280B64:
/* 80280B64  7F C3 F3 78 */	mr r3, r30
/* 80280B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280B6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280B74  7C 08 03 A6 */	mtlr r0
/* 80280B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80280B7C  4E 80 00 20 */	blr 
