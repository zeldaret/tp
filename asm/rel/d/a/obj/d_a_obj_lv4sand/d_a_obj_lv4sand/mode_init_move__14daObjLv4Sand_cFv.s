lbl_80C6A01C:
/* 80C6A01C  3C 80 80 C7 */	lis r4, lit_3680@ha /* 0x80C6A3BC@ha */
/* 80C6A020  C0 04 A3 BC */	lfs f0, lit_3680@l(r4)  /* 0x80C6A3BC@l */
/* 80C6A024  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80C6A028  38 00 00 01 */	li r0, 1
/* 80C6A02C  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C6A030  4E 80 00 20 */	blr 
