lbl_800572E8:
/* 800572E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800572EC  7C 08 02 A6 */	mflr r0
/* 800572F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800572F4  7C 64 1B 78 */	mr r4, r3
/* 800572F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800572FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80057300  80 63 0E C0 */	lwz r3, 0xec0(r3)
/* 80057304  4B FF F7 F5 */	bl dKyw_setDrawPacketListIndScreen__FP9J3DPacketi
/* 80057308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005730C  7C 08 03 A6 */	mtlr r0
/* 80057310  38 21 00 10 */	addi r1, r1, 0x10
/* 80057314  4E 80 00 20 */	blr 
