lbl_8036FB10:
/* 8036FB10  3C 60 80 45 */	lis r3, gTRKState@ha /* 0x8044F294@ha */
/* 8036FB14  38 63 F2 94 */	addi r3, r3, gTRKState@l /* 0x8044F294@l */
/* 8036FB18  80 63 00 98 */	lwz r3, 0x98(r3)
/* 8036FB1C  4E 80 00 20 */	blr 
