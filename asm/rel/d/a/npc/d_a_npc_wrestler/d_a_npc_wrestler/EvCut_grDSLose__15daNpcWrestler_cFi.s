lbl_80B3E584:
/* 80B3E584  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B3E588  7C 08 02 A6 */	mflr r0
/* 80B3E58C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3E590  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3E594  4B 82 3C 3D */	bl _savegpr_26
/* 80B3E598  7C 7D 1B 78 */	mr r29, r3
/* 80B3E59C  7C 9A 23 78 */	mr r26, r4
/* 80B3E5A0  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3E5A4  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3E5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3E5AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3E5B0  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B3E5B4  7F 63 DB 78 */	mr r3, r27
/* 80B3E5B8  4B 50 99 A5 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B3E5BC  7C 7F 1B 78 */	mr r31, r3
/* 80B3E5C0  7F 63 DB 78 */	mr r3, r27
/* 80B3E5C4  7F 44 D3 78 */	mr r4, r26
/* 80B3E5C8  4B 50 97 85 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B3E5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E5D0  41 82 01 20 */	beq lbl_80B3E6F0
/* 80B3E5D4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B3E5D8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B3E5DC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B3E5E0  7C 04 00 00 */	cmpw r4, r0
/* 80B3E5E4  41 82 00 1C */	beq lbl_80B3E600
/* 80B3E5E8  40 80 00 08 */	bge lbl_80B3E5F0
/* 80B3E5EC  48 00 01 04 */	b lbl_80B3E6F0
lbl_80B3E5F0:
/* 80B3E5F0  38 03 30 35 */	addi r0, r3, 0x3035
/* 80B3E5F4  7C 04 00 00 */	cmpw r4, r0
/* 80B3E5F8  40 80 00 F8 */	bge lbl_80B3E6F0
/* 80B3E5FC  48 00 00 D8 */	b lbl_80B3E6D4
lbl_80B3E600:
/* 80B3E600  7F 63 DB 78 */	mr r3, r27
/* 80B3E604  7F 44 D3 78 */	mr r4, r26
/* 80B3E608  3C A0 80 B4 */	lis r5, d_a_npc_wrestler__stringBase0@ha /* 0x80B41D7C@ha */
/* 80B3E60C  38 A5 1D 7C */	addi r5, r5, d_a_npc_wrestler__stringBase0@l /* 0x80B41D7C@l */
/* 80B3E610  38 A5 00 74 */	addi r5, r5, 0x74
/* 80B3E614  38 C0 00 03 */	li r6, 3
/* 80B3E618  4B 50 9A D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B3E61C  7C 7C 1B 78 */	mr r28, r3
/* 80B3E620  7F 63 DB 78 */	mr r3, r27
/* 80B3E624  7F 44 D3 78 */	mr r4, r26
/* 80B3E628  3C A0 80 B4 */	lis r5, d_a_npc_wrestler__stringBase0@ha /* 0x80B41D7C@ha */
/* 80B3E62C  38 A5 1D 7C */	addi r5, r5, d_a_npc_wrestler__stringBase0@l /* 0x80B41D7C@l */
/* 80B3E630  38 A5 00 70 */	addi r5, r5, 0x70
/* 80B3E634  38 C0 00 01 */	li r6, 1
/* 80B3E638  4B 50 9A B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B3E63C  28 03 00 00 */	cmplwi r3, 0
/* 80B3E640  41 82 00 34 */	beq lbl_80B3E674
/* 80B3E644  C0 03 00 00 */	lfs f0, 0(r3)
/* 80B3E648  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B3E64C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B3E650  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B3E654  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B3E658  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B3E65C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B3E660  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80B3E664  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B3E668  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80B3E66C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B3E670  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
lbl_80B3E674:
/* 80B3E674  28 1C 00 00 */	cmplwi r28, 0
/* 80B3E678  41 82 00 14 */	beq lbl_80B3E68C
/* 80B3E67C  7F A3 EB 78 */	mr r3, r29
/* 80B3E680  80 1C 00 00 */	lwz r0, 0(r28)
/* 80B3E684  7C 04 07 34 */	extsh r4, r0
/* 80B3E688  4B 61 5B C9 */	bl setAngle__8daNpcF_cFs
lbl_80B3E68C:
/* 80B3E68C  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B3E690  2C 00 00 03 */	cmpwi r0, 3
/* 80B3E694  41 82 00 0C */	beq lbl_80B3E6A0
/* 80B3E698  38 00 00 03 */	li r0, 3
/* 80B3E69C  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B3E6A0:
/* 80B3E6A0  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B3E6A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3E6A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3E6AC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3E6B0  4B 61 20 0D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3E6B4  7F A3 EB 78 */	mr r3, r29
/* 80B3E6B8  38 80 00 39 */	li r4, 0x39
/* 80B3E6BC  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B3E6C0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E6C4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B3E6C8  7D 89 03 A6 */	mtctr r12
/* 80B3E6CC  4E 80 04 21 */	bctrl 
/* 80B3E6D0  48 00 00 20 */	b lbl_80B3E6F0
lbl_80B3E6D4:
/* 80B3E6D4  7F A3 EB 78 */	mr r3, r29
/* 80B3E6D8  80 9D 0E 88 */	lwz r4, 0xe88(r29)
/* 80B3E6DC  38 A0 00 00 */	li r5, 0
/* 80B3E6E0  4B 61 56 3D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3E6E4  38 00 00 00 */	li r0, 0
/* 80B3E6E8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E6EC  90 1D 09 50 */	stw r0, 0x950(r29)
lbl_80B3E6F0:
/* 80B3E6F0  83 7D 09 50 */	lwz r27, 0x950(r29)
/* 80B3E6F4  7F A3 EB 78 */	mr r3, r29
/* 80B3E6F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B3E6FC  38 A1 00 08 */	addi r5, r1, 8
/* 80B3E700  7F A6 EB 78 */	mr r6, r29
/* 80B3E704  38 E0 00 00 */	li r7, 0
/* 80B3E708  4B 61 50 11 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B3E70C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E710  41 82 00 44 */	beq lbl_80B3E754
/* 80B3E714  7F A3 EB 78 */	mr r3, r29
/* 80B3E718  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B3E71C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E720  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E724  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E728  7D 89 03 A6 */	mtctr r12
/* 80B3E72C  4E 80 04 21 */	bctrl 
/* 80B3E730  7F A3 EB 78 */	mr r3, r29
/* 80B3E734  80 81 00 08 */	lwz r4, 8(r1)
/* 80B3E738  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E73C  38 A0 00 00 */	li r5, 0
/* 80B3E740  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E744  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E748  7D 89 03 A6 */	mtctr r12
/* 80B3E74C  4E 80 04 21 */	bctrl 
/* 80B3E750  48 00 00 90 */	b lbl_80B3E7E0
lbl_80B3E754:
/* 80B3E754  2C 1B 00 00 */	cmpwi r27, 0
/* 80B3E758  41 82 00 88 */	beq lbl_80B3E7E0
/* 80B3E75C  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80B3E760  2C 00 00 00 */	cmpwi r0, 0
/* 80B3E764  40 82 00 7C */	bne lbl_80B3E7E0
/* 80B3E768  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80B3E76C  2C 00 00 02 */	cmpwi r0, 2
/* 80B3E770  41 82 00 34 */	beq lbl_80B3E7A4
/* 80B3E774  40 80 00 50 */	bge lbl_80B3E7C4
/* 80B3E778  2C 00 00 01 */	cmpwi r0, 1
/* 80B3E77C  40 80 00 08 */	bge lbl_80B3E784
/* 80B3E780  48 00 00 44 */	b lbl_80B3E7C4
lbl_80B3E784:
/* 80B3E784  7F A3 EB 78 */	mr r3, r29
/* 80B3E788  38 80 00 03 */	li r4, 3
/* 80B3E78C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E790  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E794  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E798  7D 89 03 A6 */	mtctr r12
/* 80B3E79C  4E 80 04 21 */	bctrl 
/* 80B3E7A0  48 00 00 40 */	b lbl_80B3E7E0
lbl_80B3E7A4:
/* 80B3E7A4  7F A3 EB 78 */	mr r3, r29
/* 80B3E7A8  38 80 00 04 */	li r4, 4
/* 80B3E7AC  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E7B0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E7B4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E7B8  7D 89 03 A6 */	mtctr r12
/* 80B3E7BC  4E 80 04 21 */	bctrl 
/* 80B3E7C0  48 00 00 20 */	b lbl_80B3E7E0
lbl_80B3E7C4:
/* 80B3E7C4  7F A3 EB 78 */	mr r3, r29
/* 80B3E7C8  38 80 00 05 */	li r4, 5
/* 80B3E7CC  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E7D0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E7D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E7D8  7D 89 03 A6 */	mtctr r12
/* 80B3E7DC  4E 80 04 21 */	bctrl 
lbl_80B3E7E0:
/* 80B3E7E0  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B3E7E4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80B3E7E8  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80B3E7EC  7C 04 00 00 */	cmpw r4, r0
/* 80B3E7F0  40 80 00 14 */	bge lbl_80B3E804
/* 80B3E7F4  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B3E7F8  7C 04 00 00 */	cmpw r4, r0
/* 80B3E7FC  40 80 00 18 */	bge lbl_80B3E814
/* 80B3E800  48 00 02 10 */	b lbl_80B3EA10
lbl_80B3E804:
/* 80B3E804  38 03 30 35 */	addi r0, r3, 0x3035
/* 80B3E808  7C 04 00 00 */	cmpw r4, r0
/* 80B3E80C  40 80 02 04 */	bge lbl_80B3EA10
/* 80B3E810  48 00 00 0C */	b lbl_80B3E81C
lbl_80B3E814:
/* 80B3E814  38 60 00 01 */	li r3, 1
/* 80B3E818  48 00 01 FC */	b lbl_80B3EA14
lbl_80B3E81C:
/* 80B3E81C  7F A3 EB 78 */	mr r3, r29
/* 80B3E820  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3E824  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3E828  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B3E82C  4B 4D BE E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B3E830  7C 7C 07 34 */	extsh r28, r3
/* 80B3E834  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80B3E838  7C 1C 18 00 */	cmpw r28, r3
/* 80B3E83C  40 82 00 0C */	bne lbl_80B3E848
/* 80B3E840  38 00 00 01 */	li r0, 1
/* 80B3E844  48 00 01 94 */	b lbl_80B3E9D8
lbl_80B3E848:
/* 80B3E848  80 9D 09 6C */	lwz r4, 0x96c(r29)
/* 80B3E84C  2C 04 00 00 */	cmpwi r4, 0
/* 80B3E850  40 82 00 CC */	bne lbl_80B3E91C
/* 80B3E854  7C 03 E0 50 */	subf r0, r3, r28
/* 80B3E858  7C 00 07 34 */	extsh r0, r0
/* 80B3E85C  7C 03 E0 00 */	cmpw r3, r28
/* 80B3E860  40 82 00 10 */	bne lbl_80B3E870
/* 80B3E864  38 04 00 01 */	addi r0, r4, 1
/* 80B3E868  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E86C  48 00 00 84 */	b lbl_80B3E8F0
lbl_80B3E870:
/* 80B3E870  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 80B3E874  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B3E878  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B3E87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3E880  3C 00 43 30 */	lis r0, 0x4330
/* 80B3E884  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3E888  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B3E88C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B3E890  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B3E894  FC 00 02 10 */	fabs f0, f0
/* 80B3E898  FC 00 00 18 */	frsp f0, f0
/* 80B3E89C  FC 00 00 1E */	fctiwz f0, f0
/* 80B3E8A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B3E8A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B3E8A8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B3E8AC  40 81 00 44 */	ble lbl_80B3E8F0
/* 80B3E8B0  7F A3 EB 78 */	mr r3, r29
/* 80B3E8B4  38 80 00 05 */	li r4, 5
/* 80B3E8B8  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E8BC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E8C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E8C4  7D 89 03 A6 */	mtctr r12
/* 80B3E8C8  4E 80 04 21 */	bctrl 
/* 80B3E8CC  7F A3 EB 78 */	mr r3, r29
/* 80B3E8D0  38 80 00 06 */	li r4, 6
/* 80B3E8D4  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B3E8D8  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3E8DC  38 A0 00 00 */	li r5, 0
/* 80B3E8E0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E8E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E8E8  7D 89 03 A6 */	mtctr r12
/* 80B3E8EC  4E 80 04 21 */	bctrl 
lbl_80B3E8F0:
/* 80B3E8F0  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80B3E8F4  38 00 00 00 */	li r0, 0
/* 80B3E8F8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B3E8FC  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B3E900  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B3E904  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E908  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B3E90C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B3E910  38 03 00 01 */	addi r0, r3, 1
/* 80B3E914  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E918  48 00 00 68 */	b lbl_80B3E980
lbl_80B3E91C:
/* 80B3E91C  2C 04 00 01 */	cmpwi r4, 1
/* 80B3E920  40 82 00 60 */	bne lbl_80B3E980
/* 80B3E924  7F A3 EB 78 */	mr r3, r29
/* 80B3E928  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80B3E92C  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 80B3E930  38 A0 00 00 */	li r5, 0
/* 80B3E934  4B 61 55 C1 */	bl turn__8daNpcF_cFsfi
/* 80B3E938  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E93C  41 82 00 2C */	beq lbl_80B3E968
/* 80B3E940  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E944  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B3E948  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E94C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B3E950  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E954  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80B3E958  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B3E95C  38 03 00 01 */	addi r0, r3, 1
/* 80B3E960  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B3E964  48 00 00 1C */	b lbl_80B3E980
lbl_80B3E968:
/* 80B3E968  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B3E96C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80B3E970  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E974  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B3E978  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3E97C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_80B3E980:
/* 80B3E980  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80B3E984  2C 00 00 01 */	cmpwi r0, 1
/* 80B3E988  40 81 00 4C */	ble lbl_80B3E9D4
/* 80B3E98C  7F A3 EB 78 */	mr r3, r29
/* 80B3E990  38 80 00 05 */	li r4, 5
/* 80B3E994  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3E998  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E99C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E9A0  7D 89 03 A6 */	mtctr r12
/* 80B3E9A4  4E 80 04 21 */	bctrl 
/* 80B3E9A8  7F A3 EB 78 */	mr r3, r29
/* 80B3E9AC  38 80 00 00 */	li r4, 0
/* 80B3E9B0  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B3E9B4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3E9B8  38 A0 00 00 */	li r5, 0
/* 80B3E9BC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3E9C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E9C4  7D 89 03 A6 */	mtctr r12
/* 80B3E9C8  4E 80 04 21 */	bctrl 
/* 80B3E9CC  38 00 00 00 */	li r0, 0
/* 80B3E9D0  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B3E9D4:
/* 80B3E9D4  38 00 00 00 */	li r0, 0
lbl_80B3E9D8:
/* 80B3E9D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B3E9DC  41 82 00 34 */	beq lbl_80B3EA10
/* 80B3E9E0  7F A3 EB 78 */	mr r3, r29
/* 80B3E9E4  38 80 00 00 */	li r4, 0
/* 80B3E9E8  38 A0 00 01 */	li r5, 1
/* 80B3E9EC  38 C0 00 00 */	li r6, 0
/* 80B3E9F0  4B 61 53 95 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3E9F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E9F8  41 82 00 18 */	beq lbl_80B3EA10
/* 80B3E9FC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B3EA00  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B3EA04  4B 61 1C B9 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3EA08  38 60 00 01 */	li r3, 1
/* 80B3EA0C  48 00 00 08 */	b lbl_80B3EA14
lbl_80B3EA10:
/* 80B3EA10  38 60 00 00 */	li r3, 0
lbl_80B3EA14:
/* 80B3EA14  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3EA18  4B 82 38 05 */	bl _restgpr_26
/* 80B3EA1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B3EA20  7C 08 03 A6 */	mtlr r0
/* 80B3EA24  38 21 00 40 */	addi r1, r1, 0x40
/* 80B3EA28  4E 80 00 20 */	blr 
