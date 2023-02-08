lbl_8048FF8C:
/* 8048FF8C  3C 60 80 49 */	lis r3, l_resName@ha /* 0x804901C4@ha */
/* 8048FF90  38 63 01 C4 */	addi r3, r3, l_resName@l /* 0x804901C4@l */
/* 8048FF94  80 63 00 00 */	lwz r3, 0(r3)
/* 8048FF98  4E 80 00 20 */	blr 
