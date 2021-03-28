lbl_8034337C:
/* 8034337C  7C 08 02 A6 */	mflr r0
/* 80343380  90 01 00 04 */	stw r0, 4(r1)
/* 80343384  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80343388  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 8034338C  3B 43 00 00 */	addi r26, r3, 0
/* 80343390  3B 64 00 00 */	addi r27, r4, 0
/* 80343394  54 60 30 32 */	slwi r0, r3, 6
/* 80343398  3C 60 80 45 */	lis r3, Ecb@ha
/* 8034339C  3B E3 C5 70 */	addi r31, r3, Ecb@l
/* 803433A0  7F DF 02 14 */	add r30, r31, r0
/* 803433A4  4B FF A3 51 */	bl OSDisableInterrupts
/* 803433A8  7C 7C 1B 78 */	mr r28, r3
/* 803433AC  83 BE 00 00 */	lwz r29, 0(r30)
/* 803433B0  93 7E 00 00 */	stw r27, 0(r30)
/* 803433B4  2C 1A 00 02 */	cmpwi r26, 2
/* 803433B8  41 82 00 14 */	beq lbl_803433CC
/* 803433BC  38 7A 00 00 */	addi r3, r26, 0
/* 803433C0  38 9E 00 00 */	addi r4, r30, 0
/* 803433C4  4B FF F8 49 */	bl SetExiInterruptMask
/* 803433C8  48 00 00 10 */	b lbl_803433D8
lbl_803433CC:
/* 803433CC  38 60 00 00 */	li r3, 0
/* 803433D0  38 9F 00 00 */	addi r4, r31, 0
/* 803433D4  4B FF F8 39 */	bl SetExiInterruptMask
lbl_803433D8:
/* 803433D8  7F 83 E3 78 */	mr r3, r28
/* 803433DC  4B FF A3 41 */	bl OSRestoreInterrupts
/* 803433E0  7F A3 EB 78 */	mr r3, r29
/* 803433E4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803433E8  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 803433EC  38 21 00 28 */	addi r1, r1, 0x28
/* 803433F0  7C 08 03 A6 */	mtlr r0
/* 803433F4  4E 80 00 20 */	blr 
