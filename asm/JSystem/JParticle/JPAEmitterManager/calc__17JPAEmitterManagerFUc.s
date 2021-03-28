lbl_8027DFA0:
/* 8027DFA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DFA4  7C 08 02 A6 */	mflr r0
/* 8027DFA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DFAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8027DFB0  48 0E 42 2D */	bl _savegpr_29
/* 8027DFB4  7C 7D 1B 78 */	mr r29, r3
/* 8027DFB8  80 63 00 00 */	lwz r3, 0(r3)
/* 8027DFBC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8027DFC0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027DFC4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027DFC8  48 00 00 40 */	b lbl_8027E008
lbl_8027DFCC:
/* 8027DFCC  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8027DFD0  83 C3 00 00 */	lwz r30, 0(r3)
/* 8027DFD4  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 8027DFD8  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 8027DFDC  7F C5 F3 78 */	mr r5, r30
/* 8027DFE0  4B FF 76 09 */	bl calc__11JPAResourceFP18JPAEmitterWorkDataP14JPABaseEmitter
/* 8027DFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027DFE8  41 82 00 1C */	beq lbl_8027E004
/* 8027DFEC  80 1E 00 F4 */	lwz r0, 0xf4(r30)
/* 8027DFF0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8027DFF4  40 82 00 10 */	bne lbl_8027E004
/* 8027DFF8  7F A3 EB 78 */	mr r3, r29
/* 8027DFFC  7F C4 F3 78 */	mr r4, r30
/* 8027E000  48 00 02 D9 */	bl forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
lbl_8027E004:
/* 8027E004  7F E3 FB 78 */	mr r3, r31
lbl_8027E008:
/* 8027E008  28 03 00 00 */	cmplwi r3, 0
/* 8027E00C  40 82 FF C0 */	bne lbl_8027DFCC
/* 8027E010  39 61 00 20 */	addi r11, r1, 0x20
/* 8027E014  48 0E 42 15 */	bl _restgpr_29
/* 8027E018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E01C  7C 08 03 A6 */	mtlr r0
/* 8027E020  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E024  4E 80 00 20 */	blr 
