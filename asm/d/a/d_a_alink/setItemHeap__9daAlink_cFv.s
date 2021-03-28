lbl_800A3C8C:
/* 800A3C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A3C90  7C 08 02 A6 */	mflr r0
/* 800A3C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A3C98  7C 64 1B 78 */	mr r4, r3
/* 800A3C9C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800A3CA0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800A3CA4  40 82 00 1C */	bne lbl_800A3CC0
/* 800A3CA8  88 04 2F A0 */	lbz r0, 0x2fa0(r4)
/* 800A3CAC  68 00 00 01 */	xori r0, r0, 1
/* 800A3CB0  98 04 2F A0 */	stb r0, 0x2fa0(r4)
/* 800A3CB4  80 04 05 80 */	lwz r0, 0x580(r4)
/* 800A3CB8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A3CBC  90 04 05 80 */	stw r0, 0x580(r4)
lbl_800A3CC0:
/* 800A3CC0  88 04 2F A0 */	lbz r0, 0x2fa0(r4)
/* 800A3CC4  1C 60 00 14 */	mulli r3, r0, 0x14
/* 800A3CC8  38 63 21 B0 */	addi r3, r3, 0x21b0
/* 800A3CCC  7C 64 1A 14 */	add r3, r4, r3
/* 800A3CD0  48 0B B4 99 */	bl setAnimeHeap__14daPy_anmHeap_cFv
/* 800A3CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A3CD8  7C 08 03 A6 */	mtlr r0
/* 800A3CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800A3CE0  4E 80 00 20 */	blr 
