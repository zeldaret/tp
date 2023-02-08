lbl_80477614:
/* 80477614  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80477618  7C 08 02 A6 */	mflr r0
/* 8047761C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80477620  39 61 00 50 */	addi r11, r1, 0x50
/* 80477624  4B EE AB AD */	bl _savegpr_26
/* 80477628  7C 7E 1B 78 */	mr r30, r3
/* 8047762C  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80477630  3B E3 99 0C */	addi r31, r3, l_cyl_info@l /* 0x8047990C@l */
/* 80477634  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80477638  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8047763C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80477640  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80477644  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80477648  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8047764C  C0 1F 0B 1C */	lfs f0, 0xb1c(r31)
/* 80477650  EC 01 00 2A */	fadds f0, f1, f0
/* 80477654  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80477658  3C 60 80 48 */	lis r3, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 8047765C  38 63 A4 BC */	addi r3, r3, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 80477660  38 63 01 79 */	addi r3, r3, 0x179
/* 80477664  38 80 00 20 */	li r4, 0x20
/* 80477668  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047766C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80477670  3F 65 00 02 */	addis r27, r5, 2
/* 80477674  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80477678  7F 65 DB 78 */	mr r5, r27
/* 8047767C  38 C0 00 80 */	li r6, 0x80
/* 80477680  4B BC 4C 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80477684  7C 7C 1B 78 */	mr r28, r3
/* 80477688  3C 60 80 48 */	lis r3, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 8047768C  38 63 A4 BC */	addi r3, r3, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 80477690  38 63 01 79 */	addi r3, r3, 0x179
/* 80477694  38 80 00 42 */	li r4, 0x42
/* 80477698  7F 65 DB 78 */	mr r5, r27
/* 8047769C  38 C0 00 80 */	li r6, 0x80
/* 804776A0  4B BC 4C 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804776A4  7C 7D 1B 78 */	mr r29, r3
/* 804776A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804776AC  7C 05 07 74 */	extsb r5, r0
/* 804776B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804776B4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804776B8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 804776BC  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 804776C0  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 804776C4  90 01 00 08 */	stw r0, 8(r1)
/* 804776C8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804776CC  38 00 00 00 */	li r0, 0
/* 804776D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804776D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804776D8  38 1E 04 EC */	addi r0, r30, 0x4ec
/* 804776DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804776E0  38 80 00 00 */	li r4, 0
/* 804776E4  38 A0 01 5C */	li r5, 0x15c
/* 804776E8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804776EC  38 E0 00 00 */	li r7, 0
/* 804776F0  39 00 00 00 */	li r8, 0
/* 804776F4  39 20 00 00 */	li r9, 0
/* 804776F8  39 40 00 FF */	li r10, 0xff
/* 804776FC  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 80477700  4B BD 53 91 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80477704  7F 84 E3 78 */	mr r4, r28
/* 80477708  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8047770C  38 C0 00 03 */	li r6, 3
/* 80477710  7F A7 EB 78 */	mr r7, r29
/* 80477714  39 00 00 00 */	li r8, 0
/* 80477718  39 20 00 05 */	li r9, 5
/* 8047771C  4B BD 34 E5 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80477720  3B 40 00 00 */	li r26, 0
/* 80477724  3B A0 00 00 */	li r29, 0
/* 80477728  3B 9F 0B A0 */	addi r28, r31, 0xba0
lbl_8047772C:
/* 8047772C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80477730  38 80 00 00 */	li r4, 0
/* 80477734  90 81 00 08 */	stw r4, 8(r1)
/* 80477738  38 00 FF FF */	li r0, -1
/* 8047773C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80477740  90 81 00 10 */	stw r4, 0x10(r1)
/* 80477744  90 81 00 14 */	stw r4, 0x14(r1)
/* 80477748  90 81 00 18 */	stw r4, 0x18(r1)
/* 8047774C  38 80 00 00 */	li r4, 0
/* 80477750  7C BC EA 2E */	lhzx r5, r28, r29
/* 80477754  38 C1 00 20 */	addi r6, r1, 0x20
/* 80477758  38 E0 00 00 */	li r7, 0
/* 8047775C  39 00 00 00 */	li r8, 0
/* 80477760  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80477764  39 40 00 FF */	li r10, 0xff
/* 80477768  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 8047776C  4B BD 53 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80477770  3B 5A 00 01 */	addi r26, r26, 1
/* 80477774  2C 1A 00 03 */	cmpwi r26, 3
/* 80477778  3B BD 00 02 */	addi r29, r29, 2
/* 8047777C  41 80 FF B0 */	blt lbl_8047772C
/* 80477780  39 61 00 50 */	addi r11, r1, 0x50
/* 80477784  4B EE AA 99 */	bl _restgpr_26
/* 80477788  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8047778C  7C 08 03 A6 */	mtlr r0
/* 80477790  38 21 00 50 */	addi r1, r1, 0x50
/* 80477794  4E 80 00 20 */	blr 
