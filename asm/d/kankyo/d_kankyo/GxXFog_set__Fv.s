lbl_801A87A0:
/* 801A87A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A87A4  7C 08 02 A6 */	mflr r0
/* 801A87A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A87AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A87B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A87B4  88 63 12 D0 */	lbz r3, 0x12d0(r3)
/* 801A87B8  4B EA E2 6D */	bl dKyd_xfog_table_set__FUc
/* 801A87BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A87C0  38 A3 CA 54 */	addi r5, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A87C4  88 65 12 CF */	lbz r3, 0x12cf(r5)
/* 801A87C8  A0 85 12 BC */	lhz r4, 0x12bc(r5)
/* 801A87CC  38 A5 10 AC */	addi r5, r5, 0x10ac
/* 801A87D0  48 1B 72 FD */	bl GXSetFogRangeAdj
/* 801A87D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A87D8  7C 08 03 A6 */	mtlr r0
/* 801A87DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A87E0  4E 80 00 20 */	blr 
