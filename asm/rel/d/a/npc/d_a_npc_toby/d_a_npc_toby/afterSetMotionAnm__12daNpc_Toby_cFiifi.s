lbl_80B20568:
/* 80B20568  2C 04 00 08 */	cmpwi r4, 8
/* 80B2056C  41 82 00 50 */	beq lbl_80B205BC
/* 80B20570  40 80 00 14 */	bge lbl_80B20584
/* 80B20574  2C 04 00 06 */	cmpwi r4, 6
/* 80B20578  41 82 00 18 */	beq lbl_80B20590
/* 80B2057C  40 80 00 2C */	bge lbl_80B205A8
/* 80B20580  48 00 00 64 */	b lbl_80B205E4
lbl_80B20584:
/* 80B20584  2C 04 00 0A */	cmpwi r4, 0xa
/* 80B20588  40 80 00 5C */	bge lbl_80B205E4
/* 80B2058C  48 00 00 40 */	b lbl_80B205CC
lbl_80B20590:
/* 80B20590  3C 80 80 B2 */	lis r4, lit_4159@ha
/* 80B20594  C0 04 4A AC */	lfs f0, lit_4159@l(r4)
/* 80B20598  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B2059C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80B205A0  D0 03 06 50 */	stfs f0, 0x650(r3)
/* 80B205A4  48 00 00 40 */	b lbl_80B205E4
lbl_80B205A8:
/* 80B205A8  3C 80 80 B2 */	lis r4, lit_4159@ha
/* 80B205AC  C0 04 4A AC */	lfs f0, lit_4159@l(r4)
/* 80B205B0  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B205B4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80B205B8  48 00 00 2C */	b lbl_80B205E4
lbl_80B205BC:
/* 80B205BC  C0 03 0F F8 */	lfs f0, 0xff8(r3)
/* 80B205C0  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B205C4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80B205C8  48 00 00 1C */	b lbl_80B205E4
lbl_80B205CC:
/* 80B205CC  80 03 0D 98 */	lwz r0, 0xd98(r3)
/* 80B205D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B205D4  90 03 0D 98 */	stw r0, 0xd98(r3)
/* 80B205D8  C0 03 0F F8 */	lfs f0, 0xff8(r3)
/* 80B205DC  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B205E0  D0 04 00 18 */	stfs f0, 0x18(r4)
lbl_80B205E4:
/* 80B205E4  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80B205E8  B0 03 0F FC */	sth r0, 0xffc(r3)
/* 80B205EC  38 60 00 01 */	li r3, 1
/* 80B205F0  4E 80 00 20 */	blr 
