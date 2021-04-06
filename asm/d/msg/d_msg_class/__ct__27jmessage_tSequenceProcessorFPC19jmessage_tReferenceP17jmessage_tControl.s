lbl_8022B558:
/* 8022B558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022B55C  7C 08 02 A6 */	mflr r0
/* 8022B560  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022B564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022B568  93 C1 00 08 */	stw r30, 8(r1)
/* 8022B56C  7C 7E 1B 78 */	mr r30, r3
/* 8022B570  7C 9F 23 78 */	mr r31, r4
/* 8022B574  48 07 CE 01 */	bl __ct__Q28JMessage18TSequenceProcessorFPCQ28JMessage10TReferencePQ28JMessage8TControl
/* 8022B578  3C 60 80 3C */	lis r3, __vt__27jmessage_tSequenceProcessor@ha /* 0x803C0A3C@ha */
/* 8022B57C  38 03 0A 3C */	addi r0, r3, __vt__27jmessage_tSequenceProcessor@l /* 0x803C0A3C@l */
/* 8022B580  90 1E 00 00 */	stw r0, 0(r30)
/* 8022B584  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8022B588  7F E4 FB 78 */	mr r4, r31
/* 8022B58C  4B FF E4 9D */	bl __ct__26jmessage_tMeasureProcessorFPC19jmessage_tReference
/* 8022B590  38 00 00 01 */	li r0, 1
/* 8022B594  B0 1E 00 A8 */	sth r0, 0xa8(r30)
/* 8022B598  A8 1E 00 A8 */	lha r0, 0xa8(r30)
/* 8022B59C  B0 1E 00 A4 */	sth r0, 0xa4(r30)
/* 8022B5A0  38 60 00 00 */	li r3, 0
/* 8022B5A4  B0 7E 00 A6 */	sth r3, 0xa6(r30)
/* 8022B5A8  98 7E 00 AD */	stb r3, 0xad(r30)
/* 8022B5AC  98 7E 00 B0 */	stb r3, 0xb0(r30)
/* 8022B5B0  98 7E 00 B1 */	stb r3, 0xb1(r30)
/* 8022B5B4  98 7E 00 AE */	stb r3, 0xae(r30)
/* 8022B5B8  38 00 00 FF */	li r0, 0xff
/* 8022B5BC  98 1E 00 AF */	stb r0, 0xaf(r30)
/* 8022B5C0  98 7E 00 B2 */	stb r3, 0xb2(r30)
/* 8022B5C4  B0 7E 00 AA */	sth r3, 0xaa(r30)
/* 8022B5C8  98 7E 00 B5 */	stb r3, 0xb5(r30)
/* 8022B5CC  98 7E 00 AC */	stb r3, 0xac(r30)
/* 8022B5D0  98 7E 00 B3 */	stb r3, 0xb3(r30)
/* 8022B5D4  98 7E 00 B4 */	stb r3, 0xb4(r30)
/* 8022B5D8  7F C3 F3 78 */	mr r3, r30
/* 8022B5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022B5E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022B5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022B5E8  7C 08 03 A6 */	mtlr r0
/* 8022B5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8022B5F0  4E 80 00 20 */	blr 
