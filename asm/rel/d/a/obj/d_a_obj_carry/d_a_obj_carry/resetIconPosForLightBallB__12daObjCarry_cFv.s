lbl_80471894:
/* 80471894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80471898  7C 08 02 A6 */	mflr r0
/* 8047189C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804718A0  3C 80 80 48 */	lis r4, l_cyl_info@ha
/* 804718A4  38 84 99 0C */	addi r4, r4, l_cyl_info@l
/* 804718A8  C0 04 0A 48 */	lfs f0, 0xa48(r4)
/* 804718AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804718B0  C0 04 0A AC */	lfs f0, 0xaac(r4)
/* 804718B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804718B8  C0 04 0A E0 */	lfs f0, 0xae0(r4)
/* 804718BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804718C0  A0 03 0D 16 */	lhz r0, 0xd16(r3)
/* 804718C4  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 804718C8  38 80 00 0C */	li r4, 0xc
/* 804718CC  38 A1 00 08 */	addi r5, r1, 8
/* 804718D0  38 C0 00 34 */	li r6, 0x34
/* 804718D4  4B C2 AA F8 */	b setPosition__7dTres_cFiUcPC3Veci
/* 804718D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804718DC  7C 08 03 A6 */	mtlr r0
/* 804718E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804718E4  4E 80 00 20 */	blr 
