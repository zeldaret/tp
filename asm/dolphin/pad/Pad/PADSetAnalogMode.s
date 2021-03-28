lbl_8034FA10:
/* 8034FA10  7C 08 02 A6 */	mflr r0
/* 8034FA14  90 01 00 04 */	stw r0, 4(r1)
/* 8034FA18  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034FA1C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034FA20  7C 7F 1B 78 */	mr r31, r3
/* 8034FA24  4B FE DC D1 */	bl OSDisableInterrupts
/* 8034FA28  80 AD 92 CC */	lwz r5, EnabledBits(r13)
/* 8034FA2C  57 E6 40 2E */	slwi r6, r31, 8
/* 8034FA30  80 8D 92 D8 */	lwz r4, WaitingBits(r13)
/* 8034FA34  7C 7F 1B 78 */	mr r31, r3
/* 8034FA38  39 05 00 00 */	addi r8, r5, 0
/* 8034FA3C  7D 07 40 F8 */	nor r7, r8, r8
/* 8034FA40  80 0D 92 DC */	lwz r0, CheckingBits(r13)
/* 8034FA44  7C A5 28 78 */	andc r5, r5, r5
/* 8034FA48  90 CD 84 AC */	stw r6, AnalogMode(r13)
/* 8034FA4C  7C 84 38 38 */	and r4, r4, r7
/* 8034FA50  7C 00 38 38 */	and r0, r0, r7
/* 8034FA54  90 AD 92 CC */	stw r5, EnabledBits(r13)
/* 8034FA58  7D 03 43 78 */	mr r3, r8
/* 8034FA5C  90 8D 92 D8 */	stw r4, WaitingBits(r13)
/* 8034FA60  90 0D 92 DC */	stw r0, CheckingBits(r13)
/* 8034FA64  4B FF 5E 99 */	bl SIDisablePolling
/* 8034FA68  7F E3 FB 78 */	mr r3, r31
/* 8034FA6C  4B FE DC B1 */	bl OSRestoreInterrupts
/* 8034FA70  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034FA74  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034FA78  38 21 00 18 */	addi r1, r1, 0x18
/* 8034FA7C  7C 08 03 A6 */	mtlr r0
/* 8034FA80  4E 80 00 20 */	blr 
