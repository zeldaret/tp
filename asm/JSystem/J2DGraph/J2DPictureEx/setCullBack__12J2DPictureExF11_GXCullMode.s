lbl_803069D8:
/* 803069D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803069DC  7C 08 02 A6 */	mflr r0
/* 803069E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803069E4  98 83 00 B1 */	stb r4, 0xb1(r3)
/* 803069E8  80 A3 01 50 */	lwz r5, 0x150(r3)
/* 803069EC  28 05 00 00 */	cmplwi r5, 0
/* 803069F0  41 82 00 08 */	beq lbl_803069F8
/* 803069F4  98 85 00 22 */	stb r4, 0x22(r5)
lbl_803069F8:
/* 803069F8  4B FF 0C 89 */	bl setCullBack__7J2DPaneF11_GXCullMode
/* 803069FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306A00  7C 08 03 A6 */	mtlr r0
/* 80306A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80306A08  4E 80 00 20 */	blr 
