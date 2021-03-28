lbl_809D0BDC:
/* 809D0BDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D0BE0  7C 08 02 A6 */	mflr r0
/* 809D0BE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D0BE8  39 61 00 30 */	addi r11, r1, 0x30
/* 809D0BEC  4B 99 15 EC */	b _savegpr_28
/* 809D0BF0  7C 7F 1B 78 */	mr r31, r3
/* 809D0BF4  80 83 0D D0 */	lwz r4, 0xdd0(r3)
/* 809D0BF8  80 03 0D D4 */	lwz r0, 0xdd4(r3)
/* 809D0BFC  90 81 00 08 */	stw r4, 8(r1)
/* 809D0C00  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D0C04  80 03 0D D8 */	lwz r0, 0xdd8(r3)
/* 809D0C08  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D0C0C  3B 80 00 0A */	li r28, 0xa
/* 809D0C10  48 00 14 15 */	bl selectAction__11daNpc_Grd_cFv
/* 809D0C14  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 809D0C18  28 00 00 00 */	cmplwi r0, 0
/* 809D0C1C  40 82 00 20 */	bne lbl_809D0C3C
/* 809D0C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D0C24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D0C28  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809D0C2C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809D0C30  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809D0C34  41 82 00 08 */	beq lbl_809D0C3C
/* 809D0C38  3B 80 00 00 */	li r28, 0
lbl_809D0C3C:
/* 809D0C3C  38 7F 0D D0 */	addi r3, r31, 0xdd0
/* 809D0C40  38 81 00 08 */	addi r4, r1, 8
/* 809D0C44  4B 99 14 04 */	b __ptmf_cmpr
/* 809D0C48  2C 03 00 00 */	cmpwi r3, 0
/* 809D0C4C  41 82 00 2C */	beq lbl_809D0C78
/* 809D0C50  3B A0 00 03 */	li r29, 3
/* 809D0C54  3B C0 00 18 */	li r30, 0x18
/* 809D0C58  48 00 00 18 */	b lbl_809D0C70
lbl_809D0C5C:
/* 809D0C5C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809D0C60  7C 7F 1A 14 */	add r3, r31, r3
/* 809D0C64  4B 77 FA 4C */	b initialize__18daNpcF_ActorMngr_cFv
/* 809D0C68  3B BD 00 01 */	addi r29, r29, 1
/* 809D0C6C  3B DE 00 08 */	addi r30, r30, 8
lbl_809D0C70:
/* 809D0C70  2C 1D 00 03 */	cmpwi r29, 3
/* 809D0C74  41 80 FF E8 */	blt lbl_809D0C5C
lbl_809D0C78:
/* 809D0C78  38 00 00 00 */	li r0, 0
/* 809D0C7C  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 809D0C80  90 1F 0E 04 */	stw r0, 0xe04(r31)
/* 809D0C84  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha
/* 809D0C88  38 A3 3A 04 */	addi r5, r3, m__17daNpc_Grd_Param_c@l
/* 809D0C8C  AB A5 00 48 */	lha r29, 0x48(r5)
/* 809D0C90  AB C5 00 4A */	lha r30, 0x4a(r5)
/* 809D0C94  7F E3 FB 78 */	mr r3, r31
/* 809D0C98  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 809D0C9C  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 809D0CA0  4B 78 35 D8 */	b getDistTableIdx__8daNpcF_cFii
/* 809D0CA4  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809D0CA8  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809D0CAC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809D0CB0  7F E3 FB 78 */	mr r3, r31
/* 809D0CB4  7F A4 07 34 */	extsh r4, r29
/* 809D0CB8  7F C5 07 34 */	extsh r5, r30
/* 809D0CBC  4B 78 35 BC */	b getDistTableIdx__8daNpcF_cFii
/* 809D0CC0  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809D0CC4  93 9F 05 5C */	stw r28, 0x55c(r31)
/* 809D0CC8  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha
/* 809D0CCC  38 83 3A 04 */	addi r4, r3, m__17daNpc_Grd_Param_c@l
/* 809D0CD0  C0 04 00 08 */	lfs f0, 8(r4)
/* 809D0CD4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809D0CD8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809D0CDC  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809D0CE0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809D0CE4  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809D0CE8  4B 6A 52 58 */	b SetWallR__12dBgS_AcchCirFf
/* 809D0CEC  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha
/* 809D0CF0  38 63 3A 04 */	addi r3, r3, m__17daNpc_Grd_Param_c@l
/* 809D0CF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809D0CF8  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 809D0CFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 809D0D00  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809D0D04  39 61 00 30 */	addi r11, r1, 0x30
/* 809D0D08  4B 99 15 1C */	b _restgpr_28
/* 809D0D0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D0D10  7C 08 03 A6 */	mtlr r0
/* 809D0D14  38 21 00 30 */	addi r1, r1, 0x30
/* 809D0D18  4E 80 00 20 */	blr 
