lbl_8005733C:
/* 8005733C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057340  7C 08 02 A6 */	mflr r0
/* 80057344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057348  7C 64 1B 78 */	mr r4, r3
/* 8005734C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80057350  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80057354  80 63 0E D0 */	lwz r3, 0xed0(r3)
/* 80057358  4B FF F7 F1 */	bl dKyw_setDrawPacketListSky__FP9J3DPacketi
/* 8005735C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057360  7C 08 03 A6 */	mtlr r0
/* 80057364  38 21 00 10 */	addi r1, r1, 0x10
/* 80057368  4E 80 00 20 */	blr 
