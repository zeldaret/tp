lbl_802EA164:
/* 802EA164  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EA168  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EA16C  4E 80 00 20 */	blr 
