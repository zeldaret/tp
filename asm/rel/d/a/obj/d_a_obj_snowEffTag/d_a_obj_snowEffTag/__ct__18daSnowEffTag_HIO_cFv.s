lbl_80CDF0AC:
/* 80CDF0AC  3C 80 80 CE */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CDF7B4@ha */
/* 80CDF0B0  38 04 F7 B4 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CDF7B4@l */
/* 80CDF0B4  90 03 00 00 */	stw r0, 0(r3)
/* 80CDF0B8  3C 80 80 CE */	lis r4, __vt__18daSnowEffTag_HIO_c@ha /* 0x80CDF7A8@ha */
/* 80CDF0BC  38 04 F7 A8 */	addi r0, r4, __vt__18daSnowEffTag_HIO_c@l /* 0x80CDF7A8@l */
/* 80CDF0C0  90 03 00 00 */	stw r0, 0(r3)
/* 80CDF0C4  38 00 00 14 */	li r0, 0x14
/* 80CDF0C8  98 03 00 04 */	stb r0, 4(r3)
/* 80CDF0CC  38 00 00 00 */	li r0, 0
/* 80CDF0D0  98 03 00 05 */	stb r0, 5(r3)
/* 80CDF0D4  38 00 00 01 */	li r0, 1
/* 80CDF0D8  98 03 00 06 */	stb r0, 6(r3)
/* 80CDF0DC  98 03 00 07 */	stb r0, 7(r3)
/* 80CDF0E0  4E 80 00 20 */	blr 
