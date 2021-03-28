lbl_80057390:
/* 80057390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057394  7C 08 02 A6 */	mflr r0
/* 80057398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005739C  7C 64 1B 78 */	mr r4, r3
/* 800573A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800573A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800573A8  80 63 0F 1C */	lwz r3, 0xf1c(r3)
/* 800573AC  4B FF F7 9D */	bl dKyw_setDrawPacketListSky__FP9J3DPacketi
/* 800573B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800573B4  7C 08 03 A6 */	mtlr r0
/* 800573B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800573BC  4E 80 00 20 */	blr 
