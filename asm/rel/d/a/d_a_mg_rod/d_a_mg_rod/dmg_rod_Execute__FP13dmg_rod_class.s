lbl_804B9318:
/* 804B9318  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 804B931C  7C 08 02 A6 */	mflr r0
/* 804B9320  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 804B9324  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 804B9328  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, 0 /* qr0 */
/* 804B932C  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 804B9330  4B EA 8E 8D */	bl _savegpr_21
/* 804B9334  7C 7F 1B 78 */	mr r31, r3
/* 804B9338  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804B933C  3B A3 B5 34 */	addi r29, r3, lit_3879@l /* 0x804BB534@l */
/* 804B9340  38 00 00 01 */	li r0, 1
/* 804B9344  3C 60 80 4C */	lis r3, struct_804BBBD4+0x0@ha /* 0x804BBBD4@ha */
/* 804B9348  98 03 BB D4 */	stb r0, struct_804BBBD4+0x0@l(r3)  /* 0x804BBBD4@l */
/* 804B934C  88 7F 10 AB */	lbz r3, 0x10ab(r31)
/* 804B9350  28 03 00 00 */	cmplwi r3, 0
/* 804B9354  41 82 00 3C */	beq lbl_804B9390
/* 804B9358  38 03 FF FF */	addi r0, r3, -1
/* 804B935C  98 1F 10 AB */	stb r0, 0x10ab(r31)
/* 804B9360  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B9364  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 804B9368  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 804B936C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804B9370  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 804B9374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B937C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804B9380  88 9F 10 AA */	lbz r4, 0x10aa(r31)
/* 804B9384  38 A0 00 01 */	li r5, 1
/* 804B9388  38 C1 00 88 */	addi r6, r1, 0x88
/* 804B938C  4B BB 66 99 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804B9390:
/* 804B9390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B9398  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 804B939C  38 7C 3E C8 */	addi r3, r28, 0x3ec8
/* 804B93A0  3C 80 80 4C */	lis r4, d_a_mg_rod__stringBase0@ha /* 0x804BB830@ha */
/* 804B93A4  38 84 B8 30 */	addi r4, r4, d_a_mg_rod__stringBase0@l /* 0x804BB830@l */
/* 804B93A8  4B EA F5 ED */	bl strcmp
/* 804B93AC  38 00 02 55 */	li r0, 0x255
/* 804B93B0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804B93B4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 804B93B8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 804B93BC  38 81 00 0A */	addi r4, r1, 0xa
/* 804B93C0  4B B6 04 39 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804B93C4  3C 80 80 4C */	lis r4, henna@ha /* 0x804BBBD0@ha */
/* 804B93C8  94 64 BB D0 */	stwu r3, henna@l(r4)  /* 0x804BBBD0@l */
/* 804B93CC  28 03 00 00 */	cmplwi r3, 0
/* 804B93D0  41 82 00 18 */	beq lbl_804B93E8
/* 804B93D4  88 03 07 34 */	lbz r0, 0x734(r3)
/* 804B93D8  28 00 00 00 */	cmplwi r0, 0
/* 804B93DC  41 82 00 0C */	beq lbl_804B93E8
/* 804B93E0  38 00 00 00 */	li r0, 0
/* 804B93E4  90 04 00 00 */	stw r0, 0(r4)
lbl_804B93E8:
/* 804B93E8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804B93EC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804B93F0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804B93F4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804B93F8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804B93FC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804B9400  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 804B9404  C4 03 D2 E8 */	lfsu f0, m_cpadInfo__8mDoCPd_c@l(r3)  /* 0x803DD2E8@l */
/* 804B9408  D0 1F 14 C8 */	stfs f0, 0x14c8(r31)
/* 804B940C  C0 03 00 04 */	lfs f0, 4(r3)
/* 804B9410  D0 1F 14 CC */	stfs f0, 0x14cc(r31)
/* 804B9414  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804B9418  D0 1F 14 D8 */	stfs f0, 0x14d8(r31)
/* 804B941C  C0 1F 14 DC */	lfs f0, 0x14dc(r31)
/* 804B9420  D0 1F 14 E0 */	stfs f0, 0x14e0(r31)
/* 804B9424  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 804B9428  D0 1F 14 DC */	stfs f0, 0x14dc(r31)
/* 804B942C  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 804B9430  D0 1F 14 F4 */	stfs f0, 0x14f4(r31)
/* 804B9434  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804B9438  70 00 02 04 */	andi. r0, r0, 0x204
/* 804B943C  90 1F 14 F0 */	stw r0, 0x14f0(r31)
/* 804B9440  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804B9444  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804B9448  41 82 00 0C */	beq lbl_804B9454
/* 804B944C  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804B9450  D0 1F 14 F4 */	stfs f0, 0x14f4(r31)
lbl_804B9454:
/* 804B9454  C0 3F 14 C8 */	lfs f1, 0x14c8(r31)
/* 804B9458  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 804B945C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9460  40 81 00 0C */	ble lbl_804B946C
/* 804B9464  D0 1F 14 C8 */	stfs f0, 0x14c8(r31)
/* 804B9468  48 00 00 14 */	b lbl_804B947C
lbl_804B946C:
/* 804B946C  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 804B9470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9474  40 80 00 08 */	bge lbl_804B947C
/* 804B9478  D0 1F 14 C8 */	stfs f0, 0x14c8(r31)
lbl_804B947C:
/* 804B947C  C0 3F 14 CC */	lfs f1, 0x14cc(r31)
/* 804B9480  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 804B9484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9488  40 81 00 0C */	ble lbl_804B9494
/* 804B948C  D0 1F 14 CC */	stfs f0, 0x14cc(r31)
/* 804B9490  48 00 00 14 */	b lbl_804B94A4
lbl_804B9494:
/* 804B9494  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 804B9498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B949C  40 80 00 08 */	bge lbl_804B94A4
/* 804B94A0  D0 1F 14 CC */	stfs f0, 0x14cc(r31)
lbl_804B94A4:
/* 804B94A4  38 00 00 00 */	li r0, 0
/* 804B94A8  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 804B94AC  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B94B0  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 804B94B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B94B8  41 82 00 68 */	beq lbl_804B9520
/* 804B94BC  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 804B94C0  38 63 0C D8 */	addi r3, r3, g_Counter@l /* 0x80430CD8@l */
/* 804B94C4  80 03 00 08 */	lwz r0, 8(r3)
/* 804B94C8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804B94CC  40 82 00 54 */	bne lbl_804B9520
/* 804B94D0  38 61 01 24 */	addi r3, r1, 0x124
/* 804B94D4  4B BB E2 DD */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 804B94D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804B94DC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804B94E0  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 804B94E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804B94E8  EC 01 00 2A */	fadds f0, f1, f0
/* 804B94EC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 804B94F0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804B94F4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 804B94F8  38 61 01 24 */	addi r3, r1, 0x124
/* 804B94FC  38 81 00 D0 */	addi r4, r1, 0xd0
/* 804B9500  4B DA E8 0D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 804B9504  7F 83 E3 78 */	mr r3, r28
/* 804B9508  38 81 01 24 */	addi r4, r1, 0x124
/* 804B950C  4B BB AF 95 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804B9510  D0 3F 05 90 */	stfs f1, 0x590(r31)
/* 804B9514  38 61 01 24 */	addi r3, r1, 0x124
/* 804B9518  38 80 FF FF */	li r4, -1
/* 804B951C  4B BB E3 2D */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_804B9520:
/* 804B9520  A8 7F 05 78 */	lha r3, 0x578(r31)
/* 804B9524  38 03 00 01 */	addi r0, r3, 1
/* 804B9528  B0 1F 05 78 */	sth r0, 0x578(r31)
/* 804B952C  38 60 00 00 */	li r3, 0
/* 804B9530  38 00 00 0A */	li r0, 0xa
/* 804B9534  7C 09 03 A6 */	mtctr r0
lbl_804B9538:
/* 804B9538  38 A3 05 7A */	addi r5, r3, 0x57a
/* 804B953C  7C 9F 2A AE */	lhax r4, r31, r5
/* 804B9540  2C 04 00 00 */	cmpwi r4, 0
/* 804B9544  41 82 00 0C */	beq lbl_804B9550
/* 804B9548  38 04 FF FF */	addi r0, r4, -1
/* 804B954C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_804B9550:
/* 804B9550  38 63 00 02 */	addi r3, r3, 2
/* 804B9554  42 00 FF E4 */	bdnz lbl_804B9538
/* 804B9558  88 7F 10 09 */	lbz r3, 0x1009(r31)
/* 804B955C  7C 60 07 75 */	extsb. r0, r3
/* 804B9560  41 82 00 0C */	beq lbl_804B956C
/* 804B9564  38 03 FF FF */	addi r0, r3, -1
/* 804B9568  98 1F 10 09 */	stb r0, 0x1009(r31)
lbl_804B956C:
/* 804B956C  88 7F 11 65 */	lbz r3, 0x1165(r31)
/* 804B9570  7C 60 07 75 */	extsb. r0, r3
/* 804B9574  41 82 00 0C */	beq lbl_804B9580
/* 804B9578  38 03 FF FF */	addi r0, r3, -1
/* 804B957C  98 1F 11 65 */	stb r0, 0x1165(r31)
lbl_804B9580:
/* 804B9580  88 7F 14 6C */	lbz r3, 0x146c(r31)
/* 804B9584  28 03 00 00 */	cmplwi r3, 0
/* 804B9588  41 82 00 0C */	beq lbl_804B9594
/* 804B958C  38 03 FF FF */	addi r0, r3, -1
/* 804B9590  98 1F 14 6C */	stb r0, 0x146c(r31)
lbl_804B9594:
/* 804B9594  88 7F 15 14 */	lbz r3, 0x1514(r31)
/* 804B9598  28 03 00 00 */	cmplwi r3, 0
/* 804B959C  41 82 00 0C */	beq lbl_804B95A8
/* 804B95A0  38 03 FF FF */	addi r0, r3, -1
/* 804B95A4  98 1F 15 14 */	stb r0, 0x1514(r31)
lbl_804B95A8:
/* 804B95A8  7F E3 FB 78 */	mr r3, r31
/* 804B95AC  4B FF 15 CD */	bl rod_main__FP13dmg_rod_class
/* 804B95B0  7F E3 FB 78 */	mr r3, r31
/* 804B95B4  4B FF 29 25 */	bl line_main__FP13dmg_rod_class
/* 804B95B8  80 7F 0F 58 */	lwz r3, 0xf58(r31)
/* 804B95BC  83 43 00 00 */	lwz r26, 0(r3)
/* 804B95C0  A8 7F 0F 7C */	lha r3, 0xf7c(r31)
/* 804B95C4  7C 60 07 35 */	extsh. r0, r3
/* 804B95C8  40 82 04 9C */	bne lbl_804B9A64
/* 804B95CC  88 1F 0F 81 */	lbz r0, 0xf81(r31)
/* 804B95D0  98 1F 0F 80 */	stb r0, 0xf80(r31)
/* 804B95D4  7F E3 FB 78 */	mr r3, r31
/* 804B95D8  4B FF 87 3D */	bl lure_main__FP13dmg_rod_class
/* 804B95DC  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B95E0  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 804B95E4  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 804B95E8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804B95EC  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 804B95F0  3B 60 00 00 */	li r27, 0
/* 804B95F4  3A C0 00 00 */	li r22, 0
/* 804B95F8  3A E0 00 00 */	li r23, 0
lbl_804B95FC:
/* 804B95FC  2C 1B 00 05 */	cmpwi r27, 5
/* 804B9600  40 82 00 40 */	bne lbl_804B9640
/* 804B9604  3C 60 80 4C */	lis r3, rodline_p@ha /* 0x804BBA18@ha */
/* 804B9608  38 63 BA 18 */	addi r3, r3, rodline_p@l /* 0x804BBA18@l */
/* 804B960C  7C 03 B8 2E */	lwzx r0, r3, r23
/* 804B9610  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804B9614  38 63 05 A4 */	addi r3, r3, 0x5a4
/* 804B9618  7C 7F 1A 14 */	add r3, r31, r3
/* 804B961C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804B9620  38 81 00 DC */	addi r4, r1, 0xdc
/* 804B9624  7C 84 B2 14 */	add r4, r4, r22
/* 804B9628  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B962C  C0 03 00 04 */	lfs f0, 4(r3)
/* 804B9630  D0 04 00 04 */	stfs f0, 4(r4)
/* 804B9634  C0 03 00 08 */	lfs f0, 8(r3)
/* 804B9638  D0 04 00 08 */	stfs f0, 8(r4)
/* 804B963C  48 00 00 80 */	b lbl_804B96BC
lbl_804B9640:
/* 804B9640  3C 60 80 4C */	lis r3, rodline_p@ha /* 0x804BBA18@ha */
/* 804B9644  3B 03 BA 18 */	addi r24, r3, rodline_p@l /* 0x804BBA18@l */
/* 804B9648  7C B8 B8 2E */	lwzx r5, r24, r23
/* 804B964C  38 61 00 7C */	addi r3, r1, 0x7c
/* 804B9650  38 05 00 01 */	addi r0, r5, 1
/* 804B9654  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804B9658  38 84 05 A4 */	addi r4, r4, 0x5a4
/* 804B965C  7C 9F 22 14 */	add r4, r31, r4
/* 804B9660  1C A5 00 0C */	mulli r5, r5, 0xc
/* 804B9664  38 A5 05 A4 */	addi r5, r5, 0x5a4
/* 804B9668  7C BF 2A 14 */	add r5, r31, r5
/* 804B966C  4B DA D4 C9 */	bl __mi__4cXyzCFRC3Vec
/* 804B9670  38 61 00 70 */	addi r3, r1, 0x70
/* 804B9674  38 81 00 7C */	addi r4, r1, 0x7c
/* 804B9678  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 804B967C  4B DA D5 09 */	bl __ml__4cXyzCFf
/* 804B9680  38 61 00 64 */	addi r3, r1, 0x64
/* 804B9684  7C 18 B8 2E */	lwzx r0, r24, r23
/* 804B9688  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804B968C  38 84 05 A4 */	addi r4, r4, 0x5a4
/* 804B9690  7C 9F 22 14 */	add r4, r31, r4
/* 804B9694  38 A1 00 70 */	addi r5, r1, 0x70
/* 804B9698  4B DA D4 4D */	bl __pl__4cXyzCFRC3Vec
/* 804B969C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804B96A0  38 61 00 DC */	addi r3, r1, 0xdc
/* 804B96A4  7C 63 B2 14 */	add r3, r3, r22
/* 804B96A8  D0 03 00 00 */	stfs f0, 0(r3)
/* 804B96AC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804B96B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 804B96B4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 804B96B8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804B96BC:
/* 804B96BC  3B 7B 00 01 */	addi r27, r27, 1
/* 804B96C0  2C 1B 00 06 */	cmpwi r27, 6
/* 804B96C4  3A D6 00 0C */	addi r22, r22, 0xc
/* 804B96C8  3A F7 00 04 */	addi r23, r23, 4
/* 804B96CC  41 80 FF 30 */	blt lbl_804B95FC
/* 804B96D0  38 60 00 00 */	li r3, 0
/* 804B96D4  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B96D8  2C 00 00 01 */	cmpwi r0, 1
/* 804B96DC  41 81 00 08 */	bgt lbl_804B96E4
/* 804B96E0  38 60 C0 00 */	li r3, -16384
lbl_804B96E4:
/* 804B96E4  A8 1F 13 B4 */	lha r0, 0x13b4(r31)
/* 804B96E8  2C 00 03 B6 */	cmpwi r0, 0x3b6
/* 804B96EC  41 80 00 10 */	blt lbl_804B96FC
/* 804B96F0  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B96F4  40 80 00 08 */	bge lbl_804B96FC
/* 804B96F8  38 60 00 00 */	li r3, 0
lbl_804B96FC:
/* 804B96FC  3B 20 00 00 */	li r25, 0
/* 804B9700  3B 00 00 00 */	li r24, 0
/* 804B9704  3A E0 00 00 */	li r23, 0
/* 804B9708  3A C0 00 00 */	li r22, 0
/* 804B970C  7C 7E 07 34 */	extsh r30, r3
lbl_804B9710:
/* 804B9710  2C 19 00 00 */	cmpwi r25, 0
/* 804B9714  40 82 00 20 */	bne lbl_804B9734
/* 804B9718  C0 1F 07 44 */	lfs f0, 0x744(r31)
/* 804B971C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804B9720  C0 1F 07 48 */	lfs f0, 0x748(r31)
/* 804B9724  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804B9728  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 804B972C  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804B9730  48 00 01 80 */	b lbl_804B98B0
lbl_804B9734:
/* 804B9734  38 61 00 58 */	addi r3, r1, 0x58
/* 804B9738  38 81 00 DC */	addi r4, r1, 0xdc
/* 804B973C  7C 84 B2 14 */	add r4, r4, r22
/* 804B9740  38 19 FF FF */	addi r0, r25, -1
/* 804B9744  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804B9748  3B 61 00 DC */	addi r27, r1, 0xdc
/* 804B974C  7F 7B 02 14 */	add r27, r27, r0
/* 804B9750  7F 65 DB 78 */	mr r5, r27
/* 804B9754  4B DA D3 E1 */	bl __mi__4cXyzCFRC3Vec
/* 804B9758  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 804B975C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 804B9760  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804B9764  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B9768  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804B976C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B9770  EC 21 00 72 */	fmuls f1, f1, f1
/* 804B9774  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B9778  EC 41 00 2A */	fadds f2, f1, f0
/* 804B977C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B9780  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B9784  40 81 00 0C */	ble lbl_804B9790
/* 804B9788  FC 00 10 34 */	frsqrte f0, f2
/* 804B978C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804B9790:
/* 804B9790  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 804B9794  4B DA DE E1 */	bl cM_atan2s__Fff
/* 804B9798  7C 03 00 D0 */	neg r0, r3
/* 804B979C  7C 15 07 34 */	extsh r21, r0
/* 804B97A0  7E A3 AB 78 */	mr r3, r21
/* 804B97A4  4B EA B9 2D */	bl abs
/* 804B97A8  2C 03 38 00 */	cmpwi r3, 0x3800
/* 804B97AC  40 80 00 50 */	bge lbl_804B97FC
/* 804B97B0  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 804B97B4  C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 804B97B8  4B DA DE BD */	bl cM_atan2s__Fff
/* 804B97BC  7C 9F BA 14 */	add r4, r31, r23
/* 804B97C0  B0 64 07 1E */	sth r3, 0x71e(r4)
/* 804B97C4  B2 A4 07 1C */	sth r21, 0x71c(r4)
/* 804B97C8  A8 7F 06 C4 */	lha r3, 0x6c4(r31)
/* 804B97CC  A8 04 07 1E */	lha r0, 0x71e(r4)
/* 804B97D0  7C 03 00 50 */	subf r0, r3, r0
/* 804B97D4  7C 00 07 34 */	extsh r0, r0
/* 804B97D8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804B97DC  40 80 00 14 */	bge lbl_804B97F0
/* 804B97E0  2C 00 C0 00 */	cmpwi r0, -16384
/* 804B97E4  40 81 00 0C */	ble lbl_804B97F0
/* 804B97E8  38 00 00 00 */	li r0, 0
/* 804B97EC  48 00 00 08 */	b lbl_804B97F4
lbl_804B97F0:
/* 804B97F0  38 00 80 00 */	li r0, -32768
lbl_804B97F4:
/* 804B97F4  7C 1E 02 14 */	add r0, r30, r0
/* 804B97F8  B0 04 07 20 */	sth r0, 0x720(r4)
lbl_804B97FC:
/* 804B97FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B9800  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B9804  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9808  7E BF BA 14 */	add r21, r31, r23
/* 804B980C  A8 95 07 1E */	lha r4, 0x71e(r21)
/* 804B9810  4B B5 2B CD */	bl mDoMtx_YrotS__FPA4_fs
/* 804B9814  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B9818  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B981C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9820  A8 95 07 1C */	lha r4, 0x71c(r21)
/* 804B9824  4B B5 2B 79 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B9828  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B982C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B9830  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9834  A8 95 07 20 */	lha r4, 0x720(r21)
/* 804B9838  4B B5 2C 95 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804B983C  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 804B9840  3C 60 80 4C */	lis r3, rodline_off@ha /* 0x804BBA30@ha */
/* 804B9844  38 03 BA 30 */	addi r0, r3, rodline_off@l /* 0x804BBA30@l */
/* 804B9848  7C 60 C2 14 */	add r3, r0, r24
/* 804B984C  3A A3 FF FC */	addi r21, r3, -4
/* 804B9850  C0 03 FF FC */	lfs f0, -4(r3)
/* 804B9854  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B9858  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B985C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804B9860  38 81 00 AC */	addi r4, r1, 0xac
/* 804B9864  4B DB 76 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B9868  38 61 00 4C */	addi r3, r1, 0x4c
/* 804B986C  38 81 00 AC */	addi r4, r1, 0xac
/* 804B9870  C0 35 00 00 */	lfs f1, 0(r21)
/* 804B9874  4B DA D3 11 */	bl __ml__4cXyzCFf
/* 804B9878  38 61 00 40 */	addi r3, r1, 0x40
/* 804B987C  38 81 00 4C */	addi r4, r1, 0x4c
/* 804B9880  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804B9884  4B DA D3 01 */	bl __ml__4cXyzCFf
/* 804B9888  38 61 00 34 */	addi r3, r1, 0x34
/* 804B988C  7F 64 DB 78 */	mr r4, r27
/* 804B9890  38 A1 00 40 */	addi r5, r1, 0x40
/* 804B9894  4B DA D2 51 */	bl __pl__4cXyzCFRC3Vec
/* 804B9898  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804B989C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804B98A0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804B98A4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804B98A8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804B98AC  D0 1A 00 08 */	stfs f0, 8(r26)
lbl_804B98B0:
/* 804B98B0  3B 39 00 01 */	addi r25, r25, 1
/* 804B98B4  2C 19 00 06 */	cmpwi r25, 6
/* 804B98B8  3B 18 00 04 */	addi r24, r24, 4
/* 804B98BC  3A F7 00 06 */	addi r23, r23, 6
/* 804B98C0  3A D6 00 0C */	addi r22, r22, 0xc
/* 804B98C4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804B98C8  41 80 FE 48 */	blt lbl_804B9710
/* 804B98CC  3A A0 00 00 */	li r21, 0
/* 804B98D0  3B 00 00 00 */	li r24, 0
lbl_804B98D4:
/* 804B98D4  7C 7F C2 14 */	add r3, r31, r24
/* 804B98D8  C0 03 07 70 */	lfs f0, 0x770(r3)
/* 804B98DC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804B98E0  C0 03 07 74 */	lfs f0, 0x774(r3)
/* 804B98E4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804B98E8  C0 03 07 78 */	lfs f0, 0x778(r3)
/* 804B98EC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804B98F0  2C 15 00 00 */	cmpwi r21, 0
/* 804B98F4  40 82 00 24 */	bne lbl_804B9918
/* 804B98F8  38 61 00 28 */	addi r3, r1, 0x28
/* 804B98FC  38 81 00 AC */	addi r4, r1, 0xac
/* 804B9900  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 804B9904  4B DA D2 81 */	bl __ml__4cXyzCFf
/* 804B9908  7F 43 D3 78 */	mr r3, r26
/* 804B990C  38 81 00 28 */	addi r4, r1, 0x28
/* 804B9910  7F 45 D3 78 */	mr r5, r26
/* 804B9914  4B E8 D7 7D */	bl PSVECAdd
lbl_804B9918:
/* 804B9918  3A B5 00 01 */	addi r21, r21, 1
/* 804B991C  2C 15 00 64 */	cmpwi r21, 0x64
/* 804B9920  3B 18 00 0C */	addi r24, r24, 0xc
/* 804B9924  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804B9928  41 80 FF AC */	blt lbl_804B98D4
/* 804B992C  3B 20 00 00 */	li r25, 0
/* 804B9930  3B 40 00 00 */	li r26, 0
/* 804B9934  3B 60 00 00 */	li r27, 0
/* 804B9938  3B 00 00 00 */	li r24, 0
/* 804B993C  C3 FD 02 E4 */	lfs f31, 0x2e4(r29)
/* 804B9940  3C 60 80 4C */	lis r3, rodline_off@ha /* 0x804BBA30@ha */
/* 804B9944  3B C3 BA 30 */	addi r30, r3, rodline_off@l /* 0x804BBA30@l */
/* 804B9948  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B994C  3A C3 07 68 */	addi r22, r3, calc_mtx@l /* 0x80450768@l */
lbl_804B9950:
/* 804B9950  38 61 00 DC */	addi r3, r1, 0xdc
/* 804B9954  7C 63 C2 14 */	add r3, r3, r24
/* 804B9958  C0 23 00 00 */	lfs f1, 0(r3)
/* 804B995C  C0 43 00 04 */	lfs f2, 4(r3)
/* 804B9960  C0 63 00 08 */	lfs f3, 8(r3)
/* 804B9964  38 60 00 00 */	li r3, 0
/* 804B9968  4B DB 74 F5 */	bl MtxTrans__FfffUc
/* 804B996C  7C 1E DC 2E */	lfsx f0, r30, r27
/* 804B9970  EC 3F 00 32 */	fmuls f1, f31, f0
/* 804B9974  FC 40 08 90 */	fmr f2, f1
/* 804B9978  FC 60 08 90 */	fmr f3, f1
/* 804B997C  38 60 00 01 */	li r3, 1
/* 804B9980  4B DB 75 25 */	bl MtxScale__FfffUc
/* 804B9984  2C 19 00 00 */	cmpwi r25, 0
/* 804B9988  40 82 00 44 */	bne lbl_804B99CC
/* 804B998C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B9990  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B9994  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9998  A8 9F 07 24 */	lha r4, 0x724(r31)
/* 804B999C  4B B5 2A 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 804B99A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B99A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B99A8  80 63 00 00 */	lwz r3, 0(r3)
/* 804B99AC  A8 9F 07 22 */	lha r4, 0x722(r31)
/* 804B99B0  4B B5 29 ED */	bl mDoMtx_XrotM__FPA4_fs
/* 804B99B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B99B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B99BC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B99C0  A8 9F 07 26 */	lha r4, 0x726(r31)
/* 804B99C4  4B B5 2B 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804B99C8  48 00 00 44 */	b lbl_804B9A0C
lbl_804B99CC:
/* 804B99CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B99D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B99D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804B99D8  7E BF D2 14 */	add r21, r31, r26
/* 804B99DC  A8 95 07 1E */	lha r4, 0x71e(r21)
/* 804B99E0  4B B5 2A 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 804B99E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B99E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B99EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B99F0  A8 95 07 1C */	lha r4, 0x71c(r21)
/* 804B99F4  4B B5 29 A9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B99F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B99FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B9A00  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9A04  A8 95 07 20 */	lha r4, 0x720(r21)
/* 804B9A08  4B B5 2A C5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_804B9A0C:
/* 804B9A0C  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B9A10  C0 5D 01 48 */	lfs f2, 0x148(r29)
/* 804B9A14  FC 60 08 90 */	fmr f3, f1
/* 804B9A18  38 60 00 01 */	li r3, 1
/* 804B9A1C  4B DB 74 41 */	bl MtxTrans__FfffUc
/* 804B9A20  80 76 00 00 */	lwz r3, 0(r22)
/* 804B9A24  38 80 40 00 */	li r4, 0x4000
/* 804B9A28  4B B5 29 75 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B9A2C  80 76 00 00 */	lwz r3, 0(r22)
/* 804B9A30  38 1B 07 04 */	addi r0, r27, 0x704
/* 804B9A34  7C 9F 00 2E */	lwzx r4, r31, r0
/* 804B9A38  38 84 00 24 */	addi r4, r4, 0x24
/* 804B9A3C  4B E8 CA 75 */	bl PSMTXCopy
/* 804B9A40  3B 39 00 01 */	addi r25, r25, 1
/* 804B9A44  2C 19 00 06 */	cmpwi r25, 6
/* 804B9A48  3B 5A 00 06 */	addi r26, r26, 6
/* 804B9A4C  3B 7B 00 04 */	addi r27, r27, 4
/* 804B9A50  3B 18 00 0C */	addi r24, r24, 0xc
/* 804B9A54  41 80 FE FC */	blt lbl_804B9950
/* 804B9A58  7F E3 FB 78 */	mr r3, r31
/* 804B9A5C  4B FF C4 E9 */	bl play_camera__FP13dmg_rod_class
/* 804B9A60  48 00 00 B4 */	b lbl_804B9B14
lbl_804B9A64:
/* 804B9A64  2C 03 00 01 */	cmpwi r3, 1
/* 804B9A68  40 82 00 AC */	bne lbl_804B9B14
/* 804B9A6C  C0 3F 10 64 */	lfs f1, 0x1064(r31)
/* 804B9A70  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 804B9A74  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B9A78  FC 00 02 10 */	fabs f0, f0
/* 804B9A7C  FC 20 00 18 */	frsp f1, f0
/* 804B9A80  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 804B9A84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9A88  40 80 00 34 */	bge lbl_804B9ABC
/* 804B9A8C  A8 1F 10 84 */	lha r0, 0x1084(r31)
/* 804B9A90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B9A94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B9A98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B9A9C  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B9AA0  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 804B9AA4  EC 20 00 72 */	fmuls f1, f0, f1
/* 804B9AA8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B9AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9AB0  40 81 00 10 */	ble lbl_804B9AC0
/* 804B9AB4  FC 20 00 90 */	fmr f1, f0
/* 804B9AB8  48 00 00 08 */	b lbl_804B9AC0
lbl_804B9ABC:
/* 804B9ABC  C0 3D 00 58 */	lfs f1, 0x58(r29)
lbl_804B9AC0:
/* 804B9AC0  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 804B9AC4  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 804B9AC8  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 804B9ACC  4B DB 5F 71 */	bl cLib_addCalc2__FPffff
/* 804B9AD0  7F E3 FB 78 */	mr r3, r31
/* 804B9AD4  4B FF B3 91 */	bl uki_main__FP13dmg_rod_class
/* 804B9AD8  38 60 00 00 */	li r3, 0
/* 804B9ADC  38 00 00 64 */	li r0, 0x64
/* 804B9AE0  7C 09 03 A6 */	mtctr r0
lbl_804B9AE4:
/* 804B9AE4  7C 9F 1A 14 */	add r4, r31, r3
/* 804B9AE8  C0 04 07 70 */	lfs f0, 0x770(r4)
/* 804B9AEC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804B9AF0  C0 04 07 74 */	lfs f0, 0x774(r4)
/* 804B9AF4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804B9AF8  C0 04 07 78 */	lfs f0, 0x778(r4)
/* 804B9AFC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804B9B00  38 63 00 0C */	addi r3, r3, 0xc
/* 804B9B04  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804B9B08  42 00 FF DC */	bdnz lbl_804B9AE4
/* 804B9B0C  7F E3 FB 78 */	mr r3, r31
/* 804B9B10  4B FF E5 4D */	bl play_camera_u__FP13dmg_rod_class
lbl_804B9B14:
/* 804B9B14  38 00 00 00 */	li r0, 0
/* 804B9B18  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 804B9B1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804B9B20  7C 03 07 74 */	extsb r3, r0
/* 804B9B24  4B B7 35 49 */	bl dComIfGp_getReverb__Fi
/* 804B9B28  7C 65 1B 78 */	mr r5, r3
/* 804B9B2C  38 7F 10 B4 */	addi r3, r31, 0x10b4
/* 804B9B30  38 80 00 00 */	li r4, 0
/* 804B9B34  81 9F 10 B4 */	lwz r12, 0x10b4(r31)
/* 804B9B38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804B9B3C  7D 89 03 A6 */	mtctr r12
/* 804B9B40  4E 80 04 21 */	bctrl 
/* 804B9B44  A8 1F 13 B4 */	lha r0, 0x13b4(r31)
/* 804B9B48  2C 00 00 00 */	cmpwi r0, 0
/* 804B9B4C  41 82 00 3C */	beq lbl_804B9B88
/* 804B9B50  88 1F 16 8C */	lbz r0, 0x168c(r31)
/* 804B9B54  28 00 00 00 */	cmplwi r0, 0
/* 804B9B58  40 82 00 64 */	bne lbl_804B9BBC
/* 804B9B5C  38 00 00 01 */	li r0, 1
/* 804B9B60  98 1F 16 8C */	stb r0, 0x168c(r31)
/* 804B9B64  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804B9B68  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 804B9B6C  A0 04 00 B4 */	lhz r0, 0xb4(r4)
/* 804B9B70  54 03 07 B8 */	rlwinm r3, r0, 0, 0x1e, 0x1c
/* 804B9B74  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804B9B78  B0 64 00 B4 */	sth r3, 0xb4(r4)
/* 804B9B7C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804B9B80  B0 04 00 B4 */	sth r0, 0xb4(r4)
/* 804B9B84  48 00 00 38 */	b lbl_804B9BBC
lbl_804B9B88:
/* 804B9B88  88 1F 16 8C */	lbz r0, 0x168c(r31)
/* 804B9B8C  28 00 00 00 */	cmplwi r0, 0
/* 804B9B90  41 82 00 2C */	beq lbl_804B9BBC
/* 804B9B94  38 00 00 00 */	li r0, 0
/* 804B9B98  98 1F 16 8C */	stb r0, 0x168c(r31)
/* 804B9B9C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804B9BA0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804B9BA4  A0 03 00 B4 */	lhz r0, 0xb4(r3)
/* 804B9BA8  60 00 00 04 */	ori r0, r0, 4
/* 804B9BAC  B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 804B9BB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804B9BB4  60 00 00 08 */	ori r0, r0, 8
/* 804B9BB8  B0 03 00 B4 */	sth r0, 0xb4(r3)
lbl_804B9BBC:
/* 804B9BBC  88 7F 14 06 */	lbz r3, 0x1406(r31)
/* 804B9BC0  C0 7F 14 08 */	lfs f3, 0x1408(r31)
/* 804B9BC4  FC 00 18 1E */	fctiwz f0, f3
/* 804B9BC8  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 804B9BCC  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 804B9BD0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804B9BD4  7C 03 00 40 */	cmplw r3, r0
/* 804B9BD8  40 82 00 14 */	bne lbl_804B9BEC
/* 804B9BDC  C0 3F 0F 78 */	lfs f1, 0xf78(r31)
/* 804B9BE0  C0 1D 02 EC */	lfs f0, 0x2ec(r29)
/* 804B9BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9BE8  40 81 00 98 */	ble lbl_804B9C80
lbl_804B9BEC:
/* 804B9BEC  80 7F 0F 58 */	lwz r3, 0xf58(r31)
/* 804B9BF0  80 63 00 04 */	lwz r3, 4(r3)
/* 804B9BF4  C0 3F 0F 78 */	lfs f1, 0xf78(r31)
/* 804B9BF8  C0 1D 02 EC */	lfs f0, 0x2ec(r29)
/* 804B9BFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9C00  40 81 00 0C */	ble lbl_804B9C0C
/* 804B9C04  FC 00 08 90 */	fmr f0, f1
/* 804B9C08  48 00 00 44 */	b lbl_804B9C4C
lbl_804B9C0C:
/* 804B9C0C  A8 1F 0F 7C */	lha r0, 0xf7c(r31)
/* 804B9C10  2C 00 00 00 */	cmpwi r0, 0
/* 804B9C14  40 82 00 20 */	bne lbl_804B9C34
/* 804B9C18  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B9C1C  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 804B9C20  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 804B9C24  EC 03 00 28 */	fsubs f0, f3, f0
/* 804B9C28  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B9C2C  EC 02 00 2A */	fadds f0, f2, f0
/* 804B9C30  48 00 00 1C */	b lbl_804B9C4C
lbl_804B9C34:
/* 804B9C34  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B9C38  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 804B9C3C  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804B9C40  EC 03 00 28 */	fsubs f0, f3, f0
/* 804B9C44  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B9C48  EC 02 00 2A */	fadds f0, f2, f0
lbl_804B9C4C:
/* 804B9C4C  A8 1F 0F 7C */	lha r0, 0xf7c(r31)
/* 804B9C50  2C 00 00 00 */	cmpwi r0, 0
/* 804B9C54  38 00 00 64 */	li r0, 0x64
/* 804B9C58  40 82 00 08 */	bne lbl_804B9C60
/* 804B9C5C  38 00 00 6A */	li r0, 0x6a
lbl_804B9C60:
/* 804B9C60  7C 09 03 A6 */	mtctr r0
/* 804B9C64  2C 00 00 00 */	cmpwi r0, 0
/* 804B9C68  40 81 00 10 */	ble lbl_804B9C78
lbl_804B9C6C:
/* 804B9C6C  D0 03 00 00 */	stfs f0, 0(r3)
/* 804B9C70  38 63 00 04 */	addi r3, r3, 4
/* 804B9C74  42 00 FF F8 */	bdnz lbl_804B9C6C
lbl_804B9C78:
/* 804B9C78  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B9C7C  D0 1F 0F 78 */	stfs f0, 0xf78(r31)
lbl_804B9C80:
/* 804B9C80  C0 1F 14 08 */	lfs f0, 0x1408(r31)
/* 804B9C84  FC 00 00 1E */	fctiwz f0, f0
/* 804B9C88  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 804B9C8C  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 804B9C90  98 1F 14 06 */	stb r0, 0x1406(r31)
/* 804B9C94  A8 1F 0F 7C */	lha r0, 0xf7c(r31)
/* 804B9C98  2C 00 00 00 */	cmpwi r0, 0
/* 804B9C9C  40 82 03 58 */	bne lbl_804B9FF4
/* 804B9CA0  38 00 02 1B */	li r0, 0x21b
/* 804B9CA4  B0 01 00 08 */	sth r0, 8(r1)
/* 804B9CA8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 804B9CAC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 804B9CB0  38 81 00 08 */	addi r4, r1, 8
/* 804B9CB4  4B B5 FB 45 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804B9CB8  7C 79 1B 79 */	or. r25, r3, r3
/* 804B9CBC  41 82 03 38 */	beq lbl_804B9FF4
/* 804B9CC0  88 7F 10 A9 */	lbz r3, 0x10a9(r31)
/* 804B9CC4  7C 60 07 75 */	extsb. r0, r3
/* 804B9CC8  41 82 01 C0 */	beq lbl_804B9E88
/* 804B9CCC  7C 60 07 74 */	extsb r0, r3
/* 804B9CD0  2C 00 00 02 */	cmpwi r0, 2
/* 804B9CD4  40 82 00 C0 */	bne lbl_804B9D94
/* 804B9CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9CDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B9CE0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B9CE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B9CE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804B9CEC  7D 89 03 A6 */	mtctr r12
/* 804B9CF0  4E 80 04 21 */	bctrl 
/* 804B9CF4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804B9CF8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804B9CFC  80 84 00 00 */	lwz r4, 0(r4)
/* 804B9D00  4B E8 C7 B1 */	bl PSMTXCopy
/* 804B9D04  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804B9D08  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804B9D0C  C0 1D 02 F0 */	lfs f0, 0x2f0(r29)
/* 804B9D10  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804B9D14  C0 1D 02 7C */	lfs f0, 0x27c(r29)
/* 804B9D18  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804B9D1C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 804B9D20  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804B9D24  4B DB 71 C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B9D28  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 804B9D2C  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B9D30  EC 01 00 2A */	fadds f0, f1, f0
/* 804B9D34  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 804B9D38  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 804B9D3C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804B9D40  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 804B9D44  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804B9D48  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 804B9D4C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804B9D50  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B9D54  1C 00 02 BC */	mulli r0, r0, 0x2bc
/* 804B9D58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B9D5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B9D60  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B9D64  7C 63 04 2E */	lfsx f3, r3, r0
/* 804B9D68  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 804B9D6C  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 804B9D70  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 804B9D74  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B9D78  EC 01 00 2A */	fadds f0, f1, f0
/* 804B9D7C  EC 02 00 2A */	fadds f0, f2, f0
/* 804B9D80  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804B9D84  38 00 00 00 */	li r0, 0
/* 804B9D88  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 804B9D8C  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 804B9D90  48 00 00 E4 */	b lbl_804B9E74
lbl_804B9D94:
/* 804B9D94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804B9D98  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 804B9D9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804B9DA0  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 804B9DA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804B9DA8  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 804B9DAC  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 804B9DB0  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804B9DB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B9DB8  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 804B9DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9DC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B9DC4  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 804B9DC8  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 804B9DCC  A8 04 05 9E */	lha r0, 0x59e(r4)
/* 804B9DD0  7C 03 02 14 */	add r0, r3, r0
/* 804B9DD4  7C 04 07 34 */	extsh r4, r0
/* 804B9DD8  38 79 04 E6 */	addi r3, r25, 0x4e6
/* 804B9DDC  38 A0 00 08 */	li r5, 8
/* 804B9DE0  38 C0 02 00 */	li r6, 0x200
/* 804B9DE4  4B DB 68 25 */	bl cLib_addCalcAngleS2__FPssss
/* 804B9DE8  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B9DEC  1C 00 05 14 */	mulli r0, r0, 0x514
/* 804B9DF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B9DF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B9DF8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B9DFC  7C 03 04 2E */	lfsx f0, r3, r0
/* 804B9E00  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 804B9E04  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B9E08  FC 00 00 1E */	fctiwz f0, f0
/* 804B9E0C  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 804B9E10  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 804B9E14  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 804B9E18  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B9E1C  1C 00 04 4C */	mulli r0, r0, 0x44c
/* 804B9E20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B9E24  7C 03 04 2E */	lfsx f0, r3, r0
/* 804B9E28  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B9E2C  FC 00 00 1E */	fctiwz f0, f0
/* 804B9E30  D8 01 01 80 */	stfd f0, 0x180(r1)
/* 804B9E34  80 81 01 84 */	lwz r4, 0x184(r1)
/* 804B9E38  80 1F 14 F0 */	lwz r0, 0x14f0(r31)
/* 804B9E3C  2C 00 00 00 */	cmpwi r0, 0
/* 804B9E40  41 82 00 0C */	beq lbl_804B9E4C
/* 804B9E44  38 04 20 00 */	addi r0, r4, 0x2000
/* 804B9E48  7C 04 07 34 */	extsh r4, r0
lbl_804B9E4C:
/* 804B9E4C  38 79 04 E4 */	addi r3, r25, 0x4e4
/* 804B9E50  38 A0 00 0F */	li r5, 0xf
/* 804B9E54  38 C0 02 00 */	li r6, 0x200
/* 804B9E58  4B DB 67 B1 */	bl cLib_addCalcAngleS2__FPssss
/* 804B9E5C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804B9E60  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 804B9E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9E68  40 81 00 0C */	ble lbl_804B9E74
/* 804B9E6C  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 804B9E70  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_804B9E74:
/* 804B9E74  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B9E78  D0 19 04 F8 */	stfs f0, 0x4f8(r25)
/* 804B9E7C  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 804B9E80  D0 19 05 00 */	stfs f0, 0x500(r25)
/* 804B9E84  48 00 01 70 */	b lbl_804B9FF4
lbl_804B9E88:
/* 804B9E88  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B9E8C  2C 00 00 03 */	cmpwi r0, 3
/* 804B9E90  41 82 00 0C */	beq lbl_804B9E9C
/* 804B9E94  2C 00 00 04 */	cmpwi r0, 4
/* 804B9E98  40 82 01 5C */	bne lbl_804B9FF4
lbl_804B9E9C:
/* 804B9E9C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804B9EA0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804B9EA4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804B9EA8  4B DA CC 8D */	bl __mi__4cXyzCFRC3Vec
/* 804B9EAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804B9EB0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804B9EB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B9EB8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804B9EBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804B9EC0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804B9EC4  38 61 00 94 */	addi r3, r1, 0x94
/* 804B9EC8  4B E8 D2 71 */	bl PSVECSquareMag
/* 804B9ECC  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B9ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9ED4  40 81 00 58 */	ble lbl_804B9F2C
/* 804B9ED8  FC 00 08 34 */	frsqrte f0, f1
/* 804B9EDC  C8 9D 00 80 */	lfd f4, 0x80(r29)
/* 804B9EE0  FC 44 00 32 */	fmul f2, f4, f0
/* 804B9EE4  C8 7D 00 88 */	lfd f3, 0x88(r29)
/* 804B9EE8  FC 00 00 32 */	fmul f0, f0, f0
/* 804B9EEC  FC 01 00 32 */	fmul f0, f1, f0
/* 804B9EF0  FC 03 00 28 */	fsub f0, f3, f0
/* 804B9EF4  FC 02 00 32 */	fmul f0, f2, f0
/* 804B9EF8  FC 44 00 32 */	fmul f2, f4, f0
/* 804B9EFC  FC 00 00 32 */	fmul f0, f0, f0
/* 804B9F00  FC 01 00 32 */	fmul f0, f1, f0
/* 804B9F04  FC 03 00 28 */	fsub f0, f3, f0
/* 804B9F08  FC 02 00 32 */	fmul f0, f2, f0
/* 804B9F0C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B9F10  FC 00 00 32 */	fmul f0, f0, f0
/* 804B9F14  FC 01 00 32 */	fmul f0, f1, f0
/* 804B9F18  FC 03 00 28 */	fsub f0, f3, f0
/* 804B9F1C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B9F20  FC 21 00 32 */	fmul f1, f1, f0
/* 804B9F24  FC 20 08 18 */	frsp f1, f1
/* 804B9F28  48 00 00 88 */	b lbl_804B9FB0
lbl_804B9F2C:
/* 804B9F2C  C8 1D 00 90 */	lfd f0, 0x90(r29)
/* 804B9F30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9F34  40 80 00 10 */	bge lbl_804B9F44
/* 804B9F38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B9F3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B9F40  48 00 00 70 */	b lbl_804B9FB0
lbl_804B9F44:
/* 804B9F44  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804B9F48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804B9F4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B9F50  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B9F54  7C 03 00 00 */	cmpw r3, r0
/* 804B9F58  41 82 00 14 */	beq lbl_804B9F6C
/* 804B9F5C  40 80 00 40 */	bge lbl_804B9F9C
/* 804B9F60  2C 03 00 00 */	cmpwi r3, 0
/* 804B9F64  41 82 00 20 */	beq lbl_804B9F84
/* 804B9F68  48 00 00 34 */	b lbl_804B9F9C
lbl_804B9F6C:
/* 804B9F6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B9F70  41 82 00 0C */	beq lbl_804B9F7C
/* 804B9F74  38 00 00 01 */	li r0, 1
/* 804B9F78  48 00 00 28 */	b lbl_804B9FA0
lbl_804B9F7C:
/* 804B9F7C  38 00 00 02 */	li r0, 2
/* 804B9F80  48 00 00 20 */	b lbl_804B9FA0
lbl_804B9F84:
/* 804B9F84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B9F88  41 82 00 0C */	beq lbl_804B9F94
/* 804B9F8C  38 00 00 05 */	li r0, 5
/* 804B9F90  48 00 00 10 */	b lbl_804B9FA0
lbl_804B9F94:
/* 804B9F94  38 00 00 03 */	li r0, 3
/* 804B9F98  48 00 00 08 */	b lbl_804B9FA0
lbl_804B9F9C:
/* 804B9F9C  38 00 00 04 */	li r0, 4
lbl_804B9FA0:
/* 804B9FA0  2C 00 00 01 */	cmpwi r0, 1
/* 804B9FA4  40 82 00 0C */	bne lbl_804B9FB0
/* 804B9FA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B9FAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B9FB0:
/* 804B9FB0  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 804B9FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9FB8  40 80 00 3C */	bge lbl_804B9FF4
/* 804B9FBC  38 00 00 01 */	li r0, 1
/* 804B9FC0  98 1F 10 A9 */	stb r0, 0x10a9(r31)
/* 804B9FC4  7F 23 CB 78 */	mr r3, r25
/* 804B9FC8  48 01 3D B5 */	bl actionInitWait2__11daObjLife_cFv
/* 804B9FCC  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B9FD0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804B9FD4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 804B9FD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804B9FDC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B9FE0  38 7C 4C 9C */	addi r3, r28, 0x4c9c
/* 804B9FE4  38 80 00 03 */	li r4, 3
/* 804B9FE8  38 A0 00 01 */	li r5, 1
/* 804B9FEC  38 C1 00 10 */	addi r6, r1, 0x10
/* 804B9FF0  4B BB 5A 35 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804B9FF4:
/* 804B9FF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9FF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B9FFC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804BA000  7F E4 FB 78 */	mr r4, r31
/* 804BA004  4B C3 9E 49 */	bl checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c
/* 804BA008  2C 03 00 00 */	cmpwi r3, 0
/* 804BA00C  41 82 00 60 */	beq lbl_804BA06C
/* 804BA010  88 7F 10 0F */	lbz r3, 0x100f(r31)
/* 804BA014  7C 60 07 75 */	extsb. r0, r3
/* 804BA018  41 82 00 54 */	beq lbl_804BA06C
/* 804BA01C  7C 60 07 74 */	extsb r0, r3
/* 804BA020  2C 00 00 01 */	cmpwi r0, 1
/* 804BA024  40 82 00 20 */	bne lbl_804BA044
/* 804BA028  38 00 00 51 */	li r0, 0x51
/* 804BA02C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BA030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BA034  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 804BA038  38 00 00 00 */	li r0, 0
/* 804BA03C  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 804BA040  48 00 00 2C */	b lbl_804BA06C
lbl_804BA044:
/* 804BA044  2C 00 00 02 */	cmpwi r0, 2
/* 804BA048  40 82 00 24 */	bne lbl_804BA06C
/* 804BA04C  38 00 00 74 */	li r0, 0x74
/* 804BA050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BA054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BA058  98 03 5E 3E */	stb r0, 0x5e3e(r3)
/* 804BA05C  38 00 00 08 */	li r0, 8
/* 804BA060  98 03 5E 2E */	stb r0, 0x5e2e(r3)
/* 804BA064  38 00 00 00 */	li r0, 0
/* 804BA068  98 03 5E 58 */	stb r0, 0x5e58(r3)
lbl_804BA06C:
/* 804BA06C  38 00 00 00 */	li r0, 0
/* 804BA070  98 1F 10 0F */	stb r0, 0x100f(r31)
/* 804BA074  38 60 00 01 */	li r3, 1
/* 804BA078  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, 0 /* qr0 */
/* 804BA07C  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 804BA080  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 804BA084  4B EA 81 85 */	bl _restgpr_21
/* 804BA088  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 804BA08C  7C 08 03 A6 */	mtlr r0
/* 804BA090  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 804BA094  4E 80 00 20 */	blr 
