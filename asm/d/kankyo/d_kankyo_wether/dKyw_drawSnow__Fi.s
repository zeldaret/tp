lbl_800571EC:
/* 800571EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800571F0  7C 08 02 A6 */	mflr r0
/* 800571F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800571F8  7C 64 1B 78 */	mr r4, r3
/* 800571FC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80057200  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80057204  80 63 0E 94 */	lwz r3, 0xe94(r3)
/* 80057208  4B FF F8 A1 */	bl dKyw_setDrawPacketList__FP9J3DPacketi
/* 8005720C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057210  7C 08 03 A6 */	mtlr r0
/* 80057214  38 21 00 10 */	addi r1, r1, 0x10
/* 80057218  4E 80 00 20 */	blr 
