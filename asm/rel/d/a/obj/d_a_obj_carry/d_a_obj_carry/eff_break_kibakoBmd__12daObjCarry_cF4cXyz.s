lbl_8047731C:
/* 8047731C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80477320  7C 08 02 A6 */	mflr r0
/* 80477324  90 01 00 54 */	stw r0, 0x54(r1)
/* 80477328  39 61 00 50 */	addi r11, r1, 0x50
/* 8047732C  4B EE AE A4 */	b _savegpr_26
/* 80477330  7C 7D 1B 78 */	mr r29, r3
/* 80477334  7C 9E 23 78 */	mr r30, r4
/* 80477338  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8047733C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80477340  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80477344  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80477348  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8047734C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80477350  3C 60 80 48 */	lis r3, struct_8047A4BC+0x0@ha
/* 80477354  38 83 A4 BC */	addi r4, r3, struct_8047A4BC+0x0@l
/* 80477358  38 64 01 79 */	addi r3, r4, 0x179
/* 8047735C  38 84 01 80 */	addi r4, r4, 0x180
/* 80477360  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80477364  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80477368  3C A5 00 02 */	addis r5, r5, 2
/* 8047736C  38 C0 00 80 */	li r6, 0x80
/* 80477370  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80477374  4B BC 50 08 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80477378  7C 7B 1B 78 */	mr r27, r3
/* 8047737C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80477380  7C 05 07 74 */	extsb r5, r0
/* 80477384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80477388  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8047738C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80477390  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha
/* 80477394  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l
/* 80477398  90 01 00 08 */	stw r0, 8(r1)
/* 8047739C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804773A0  38 00 00 00 */	li r0, 0
/* 804773A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804773A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804773AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804773B0  38 80 00 00 */	li r4, 0
/* 804773B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082AF@ha */
/* 804773B8  38 A5 82 AF */	addi r5, r5, 0x82AF /* 0x000082AF@l */
/* 804773BC  38 C1 00 20 */	addi r6, r1, 0x20
/* 804773C0  38 E0 00 00 */	li r7, 0
/* 804773C4  39 00 00 00 */	li r8, 0
/* 804773C8  39 20 00 00 */	li r9, 0
/* 804773CC  39 40 00 FF */	li r10, 0xff
/* 804773D0  3D 60 80 48 */	lis r11, lit_4685@ha
/* 804773D4  C0 2B A3 CC */	lfs f1, lit_4685@l(r11)
/* 804773D8  4B BD 56 B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804773DC  7F 64 DB 78 */	mr r4, r27
/* 804773E0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804773E4  38 C0 00 03 */	li r6, 3
/* 804773E8  38 E0 00 00 */	li r7, 0
/* 804773EC  39 00 00 00 */	li r8, 0
/* 804773F0  39 20 00 00 */	li r9, 0
/* 804773F4  4B BD 38 0C */	b setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 804773F8  3B 40 00 00 */	li r26, 0
/* 804773FC  3B A0 00 00 */	li r29, 0
/* 80477400  3C 60 80 48 */	lis r3, particle_id_7795@ha
/* 80477404  3B 63 A4 9C */	addi r27, r3, particle_id_7795@l
/* 80477408  3C 60 80 48 */	lis r3, lit_4685@ha
/* 8047740C  3B 83 A3 CC */	addi r28, r3, lit_4685@l
lbl_80477410:
/* 80477410  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80477414  38 80 00 00 */	li r4, 0
/* 80477418  90 81 00 08 */	stw r4, 8(r1)
/* 8047741C  38 00 FF FF */	li r0, -1
/* 80477420  90 01 00 0C */	stw r0, 0xc(r1)
/* 80477424  90 81 00 10 */	stw r4, 0x10(r1)
/* 80477428  90 81 00 14 */	stw r4, 0x14(r1)
/* 8047742C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80477430  38 80 00 00 */	li r4, 0
/* 80477434  7C BB EA 2E */	lhzx r5, r27, r29
/* 80477438  38 C1 00 20 */	addi r6, r1, 0x20
/* 8047743C  38 E0 00 00 */	li r7, 0
/* 80477440  39 00 00 00 */	li r8, 0
/* 80477444  7F C9 F3 78 */	mr r9, r30
/* 80477448  39 40 00 FF */	li r10, 0xff
/* 8047744C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80477450  4B BD 56 40 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80477454  3B 5A 00 01 */	addi r26, r26, 1
/* 80477458  2C 1A 00 03 */	cmpwi r26, 3
/* 8047745C  3B BD 00 02 */	addi r29, r29, 2
/* 80477460  41 80 FF B0 */	blt lbl_80477410
/* 80477464  39 61 00 50 */	addi r11, r1, 0x50
/* 80477468  4B EE AD B4 */	b _restgpr_26
/* 8047746C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80477470  7C 08 03 A6 */	mtlr r0
/* 80477474  38 21 00 50 */	addi r1, r1, 0x50
/* 80477478  4E 80 00 20 */	blr 
