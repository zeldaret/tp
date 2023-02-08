lbl_8024B4A4:
/* 8024B4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B4A8  7C 08 02 A6 */	mflr r0
/* 8024B4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B4B0  4B DE 62 69 */	bl daNpcKakashi_getSwdTutorialResult__Fv
/* 8024B4B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024B4B8  7C 00 00 34 */	cntlzw r0, r0
/* 8024B4BC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8024B4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B4C4  7C 08 03 A6 */	mtlr r0
/* 8024B4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B4CC  4E 80 00 20 */	blr 
