lbl_80817974:
/* 80817974  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80817978  7C 08 02 A6 */	mflr r0
/* 8081797C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80817980  39 61 00 60 */	addi r11, r1, 0x60
/* 80817984  4B B4 A8 3D */	bl _savegpr_22
/* 80817988  7C 7E 1B 78 */	mr r30, r3
/* 8081798C  7C 96 23 78 */	mr r22, r4
/* 80817990  3C 60 80 82 */	lis r3, lit_1109@ha /* 0x80821E18@ha */
/* 80817994  3B E3 1E 18 */	addi r31, r3, lit_1109@l /* 0x80821E18@l */
/* 80817998  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8081799C  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 808179A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808179A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808179A8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 808179AC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 808179B0  88 1F 02 18 */	lbz r0, 0x218(r31)
/* 808179B4  7C 00 07 75 */	extsb. r0, r0
/* 808179B8  40 82 00 34 */	bne lbl_808179EC
/* 808179BC  38 7F 00 4C */	addi r3, r31, 0x4c
/* 808179C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 808179C4  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 808179C8  38 7F 02 1C */	addi r3, r31, 0x21c
/* 808179CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 808179D0  D0 03 00 08 */	stfs f0, 8(r3)
/* 808179D4  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha /* 0x808164B4@ha */
/* 808179D8  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808164B4@l */
/* 808179DC  38 BF 02 0C */	addi r5, r31, 0x20c
/* 808179E0  4B FF E6 B9 */	bl __register_global_object
/* 808179E4  38 00 00 01 */	li r0, 1
/* 808179E8  98 1F 02 18 */	stb r0, 0x218(r31)
lbl_808179EC:
/* 808179EC  2C 16 00 00 */	cmpwi r22, 0
/* 808179F0  3B 00 00 05 */	li r24, 5
/* 808179F4  40 82 00 08 */	bne lbl_808179FC
/* 808179F8  3B 00 00 07 */	li r24, 7
lbl_808179FC:
/* 808179FC  3A C0 00 00 */	li r22, 0
/* 80817A00  3B A0 00 00 */	li r29, 0
/* 80817A04  3B 80 00 00 */	li r28, 0
/* 80817A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80817A0C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80817A10  3C 60 80 82 */	lis r3, w_eff_id_4569@ha /* 0x80821C78@ha */
/* 80817A14  3B 43 1C 78 */	addi r26, r3, w_eff_id_4569@l /* 0x80821C78@l */
/* 80817A18  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 80817A1C  3B 63 18 AC */	addi r27, r3, lit_3791@l /* 0x808218AC@l */
/* 80817A20  48 00 00 64 */	b lbl_80817A84
lbl_80817A24:
/* 80817A24  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80817A28  38 00 00 FF */	li r0, 0xff
/* 80817A2C  90 01 00 08 */	stw r0, 8(r1)
/* 80817A30  38 80 00 00 */	li r4, 0
/* 80817A34  90 81 00 0C */	stw r4, 0xc(r1)
/* 80817A38  38 00 FF FF */	li r0, -1
/* 80817A3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80817A40  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817A44  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817A48  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80817A4C  3A FC 14 F0 */	addi r23, r28, 0x14f0
/* 80817A50  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80817A54  38 A0 00 00 */	li r5, 0
/* 80817A58  7C DA EA 2E */	lhzx r6, r26, r29
/* 80817A5C  38 E1 00 24 */	addi r7, r1, 0x24
/* 80817A60  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80817A64  39 20 00 00 */	li r9, 0
/* 80817A68  39 5F 02 1C */	addi r10, r31, 0x21c
/* 80817A6C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80817A70  4B 83 5A 5D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817A74  7C 7E B9 2E */	stwx r3, r30, r23
/* 80817A78  3A D6 00 01 */	addi r22, r22, 1
/* 80817A7C  3B BD 00 02 */	addi r29, r29, 2
/* 80817A80  3B 9C 00 04 */	addi r28, r28, 4
lbl_80817A84:
/* 80817A84  7C 16 C0 00 */	cmpw r22, r24
/* 80817A88  41 80 FF 9C */	blt lbl_80817A24
/* 80817A8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029C@ha */
/* 80817A90  38 03 02 9C */	addi r0, r3, 0x029C /* 0x0007029C@l */
/* 80817A94  90 01 00 20 */	stw r0, 0x20(r1)
/* 80817A98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80817A9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80817AA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80817AA4  38 81 00 20 */	addi r4, r1, 0x20
/* 80817AA8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80817AAC  38 C0 00 00 */	li r6, 0
/* 80817AB0  38 E0 00 00 */	li r7, 0
/* 80817AB4  3D 00 80 82 */	lis r8, lit_3791@ha /* 0x808218AC@ha */
/* 80817AB8  C0 28 18 AC */	lfs f1, lit_3791@l(r8)  /* 0x808218AC@l */
/* 80817ABC  FC 40 08 90 */	fmr f2, f1
/* 80817AC0  3D 00 80 82 */	lis r8, lit_4083@ha /* 0x808218E0@ha */
/* 80817AC4  C0 68 18 E0 */	lfs f3, lit_4083@l(r8)  /* 0x808218E0@l */
/* 80817AC8  FC 80 18 90 */	fmr f4, f3
/* 80817ACC  39 00 00 00 */	li r8, 0
/* 80817AD0  4B A9 4A 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80817AD4  39 61 00 60 */	addi r11, r1, 0x60
/* 80817AD8  4B B4 A7 35 */	bl _restgpr_22
/* 80817ADC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80817AE0  7C 08 03 A6 */	mtlr r0
/* 80817AE4  38 21 00 60 */	addi r1, r1, 0x60
/* 80817AE8  4E 80 00 20 */	blr 
