lbl_80057438:
/* 80057438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005743C  7C 08 02 A6 */	mflr r0
/* 80057440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057444  7C 64 1B 78 */	mr r4, r3
/* 80057448  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005744C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80057450  80 63 10 4C */	lwz r3, 0x104c(r3)
/* 80057454  4B FF F7 85 */	bl dKyw_setDrawPacketListXluBg__FP9J3DPacketi
/* 80057458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005745C  7C 08 03 A6 */	mtlr r0
/* 80057460  38 21 00 10 */	addi r1, r1, 0x10
/* 80057464  4E 80 00 20 */	blr 
