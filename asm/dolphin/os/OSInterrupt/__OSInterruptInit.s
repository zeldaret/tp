lbl_8033D770:
/* 8033D770  7C 08 02 A6 */	mflr r0
/* 8033D774  90 01 00 04 */	stw r0, 4(r1)
/* 8033D778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033D77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033D780  3F E0 80 00 */	lis r31, 0x8000 /* 0x80003040@ha */
/* 8033D784  38 1F 30 40 */	addi r0, r31, 0x3040 /* 0x80003040@l */
/* 8033D788  90 0D 90 F0 */	stw r0, InterruptHandlerTable(r13)
/* 8033D78C  38 80 00 00 */	li r4, 0
/* 8033D790  38 A0 00 80 */	li r5, 0x80
/* 8033D794  80 6D 90 F0 */	lwz r3, InterruptHandlerTable(r13)
/* 8033D798  4B CC 5C C1 */	bl memset
/* 8033D79C  38 00 00 00 */	li r0, 0
/* 8033D7A0  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8033D7A4  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC003000@ha */
/* 8033D7A8  38 83 30 00 */	addi r4, r3, 0x3000 /* 0xCC003000@l */
/* 8033D7AC  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8033D7B0  38 00 00 F0 */	li r0, 0xf0
/* 8033D7B4  38 60 FF E0 */	li r3, -32
/* 8033D7B8  90 04 00 04 */	stw r0, 4(r4)
/* 8033D7BC  48 00 03 01 */	bl __OSMaskInterrupts
/* 8033D7C0  3C 60 80 34 */	lis r3, ExternalInterruptHandler@ha /* 0x8033DF10@ha */
/* 8033D7C4  38 83 DF 10 */	addi r4, r3, ExternalInterruptHandler@l /* 0x8033DF10@l */
/* 8033D7C8  38 60 00 04 */	li r3, 4
/* 8033D7CC  4B FF CF 1D */	bl __OSSetExceptionHandler
/* 8033D7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033D7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033D7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033D7DC  7C 08 03 A6 */	mtlr r0
/* 8033D7E0  4E 80 00 20 */	blr 
