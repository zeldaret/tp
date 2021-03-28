lbl_80CB01E0:
/* 80CB01E0  3C 80 80 CB */	lis r4, l_shake_data@ha
/* 80CB01E4  38 84 0A 38 */	addi r4, r4, l_shake_data@l
/* 80CB01E8  88 04 00 0C */	lbz r0, 0xc(r4)
/* 80CB01EC  98 03 07 42 */	stb r0, 0x742(r3)
/* 80CB01F0  88 04 00 0D */	lbz r0, 0xd(r4)
/* 80CB01F4  98 03 07 43 */	stb r0, 0x743(r3)
/* 80CB01F8  A8 04 00 0E */	lha r0, 0xe(r4)
/* 80CB01FC  B0 03 07 44 */	sth r0, 0x744(r3)
/* 80CB0200  A8 04 00 10 */	lha r0, 0x10(r4)
/* 80CB0204  B0 03 07 46 */	sth r0, 0x746(r3)
/* 80CB0208  A8 04 00 12 */	lha r0, 0x12(r4)
/* 80CB020C  B0 03 07 48 */	sth r0, 0x748(r3)
/* 80CB0210  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80CB0214  B0 03 07 4A */	sth r0, 0x74a(r3)
/* 80CB0218  A8 04 00 16 */	lha r0, 0x16(r4)
/* 80CB021C  B0 03 07 4C */	sth r0, 0x74c(r3)
/* 80CB0220  A8 03 07 44 */	lha r0, 0x744(r3)
/* 80CB0224  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80CB0228  4E 80 00 20 */	blr 
