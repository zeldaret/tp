lbl_80C3D74C:
/* 80C3D74C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C3D750  7C 08 02 A6 */	mflr r0
/* 80C3D754  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C3D758  39 61 00 50 */	addi r11, r1, 0x50
/* 80C3D75C  4B 72 4A 78 */	b _savegpr_27
/* 80C3D760  7C 7E 1B 78 */	mr r30, r3
/* 80C3D764  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C3D768  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3D76C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C3D770  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3D774  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C3D778  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3D77C  3C 60 80 C4 */	lis r3, lit_3704@ha
/* 80C3D780  C0 03 F0 70 */	lfs f0, lit_3704@l(r3)
/* 80C3D784  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3D788  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C3D78C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3D790  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C3D794  38 63 F1 08 */	addi r3, r3, stringBase0@l
/* 80C3D798  38 83 00 07 */	addi r4, r3, 7
/* 80C3D79C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C3D7A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C3D7A4  3C A5 00 02 */	addis r5, r5, 2
/* 80C3D7A8  38 C0 00 80 */	li r6, 0x80
/* 80C3D7AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3D7B0  4B 3F EB CC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C3D7B4  7C 7C 1B 78 */	mr r28, r3
/* 80C3D7B8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C3D7BC  7C 05 07 74 */	extsb r5, r0
/* 80C3D7C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3D7C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C3D7C8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C3D7CC  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha
/* 80C3D7D0  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l
/* 80C3D7D4  90 01 00 08 */	stw r0, 8(r1)
/* 80C3D7D8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80C3D7DC  38 00 00 00 */	li r0, 0
/* 80C3D7E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3D7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D7E8  38 01 00 20 */	addi r0, r1, 0x20
/* 80C3D7EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C3D7F0  38 80 00 00 */	li r4, 0
/* 80C3D7F4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082AF@ha */
/* 80C3D7F8  38 A5 82 AF */	addi r5, r5, 0x82AF /* 0x000082AF@l */
/* 80C3D7FC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C3D800  38 E0 00 00 */	li r7, 0
/* 80C3D804  39 00 00 00 */	li r8, 0
/* 80C3D808  39 20 00 00 */	li r9, 0
/* 80C3D80C  39 40 00 FF */	li r10, 0xff
/* 80C3D810  3D 60 80 C4 */	lis r11, lit_3704@ha
/* 80C3D814  C0 2B F0 70 */	lfs f1, lit_3704@l(r11)
/* 80C3D818  4B 40 F2 78 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3D81C  7F 84 E3 78 */	mr r4, r28
/* 80C3D820  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C3D824  38 C0 00 03 */	li r6, 3
/* 80C3D828  38 E0 00 00 */	li r7, 0
/* 80C3D82C  39 00 00 00 */	li r8, 0
/* 80C3D830  39 20 00 00 */	li r9, 0
/* 80C3D834  4B 40 D3 CC */	b setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80C3D838  3B 60 00 00 */	li r27, 0
/* 80C3D83C  3B C0 00 00 */	li r30, 0
/* 80C3D840  3C 60 80 C4 */	lis r3, particle_id@ha
/* 80C3D844  3B 83 F0 68 */	addi r28, r3, particle_id@l
/* 80C3D848  3C 60 80 C4 */	lis r3, lit_3704@ha
/* 80C3D84C  3B A3 F0 70 */	addi r29, r3, lit_3704@l
lbl_80C3D850:
/* 80C3D850  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C3D854  38 80 00 00 */	li r4, 0
/* 80C3D858  90 81 00 08 */	stw r4, 8(r1)
/* 80C3D85C  38 00 FF FF */	li r0, -1
/* 80C3D860  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C3D864  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C3D868  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3D86C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3D870  38 80 00 00 */	li r4, 0
/* 80C3D874  7C BC F2 2E */	lhzx r5, r28, r30
/* 80C3D878  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C3D87C  38 E0 00 00 */	li r7, 0
/* 80C3D880  39 00 00 00 */	li r8, 0
/* 80C3D884  39 21 00 20 */	addi r9, r1, 0x20
/* 80C3D888  39 40 00 FF */	li r10, 0xff
/* 80C3D88C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C3D890  4B 40 F2 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3D894  3B 7B 00 01 */	addi r27, r27, 1
/* 80C3D898  2C 1B 00 03 */	cmpwi r27, 3
/* 80C3D89C  3B DE 00 02 */	addi r30, r30, 2
/* 80C3D8A0  41 80 FF B0 */	blt lbl_80C3D850
/* 80C3D8A4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C3D8A8  4B 72 49 78 */	b _restgpr_27
/* 80C3D8AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C3D8B0  7C 08 03 A6 */	mtlr r0
/* 80C3D8B4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C3D8B8  4E 80 00 20 */	blr 
