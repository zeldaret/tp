lbl_8072E37C:
/* 8072E37C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8072E380  7C 08 02 A6 */	mflr r0
/* 8072E384  90 01 00 44 */	stw r0, 0x44(r1)
/* 8072E388  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8072E38C  7C 7F 1B 78 */	mr r31, r3
/* 8072E390  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 8072E394  80 63 00 04 */	lwz r3, 4(r3)
/* 8072E398  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8072E39C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8072E3A0  C0 43 03 5C */	lfs f2, 0x35c(r3)
/* 8072E3A4  C0 23 03 4C */	lfs f1, 0x34c(r3)
/* 8072E3A8  C0 03 03 3C */	lfs f0, 0x33c(r3)
/* 8072E3AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8072E3B0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8072E3B4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8072E3B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072E3BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072E3C0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8072E3C4  38 00 00 FF */	li r0, 0xff
/* 8072E3C8  90 01 00 08 */	stw r0, 8(r1)
/* 8072E3CC  38 80 00 00 */	li r4, 0
/* 8072E3D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8072E3D4  38 00 FF FF */	li r0, -1
/* 8072E3D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072E3DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8072E3E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8072E3E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8072E3E8  80 9F 0E 68 */	lwz r4, 0xe68(r31)
/* 8072E3EC  38 A0 00 00 */	li r5, 0
/* 8072E3F0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000837B@ha */
/* 8072E3F4  38 C6 83 7B */	addi r6, r6, 0x837B /* 0x0000837B@l */
/* 8072E3F8  38 E1 00 20 */	addi r7, r1, 0x20
/* 8072E3FC  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8072E400  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8072E404  39 40 00 00 */	li r10, 0
/* 8072E408  3D 60 80 73 */	lis r11, lit_3913@ha
/* 8072E40C  C0 2B 5B 30 */	lfs f1, lit_3913@l(r11)
/* 8072E410  4B 91 F0 BC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8072E414  90 7F 0E 68 */	stw r3, 0xe68(r31)
/* 8072E418  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8072E41C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072E420  7C 08 03 A6 */	mtlr r0
/* 8072E424  38 21 00 40 */	addi r1, r1, 0x40
/* 8072E428  4E 80 00 20 */	blr 
