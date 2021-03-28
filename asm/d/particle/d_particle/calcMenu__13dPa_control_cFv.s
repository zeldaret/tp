lbl_8004C134:
/* 8004C134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004C138  7C 08 02 A6 */	mflr r0
/* 8004C13C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004C140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004C144  80 0D 89 20 */	lwz r0, mEmitterMng__13dPa_control_c(r13)
/* 8004C148  28 00 00 00 */	cmplwi r0, 0
/* 8004C14C  41 82 00 28 */	beq lbl_8004C174
/* 8004C150  3B E0 00 11 */	li r31, 0x11
/* 8004C154  48 00 00 14 */	b lbl_8004C168
lbl_8004C158:
/* 8004C158  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004C15C  7F E4 FB 78 */	mr r4, r31
/* 8004C160  48 23 1E 41 */	bl calc__17JPAEmitterManagerFUc
/* 8004C164  3B FF 00 01 */	addi r31, r31, 1
lbl_8004C168:
/* 8004C168  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8004C16C  28 00 00 12 */	cmplwi r0, 0x12
/* 8004C170  40 81 FF E8 */	ble lbl_8004C158
lbl_8004C174:
/* 8004C174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004C178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004C17C  7C 08 03 A6 */	mtlr r0
/* 8004C180  38 21 00 10 */	addi r1, r1, 0x10
/* 8004C184  4E 80 00 20 */	blr 
