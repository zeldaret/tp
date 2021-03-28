lbl_80B9D9BC:
/* 80B9D9BC  88 03 09 8C */	lbz r0, 0x98c(r3)
/* 80B9D9C0  28 00 00 00 */	cmplwi r0, 0
/* 80B9D9C4  40 82 00 10 */	bne lbl_80B9D9D4
/* 80B9D9C8  A8 03 04 E8 */	lha r0, 0x4e8(r3)
/* 80B9D9CC  98 03 07 44 */	stb r0, 0x744(r3)
/* 80B9D9D0  48 00 00 14 */	b lbl_80B9D9E4
lbl_80B9D9D4:
/* 80B9D9D4  3C 80 80 BA */	lis r4, l_HIO@ha
/* 80B9D9D8  38 84 EB A4 */	addi r4, r4, l_HIO@l
/* 80B9D9DC  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80B9D9E0  98 03 07 44 */	stb r0, 0x744(r3)
lbl_80B9D9E4:
/* 80B9D9E4  3C 80 80 BA */	lis r4, l_HIO@ha
/* 80B9D9E8  38 84 EB A4 */	addi r4, r4, l_HIO@l
/* 80B9D9EC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B9D9F0  D0 03 07 4C */	stfs f0, 0x74c(r3)
/* 80B9D9F4  38 00 00 01 */	li r0, 1
/* 80B9D9F8  98 03 05 C8 */	stb r0, 0x5c8(r3)
/* 80B9D9FC  4E 80 00 20 */	blr 
