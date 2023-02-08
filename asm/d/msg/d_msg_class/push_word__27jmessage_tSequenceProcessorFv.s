lbl_8022CAAC:
/* 8022CAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CAB0  7C 08 02 A6 */	mflr r0
/* 8022CAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022CABC  93 C1 00 08 */	stw r30, 8(r1)
/* 8022CAC0  7C 7E 1B 78 */	mr r30, r3
/* 8022CAC4  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022CAC8  7F E3 FB 78 */	mr r3, r31
/* 8022CACC  88 9E 00 B5 */	lbz r4, 0xb5(r30)
/* 8022CAD0  7C 84 07 74 */	extsb r4, r4
/* 8022CAD4  4B FF CC 5D */	bl getWord__19jmessage_tReferenceFi
/* 8022CAD8  7C 64 1B 78 */	mr r4, r3
/* 8022CADC  7F C3 F3 78 */	mr r3, r30
/* 8022CAE0  48 07 B1 19 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022CAE4  88 7E 00 B5 */	lbz r3, 0xb5(r30)
/* 8022CAE8  38 03 00 01 */	addi r0, r3, 1
/* 8022CAEC  98 1E 00 B5 */	stb r0, 0xb5(r30)
/* 8022CAF0  88 1E 00 B5 */	lbz r0, 0xb5(r30)
/* 8022CAF4  98 1F 12 51 */	stb r0, 0x1251(r31)
/* 8022CAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CAFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022CB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CB04  7C 08 03 A6 */	mtlr r0
/* 8022CB08  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CB0C  4E 80 00 20 */	blr 
