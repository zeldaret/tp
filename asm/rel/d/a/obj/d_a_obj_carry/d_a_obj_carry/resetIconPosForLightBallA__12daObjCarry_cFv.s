lbl_80471680:
/* 80471680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80471684  7C 08 02 A6 */	mflr r0
/* 80471688  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047168C  3C 80 80 48 */	lis r4, l_cyl_info@ha /* 0x8047990C@ha */
/* 80471690  38 84 99 0C */	addi r4, r4, l_cyl_info@l /* 0x8047990C@l */
/* 80471694  C0 04 0A 48 */	lfs f0, 0xa48(r4)
/* 80471698  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047169C  C0 04 0A AC */	lfs f0, 0xaac(r4)
/* 804716A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804716A4  C0 04 0A E0 */	lfs f0, 0xae0(r4)
/* 804716A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804716AC  A0 03 0D 16 */	lhz r0, 0xd16(r3)
/* 804716B0  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 804716B4  38 80 00 0C */	li r4, 0xc
/* 804716B8  38 A1 00 08 */	addi r5, r1, 8
/* 804716BC  38 C0 00 33 */	li r6, 0x33
/* 804716C0  4B C2 AD 0D */	bl setPosition__7dTres_cFiUcPC3Veci
/* 804716C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804716C8  7C 08 03 A6 */	mtlr r0
/* 804716CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804716D0  4E 80 00 20 */	blr 
