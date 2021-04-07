lbl_80358A84:
/* 80358A84  7C 08 02 A6 */	mflr r0
/* 80358A88  90 01 00 04 */	stw r0, 4(r1)
/* 80358A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358A90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358A94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358A98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80358A9C  7C 9D 23 79 */	or. r29, r4, r4
/* 80358AA0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80358AA4  3B 83 00 00 */	addi r28, r3, 0
/* 80358AA8  1C BC 01 10 */	mulli r5, r28, 0x110
/* 80358AAC  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80358AB0  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 80358AB4  7F E0 2A 14 */	add r31, r0, r5
/* 80358AB8  41 80 00 30 */	blt lbl_80358AE8
/* 80358ABC  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 80358AC0  3C 60 80 36 */	lis r3, WriteCallback@ha /* 0x80358914@ha */
/* 80358AC4  38 E3 89 14 */	addi r7, r3, WriteCallback@l /* 0x80358914@l */
/* 80358AC8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80358ACC  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 80358AD0  80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 80358AD4  38 7C 00 00 */	addi r3, r28, 0
/* 80358AD8  7C 85 01 D6 */	mullw r4, r5, r0
/* 80358ADC  4B FF C8 D1 */	bl __CARDWrite
/* 80358AE0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80358AE4  40 80 00 30 */	bge lbl_80358B14
lbl_80358AE8:
/* 80358AE8  83 DF 00 D0 */	lwz r30, 0xd0(r31)
/* 80358AEC  38 00 00 00 */	li r0, 0
/* 80358AF0  38 7F 00 00 */	addi r3, r31, 0
/* 80358AF4  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80358AF8  7F A4 EB 78 */	mr r4, r29
/* 80358AFC  4B FF B1 71 */	bl __CARDPutControlBlock
/* 80358B00  39 9E 00 00 */	addi r12, r30, 0
/* 80358B04  7D 88 03 A6 */	mtlr r12
/* 80358B08  38 7C 00 00 */	addi r3, r28, 0
/* 80358B0C  38 9D 00 00 */	addi r4, r29, 0
/* 80358B10  4E 80 00 21 */	blrl 
lbl_80358B14:
/* 80358B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358B18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358B1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80358B20  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358B24  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80358B28  38 21 00 20 */	addi r1, r1, 0x20
/* 80358B2C  7C 08 03 A6 */	mtlr r0
/* 80358B30  4E 80 00 20 */	blr 
