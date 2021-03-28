lbl_8054A888:
/* 8054A888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054A88C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054A890  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 8054A894  30 03 FF FF */	addic r0, r3, -1
/* 8054A898  7C 00 19 10 */	subfe r0, r0, r3
/* 8054A89C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8054A8A0  4E 80 00 20 */	blr 
