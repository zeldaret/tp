lbl_80D4CB24:
/* 80D4CB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4CB28  7C 08 02 A6 */	mflr r0
/* 80D4CB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4CB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4CB34  7C 7F 1B 78 */	mr r31, r3
/* 80D4CB38  88 83 05 A0 */	lbz r4, 0x5a0(r3)
/* 80D4CB3C  28 04 00 00 */	cmplwi r4, 0
/* 80D4CB40  41 82 00 10 */	beq lbl_80D4CB50
/* 80D4CB44  38 04 FF FF */	addi r0, r4, -1
/* 80D4CB48  98 1F 05 A0 */	stb r0, 0x5a0(r31)
/* 80D4CB4C  48 00 00 08 */	b lbl_80D4CB54
lbl_80D4CB50:
/* 80D4CB50  48 00 04 61 */	bl moveSwing__11daPPolamp_cFv
lbl_80D4CB54:
/* 80D4CB54  7F E3 FB 78 */	mr r3, r31
/* 80D4CB58  48 00 01 CD */	bl setModelMtx__11daPPolamp_cFv
/* 80D4CB5C  7F E3 FB 78 */	mr r3, r31
/* 80D4CB60  48 00 02 49 */	bl setPclModelMtx__11daPPolamp_cFv
/* 80D4CB64  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80D4CB68  4B 2C 08 C1 */	bl play__14mDoExt_baseAnmFv
/* 80D4CB6C  38 60 00 01 */	li r3, 1
/* 80D4CB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4CB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4CB78  7C 08 03 A6 */	mtlr r0
/* 80D4CB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4CB80  4E 80 00 20 */	blr 
