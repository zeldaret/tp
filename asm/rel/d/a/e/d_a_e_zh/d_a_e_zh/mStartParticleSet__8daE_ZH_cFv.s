lbl_8082A390:
/* 8082A390  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8082A394  7C 08 02 A6 */	mflr r0
/* 8082A398  90 01 00 54 */	stw r0, 0x54(r1)
/* 8082A39C  39 61 00 50 */	addi r11, r1, 0x50
/* 8082A3A0  4B B3 7E 2D */	bl _savegpr_25
/* 8082A3A4  7C 7D 1B 78 */	mr r29, r3
/* 8082A3A8  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 8082A3AC  3B E3 F2 08 */	addi r31, r3, lit_3778@l /* 0x8082F208@l */
/* 8082A3B0  3B C0 00 00 */	li r30, 0
/* 8082A3B4  3B 80 00 00 */	li r28, 0
/* 8082A3B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082A3BC  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8082A3C0:
/* 8082A3C0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8082A3C4  38 80 00 00 */	li r4, 0
/* 8082A3C8  90 81 00 08 */	stw r4, 8(r1)
/* 8082A3CC  38 00 FF FF */	li r0, -1
/* 8082A3D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082A3D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8082A3D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8082A3DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8082A3E0  38 80 00 00 */	li r4, 0
/* 8082A3E4  3B 3F 00 80 */	addi r25, r31, 0x80
/* 8082A3E8  7F 39 E2 14 */	add r25, r25, r28
/* 8082A3EC  A0 B9 00 00 */	lhz r5, 0(r25)
/* 8082A3F0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8082A3F4  38 E0 00 00 */	li r7, 0
/* 8082A3F8  39 00 00 00 */	li r8, 0
/* 8082A3FC  39 20 00 00 */	li r9, 0
/* 8082A400  39 40 00 FF */	li r10, 0xff
/* 8082A404  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8082A408  4B 82 26 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8082A40C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8082A410  41 82 00 40 */	beq lbl_8082A450
/* 8082A414  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8082A418  80 63 00 04 */	lwz r3, 4(r3)
/* 8082A41C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8082A420  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082A424  80 19 00 04 */	lwz r0, 4(r25)
/* 8082A428  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8082A42C  7C 63 02 14 */	add r3, r3, r0
/* 8082A430  38 9B 00 68 */	addi r4, r27, 0x68
/* 8082A434  38 BB 00 98 */	addi r5, r27, 0x98
/* 8082A438  38 DB 00 A4 */	addi r6, r27, 0xa4
/* 8082A43C  4B A5 63 CD */	bl func_80280808
/* 8082A440  C0 3B 00 9C */	lfs f1, 0x9c(r27)
/* 8082A444  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 8082A448  D0 1B 00 B0 */	stfs f0, 0xb0(r27)
/* 8082A44C  D0 3B 00 B4 */	stfs f1, 0xb4(r27)
lbl_8082A450:
/* 8082A450  3B DE 00 01 */	addi r30, r30, 1
/* 8082A454  2C 1E 00 0B */	cmpwi r30, 0xb
/* 8082A458  3B 9C 00 08 */	addi r28, r28, 8
/* 8082A45C  41 80 FF 64 */	blt lbl_8082A3C0
/* 8082A460  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8082A464  60 00 00 04 */	ori r0, r0, 4
/* 8082A468  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8082A46C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070455@ha */
/* 8082A470  38 03 04 55 */	addi r0, r3, 0x0455 /* 0x00070455@l */
/* 8082A474  90 01 00 20 */	stw r0, 0x20(r1)
/* 8082A478  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8082A47C  38 81 00 20 */	addi r4, r1, 0x20
/* 8082A480  38 A0 00 00 */	li r5, 0
/* 8082A484  38 C0 FF FF */	li r6, -1
/* 8082A488  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8082A48C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082A490  7D 89 03 A6 */	mtctr r12
/* 8082A494  4E 80 04 21 */	bctrl 
/* 8082A498  7F A3 EB 78 */	mr r3, r29
/* 8082A49C  38 80 00 0E */	li r4, 0xe
/* 8082A4A0  38 A0 00 00 */	li r5, 0
/* 8082A4A4  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082A4A8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082A4AC  4B FF EE FD */	bl setBck__8daE_ZH_cFiUcff
/* 8082A4B0  39 61 00 50 */	addi r11, r1, 0x50
/* 8082A4B4  4B B3 7D 65 */	bl _restgpr_25
/* 8082A4B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8082A4BC  7C 08 03 A6 */	mtlr r0
/* 8082A4C0  38 21 00 50 */	addi r1, r1, 0x50
/* 8082A4C4  4E 80 00 20 */	blr 
