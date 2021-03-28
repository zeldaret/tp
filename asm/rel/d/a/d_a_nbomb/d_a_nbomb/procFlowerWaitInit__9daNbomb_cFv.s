lbl_804CA268:
/* 804CA268  3C 80 80 4D */	lis r4, lit_5886@ha
/* 804CA26C  38 A4 C5 60 */	addi r5, r4, lit_5886@l
/* 804CA270  80 85 00 00 */	lwz r4, 0(r5)
/* 804CA274  80 05 00 04 */	lwz r0, 4(r5)
/* 804CA278  90 83 0C 38 */	stw r4, 0xc38(r3)
/* 804CA27C  90 03 0C 3C */	stw r0, 0xc3c(r3)
/* 804CA280  80 05 00 08 */	lwz r0, 8(r5)
/* 804CA284  90 03 0C 40 */	stw r0, 0xc40(r3)
/* 804CA288  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 804CA28C  60 00 00 01 */	ori r0, r0, 1
/* 804CA290  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 804CA294  80 03 07 E4 */	lwz r0, 0x7e4(r3)
/* 804CA298  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804CA29C  90 03 07 E4 */	stw r0, 0x7e4(r3)
/* 804CA2A0  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 804CA2A4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804CA2A8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 804CA2AC  3C 80 80 4D */	lis r4, lit_5458@ha
/* 804CA2B0  C0 04 C4 74 */	lfs f0, lit_5458@l(r4)
/* 804CA2B4  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 804CA2B8  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 804CA2BC  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 804CA2C0  38 00 00 FE */	li r0, 0xfe
/* 804CA2C4  98 03 07 A4 */	stb r0, 0x7a4(r3)
/* 804CA2C8  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804CA2CC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 804CA2D0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 804CA2D4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 804CA2D8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 804CA2DC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 804CA2E0  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 804CA2E4  38 60 00 01 */	li r3, 1
/* 804CA2E8  4E 80 00 20 */	blr 
