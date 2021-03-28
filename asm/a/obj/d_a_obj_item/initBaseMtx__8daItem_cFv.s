lbl_8015B0C4:
/* 8015B0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B0C8  7C 08 02 A6 */	mflr r0
/* 8015B0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B0D0  80 83 05 74 */	lwz r4, 0x574(r3)
/* 8015B0D4  28 04 00 00 */	cmplwi r4, 0
/* 8015B0D8  41 82 00 20 */	beq lbl_8015B0F8
/* 8015B0DC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8015B0E0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8015B0E4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8015B0E8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8015B0EC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8015B0F0  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8015B0F4  48 00 00 15 */	bl setBaseMtx__8daItem_cFv
lbl_8015B0F8:
/* 8015B0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B0FC  7C 08 03 A6 */	mtlr r0
/* 8015B100  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B104  4E 80 00 20 */	blr 
