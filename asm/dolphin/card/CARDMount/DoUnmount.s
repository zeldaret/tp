lbl_8035733C:
/* 8035733C  7C 08 02 A6 */	mflr r0
/* 80357340  90 01 00 04 */	stw r0, 4(r1)
/* 80357344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80357348  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035734C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80357350  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80357354  3B A4 00 00 */	addi r29, r4, 0
/* 80357358  93 81 00 10 */	stw r28, 0x10(r1)
/* 8035735C  3B 83 00 00 */	addi r28, r3, 0
/* 80357360  1C BC 01 10 */	mulli r5, r28, 0x110
/* 80357364  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80357368  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 8035736C  7F E0 2A 14 */	add r31, r0, r5
/* 80357370  4B FE 63 85 */	bl OSDisableInterrupts
/* 80357374  80 1F 00 00 */	lwz r0, 0(r31)
/* 80357378  3B C3 00 00 */	addi r30, r3, 0
/* 8035737C  2C 00 00 00 */	cmpwi r0, 0
/* 80357380  41 82 00 30 */	beq lbl_803573B0
/* 80357384  38 7C 00 00 */	addi r3, r28, 0
/* 80357388  38 80 00 00 */	li r4, 0
/* 8035738C  4B FE BF F1 */	bl EXISetExiCallback
/* 80357390  7F 83 E3 78 */	mr r3, r28
/* 80357394  4B FE C4 19 */	bl EXIDetach
/* 80357398  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8035739C  4B FE 38 A1 */	bl OSCancelAlarm
/* 803573A0  38 00 00 00 */	li r0, 0
/* 803573A4  90 1F 00 00 */	stw r0, 0(r31)
/* 803573A8  93 BF 00 04 */	stw r29, 4(r31)
/* 803573AC  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_803573B0:
/* 803573B0  7F C3 F3 78 */	mr r3, r30
/* 803573B4  4B FE 63 69 */	bl OSRestoreInterrupts
/* 803573B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803573BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803573C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803573C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803573C8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803573CC  38 21 00 20 */	addi r1, r1, 0x20
/* 803573D0  7C 08 03 A6 */	mtlr r0
/* 803573D4  4E 80 00 20 */	blr 
