lbl_801A7A40:
/* 801A7A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A7A44  7C 08 02 A6 */	mflr r0
/* 801A7A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A7A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A7A50  93 C1 00 08 */	stw r30, 8(r1)
/* 801A7A54  7C 65 1B 79 */	or. r5, r3, r3
/* 801A7A58  7C 9E 23 78 */	mr r30, r4
/* 801A7A5C  41 82 00 38 */	beq lbl_801A7A94
/* 801A7A60  57 DF 28 34 */	slwi r31, r30, 5
/* 801A7A64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7A68  38 03 CA 54 */	addi r0, r3, g_env_light@l
/* 801A7A6C  7C 60 FA 14 */	add r3, r0, r31
/* 801A7A70  38 63 07 64 */	addi r3, r3, 0x764
/* 801A7A74  7C A4 2B 78 */	mr r4, r5
/* 801A7A78  38 A0 00 20 */	li r5, 0x20
/* 801A7A7C  4B E5 BA C5 */	bl memcpy
/* 801A7A80  38 9E 00 01 */	addi r4, r30, 1
/* 801A7A84  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7A88  38 03 CA 54 */	addi r0, r3, g_env_light@l
/* 801A7A8C  7C 60 FA 14 */	add r3, r0, r31
/* 801A7A90  90 83 07 80 */	stw r4, 0x780(r3)
lbl_801A7A94:
/* 801A7A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A7A98  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A7A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7AA0  7C 08 03 A6 */	mtlr r0
/* 801A7AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801A7AA8  4E 80 00 20 */	blr 
