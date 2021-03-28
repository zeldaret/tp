lbl_80057240:
/* 80057240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057244  7C 08 02 A6 */	mflr r0
/* 80057248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005724C  7C 64 1B 78 */	mr r4, r3
/* 80057250  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80057254  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80057258  80 63 0E A4 */	lwz r3, 0xea4(r3)
/* 8005725C  4B FF F8 ED */	bl dKyw_setDrawPacketListSky__FP9J3DPacketi
/* 80057260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057264  7C 08 03 A6 */	mtlr r0
/* 80057268  38 21 00 10 */	addi r1, r1, 0x10
/* 8005726C  4E 80 00 20 */	blr 
