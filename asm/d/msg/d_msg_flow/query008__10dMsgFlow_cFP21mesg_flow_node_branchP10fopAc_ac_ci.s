lbl_8024B45C:
/* 8024B45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B460  7C 08 02 A6 */	mflr r0
/* 8024B464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024B46C  A3 E4 00 04 */	lhz r31, 4(r4)
/* 8024B470  4B DE 62 71 */	bl daNpcKakashi_getSwdTutorialStep__Fv
/* 8024B474  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8024B478  38 63 FF FF */	addi r3, r3, -1
/* 8024B47C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8024B480  7C 60 18 50 */	subf r3, r0, r3
/* 8024B484  30 03 FF FF */	addic r0, r3, -1
/* 8024B488  7C 00 19 10 */	subfe r0, r0, r3
/* 8024B48C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024B490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024B494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B498  7C 08 03 A6 */	mtlr r0
/* 8024B49C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B4A0  4E 80 00 20 */	blr 
