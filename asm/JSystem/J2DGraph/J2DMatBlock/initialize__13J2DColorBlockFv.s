lbl_802EB394:
/* 802EB394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB398  38 80 00 00 */	li r4, 0
/* 802EB39C  81 02 C7 7C */	lwz r8, j2dDefaultColInfo(r2)
/* 802EB3A0  38 00 00 02 */	li r0, 2
/* 802EB3A4  7C 09 03 A6 */	mtctr r0
lbl_802EB3A8:
/* 802EB3A8  91 01 00 08 */	stw r8, 8(r1)
/* 802EB3AC  88 E1 00 08 */	lbz r7, 8(r1)
/* 802EB3B0  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802EB3B4  88 C1 00 09 */	lbz r6, 9(r1)
/* 802EB3B8  98 C1 00 0D */	stb r6, 0xd(r1)
/* 802EB3BC  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 802EB3C0  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802EB3C4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802EB3C8  98 01 00 0F */	stb r0, 0xf(r1)
/* 802EB3CC  7D 23 22 14 */	add r9, r3, r4
/* 802EB3D0  98 E9 00 00 */	stb r7, 0(r9)
/* 802EB3D4  98 C9 00 01 */	stb r6, 1(r9)
/* 802EB3D8  98 A9 00 02 */	stb r5, 2(r9)
/* 802EB3DC  98 09 00 03 */	stb r0, 3(r9)
/* 802EB3E0  38 84 00 04 */	addi r4, r4, 4
/* 802EB3E4  42 00 FF C4 */	bdnz lbl_802EB3A8
/* 802EB3E8  38 00 00 02 */	li r0, 2
/* 802EB3EC  98 03 00 08 */	stb r0, 8(r3)
/* 802EB3F0  38 80 00 00 */	li r4, 0
/* 802EB3F4  38 C2 C7 A8 */	la r6, j2dDefaultColorChanInfo(r2) /* 804561A8-_SDA2_BASE_ */
/* 802EB3F8  38 00 00 04 */	li r0, 4
/* 802EB3FC  7C 09 03 A6 */	mtctr r0
lbl_802EB400:
/* 802EB400  88 A6 00 01 */	lbz r5, 1(r6)
/* 802EB404  38 04 00 0A */	addi r0, r4, 0xa
/* 802EB408  7C A3 03 2E */	sthx r5, r3, r0
/* 802EB40C  38 84 00 02 */	addi r4, r4, 2
/* 802EB410  42 00 FF F0 */	bdnz lbl_802EB400
/* 802EB414  38 00 00 00 */	li r0, 0
/* 802EB418  98 03 00 12 */	stb r0, 0x12(r3)
/* 802EB41C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB420  4E 80 00 20 */	blr 
