lbl_80C14904:
/* 80C14904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14908  7C 08 02 A6 */	mflr r0
/* 80C1490C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14914  3C 60 80 C1 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C14918  3B E3 49 FC */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C1491C  3C 60 80 C1 */	lis r3, l_HIO@ha
/* 80C14920  38 63 4B 44 */	addi r3, r3, l_HIO@l
/* 80C14924  4B FF EB 89 */	bl __ct__16daGrdWater_HIO_cFv
/* 80C14928  3C 80 80 C1 */	lis r4, __dt__16daGrdWater_HIO_cFv@ha
/* 80C1492C  38 84 48 A8 */	addi r4, r4, __dt__16daGrdWater_HIO_cFv@l
/* 80C14930  3C A0 80 C1 */	lis r5, lit_3636@ha
/* 80C14934  38 A5 4B 38 */	addi r5, r5, lit_3636@l
/* 80C14938  4B FF EB 01 */	bl __register_global_object
/* 80C1493C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80C14940  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80C14944  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 80C14948  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80C1494C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C14950  90 1F 00 64 */	stw r0, 0x64(r31)
/* 80C14954  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80C14958  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C1495C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C14960  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C14964  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C14968  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C1496C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C14970  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C14974  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C14978  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C1497C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C14980  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C14984  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C14988  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80C1498C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C14990  90 64 00 24 */	stw r3, 0x24(r4)
/* 80C14994  90 04 00 28 */	stw r0, 0x28(r4)
/* 80C14998  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C1499C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80C149A0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80C149A4  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C149A8  90 64 00 30 */	stw r3, 0x30(r4)
/* 80C149AC  90 04 00 34 */	stw r0, 0x34(r4)
/* 80C149B0  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80C149B4  90 04 00 38 */	stw r0, 0x38(r4)
/* 80C149B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C149BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C149C0  7C 08 03 A6 */	mtlr r0
/* 80C149C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C149C8  4E 80 00 20 */	blr 
