lbl_8034B8AC:
/* 8034B8AC  7C 08 02 A6 */	mflr r0
/* 8034B8B0  90 01 00 04 */	stw r0, 4(r1)
/* 8034B8B4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B8B8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B8BC  3B E4 00 00 */	addi r31, r4, 0
/* 8034B8C0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034B8C4  3B C3 00 00 */	addi r30, r3, 0
/* 8034B8C8  4B FF 1E 2D */	bl OSDisableInterrupts
/* 8034B8CC  3C 80 80 45 */	lis r4, WaitingQueue@ha /* 0x8044C998@ha */
/* 8034B8D0  57 C5 18 38 */	slwi r5, r30, 3
/* 8034B8D4  38 04 C9 98 */	addi r0, r4, WaitingQueue@l /* 0x8044C998@l */
/* 8034B8D8  7C A0 2A 14 */	add r5, r0, r5
/* 8034B8DC  80 85 00 04 */	lwz r4, 4(r5)
/* 8034B8E0  93 E4 00 00 */	stw r31, 0(r4)
/* 8034B8E4  80 05 00 04 */	lwz r0, 4(r5)
/* 8034B8E8  90 1F 00 04 */	stw r0, 4(r31)
/* 8034B8EC  90 BF 00 00 */	stw r5, 0(r31)
/* 8034B8F0  93 E5 00 04 */	stw r31, 4(r5)
/* 8034B8F4  4B FF 1E 29 */	bl OSRestoreInterrupts
/* 8034B8F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B8FC  38 60 00 01 */	li r3, 1
/* 8034B900  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B904  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034B908  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B90C  7C 08 03 A6 */	mtlr r0
/* 8034B910  4E 80 00 20 */	blr 
