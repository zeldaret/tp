lbl_8035A7C4:
/* 8035A7C4  7C 08 02 A6 */	mflr r0
/* 8035A7C8  90 01 00 04 */	stw r0, 4(r1)
/* 8035A7CC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035A7D0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035A7D4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035A7D8  7C 7E 1B 78 */	mr r30, r3
/* 8035A7DC  4B FE 2F 19 */	bl OSDisableInterrupts
/* 8035A7E0  80 0D 93 CC */	lwz r0, GPFifo(r13)
/* 8035A7E4  3B E3 00 00 */	addi r31, r3, 0
/* 8035A7E8  93 CD 93 C8 */	stw r30, CPUFifo(r13)
/* 8035A7EC  7C 1E 00 40 */	cmplw r30, r0
/* 8035A7F0  40 82 00 70 */	bne lbl_8035A860
/* 8035A7F4  80 1E 00 00 */	lwz r0, 0(r30)
/* 8035A7F8  39 00 00 00 */	li r8, 0
/* 8035A7FC  80 6D 93 A0 */	lwz r3, __piReg(r13)
/* 8035A800  38 C0 00 00 */	li r6, 0
/* 8035A804  54 00 00 BE */	clrlwi r0, r0, 2
/* 8035A808  90 03 00 0C */	stw r0, 0xc(r3)
/* 8035A80C  38 00 00 01 */	li r0, 1
/* 8035A810  38 60 00 01 */	li r3, 1
/* 8035A814  80 FE 00 04 */	lwz r7, 4(r30)
/* 8035A818  38 80 00 01 */	li r4, 1
/* 8035A81C  80 AD 93 A0 */	lwz r5, __piReg(r13)
/* 8035A820  54 E7 00 BE */	clrlwi r7, r7, 2
/* 8035A824  90 E5 00 10 */	stw r7, 0x10(r5)
/* 8035A828  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 8035A82C  80 AD 93 A0 */	lwz r5, __piReg(r13)
/* 8035A830  50 E8 01 B4 */	rlwimi r8, r7, 0, 6, 0x1a
/* 8035A834  38 E8 00 00 */	addi r7, r8, 0
/* 8035A838  50 C7 D1 4A */	rlwimi r7, r6, 0x1a, 5, 5
/* 8035A83C  90 E5 00 14 */	stw r7, 0x14(r5)
/* 8035A840  98 0D 93 D4 */	stb r0, data_80451954(r13)
/* 8035A844  48 00 04 E1 */	bl __GXWriteFifoIntReset
/* 8035A848  38 60 00 01 */	li r3, 1
/* 8035A84C  38 80 00 00 */	li r4, 0
/* 8035A850  48 00 04 A5 */	bl __GXWriteFifoIntEnable
/* 8035A854  38 60 00 01 */	li r3, 1
/* 8035A858  48 00 04 69 */	bl __GXFifoLink
/* 8035A85C  48 00 00 6C */	b lbl_8035A8C8
lbl_8035A860:
/* 8035A860  88 0D 93 D4 */	lbz r0, data_80451954(r13)
/* 8035A864  28 00 00 00 */	cmplwi r0, 0
/* 8035A868  41 82 00 14 */	beq lbl_8035A87C
/* 8035A86C  38 60 00 00 */	li r3, 0
/* 8035A870  48 00 04 51 */	bl __GXFifoLink
/* 8035A874  38 00 00 00 */	li r0, 0
/* 8035A878  98 0D 93 D4 */	stb r0, data_80451954(r13)
lbl_8035A87C:
/* 8035A87C  38 60 00 00 */	li r3, 0
/* 8035A880  38 80 00 00 */	li r4, 0
/* 8035A884  48 00 04 71 */	bl __GXWriteFifoIntEnable
/* 8035A888  80 9E 00 00 */	lwz r4, 0(r30)
/* 8035A88C  38 A0 00 00 */	li r5, 0
/* 8035A890  80 6D 93 A0 */	lwz r3, __piReg(r13)
/* 8035A894  38 00 00 00 */	li r0, 0
/* 8035A898  54 84 00 BE */	clrlwi r4, r4, 2
/* 8035A89C  90 83 00 0C */	stw r4, 0xc(r3)
/* 8035A8A0  80 9E 00 04 */	lwz r4, 4(r30)
/* 8035A8A4  80 6D 93 A0 */	lwz r3, __piReg(r13)
/* 8035A8A8  54 84 00 BE */	clrlwi r4, r4, 2
/* 8035A8AC  90 83 00 10 */	stw r4, 0x10(r3)
/* 8035A8B0  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8035A8B4  80 6D 93 A0 */	lwz r3, __piReg(r13)
/* 8035A8B8  50 85 01 B4 */	rlwimi r5, r4, 0, 6, 0x1a
/* 8035A8BC  38 85 00 00 */	addi r4, r5, 0
/* 8035A8C0  50 04 D1 4A */	rlwimi r4, r0, 0x1a, 5, 5
/* 8035A8C4  90 83 00 14 */	stw r4, 0x14(r3)
lbl_8035A8C8:
/* 8035A8C8  4B FD F4 31 */	bl PPCSync
/* 8035A8CC  7F E3 FB 78 */	mr r3, r31
/* 8035A8D0  4B FE 2E 4D */	bl OSRestoreInterrupts
/* 8035A8D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035A8D8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035A8DC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035A8E0  38 21 00 18 */	addi r1, r1, 0x18
/* 8035A8E4  7C 08 03 A6 */	mtlr r0
/* 8035A8E8  4E 80 00 20 */	blr 
