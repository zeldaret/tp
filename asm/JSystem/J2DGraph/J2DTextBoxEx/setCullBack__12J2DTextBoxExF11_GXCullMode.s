lbl_803087DC:
/* 803087DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803087E0  7C 08 02 A6 */	mflr r0
/* 803087E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803087E8  98 83 00 B1 */	stb r4, 0xb1(r3)
/* 803087EC  80 A3 01 38 */	lwz r5, 0x138(r3)
/* 803087F0  28 05 00 00 */	cmplwi r5, 0
/* 803087F4  41 82 00 08 */	beq lbl_803087FC
/* 803087F8  98 85 00 22 */	stb r4, 0x22(r5)
lbl_803087FC:
/* 803087FC  4B FE EE 85 */	bl setCullBack__7J2DPaneF11_GXCullMode
/* 80308800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308804  7C 08 03 A6 */	mtlr r0
/* 80308808  38 21 00 10 */	addi r1, r1, 0x10
/* 8030880C  4E 80 00 20 */	blr 
