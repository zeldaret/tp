lbl_80037038:
/* 80037038  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003703C  7C 08 02 A6 */	mflr r0
/* 80037040  90 01 00 44 */	stw r0, 0x44(r1)
/* 80037044  39 61 00 40 */	addi r11, r1, 0x40
/* 80037048  48 32 B1 89 */	bl _savegpr_26
/* 8003704C  7C 7D 1B 78 */	mr r29, r3
/* 80037050  7C 9E 23 78 */	mr r30, r4
/* 80037054  7C BF 2B 78 */	mr r31, r5
/* 80037058  3C 60 80 38 */	lis r3, d_a_d_a_obj__stringBase0@ha
/* 8003705C  38 63 92 A8 */	addi r3, r3, d_a_d_a_obj__stringBase0@l
/* 80037060  38 80 00 20 */	li r4, 0x20
/* 80037064  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80037068  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8003706C  3F 45 00 02 */	addis r26, r5, 2
/* 80037070  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80037074  7F 45 D3 78 */	mr r5, r26
/* 80037078  38 C0 00 80 */	li r6, 0x80
/* 8003707C  48 00 52 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80037080  7C 7B 1B 78 */	mr r27, r3
/* 80037084  3C 60 80 38 */	lis r3, d_a_d_a_obj__stringBase0@ha
/* 80037088  38 63 92 A8 */	addi r3, r3, d_a_d_a_obj__stringBase0@l
/* 8003708C  38 80 00 42 */	li r4, 0x42
/* 80037090  7F 45 D3 78 */	mr r5, r26
/* 80037094  38 C0 00 80 */	li r6, 0x80
/* 80037098  48 00 52 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8003709C  7C 7A 1B 78 */	mr r26, r3
/* 800370A0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 800370A4  7C 04 07 74 */	extsb r4, r0
/* 800370A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800370AC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 800370B0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 800370B4  38 0D 89 10 */	la r0, mEcallback__18dPa_modelEcallBack(r13) /* 80450E90-_SDA_BASE_ */
/* 800370B8  90 01 00 08 */	stw r0, 8(r1)
/* 800370BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 800370C0  38 00 00 00 */	li r0, 0
/* 800370C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 800370C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800370CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800370D0  38 80 00 00 */	li r4, 0
/* 800370D4  38 A0 01 5C */	li r5, 0x15c
/* 800370D8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 800370DC  38 E0 00 00 */	li r7, 0
/* 800370E0  39 00 00 00 */	li r8, 0
/* 800370E4  39 20 00 00 */	li r9, 0
/* 800370E8  39 40 00 FF */	li r10, 0xff
/* 800370EC  C0 22 83 98 */	lfs f1, lit_3671(r2)
/* 800370F0  48 01 59 A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800370F4  7F 64 DB 78 */	mr r4, r27
/* 800370F8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 800370FC  38 C0 00 03 */	li r6, 3
/* 80037100  7F 47 D3 78 */	mr r7, r26
/* 80037104  39 00 00 00 */	li r8, 0
/* 80037108  57 E9 06 3E */	clrlwi r9, r31, 0x18
/* 8003710C  48 01 3A F5 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80037110  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80037114  7C 06 07 74 */	extsb r6, r0
/* 80037118  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8003711C  57 E5 18 38 */	slwi r5, r31, 3
/* 80037120  3C 80 80 42 */	lis r4, mTsubo__13dPa_control_c@ha
/* 80037124  38 04 47 94 */	addi r0, r4, mTsubo__13dPa_control_c@l
/* 80037128  7C 00 2A 14 */	add r0, r0, r5
/* 8003712C  90 01 00 08 */	stw r0, 8(r1)
/* 80037130  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80037134  38 00 00 00 */	li r0, 0
/* 80037138  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003713C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037140  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80037144  38 80 00 00 */	li r4, 0
/* 80037148  38 A0 01 5D */	li r5, 0x15d
/* 8003714C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80037150  38 E0 00 00 */	li r7, 0
/* 80037154  39 00 00 00 */	li r8, 0
/* 80037158  39 20 00 00 */	li r9, 0
/* 8003715C  39 40 00 FF */	li r10, 0xff
/* 80037160  C0 22 83 98 */	lfs f1, lit_3671(r2)
/* 80037164  48 01 59 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80037168  39 61 00 40 */	addi r11, r1, 0x40
/* 8003716C  48 32 B0 B1 */	bl _restgpr_26
/* 80037170  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80037174  7C 08 03 A6 */	mtlr r0
/* 80037178  38 21 00 40 */	addi r1, r1, 0x40
/* 8003717C  4E 80 00 20 */	blr 
