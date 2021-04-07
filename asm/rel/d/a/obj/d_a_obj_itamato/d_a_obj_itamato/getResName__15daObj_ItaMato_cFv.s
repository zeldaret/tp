lbl_80C2A620:
/* 80C2A620  3C 60 80 C3 */	lis r3, l_resName@ha /* 0x80C2AC74@ha */
/* 80C2A624  38 63 AC 74 */	addi r3, r3, l_resName@l /* 0x80C2AC74@l */
/* 80C2A628  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2A62C  4E 80 00 20 */	blr 
