lbl_80D2DA58:
/* 80D2DA58  3C 80 80 D3 */	lis r4, lit_3746@ha /* 0x80D2E800@ha */
/* 80D2DA5C  C0 04 E8 00 */	lfs f0, lit_3746@l(r4)  /* 0x80D2E800@l */
/* 80D2DA60  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80D2DA64  38 00 00 01 */	li r0, 1
/* 80D2DA68  98 03 0B 78 */	stb r0, 0xb78(r3)
/* 80D2DA6C  38 00 00 06 */	li r0, 6
/* 80D2DA70  98 03 0B 00 */	stb r0, 0xb00(r3)
/* 80D2DA74  4E 80 00 20 */	blr 
