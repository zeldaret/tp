lbl_803506C4:
/* 803506C4  7C 08 02 A6 */	mflr r0
/* 803506C8  90 01 00 04 */	stw r0, 4(r1)
/* 803506CC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803506D0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803506D4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803506D8  7C 7E 1B 78 */	mr r30, r3
/* 803506DC  4B FE D0 19 */	bl OSDisableInterrupts
/* 803506E0  83 ED 93 48 */	lwz r31, __AR_StackPointer(r13)
/* 803506E4  80 8D 93 50 */	lwz r4, __AR_BlockLength(r13)
/* 803506E8  7C 1F F2 14 */	add r0, r31, r30
/* 803506EC  90 0D 93 48 */	stw r0, __AR_StackPointer(r13)
/* 803506F0  93 C4 00 00 */	stw r30, 0(r4)
/* 803506F4  80 AD 93 50 */	lwz r5, __AR_BlockLength(r13)
/* 803506F8  80 8D 93 4C */	lwz r4, __AR_FreeBlocks(r13)
/* 803506FC  38 A5 00 04 */	addi r5, r5, 4
/* 80350700  38 04 FF FF */	addi r0, r4, -1
/* 80350704  90 AD 93 50 */	stw r5, __AR_BlockLength(r13)
/* 80350708  90 0D 93 4C */	stw r0, __AR_FreeBlocks(r13)
/* 8035070C  4B FE D0 11 */	bl OSRestoreInterrupts
/* 80350710  7F E3 FB 78 */	mr r3, r31
/* 80350714  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80350718  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035071C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80350720  38 21 00 18 */	addi r1, r1, 0x18
/* 80350724  7C 08 03 A6 */	mtlr r0
/* 80350728  4E 80 00 20 */	blr 
