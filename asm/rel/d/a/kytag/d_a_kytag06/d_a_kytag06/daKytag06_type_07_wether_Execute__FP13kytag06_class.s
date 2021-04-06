lbl_808586C4:
/* 808586C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808586C8  7C 08 02 A6 */	mflr r0
/* 808586CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808586D0  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 808586D4  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 808586D8  88 84 12 CC */	lbz r4, 0x12cc(r4)
/* 808586DC  4B FF FD D9 */	bl daKytag06_wether_proc__FP13kytag06_classUc
/* 808586E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808586E4  7C 08 03 A6 */	mtlr r0
/* 808586E8  38 21 00 10 */	addi r1, r1, 0x10
/* 808586EC  4E 80 00 20 */	blr 
