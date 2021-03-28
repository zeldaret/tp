lbl_8022B5F4:
/* 8022B5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022B5F8  7C 08 02 A6 */	mflr r0
/* 8022B5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022B600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022B604  93 C1 00 08 */	stw r30, 8(r1)
/* 8022B608  7C 7E 1B 79 */	or. r30, r3, r3
/* 8022B60C  7C 9F 23 78 */	mr r31, r4
/* 8022B610  41 82 00 28 */	beq lbl_8022B638
/* 8022B614  3C 80 80 3C */	lis r4, __vt__26jmessage_tMeasureProcessor@ha
/* 8022B618  38 04 0A 94 */	addi r0, r4, __vt__26jmessage_tMeasureProcessor@l
/* 8022B61C  90 1E 00 00 */	stw r0, 0(r30)
/* 8022B620  38 80 00 00 */	li r4, 0
/* 8022B624  48 07 D4 9D */	bl __dt__Q28JMessage19TRenderingProcessorFv
/* 8022B628  7F E0 07 35 */	extsh. r0, r31
/* 8022B62C  40 81 00 0C */	ble lbl_8022B638
/* 8022B630  7F C3 F3 78 */	mr r3, r30
/* 8022B634  48 0A 37 09 */	bl __dl__FPv
lbl_8022B638:
/* 8022B638  7F C3 F3 78 */	mr r3, r30
/* 8022B63C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022B640  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022B644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022B648  7C 08 03 A6 */	mtlr r0
/* 8022B64C  38 21 00 10 */	addi r1, r1, 0x10
/* 8022B650  4E 80 00 20 */	blr 
