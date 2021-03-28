lbl_80057198:
/* 80057198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005719C  7C 08 02 A6 */	mflr r0
/* 800571A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800571A4  7C 64 1B 78 */	mr r4, r3
/* 800571A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800571AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800571B0  80 63 0E 84 */	lwz r3, 0xe84(r3)
/* 800571B4  4B FF F8 F5 */	bl dKyw_setDrawPacketList__FP9J3DPacketi
/* 800571B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800571BC  7C 08 03 A6 */	mtlr r0
/* 800571C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800571C4  4E 80 00 20 */	blr 
