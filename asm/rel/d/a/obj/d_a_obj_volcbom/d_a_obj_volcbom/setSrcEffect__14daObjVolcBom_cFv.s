lbl_80D253FC:
/* 80D253FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D25400  7C 08 02 A6 */	mflr r0
/* 80D25404  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D25408  39 61 00 40 */	addi r11, r1, 0x40
/* 80D2540C  4B 63 CD C0 */	b _savegpr_25
/* 80D25410  7C 7D 1B 78 */	mr r29, r3
/* 80D25414  3C 60 80 D2 */	lis r3, l_midna_offset@ha
/* 80D25418  3B C3 6B 5C */	addi r30, r3, l_midna_offset@l
/* 80D2541C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D25420  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D25424  38 BE 00 0C */	addi r5, r30, 0xc
/* 80D25428  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2542C  38 80 00 00 */	li r4, 0
/* 80D25430  90 81 00 08 */	stw r4, 8(r1)
/* 80D25434  38 00 FF FF */	li r0, -1
/* 80D25438  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2543C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D25440  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D25444  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D25448  38 80 00 00 */	li r4, 0
/* 80D2544C  A0 A5 00 00 */	lhz r5, 0(r5)
/* 80D25450  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D25454  38 E0 00 00 */	li r7, 0
/* 80D25458  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80D2545C  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80D25460  39 40 00 FF */	li r10, 0xff
/* 80D25464  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D25468  4B 32 76 28 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2546C  90 7D 0A 04 */	stw r3, 0xa04(r29)
/* 80D25470  80 7D 0A 04 */	lwz r3, 0xa04(r29)
/* 80D25474  28 03 00 00 */	cmplwi r3, 0
/* 80D25478  41 82 00 10 */	beq lbl_80D25488
/* 80D2547C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D25480  60 00 00 40 */	ori r0, r0, 0x40
/* 80D25484  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D25488:
/* 80D25488  3B 20 00 00 */	li r25, 0
/* 80D2548C  3B 80 00 00 */	li r28, 0
/* 80D25490  3B 60 00 00 */	li r27, 0
/* 80D25494  3B 5E 00 10 */	addi r26, r30, 0x10
lbl_80D25498:
/* 80D25498  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2549C  38 80 00 00 */	li r4, 0
/* 80D254A0  90 81 00 08 */	stw r4, 8(r1)
/* 80D254A4  38 00 FF FF */	li r0, -1
/* 80D254A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D254AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D254B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D254B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D254B8  38 80 00 00 */	li r4, 0
/* 80D254BC  7C BA DA 2E */	lhzx r5, r26, r27
/* 80D254C0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D254C4  38 E0 00 00 */	li r7, 0
/* 80D254C8  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80D254CC  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80D254D0  39 40 00 FF */	li r10, 0xff
/* 80D254D4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D254D8  4B 32 75 B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D254DC  38 1C 09 F8 */	addi r0, r28, 0x9f8
/* 80D254E0  7C 7D 01 2E */	stwx r3, r29, r0
/* 80D254E4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80D254E8  28 03 00 00 */	cmplwi r3, 0
/* 80D254EC  41 82 00 10 */	beq lbl_80D254FC
/* 80D254F0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D254F4  60 00 00 40 */	ori r0, r0, 0x40
/* 80D254F8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D254FC:
/* 80D254FC  3B 39 00 01 */	addi r25, r25, 1
/* 80D25500  2C 19 00 03 */	cmpwi r25, 3
/* 80D25504  3B 9C 00 04 */	addi r28, r28, 4
/* 80D25508  3B 7B 00 02 */	addi r27, r27, 2
/* 80D2550C  41 80 FF 8C */	blt lbl_80D25498
/* 80D25510  39 61 00 40 */	addi r11, r1, 0x40
/* 80D25514  4B 63 CD 04 */	b _restgpr_25
/* 80D25518  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D2551C  7C 08 03 A6 */	mtlr r0
/* 80D25520  38 21 00 40 */	addi r1, r1, 0x40
/* 80D25524  4E 80 00 20 */	blr 
