lbl_80490D2C:
/* 80490D2C  3C 80 80 49 */	lis r4, l_cull_size_box@ha /* 0x804961D4@ha */
/* 80490D30  38 C4 61 D4 */	addi r6, r4, l_cull_size_box@l /* 0x804961D4@l */
/* 80490D34  3C 80 80 49 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80496880@ha */
/* 80490D38  38 04 68 80 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80496880@l */
/* 80490D3C  90 03 00 00 */	stw r0, 0(r3)
/* 80490D40  3C 80 80 49 */	lis r4, __vt__12daTbox_HIO_c@ha /* 0x80496874@ha */
/* 80490D44  38 04 68 74 */	addi r0, r4, __vt__12daTbox_HIO_c@l /* 0x80496874@l */
/* 80490D48  90 03 00 00 */	stw r0, 0(r3)
/* 80490D4C  38 00 00 01 */	li r0, 1
/* 80490D50  98 03 00 04 */	stb r0, 4(r3)
/* 80490D54  38 A0 00 00 */	li r5, 0
/* 80490D58  98 A3 00 05 */	stb r5, 5(r3)
/* 80490D5C  C0 06 00 54 */	lfs f0, 0x54(r6)
/* 80490D60  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80490D64  98 A3 00 07 */	stb r5, 7(r3)
/* 80490D68  98 A3 00 09 */	stb r5, 9(r3)
/* 80490D6C  98 A3 00 0A */	stb r5, 0xa(r3)
/* 80490D70  98 A3 00 06 */	stb r5, 6(r3)
/* 80490D74  98 A3 00 0B */	stb r5, 0xb(r3)
/* 80490D78  98 A3 00 08 */	stb r5, 8(r3)
/* 80490D7C  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 80490D80  B0 A3 00 1E */	sth r5, 0x1e(r3)
/* 80490D84  B0 A3 00 20 */	sth r5, 0x20(r3)
/* 80490D88  3C 80 80 49 */	lis r4, l_light_offset@ha /* 0x804968E4@ha */
/* 80490D8C  C4 04 68 E4 */	lfsu f0, l_light_offset@l(r4)  /* 0x804968E4@l */
/* 80490D90  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80490D94  C0 04 00 04 */	lfs f0, 4(r4)
/* 80490D98  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80490D9C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80490DA0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80490DA4  C0 06 00 58 */	lfs f0, 0x58(r6)
/* 80490DA8  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80490DAC  C0 06 00 5C */	lfs f0, 0x5c(r6)
/* 80490DB0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80490DB4  38 00 1D 4C */	li r0, 0x1d4c
/* 80490DB8  B0 03 00 30 */	sth r0, 0x30(r3)
/* 80490DBC  C0 06 00 60 */	lfs f0, 0x60(r6)
/* 80490DC0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80490DC4  98 A3 00 32 */	stb r5, 0x32(r3)
/* 80490DC8  4E 80 00 20 */	blr 
