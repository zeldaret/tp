lbl_801B071C:
/* 801B071C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B0720  7C 08 02 A6 */	mflr r0
/* 801B0724  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B0728  48 02 96 25 */	bl getGetInsectNum__14dMenu_Insect_cFv
/* 801B072C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801B0730  30 03 FF FF */	addic r0, r3, -1
/* 801B0734  7C 00 19 10 */	subfe r0, r0, r3
/* 801B0738  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801B073C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B0740  7C 08 03 A6 */	mtlr r0
/* 801B0744  38 21 00 10 */	addi r1, r1, 0x10
/* 801B0748  4E 80 00 20 */	blr 
