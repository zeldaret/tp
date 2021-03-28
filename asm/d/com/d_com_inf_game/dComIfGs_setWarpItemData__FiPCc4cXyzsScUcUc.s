lbl_8002F0E0:
/* 8002F0E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002F0E4  7C 08 02 A6 */	mflr r0
/* 8002F0E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002F0EC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8002F0F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8002F0F4  C0 05 00 04 */	lfs f0, 4(r5)
/* 8002F0F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8002F0FC  C0 05 00 08 */	lfs f0, 8(r5)
/* 8002F100  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8002F104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F10C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8002F110  38 A1 00 08 */	addi r5, r1, 8
/* 8002F114  48 00 00 15 */	bl setWarpItemData__14dComIfG_play_cFPCc4cXyzsScUcUc
/* 8002F118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002F11C  7C 08 03 A6 */	mtlr r0
/* 8002F120  38 21 00 20 */	addi r1, r1, 0x20
/* 8002F124  4E 80 00 20 */	blr 
