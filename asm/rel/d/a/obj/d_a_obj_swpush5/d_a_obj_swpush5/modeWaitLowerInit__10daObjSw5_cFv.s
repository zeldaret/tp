lbl_8059C0A0:
/* 8059C0A0  3C 80 80 5A */	lis r4, lit_3719@ha /* 0x8059C6B0@ha */
/* 8059C0A4  C0 04 C6 B0 */	lfs f0, lit_3719@l(r4)  /* 0x8059C6B0@l */
/* 8059C0A8  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 8059C0AC  3C 80 80 5A */	lis r4, lit_3988@ha /* 0x8059C6C4@ha */
/* 8059C0B0  C0 04 C6 C4 */	lfs f0, lit_3988@l(r4)  /* 0x8059C6C4@l */
/* 8059C0B4  D0 03 05 F8 */	stfs f0, 0x5f8(r3)
/* 8059C0B8  D0 03 05 FC */	stfs f0, 0x5fc(r3)
/* 8059C0BC  38 00 00 00 */	li r0, 0
/* 8059C0C0  98 03 05 EE */	stb r0, 0x5ee(r3)
/* 8059C0C4  4E 80 00 20 */	blr 
