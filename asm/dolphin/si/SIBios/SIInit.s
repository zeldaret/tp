lbl_80345494:
/* 80345494  7C 08 02 A6 */	mflr r0
/* 80345498  3C 80 80 45 */	lis r4, Packet@ha
/* 8034549C  90 01 00 04 */	stw r0, 4(r1)
/* 803454A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803454A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803454A8  3B E4 C6 30 */	addi r31, r4, Packet@l
/* 803454AC  80 6D 84 48 */	lwz r3, __SIVersion(r13)
/* 803454B0  4B FF 53 C5 */	bl OSRegisterVersion
/* 803454B4  38 A0 FF FF */	li r5, -1
/* 803454B8  90 BF 00 60 */	stw r5, 0x60(r31)
/* 803454BC  3C 60 80 3D */	lis r3, Si@ha
/* 803454C0  38 83 11 FC */	addi r4, r3, Si@l
/* 803454C4  90 BF 00 40 */	stw r5, 0x40(r31)
/* 803454C8  38 00 00 00 */	li r0, 0
/* 803454CC  38 60 00 00 */	li r3, 0
/* 803454D0  90 BF 00 20 */	stw r5, 0x20(r31)
/* 803454D4  90 BF 00 00 */	stw r5, 0(r31)
/* 803454D8  90 04 00 04 */	stw r0, 4(r4)
/* 803454DC  48 00 0D B5 */	bl SISetSamplingRate
/* 803454E0  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006400@ha */
lbl_803454E4:
/* 803454E4  38 83 64 00 */	addi r4, r3, 0x6400 /* 0xCC006400@l */
/* 803454E8  84 04 00 34 */	lwzu r0, 0x34(r4)
/* 803454EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803454F0  40 82 FF F4 */	bne lbl_803454E4
/* 803454F4  3C 00 80 00 */	lis r0, 0x8000
/* 803454F8  3C 60 80 34 */	lis r3, SIInterruptHandler@ha
/* 803454FC  90 04 00 00 */	stw r0, 0(r4)
/* 80345500  38 83 4E F8 */	addi r4, r3, SIInterruptHandler@l
/* 80345504  38 60 00 14 */	li r3, 0x14
/* 80345508  4B FF 82 39 */	bl __OSSetInterruptHandler
/* 8034550C  38 60 08 00 */	li r3, 0x800
/* 80345510  4B FF 86 35 */	bl __OSUnmaskInterrupts
/* 80345514  38 60 00 00 */	li r3, 0
/* 80345518  48 00 0A 79 */	bl SIGetType
/* 8034551C  38 60 00 01 */	li r3, 1
/* 80345520  48 00 0A 71 */	bl SIGetType
/* 80345524  38 60 00 02 */	li r3, 2
/* 80345528  48 00 0A 69 */	bl SIGetType
/* 8034552C  38 60 00 03 */	li r3, 3
/* 80345530  48 00 0A 61 */	bl SIGetType
/* 80345534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80345538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034553C  38 21 00 10 */	addi r1, r1, 0x10
/* 80345540  7C 08 03 A6 */	mtlr r0
/* 80345544  4E 80 00 20 */	blr 
