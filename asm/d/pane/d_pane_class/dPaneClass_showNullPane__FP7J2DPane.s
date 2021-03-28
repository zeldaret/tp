lbl_8025512C:
/* 8025512C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255130  7C 08 02 A6 */	mflr r0
/* 80255134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025513C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80255140  41 82 00 30 */	beq lbl_80255170
/* 80255144  88 1F 00 B0 */	lbz r0, 0xb0(r31)
/* 80255148  28 00 00 00 */	cmplwi r0, 0
/* 8025514C  40 82 00 0C */	bne lbl_80255158
/* 80255150  38 00 00 01 */	li r0, 1
/* 80255154  98 1F 00 B0 */	stb r0, 0xb0(r31)
lbl_80255158:
/* 80255158  7F E3 FB 78 */	mr r3, r31
/* 8025515C  48 0A 29 31 */	bl getFirstChildPane__7J2DPaneFv
/* 80255160  4B FF FF CD */	bl dPaneClass_showNullPane__FP7J2DPane
/* 80255164  7F E3 FB 78 */	mr r3, r31
/* 80255168  48 0A 29 5D */	bl getNextChildPane__7J2DPaneFv
/* 8025516C  4B FF FF C1 */	bl dPaneClass_showNullPane__FP7J2DPane
lbl_80255170:
/* 80255170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255178  7C 08 03 A6 */	mtlr r0
/* 8025517C  38 21 00 10 */	addi r1, r1, 0x10
/* 80255180  4E 80 00 20 */	blr 
