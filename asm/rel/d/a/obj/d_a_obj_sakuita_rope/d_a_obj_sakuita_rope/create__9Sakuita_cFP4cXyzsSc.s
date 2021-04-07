lbl_80CC527C:
/* 80CC527C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5280  7C 08 02 A6 */	mflr r0
/* 80CC5284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC528C  7C 7F 1B 78 */	mr r31, r3
/* 80CC5290  90 83 00 04 */	stw r4, 4(r3)
/* 80CC5294  B0 A3 00 36 */	sth r5, 0x36(r3)
/* 80CC5298  98 C3 00 3A */	stb r6, 0x3a(r3)
/* 80CC529C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80CC52A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CC52A4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CC52A8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CC52AC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CC52B0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80CC52B4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80CC52B8  3C 80 80 CC */	lis r4, lit_3634@ha /* 0x80CC6904@ha */
/* 80CC52BC  C0 04 69 04 */	lfs f0, lit_3634@l(r4)  /* 0x80CC6904@l */
/* 80CC52C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CC52C4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CC52C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CC52CC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80CC52D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CC52D4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CC52D8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80CC52DC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CC52E0  3C 80 80 CC */	lis r4, lit_3635@ha /* 0x80CC6908@ha */
/* 80CC52E4  C0 04 69 08 */	lfs f0, lit_3635@l(r4)  /* 0x80CC6908@l */
/* 80CC52E8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CC52EC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80CC52F0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80CC52F4  48 00 04 2D */	bl calcAngle__9Sakuita_cFv
/* 80CC52F8  7F E3 FB 78 */	mr r3, r31
/* 80CC52FC  48 00 00 95 */	bl initBaseMtx__9Sakuita_cFv
/* 80CC5300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC5304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5308  7C 08 03 A6 */	mtlr r0
/* 80CC530C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5310  4E 80 00 20 */	blr 
