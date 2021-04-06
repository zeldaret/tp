lbl_809F4258:
/* 809F4258  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F425C  7C 08 02 A6 */	mflr r0
/* 809F4260  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F4264  39 61 00 30 */	addi r11, r1, 0x30
/* 809F4268  4B 96 DF 71 */	bl _savegpr_28
/* 809F426C  7C 7F 1B 78 */	mr r31, r3
/* 809F4270  80 83 0D C8 */	lwz r4, 0xdc8(r3)
/* 809F4274  80 03 0D CC */	lwz r0, 0xdcc(r3)
/* 809F4278  90 81 00 08 */	stw r4, 8(r1)
/* 809F427C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F4280  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 809F4284  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F4288  3B A0 00 0A */	li r29, 0xa
/* 809F428C  48 00 14 19 */	bl selectAction__13daNpc_GWolf_cFv
/* 809F4290  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 809F4294  38 81 00 08 */	addi r4, r1, 8
/* 809F4298  4B 96 DD B1 */	bl __ptmf_cmpr
/* 809F429C  2C 03 00 00 */	cmpwi r3, 0
/* 809F42A0  41 82 00 2C */	beq lbl_809F42CC
/* 809F42A4  3B 80 00 02 */	li r28, 2
/* 809F42A8  3B C0 00 10 */	li r30, 0x10
/* 809F42AC  48 00 00 18 */	b lbl_809F42C4
lbl_809F42B0:
/* 809F42B0  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809F42B4  7C 7F 1A 14 */	add r3, r31, r3
/* 809F42B8  4B 75 C3 F9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809F42BC  3B 9C 00 01 */	addi r28, r28, 1
/* 809F42C0  3B DE 00 08 */	addi r30, r30, 8
lbl_809F42C4:
/* 809F42C4  2C 1C 00 02 */	cmpwi r28, 2
/* 809F42C8  41 80 FF E8 */	blt lbl_809F42B0
lbl_809F42CC:
/* 809F42CC  38 00 00 00 */	li r0, 0
/* 809F42D0  90 1F 0D F8 */	stw r0, 0xdf8(r31)
/* 809F42D4  90 1F 0D FC */	stw r0, 0xdfc(r31)
/* 809F42D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F42DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F42E0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809F42E4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809F42E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809F42EC  40 82 00 08 */	bne lbl_809F42F4
/* 809F42F0  3B A0 00 00 */	li r29, 0
lbl_809F42F4:
/* 809F42F4  7F E3 FB 78 */	mr r3, r31
/* 809F42F8  38 80 00 05 */	li r4, 5
/* 809F42FC  38 A0 00 06 */	li r5, 6
/* 809F4300  4B 75 FF 79 */	bl getDistTableIdx__8daNpcF_cFii
/* 809F4304  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809F4308  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809F430C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809F4310  7F E3 FB 78 */	mr r3, r31
/* 809F4314  38 80 00 03 */	li r4, 3
/* 809F4318  38 A0 00 06 */	li r5, 6
/* 809F431C  4B 75 FF 5D */	bl getDistTableIdx__8daNpcF_cFii
/* 809F4320  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809F4324  93 BF 05 5C */	stw r29, 0x55c(r31)
/* 809F4328  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F432C  38 83 84 F4 */	addi r4, r3, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F4330  C0 04 00 08 */	lfs f0, 8(r4)
/* 809F4334  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809F4338  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809F433C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809F4340  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809F4344  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809F4348  4B 68 1B F9 */	bl SetWallR__12dBgS_AcchCirFf
/* 809F434C  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F4350  38 83 84 F4 */	addi r4, r3, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F4354  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809F4358  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 809F435C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F4360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F4364  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809F4368  28 00 00 00 */	cmplwi r0, 0
/* 809F436C  40 82 00 0C */	bne lbl_809F4378
/* 809F4370  C0 04 00 04 */	lfs f0, 4(r4)
/* 809F4374  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_809F4378:
/* 809F4378  39 61 00 30 */	addi r11, r1, 0x30
/* 809F437C  4B 96 DE A9 */	bl _restgpr_28
/* 809F4380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F4384  7C 08 03 A6 */	mtlr r0
/* 809F4388  38 21 00 30 */	addi r1, r1, 0x30
/* 809F438C  4E 80 00 20 */	blr 
