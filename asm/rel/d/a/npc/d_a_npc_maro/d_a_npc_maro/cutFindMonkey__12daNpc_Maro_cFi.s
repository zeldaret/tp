lbl_8055E578:
/* 8055E578  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8055E57C  7C 08 02 A6 */	mflr r0
/* 8055E580  90 01 00 54 */	stw r0, 0x54(r1)
/* 8055E584  39 61 00 50 */	addi r11, r1, 0x50
/* 8055E588  4B E0 3C 45 */	bl _savegpr_25
/* 8055E58C  7C 7D 1B 78 */	mr r29, r3
/* 8055E590  7C 99 23 78 */	mr r25, r4
/* 8055E594  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 8055E598  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 8055E59C  3B C0 00 00 */	li r30, 0
/* 8055E5A0  3B 60 FF FF */	li r27, -1
/* 8055E5A4  3B 40 00 00 */	li r26, 0
/* 8055E5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055E5AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055E5B0  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8055E5B4  7F 83 E3 78 */	mr r3, r28
/* 8055E5B8  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055E5BC  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055E5C0  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055E5C4  38 C0 00 03 */	li r6, 3
/* 8055E5C8  4B AE 9B 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055E5CC  28 03 00 00 */	cmplwi r3, 0
/* 8055E5D0  41 82 00 08 */	beq lbl_8055E5D8
/* 8055E5D4  83 63 00 00 */	lwz r27, 0(r3)
lbl_8055E5D8:
/* 8055E5D8  7F 83 E3 78 */	mr r3, r28
/* 8055E5DC  7F 24 CB 78 */	mr r4, r25
/* 8055E5E0  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055E5E4  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055E5E8  38 A5 02 1F */	addi r5, r5, 0x21f
/* 8055E5EC  38 C0 00 03 */	li r6, 3
/* 8055E5F0  4B AE 9A FD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055E5F4  28 03 00 00 */	cmplwi r3, 0
/* 8055E5F8  41 82 00 08 */	beq lbl_8055E600
/* 8055E5FC  83 43 00 00 */	lwz r26, 0(r3)
lbl_8055E600:
/* 8055E600  7F 83 E3 78 */	mr r3, r28
/* 8055E604  7F 24 CB 78 */	mr r4, r25
/* 8055E608  4B AE 97 45 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8055E60C  2C 03 00 00 */	cmpwi r3, 0
/* 8055E610  41 82 00 84 */	beq lbl_8055E694
/* 8055E614  2C 1B 00 03 */	cmpwi r27, 3
/* 8055E618  41 82 00 20 */	beq lbl_8055E638
/* 8055E61C  40 80 00 10 */	bge lbl_8055E62C
/* 8055E620  2C 1B 00 02 */	cmpwi r27, 2
/* 8055E624  40 80 00 70 */	bge lbl_8055E694
/* 8055E628  48 00 00 6C */	b lbl_8055E694
lbl_8055E62C:
/* 8055E62C  2C 1B 00 05 */	cmpwi r27, 5
/* 8055E630  40 80 00 64 */	bge lbl_8055E694
/* 8055E634  48 00 00 44 */	b lbl_8055E678
lbl_8055E638:
/* 8055E638  93 5D 0D C4 */	stw r26, 0xdc4(r29)
/* 8055E63C  80 1D 0D C4 */	lwz r0, 0xdc4(r29)
/* 8055E640  2C 00 00 00 */	cmpwi r0, 0
/* 8055E644  40 82 00 50 */	bne lbl_8055E694
/* 8055E648  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8055E64C  2C 00 00 08 */	cmpwi r0, 8
/* 8055E650  41 82 00 44 */	beq lbl_8055E694
/* 8055E654  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8055E658  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8055E65C  4B BE 72 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E660  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8055E664  38 00 00 08 */	li r0, 8
/* 8055E668  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8055E66C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055E670  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8055E674  48 00 00 20 */	b lbl_8055E694
lbl_8055E678:
/* 8055E678  38 00 00 01 */	li r0, 1
/* 8055E67C  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 8055E680  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055E684  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8055E688  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8055E68C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8055E690  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_8055E694:
/* 8055E694  2C 1B 00 02 */	cmpwi r27, 2
/* 8055E698  41 82 02 B4 */	beq lbl_8055E94C
/* 8055E69C  40 80 00 14 */	bge lbl_8055E6B0
/* 8055E6A0  2C 1B 00 00 */	cmpwi r27, 0
/* 8055E6A4  41 82 00 1C */	beq lbl_8055E6C0
/* 8055E6A8  40 80 00 54 */	bge lbl_8055E6FC
/* 8055E6AC  48 00 02 A0 */	b lbl_8055E94C
lbl_8055E6B0:
/* 8055E6B0  2C 1B 00 04 */	cmpwi r27, 4
/* 8055E6B4  41 82 02 94 */	beq lbl_8055E948
/* 8055E6B8  40 80 02 94 */	bge lbl_8055E94C
/* 8055E6BC  48 00 00 7C */	b lbl_8055E738
lbl_8055E6C0:
/* 8055E6C0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055E6C4  2C 00 00 00 */	cmpwi r0, 0
/* 8055E6C8  41 82 00 24 */	beq lbl_8055E6EC
/* 8055E6CC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055E6D0  4B BE 70 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055E6D4  38 00 00 00 */	li r0, 0
/* 8055E6D8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8055E6DC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055E6E0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055E6E4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E6E8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8055E6EC:
/* 8055E6EC  38 00 00 00 */	li r0, 0
/* 8055E6F0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E6F4  3B C0 00 01 */	li r30, 1
/* 8055E6F8  48 00 02 54 */	b lbl_8055E94C
lbl_8055E6FC:
/* 8055E6FC  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055E700  2C 00 00 00 */	cmpwi r0, 0
/* 8055E704  41 82 00 24 */	beq lbl_8055E728
/* 8055E708  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055E70C  4B BE 6F F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055E710  38 00 00 00 */	li r0, 0
/* 8055E714  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8055E718  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055E71C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055E720  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E724  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8055E728:
/* 8055E728  38 00 00 00 */	li r0, 0
/* 8055E72C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E730  3B C0 00 01 */	li r30, 1
/* 8055E734  48 00 02 18 */	b lbl_8055E94C
lbl_8055E738:
/* 8055E738  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055E73C  2C 00 00 00 */	cmpwi r0, 0
/* 8055E740  41 82 00 24 */	beq lbl_8055E764
/* 8055E744  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055E748  4B BE 6F B5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055E74C  38 00 00 00 */	li r0, 0
/* 8055E750  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8055E754  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055E758  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055E75C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E760  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8055E764:
/* 8055E764  38 00 00 00 */	li r0, 0
/* 8055E768  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8055E76C  80 1D 0D C4 */	lwz r0, 0xdc4(r29)
/* 8055E770  2C 00 00 00 */	cmpwi r0, 0
/* 8055E774  40 82 01 94 */	bne lbl_8055E908
/* 8055E778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055E77C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055E780  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8055E784  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 8055E788  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8055E78C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8055E790  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055E794  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8055E798  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8055E79C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 8055E7A0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8055E7A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8055E7A8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055E7AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8055E7B0  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8055E7B4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8055E7B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8055E7BC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8055E7C0  38 61 00 0C */	addi r3, r1, 0xc
/* 8055E7C4  38 81 00 18 */	addi r4, r1, 0x18
/* 8055E7C8  4B DE 8B D5 */	bl PSVECSquareDistance
/* 8055E7CC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055E7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055E7D4  40 81 00 58 */	ble lbl_8055E82C
/* 8055E7D8  FC 00 08 34 */	frsqrte f0, f1
/* 8055E7DC  C8 9F 01 38 */	lfd f4, 0x138(r31)
/* 8055E7E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8055E7E4  C8 7F 01 40 */	lfd f3, 0x140(r31)
/* 8055E7E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8055E7EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8055E7F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8055E7F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8055E7F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8055E7FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8055E800  FC 01 00 32 */	fmul f0, f1, f0
/* 8055E804  FC 03 00 28 */	fsub f0, f3, f0
/* 8055E808  FC 02 00 32 */	fmul f0, f2, f0
/* 8055E80C  FC 44 00 32 */	fmul f2, f4, f0
/* 8055E810  FC 00 00 32 */	fmul f0, f0, f0
/* 8055E814  FC 01 00 32 */	fmul f0, f1, f0
/* 8055E818  FC 03 00 28 */	fsub f0, f3, f0
/* 8055E81C  FC 02 00 32 */	fmul f0, f2, f0
/* 8055E820  FC 21 00 32 */	fmul f1, f1, f0
/* 8055E824  FC 20 08 18 */	frsp f1, f1
/* 8055E828  48 00 00 88 */	b lbl_8055E8B0
lbl_8055E82C:
/* 8055E82C  C8 1F 01 48 */	lfd f0, 0x148(r31)
/* 8055E830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055E834  40 80 00 10 */	bge lbl_8055E844
/* 8055E838  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8055E83C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8055E840  48 00 00 70 */	b lbl_8055E8B0
lbl_8055E844:
/* 8055E844  D0 21 00 08 */	stfs f1, 8(r1)
/* 8055E848  80 81 00 08 */	lwz r4, 8(r1)
/* 8055E84C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8055E850  3C 00 7F 80 */	lis r0, 0x7f80
/* 8055E854  7C 03 00 00 */	cmpw r3, r0
/* 8055E858  41 82 00 14 */	beq lbl_8055E86C
/* 8055E85C  40 80 00 40 */	bge lbl_8055E89C
/* 8055E860  2C 03 00 00 */	cmpwi r3, 0
/* 8055E864  41 82 00 20 */	beq lbl_8055E884
/* 8055E868  48 00 00 34 */	b lbl_8055E89C
lbl_8055E86C:
/* 8055E86C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8055E870  41 82 00 0C */	beq lbl_8055E87C
/* 8055E874  38 00 00 01 */	li r0, 1
/* 8055E878  48 00 00 28 */	b lbl_8055E8A0
lbl_8055E87C:
/* 8055E87C  38 00 00 02 */	li r0, 2
/* 8055E880  48 00 00 20 */	b lbl_8055E8A0
lbl_8055E884:
/* 8055E884  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8055E888  41 82 00 0C */	beq lbl_8055E894
/* 8055E88C  38 00 00 05 */	li r0, 5
/* 8055E890  48 00 00 10 */	b lbl_8055E8A0
lbl_8055E894:
/* 8055E894  38 00 00 03 */	li r0, 3
/* 8055E898  48 00 00 08 */	b lbl_8055E8A0
lbl_8055E89C:
/* 8055E89C  38 00 00 04 */	li r0, 4
lbl_8055E8A0:
/* 8055E8A0  2C 00 00 01 */	cmpwi r0, 1
/* 8055E8A4  40 82 00 0C */	bne lbl_8055E8B0
/* 8055E8A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8055E8AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8055E8B0:
/* 8055E8B0  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 8055E8B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8055E8B8  40 80 00 48 */	bge lbl_8055E900
/* 8055E8BC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8055E8C0  38 81 00 24 */	addi r4, r1, 0x24
/* 8055E8C4  4B D1 23 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8055E8C8  7C 64 1B 78 */	mr r4, r3
/* 8055E8CC  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8055E8D0  38 A0 00 04 */	li r5, 4
/* 8055E8D4  38 C0 08 00 */	li r6, 0x800
/* 8055E8D8  4B D1 1D 31 */	bl cLib_addCalcAngleS2__FPssss
/* 8055E8DC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8055E8E0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8055E8E4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8055E8E8  B0 1D 0D 7A */	sth r0, 0xd7a(r29)
/* 8055E8EC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8055E8F0  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 8055E8F4  C0 5F 01 5C */	lfs f2, 0x15c(r31)
/* 8055E8F8  4B D1 1E 49 */	bl cLib_chaseF__FPfff
/* 8055E8FC  48 00 00 50 */	b lbl_8055E94C
lbl_8055E900:
/* 8055E900  3B C0 00 01 */	li r30, 1
/* 8055E904  48 00 00 48 */	b lbl_8055E94C
lbl_8055E908:
/* 8055E908  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8055E90C  48 00 5D 91 */	bl func_8056469C
/* 8055E910  2C 03 00 00 */	cmpwi r3, 0
/* 8055E914  40 82 00 38 */	bne lbl_8055E94C
/* 8055E918  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8055E91C  2C 00 00 08 */	cmpwi r0, 8
/* 8055E920  41 82 00 2C */	beq lbl_8055E94C
/* 8055E924  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8055E928  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8055E92C  4B BE 6F 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E930  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8055E934  38 00 00 08 */	li r0, 8
/* 8055E938  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8055E93C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055E940  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8055E944  48 00 00 08 */	b lbl_8055E94C
lbl_8055E948:
/* 8055E948  3B C0 00 01 */	li r30, 1
lbl_8055E94C:
/* 8055E94C  7F C3 F3 78 */	mr r3, r30
/* 8055E950  39 61 00 50 */	addi r11, r1, 0x50
/* 8055E954  4B E0 38 C5 */	bl _restgpr_25
/* 8055E958  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8055E95C  7C 08 03 A6 */	mtlr r0
/* 8055E960  38 21 00 50 */	addi r1, r1, 0x50
/* 8055E964  4E 80 00 20 */	blr 
