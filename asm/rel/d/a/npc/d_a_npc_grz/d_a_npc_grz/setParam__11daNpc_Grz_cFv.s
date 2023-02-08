lbl_809E9808:
/* 809E9808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E980C  7C 08 02 A6 */	mflr r0
/* 809E9810  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E9814  39 61 00 30 */	addi r11, r1, 0x30
/* 809E9818  4B 97 89 C1 */	bl _savegpr_28
/* 809E981C  7C 7E 1B 78 */	mr r30, r3
/* 809E9820  80 83 1A 24 */	lwz r4, 0x1a24(r3)
/* 809E9824  80 03 1A 28 */	lwz r0, 0x1a28(r3)
/* 809E9828  90 81 00 08 */	stw r4, 8(r1)
/* 809E982C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E9830  80 03 1A 2C */	lwz r0, 0x1a2c(r3)
/* 809E9834  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E9838  3B E0 00 0A */	li r31, 0xa
/* 809E983C  48 00 22 D5 */	bl selectAction__11daNpc_Grz_cFv
/* 809E9840  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809E9844  28 00 00 00 */	cmplwi r0, 0
/* 809E9848  40 82 00 20 */	bne lbl_809E9868
/* 809E984C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E9850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E9854  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809E9858  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809E985C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809E9860  41 82 00 08 */	beq lbl_809E9868
/* 809E9864  3B E0 00 00 */	li r31, 0
lbl_809E9868:
/* 809E9868  38 7E 1A 24 */	addi r3, r30, 0x1a24
/* 809E986C  38 81 00 08 */	addi r4, r1, 8
/* 809E9870  4B 97 87 D9 */	bl __ptmf_cmpr
/* 809E9874  2C 03 00 00 */	cmpwi r3, 0
/* 809E9878  41 82 00 2C */	beq lbl_809E98A4
/* 809E987C  3B 80 00 04 */	li r28, 4
/* 809E9880  3B A0 00 20 */	li r29, 0x20
/* 809E9884  48 00 00 18 */	b lbl_809E989C
lbl_809E9888:
/* 809E9888  38 7D 12 A8 */	addi r3, r29, 0x12a8
/* 809E988C  7C 7E 1A 14 */	add r3, r30, r3
/* 809E9890  4B 76 6E 21 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809E9894  3B 9C 00 01 */	addi r28, r28, 1
/* 809E9898  3B BD 00 08 */	addi r29, r29, 8
lbl_809E989C:
/* 809E989C  2C 1C 00 04 */	cmpwi r28, 4
/* 809E98A0  41 80 FF E8 */	blt lbl_809E9888
lbl_809E98A4:
/* 809E98A4  38 80 00 00 */	li r4, 0
/* 809E98A8  90 9E 1A 64 */	stw r4, 0x1a64(r30)
/* 809E98AC  90 9E 1A 68 */	stw r4, 0x1a68(r30)
/* 809E98B0  38 00 00 43 */	li r0, 0x43
/* 809E98B4  98 1E 05 44 */	stb r0, 0x544(r30)
/* 809E98B8  98 1E 05 45 */	stb r0, 0x545(r30)
/* 809E98BC  38 00 00 42 */	li r0, 0x42
/* 809E98C0  98 1E 05 47 */	stb r0, 0x547(r30)
/* 809E98C4  88 1E 1A 7C */	lbz r0, 0x1a7c(r30)
/* 809E98C8  2C 00 00 02 */	cmpwi r0, 2
/* 809E98CC  41 82 00 08 */	beq lbl_809E98D4
/* 809E98D0  48 00 00 2C */	b lbl_809E98FC
lbl_809E98D4:
/* 809E98D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E98D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E98DC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809E98E0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809E98E4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809E98E8  41 82 00 0C */	beq lbl_809E98F4
/* 809E98EC  90 9E 05 5C */	stw r4, 0x55c(r30)
/* 809E98F0  48 00 00 10 */	b lbl_809E9900
lbl_809E98F4:
/* 809E98F4  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 809E98F8  48 00 00 08 */	b lbl_809E9900
lbl_809E98FC:
/* 809E98FC  93 FE 05 5C */	stw r31, 0x55c(r30)
lbl_809E9900:
/* 809E9900  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809E9904  38 83 F1 F4 */	addi r4, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809E9908  C0 04 00 08 */	lfs f0, 8(r4)
/* 809E990C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 809E9910  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 809E9914  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 809E9918  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809E991C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E9920  4B 68 C6 21 */	bl SetWallR__12dBgS_AcchCirFf
/* 809E9924  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809E9928  38 63 F1 F4 */	addi r3, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809E992C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809E9930  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 809E9934  C0 03 00 04 */	lfs f0, 4(r3)
/* 809E9938  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 809E993C  39 61 00 30 */	addi r11, r1, 0x30
/* 809E9940  4B 97 88 E5 */	bl _restgpr_28
/* 809E9944  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E9948  7C 08 03 A6 */	mtlr r0
/* 809E994C  38 21 00 30 */	addi r1, r1, 0x30
/* 809E9950  4E 80 00 20 */	blr 
