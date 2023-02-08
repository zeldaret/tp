lbl_80599B5C:
/* 80599B5C  3C 60 80 5A */	lis r3, l_resName@ha /* 0x80599EB0@ha */
/* 80599B60  38 63 9E B0 */	addi r3, r3, l_resName@l /* 0x80599EB0@l */
/* 80599B64  80 63 00 00 */	lwz r3, 0(r3)
/* 80599B68  4E 80 00 20 */	blr 
