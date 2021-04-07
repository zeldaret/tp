lbl_8034FE44:
/* 8034FE44  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006C00@ha */
/* 8034FE48  80 03 6C 00 */	lwz r0, 0x6C00(r3)  /* 0xCC006C00@l */
/* 8034FE4C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8034FE50  4E 80 00 20 */	blr 
