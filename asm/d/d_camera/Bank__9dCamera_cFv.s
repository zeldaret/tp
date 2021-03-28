lbl_801829AC:
/* 801829AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801829B0  7C 08 02 A6 */	mflr r0
/* 801829B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801829B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801829BC  7C 85 23 78 */	mr r5, r4
/* 801829C0  38 85 00 54 */	addi r4, r5, 0x54
/* 801829C4  38 A5 06 F8 */	addi r5, r5, 0x6f8
/* 801829C8  48 0E E7 AD */	bl __pl__7cSAngleCFRC7cSAngle
/* 801829CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801829D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801829D4  7C 08 03 A6 */	mtlr r0
/* 801829D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801829DC  4E 80 00 20 */	blr 
