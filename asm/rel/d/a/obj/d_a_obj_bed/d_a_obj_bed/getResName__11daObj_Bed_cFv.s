lbl_80BADEE0:
/* 80BADEE0  3C 60 80 BB */	lis r3, l_resName@ha /* 0x80BAE198@ha */
/* 80BADEE4  38 63 E1 98 */	addi r3, r3, l_resName@l /* 0x80BAE198@l */
/* 80BADEE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BADEEC  4E 80 00 20 */	blr 
