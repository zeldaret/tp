lbl_809E0780:
/* 809E0780  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E0784  7C 08 02 A6 */	mflr r0
/* 809E0788  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E078C  39 61 00 30 */	addi r11, r1, 0x30
/* 809E0790  4B 98 1A 48 */	b _savegpr_28
/* 809E0794  7C 7E 1B 78 */	mr r30, r3
/* 809E0798  80 83 0D C8 */	lwz r4, 0xdc8(r3)
/* 809E079C  80 03 0D CC */	lwz r0, 0xdcc(r3)
/* 809E07A0  90 81 00 08 */	stw r4, 8(r1)
/* 809E07A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E07A8  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 809E07AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E07B0  3B E0 00 0A */	li r31, 0xa
/* 809E07B4  48 00 18 31 */	bl selectAction__11daNpc_grR_cFv
/* 809E07B8  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809E07BC  28 00 00 00 */	cmplwi r0, 0
/* 809E07C0  40 82 00 20 */	bne lbl_809E07E0
/* 809E07C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E07C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E07CC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809E07D0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809E07D4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809E07D8  41 82 00 08 */	beq lbl_809E07E0
/* 809E07DC  3B E0 00 00 */	li r31, 0
lbl_809E07E0:
/* 809E07E0  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 809E07E4  38 81 00 08 */	addi r4, r1, 8
/* 809E07E8  4B 98 18 60 */	b __ptmf_cmpr
/* 809E07EC  2C 03 00 00 */	cmpwi r3, 0
/* 809E07F0  41 82 00 2C */	beq lbl_809E081C
/* 809E07F4  3B 80 00 02 */	li r28, 2
/* 809E07F8  3B A0 00 10 */	li r29, 0x10
/* 809E07FC  48 00 00 18 */	b lbl_809E0814
lbl_809E0800:
/* 809E0800  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809E0804  7C 7E 1A 14 */	add r3, r30, r3
/* 809E0808  4B 76 FE A8 */	b initialize__18daNpcF_ActorMngr_cFv
/* 809E080C  3B 9C 00 01 */	addi r28, r28, 1
/* 809E0810  3B BD 00 08 */	addi r29, r29, 8
lbl_809E0814:
/* 809E0814  2C 1C 00 02 */	cmpwi r28, 2
/* 809E0818  41 80 FF E8 */	blt lbl_809E0800
lbl_809E081C:
/* 809E081C  38 00 00 00 */	li r0, 0
/* 809E0820  90 1E 0D F8 */	stw r0, 0xdf8(r30)
/* 809E0824  90 1E 0D FC */	stw r0, 0xdfc(r30)
/* 809E0828  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha
/* 809E082C  38 63 38 D8 */	addi r3, r3, m__17daNpc_grR_Param_c@l
/* 809E0830  AB A3 00 48 */	lha r29, 0x48(r3)
/* 809E0834  A8 83 00 4C */	lha r4, 0x4c(r3)
/* 809E0838  88 1E 0E 10 */	lbz r0, 0xe10(r30)
/* 809E083C  28 00 00 02 */	cmplwi r0, 2
/* 809E0840  40 82 00 10 */	bne lbl_809E0850
/* 809E0844  3B 80 00 06 */	li r28, 6
/* 809E0848  38 A0 00 06 */	li r5, 6
/* 809E084C  48 00 00 28 */	b lbl_809E0874
lbl_809E0850:
/* 809E0850  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 809E0854  A8 A3 00 4E */	lha r5, 0x4e(r3)
/* 809E0858  80 1E 0E 1C */	lwz r0, 0xe1c(r30)
/* 809E085C  2C 00 00 0B */	cmpwi r0, 0xb
/* 809E0860  41 82 00 14 */	beq lbl_809E0874
/* 809E0864  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 809E0868  28 00 00 00 */	cmplwi r0, 0
/* 809E086C  40 82 00 08 */	bne lbl_809E0874
/* 809E0870  3B E0 00 00 */	li r31, 0
lbl_809E0874:
/* 809E0874  7F C3 F3 78 */	mr r3, r30
/* 809E0878  7C 84 07 34 */	extsh r4, r4
/* 809E087C  7C A5 07 34 */	extsh r5, r5
/* 809E0880  4B 77 39 F8 */	b getDistTableIdx__8daNpcF_cFii
/* 809E0884  98 7E 05 44 */	stb r3, 0x544(r30)
/* 809E0888  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 809E088C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 809E0890  7F C3 F3 78 */	mr r3, r30
/* 809E0894  7F A4 07 34 */	extsh r4, r29
/* 809E0898  7F 85 07 34 */	extsh r5, r28
/* 809E089C  4B 77 39 DC */	b getDistTableIdx__8daNpcF_cFii
/* 809E08A0  98 7E 05 47 */	stb r3, 0x547(r30)
/* 809E08A4  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 809E08A8  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha
/* 809E08AC  38 83 38 D8 */	addi r4, r3, m__17daNpc_grR_Param_c@l
/* 809E08B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 809E08B4  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 809E08B8  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 809E08BC  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 809E08C0  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809E08C4  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E08C8  4B 69 56 78 */	b SetWallR__12dBgS_AcchCirFf
/* 809E08CC  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha
/* 809E08D0  38 63 38 D8 */	addi r3, r3, m__17daNpc_grR_Param_c@l
/* 809E08D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809E08D8  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 809E08DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 809E08E0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 809E08E4  39 61 00 30 */	addi r11, r1, 0x30
/* 809E08E8  4B 98 19 3C */	b _restgpr_28
/* 809E08EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E08F0  7C 08 03 A6 */	mtlr r0
/* 809E08F4  38 21 00 30 */	addi r1, r1, 0x30
/* 809E08F8  4E 80 00 20 */	blr 
