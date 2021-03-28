lbl_8005748C:
/* 8005748C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057490  7C 08 02 A6 */	mflr r0
/* 80057494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057498  7C 64 1B 78 */	mr r4, r3
/* 8005749C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800574A0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800574A4  80 63 10 58 */	lwz r3, 0x1058(r3)
/* 800574A8  4B FF F7 31 */	bl dKyw_setDrawPacketListXluBg__FP9J3DPacketi
/* 800574AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800574B0  7C 08 03 A6 */	mtlr r0
/* 800574B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800574B8  4E 80 00 20 */	blr 
