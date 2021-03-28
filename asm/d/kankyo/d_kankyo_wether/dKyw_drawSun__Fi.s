lbl_800570DC:
/* 800570DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800570E0  7C 08 02 A6 */	mflr r0
/* 800570E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800570E8  7C 64 1B 78 */	mr r4, r3
/* 800570EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800570F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800570F4  80 63 0E 74 */	lwz r3, 0xe74(r3)
/* 800570F8  4B FF FA 51 */	bl dKyw_setDrawPacketListSky__FP9J3DPacketi
/* 800570FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057100  7C 08 03 A6 */	mtlr r0
/* 80057104  38 21 00 10 */	addi r1, r1, 0x10
/* 80057108  4E 80 00 20 */	blr 
