lbl_80C67B28:
/* 80C67B28  3C 80 80 C6 */	lis r4, lit_3704@ha
/* 80C67B2C  C0 04 7D 80 */	lfs f0, lit_3704@l(r4)
/* 80C67B30  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80C67B34  38 00 00 01 */	li r0, 1
/* 80C67B38  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 80C67B3C  4E 80 00 20 */	blr 
