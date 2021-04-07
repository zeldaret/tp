lbl_8000B5C8:
/* 8000B5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000B5CC  7C 08 02 A6 */	mflr r0
/* 8000B5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000B5D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000B5D8  7C 7F 1B 78 */	mr r31, r3
/* 8000B5DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8000B5E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8000B5E4  7D 89 03 A6 */	mtctr r12
/* 8000B5E8  4E 80 04 21 */	bctrl 
/* 8000B5EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8000B5F0  40 82 00 28 */	bne lbl_8000B618
/* 8000B5F4  7F E3 FB 78 */	mr r3, r31
/* 8000B5F8  4B FF FB F5 */	bl myGetHeapTypeByString__FP7JKRHeap
/* 8000B5FC  7C 65 1B 78 */	mr r5, r3
/* 8000B600  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B604  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B608  38 63 01 06 */	addi r3, r3, 0x106
/* 8000B60C  7F E4 FB 78 */	mr r4, r31
/* 8000B610  4C C6 31 82 */	crclr 6
/* 8000B614  4B FF B5 F9 */	bl OSReport_Error
lbl_8000B618:
/* 8000B618  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8000B61C  28 03 00 00 */	cmplwi r3, 0
/* 8000B620  41 82 00 08 */	beq lbl_8000B628
/* 8000B624  38 63 FF F4 */	addi r3, r3, -12
lbl_8000B628:
/* 8000B628  7C 7F 1B 78 */	mr r31, r3
/* 8000B62C  48 00 00 20 */	b lbl_8000B64C
lbl_8000B630:
/* 8000B630  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8000B634  4B FF FF 95 */	bl myHeapCheckRecursive__FP7JKRHeap
/* 8000B638  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8000B63C  28 03 00 00 */	cmplwi r3, 0
/* 8000B640  41 82 00 08 */	beq lbl_8000B648
/* 8000B644  38 63 FF F4 */	addi r3, r3, -12
lbl_8000B648:
/* 8000B648  7C 7F 1B 78 */	mr r31, r3
lbl_8000B64C:
/* 8000B64C  28 1F 00 00 */	cmplwi r31, 0
/* 8000B650  40 82 FF E0 */	bne lbl_8000B630
/* 8000B654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000B658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000B65C  7C 08 03 A6 */	mtlr r0
/* 8000B660  38 21 00 10 */	addi r1, r1, 0x10
/* 8000B664  4E 80 00 20 */	blr 
