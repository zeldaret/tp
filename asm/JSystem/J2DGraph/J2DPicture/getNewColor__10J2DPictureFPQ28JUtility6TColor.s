lbl_802FEC64:
/* 802FEC64  88 03 01 38 */	lbz r0, 0x138(r3)
/* 802FEC68  98 04 00 00 */	stb r0, 0(r4)
/* 802FEC6C  88 03 01 39 */	lbz r0, 0x139(r3)
/* 802FEC70  98 04 00 01 */	stb r0, 1(r4)
/* 802FEC74  88 03 01 3A */	lbz r0, 0x13a(r3)
/* 802FEC78  98 04 00 02 */	stb r0, 2(r4)
/* 802FEC7C  88 03 01 3B */	lbz r0, 0x13b(r3)
/* 802FEC80  98 04 00 03 */	stb r0, 3(r4)
/* 802FEC84  88 03 01 3C */	lbz r0, 0x13c(r3)
/* 802FEC88  98 04 00 04 */	stb r0, 4(r4)
/* 802FEC8C  88 03 01 3D */	lbz r0, 0x13d(r3)
/* 802FEC90  98 04 00 05 */	stb r0, 5(r4)
/* 802FEC94  88 03 01 3E */	lbz r0, 0x13e(r3)
/* 802FEC98  98 04 00 06 */	stb r0, 6(r4)
/* 802FEC9C  88 03 01 3F */	lbz r0, 0x13f(r3)
/* 802FECA0  98 04 00 07 */	stb r0, 7(r4)
/* 802FECA4  88 03 01 40 */	lbz r0, 0x140(r3)
/* 802FECA8  98 04 00 08 */	stb r0, 8(r4)
/* 802FECAC  88 03 01 41 */	lbz r0, 0x141(r3)
/* 802FECB0  98 04 00 09 */	stb r0, 9(r4)
/* 802FECB4  88 03 01 42 */	lbz r0, 0x142(r3)
/* 802FECB8  98 04 00 0A */	stb r0, 0xa(r4)
/* 802FECBC  88 03 01 43 */	lbz r0, 0x143(r3)
/* 802FECC0  98 04 00 0B */	stb r0, 0xb(r4)
/* 802FECC4  88 03 01 44 */	lbz r0, 0x144(r3)
/* 802FECC8  98 04 00 0C */	stb r0, 0xc(r4)
/* 802FECCC  88 03 01 45 */	lbz r0, 0x145(r3)
/* 802FECD0  98 04 00 0D */	stb r0, 0xd(r4)
/* 802FECD4  88 03 01 46 */	lbz r0, 0x146(r3)
/* 802FECD8  98 04 00 0E */	stb r0, 0xe(r4)
/* 802FECDC  88 03 01 47 */	lbz r0, 0x147(r3)
/* 802FECE0  98 04 00 0F */	stb r0, 0xf(r4)
/* 802FECE4  88 A3 00 B3 */	lbz r5, 0xb3(r3)
/* 802FECE8  28 05 00 FF */	cmplwi r5, 0xff
/* 802FECEC  4D 82 00 20 */	beqlr 
/* 802FECF0  88 04 00 03 */	lbz r0, 3(r4)
/* 802FECF4  7C 00 29 D6 */	mullw r0, r0, r5
/* 802FECF8  38 C0 00 FF */	li r6, 0xff
/* 802FECFC  7C 00 33 D6 */	divw r0, r0, r6
/* 802FED00  98 04 00 03 */	stb r0, 3(r4)
/* 802FED04  88 A4 00 07 */	lbz r5, 7(r4)
/* 802FED08  88 03 00 B3 */	lbz r0, 0xb3(r3)
/* 802FED0C  7C 05 01 D6 */	mullw r0, r5, r0
/* 802FED10  7C 00 33 D6 */	divw r0, r0, r6
/* 802FED14  98 04 00 07 */	stb r0, 7(r4)
/* 802FED18  88 A4 00 0B */	lbz r5, 0xb(r4)
/* 802FED1C  88 03 00 B3 */	lbz r0, 0xb3(r3)
/* 802FED20  7C 05 01 D6 */	mullw r0, r5, r0
/* 802FED24  7C 00 33 D6 */	divw r0, r0, r6
/* 802FED28  98 04 00 0B */	stb r0, 0xb(r4)
/* 802FED2C  88 A4 00 0F */	lbz r5, 0xf(r4)
/* 802FED30  88 03 00 B3 */	lbz r0, 0xb3(r3)
/* 802FED34  7C 05 01 D6 */	mullw r0, r5, r0
/* 802FED38  7C 00 33 D6 */	divw r0, r0, r6
/* 802FED3C  98 04 00 0F */	stb r0, 0xf(r4)
/* 802FED40  4E 80 00 20 */	blr 
