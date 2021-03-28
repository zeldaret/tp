lbl_80271A70:
/* 80271A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80271A74  7C 08 02 A6 */	mflr r0
/* 80271A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80271A7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80271A80  7C 7F 1B 78 */	mr r31, r3
/* 80271A84  38 61 00 08 */	addi r3, r1, 8
/* 80271A88  4B FF F9 E1 */	bl __ct__7cSPolarFRC4cXyz
/* 80271A8C  38 61 00 08 */	addi r3, r1, 8
/* 80271A90  7F E4 FB 78 */	mr r4, r31
/* 80271A94  4B FF FD 21 */	bl Globe__7cSPolarCFP7cSGlobe
/* 80271A98  7F E3 FB 78 */	mr r3, r31
/* 80271A9C  4B FF FE 15 */	bl Formal__7cSGlobeFv
/* 80271AA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80271AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80271AA8  7C 08 03 A6 */	mtlr r0
/* 80271AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80271AB0  4E 80 00 20 */	blr 
