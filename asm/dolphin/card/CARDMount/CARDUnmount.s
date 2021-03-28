lbl_803573D8:
/* 803573D8  7C 08 02 A6 */	mflr r0
/* 803573DC  90 01 00 04 */	stw r0, 4(r1)
/* 803573E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803573E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803573E8  38 81 00 0C */	addi r4, r1, 0xc
/* 803573EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803573F0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803573F4  3B A3 00 00 */	addi r29, r3, 0
/* 803573F8  4B FF C7 BD */	bl __CARDGetControlBlock
/* 803573FC  2C 03 00 00 */	cmpwi r3, 0
/* 80357400  40 80 00 08 */	bge lbl_80357408
/* 80357404  48 00 00 64 */	b lbl_80357468
lbl_80357408:
/* 80357408  1C 9D 01 10 */	mulli r4, r29, 0x110
/* 8035740C  3C 60 80 45 */	lis r3, __CARDBlock@ha
/* 80357410  38 03 CB C0 */	addi r0, r3, __CARDBlock@l
/* 80357414  7F C0 22 14 */	add r30, r0, r4
/* 80357418  4B FE 62 DD */	bl OSDisableInterrupts
/* 8035741C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80357420  3B E3 00 00 */	addi r31, r3, 0
/* 80357424  2C 00 00 00 */	cmpwi r0, 0
/* 80357428  41 82 00 34 */	beq lbl_8035745C
/* 8035742C  38 7D 00 00 */	addi r3, r29, 0
/* 80357430  38 80 00 00 */	li r4, 0
/* 80357434  4B FE BF 49 */	bl EXISetExiCallback
/* 80357438  7F A3 EB 78 */	mr r3, r29
/* 8035743C  4B FE C3 71 */	bl EXIDetach
/* 80357440  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80357444  4B FE 37 F9 */	bl OSCancelAlarm
/* 80357448  38 60 00 00 */	li r3, 0
/* 8035744C  90 7E 00 00 */	stw r3, 0(r30)
/* 80357450  38 00 FF FD */	li r0, -3
/* 80357454  90 1E 00 04 */	stw r0, 4(r30)
/* 80357458  90 7E 00 24 */	stw r3, 0x24(r30)
lbl_8035745C:
/* 8035745C  7F E3 FB 78 */	mr r3, r31
/* 80357460  4B FE 62 BD */	bl OSRestoreInterrupts
/* 80357464  38 60 00 00 */	li r3, 0
lbl_80357468:
/* 80357468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035746C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80357470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80357474  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80357478  38 21 00 20 */	addi r1, r1, 0x20
/* 8035747C  7C 08 03 A6 */	mtlr r0
/* 80357480  4E 80 00 20 */	blr 
