lbl_80B9FEB0:
/* 80B9FEB0  28 04 00 00 */	cmplwi r4, 0
/* 80B9FEB4  41 82 00 0C */	beq lbl_80B9FEC0
/* 80B9FEB8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9FEBC  48 00 00 08 */	b lbl_80B9FEC4
lbl_80B9FEC0:
/* 80B9FEC0  38 00 FF FF */	li r0, -1
lbl_80B9FEC4:
/* 80B9FEC4  90 03 07 64 */	stw r0, 0x764(r3)
/* 80B9FEC8  38 00 00 01 */	li r0, 1
/* 80B9FECC  98 04 0D B7 */	stb r0, 0xdb7(r4)
/* 80B9FED0  98 04 0D B8 */	stb r0, 0xdb8(r4)
/* 80B9FED4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B9FED8  D0 04 04 D0 */	stfs f0, 0x4d0(r4)
/* 80B9FEDC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B9FEE0  D0 04 04 D4 */	stfs f0, 0x4d4(r4)
/* 80B9FEE4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B9FEE8  D0 04 04 D8 */	stfs f0, 0x4d8(r4)
/* 80B9FEEC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B9FEF0  D0 04 04 BC */	stfs f0, 0x4bc(r4)
/* 80B9FEF4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B9FEF8  D0 04 04 C0 */	stfs f0, 0x4c0(r4)
/* 80B9FEFC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B9FF00  D0 04 04 C4 */	stfs f0, 0x4c4(r4)
/* 80B9FF04  4E 80 00 20 */	blr 
