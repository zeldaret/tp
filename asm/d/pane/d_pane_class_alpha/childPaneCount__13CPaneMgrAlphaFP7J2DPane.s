lbl_80255A60:
/* 80255A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255A64  7C 08 02 A6 */	mflr r0
/* 80255A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255A70  93 C1 00 08 */	stw r30, 8(r1)
/* 80255A74  7C 7E 1B 78 */	mr r30, r3
/* 80255A78  7C 9F 23 79 */	or. r31, r4, r4
/* 80255A7C  41 82 00 38 */	beq lbl_80255AB4
/* 80255A80  A8 7E 00 14 */	lha r3, 0x14(r30)
/* 80255A84  38 03 00 01 */	addi r0, r3, 1
/* 80255A88  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 80255A8C  7F E3 FB 78 */	mr r3, r31
/* 80255A90  48 0A 1F FD */	bl getFirstChildPane__7J2DPaneFv
/* 80255A94  7C 64 1B 78 */	mr r4, r3
/* 80255A98  7F C3 F3 78 */	mr r3, r30
/* 80255A9C  4B FF FF C5 */	bl childPaneCount__13CPaneMgrAlphaFP7J2DPane
/* 80255AA0  7F E3 FB 78 */	mr r3, r31
/* 80255AA4  48 0A 20 21 */	bl getNextChildPane__7J2DPaneFv
/* 80255AA8  7C 64 1B 78 */	mr r4, r3
/* 80255AAC  7F C3 F3 78 */	mr r3, r30
/* 80255AB0  4B FF FF B1 */	bl childPaneCount__13CPaneMgrAlphaFP7J2DPane
lbl_80255AB4:
/* 80255AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255AB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80255ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255AC0  7C 08 03 A6 */	mtlr r0
/* 80255AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80255AC8  4E 80 00 20 */	blr 
