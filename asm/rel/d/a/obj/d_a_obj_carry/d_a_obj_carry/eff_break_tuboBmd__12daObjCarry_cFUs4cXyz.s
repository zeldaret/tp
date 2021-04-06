lbl_804771C0:
/* 804771C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804771C4  7C 08 02 A6 */	mflr r0
/* 804771C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804771CC  39 61 00 40 */	addi r11, r1, 0x40
/* 804771D0  4B EE B0 01 */	bl _savegpr_26
/* 804771D4  7C 7D 1B 78 */	mr r29, r3
/* 804771D8  7C 9E 23 78 */	mr r30, r4
/* 804771DC  7C BF 2B 78 */	mr r31, r5
/* 804771E0  3C 60 80 48 */	lis r3, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 804771E4  38 63 A4 BC */	addi r3, r3, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 804771E8  38 63 01 79 */	addi r3, r3, 0x179
/* 804771EC  38 80 00 20 */	li r4, 0x20
/* 804771F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804771F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804771F8  3F 45 00 02 */	addis r26, r5, 2
/* 804771FC  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80477200  7F 45 D3 78 */	mr r5, r26
/* 80477204  38 C0 00 80 */	li r6, 0x80
/* 80477208  4B BC 50 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8047720C  7C 7B 1B 78 */	mr r27, r3
/* 80477210  3C 60 80 48 */	lis r3, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 80477214  38 63 A4 BC */	addi r3, r3, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 80477218  38 63 01 79 */	addi r3, r3, 0x179
/* 8047721C  38 80 00 42 */	li r4, 0x42
/* 80477220  7F 45 D3 78 */	mr r5, r26
/* 80477224  38 C0 00 80 */	li r6, 0x80
/* 80477228  4B BC 50 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8047722C  7C 7A 1B 78 */	mr r26, r3
/* 80477230  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80477234  7C 05 07 74 */	extsb r5, r0
/* 80477238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047723C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80477240  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80477244  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 80477248  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 8047724C  90 01 00 08 */	stw r0, 8(r1)
/* 80477250  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80477254  38 00 00 00 */	li r0, 0
/* 80477258  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047725C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80477260  93 E1 00 18 */	stw r31, 0x18(r1)
/* 80477264  38 80 00 00 */	li r4, 0
/* 80477268  38 A0 01 5C */	li r5, 0x15c
/* 8047726C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80477270  38 E0 00 00 */	li r7, 0
/* 80477274  39 00 00 00 */	li r8, 0
/* 80477278  39 20 00 00 */	li r9, 0
/* 8047727C  39 40 00 FF */	li r10, 0xff
/* 80477280  3D 60 80 48 */	lis r11, lit_4685@ha /* 0x8047A3CC@ha */
/* 80477284  C0 2B A3 CC */	lfs f1, lit_4685@l(r11)  /* 0x8047A3CC@l */
/* 80477288  4B BD 58 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8047728C  7F 64 DB 78 */	mr r4, r27
/* 80477290  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80477294  38 C0 00 03 */	li r6, 3
/* 80477298  7F 47 D3 78 */	mr r7, r26
/* 8047729C  39 00 00 00 */	li r8, 0
/* 804772A0  57 C9 06 3E */	clrlwi r9, r30, 0x18
/* 804772A4  4B BD 39 5D */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 804772A8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804772AC  7C 06 07 74 */	extsb r6, r0
/* 804772B0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804772B4  57 C5 1B 78 */	rlwinm r5, r30, 3, 0xd, 0x1c
/* 804772B8  3C 80 80 42 */	lis r4, mTsubo__13dPa_control_c@ha /* 0x80424794@ha */
/* 804772BC  38 04 47 94 */	addi r0, r4, mTsubo__13dPa_control_c@l /* 0x80424794@l */
/* 804772C0  7C 00 2A 14 */	add r0, r0, r5
/* 804772C4  90 01 00 08 */	stw r0, 8(r1)
/* 804772C8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804772CC  38 00 00 00 */	li r0, 0
/* 804772D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804772D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804772D8  93 E1 00 18 */	stw r31, 0x18(r1)
/* 804772DC  38 80 00 00 */	li r4, 0
/* 804772E0  38 A0 01 5D */	li r5, 0x15d
/* 804772E4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 804772E8  38 E0 00 00 */	li r7, 0
/* 804772EC  39 00 00 00 */	li r8, 0
/* 804772F0  39 20 00 00 */	li r9, 0
/* 804772F4  39 40 00 FF */	li r10, 0xff
/* 804772F8  3D 60 80 48 */	lis r11, lit_4685@ha /* 0x8047A3CC@ha */
/* 804772FC  C0 2B A3 CC */	lfs f1, lit_4685@l(r11)  /* 0x8047A3CC@l */
/* 80477300  4B BD 57 91 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80477304  39 61 00 40 */	addi r11, r1, 0x40
/* 80477308  4B EE AF 15 */	bl _restgpr_26
/* 8047730C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80477310  7C 08 03 A6 */	mtlr r0
/* 80477314  38 21 00 40 */	addi r1, r1, 0x40
/* 80477318  4E 80 00 20 */	blr 
