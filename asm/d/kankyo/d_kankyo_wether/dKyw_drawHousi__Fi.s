lbl_80057294:
/* 80057294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057298  7C 08 02 A6 */	mflr r0
/* 8005729C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800572A0  7C 64 1B 78 */	mr r4, r3
/* 800572A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800572A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800572AC  80 63 0E B0 */	lwz r3, 0xeb0(r3)
/* 800572B0  4B FF F7 F9 */	bl dKyw_setDrawPacketList__FP9J3DPacketi
/* 800572B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800572B8  7C 08 03 A6 */	mtlr r0
/* 800572BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800572C0  4E 80 00 20 */	blr 
