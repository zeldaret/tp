lbl_8034FBA0:
/* 8034FBA0  7C 08 02 A6 */	mflr r0
/* 8034FBA4  28 03 00 00 */	cmplwi r3, 0
/* 8034FBA8  90 01 00 04 */	stw r0, 4(r1)
/* 8034FBAC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034FBB0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034FBB4  83 ED 92 E8 */	lwz r31, SamplingCallback(r13)
/* 8034FBB8  90 6D 92 E8 */	stw r3, SamplingCallback(r13)
/* 8034FBBC  41 82 00 14 */	beq lbl_8034FBD0
/* 8034FBC0  3C 60 80 35 */	lis r3, SamplingHandler@ha
/* 8034FBC4  38 63 FB 40 */	addi r3, r3, SamplingHandler@l
/* 8034FBC8  4B FF 57 0D */	bl SIRegisterPollingHandler
/* 8034FBCC  48 00 00 10 */	b lbl_8034FBDC
lbl_8034FBD0:
/* 8034FBD0  3C 60 80 35 */	lis r3, SamplingHandler@ha
/* 8034FBD4  38 63 FB 40 */	addi r3, r3, SamplingHandler@l
/* 8034FBD8  4B FF 57 C9 */	bl SIUnregisterPollingHandler
lbl_8034FBDC:
/* 8034FBDC  7F E3 FB 78 */	mr r3, r31
/* 8034FBE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034FBE4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034FBE8  38 21 00 18 */	addi r1, r1, 0x18
/* 8034FBEC  7C 08 03 A6 */	mtlr r0
/* 8034FBF0  4E 80 00 20 */	blr 
