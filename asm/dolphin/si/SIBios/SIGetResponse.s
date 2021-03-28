lbl_80345A3C:
/* 80345A3C  7C 08 02 A6 */	mflr r0
/* 80345A40  3C A0 80 45 */	lis r5, Packet@ha
/* 80345A44  90 01 00 04 */	stw r0, 4(r1)
/* 80345A48  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80345A4C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80345A50  3B A3 00 00 */	addi r29, r3, 0
/* 80345A54  3B C4 00 00 */	addi r30, r4, 0
/* 80345A58  3B 85 C6 30 */	addi r28, r5, Packet@l
/* 80345A5C  4B FF 7C 99 */	bl OSDisableInterrupts
/* 80345A60  3B E3 00 00 */	addi r31, r3, 0
/* 80345A64  38 7D 00 00 */	addi r3, r29, 0
/* 80345A68  4B FF FC ED */	bl SIGetStatus
/* 80345A6C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80345A70  41 82 00 3C */	beq lbl_80345AAC
/* 80345A74  1C 9D 00 0C */	mulli r4, r29, 0xc
/* 80345A78  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006400@ha */
/* 80345A7C  38 03 64 00 */	addi r0, r3, 0x6400 /* 0xCC006400@l */
/* 80345A80  7C 80 22 14 */	add r4, r0, r4
/* 80345A84  57 A3 18 38 */	slwi r3, r29, 3
/* 80345A88  80 04 00 04 */	lwz r0, 4(r4)
/* 80345A8C  7C BC 1A 14 */	add r5, r28, r3
/* 80345A90  90 05 01 C0 */	stw r0, 0x1c0(r5)
/* 80345A94  57 A0 10 3A */	slwi r0, r29, 2
/* 80345A98  7C 7C 02 14 */	add r3, r28, r0
/* 80345A9C  80 84 00 08 */	lwz r4, 8(r4)
/* 80345AA0  38 00 00 01 */	li r0, 1
/* 80345AA4  90 85 01 C4 */	stw r4, 0x1c4(r5)
/* 80345AA8  90 03 01 B0 */	stw r0, 0x1b0(r3)
lbl_80345AAC:
/* 80345AAC  57 A0 10 3A */	slwi r0, r29, 2
/* 80345AB0  7C 7C 02 14 */	add r3, r28, r0
/* 80345AB4  83 63 01 B0 */	lwz r27, 0x1b0(r3)
/* 80345AB8  38 00 00 00 */	li r0, 0
/* 80345ABC  2C 1B 00 00 */	cmpwi r27, 0
/* 80345AC0  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 80345AC4  41 82 00 1C */	beq lbl_80345AE0
/* 80345AC8  57 A0 18 38 */	slwi r0, r29, 3
/* 80345ACC  7C 7C 02 14 */	add r3, r28, r0
/* 80345AD0  80 03 01 C0 */	lwz r0, 0x1c0(r3)
/* 80345AD4  90 1E 00 00 */	stw r0, 0(r30)
/* 80345AD8  80 03 01 C4 */	lwz r0, 0x1c4(r3)
/* 80345ADC  90 1E 00 04 */	stw r0, 4(r30)
lbl_80345AE0:
/* 80345AE0  7F E3 FB 78 */	mr r3, r31
/* 80345AE4  4B FF 7C 39 */	bl OSRestoreInterrupts
/* 80345AE8  7F 63 DB 78 */	mr r3, r27
/* 80345AEC  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80345AF0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80345AF4  38 21 00 28 */	addi r1, r1, 0x28
/* 80345AF8  7C 08 03 A6 */	mtlr r0
/* 80345AFC  4E 80 00 20 */	blr 
