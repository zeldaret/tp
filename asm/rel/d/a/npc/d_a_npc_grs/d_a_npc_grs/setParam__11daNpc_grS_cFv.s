lbl_809E4FDC:
/* 809E4FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E4FE0  7C 08 02 A6 */	mflr r0
/* 809E4FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E4FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 809E4FEC  4B 97 D1 EC */	b _savegpr_28
/* 809E4FF0  7C 7F 1B 78 */	mr r31, r3
/* 809E4FF4  80 83 0D CC */	lwz r4, 0xdcc(r3)
/* 809E4FF8  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 809E4FFC  90 81 00 08 */	stw r4, 8(r1)
/* 809E5000  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E5004  80 03 0D D4 */	lwz r0, 0xdd4(r3)
/* 809E5008  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E500C  3B A0 00 0A */	li r29, 0xa
/* 809E5010  48 00 13 B5 */	bl selectAction__11daNpc_grS_cFv
/* 809E5014  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 809E5018  28 00 00 00 */	cmplwi r0, 0
/* 809E501C  40 82 00 20 */	bne lbl_809E503C
/* 809E5020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E5024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E5028  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809E502C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809E5030  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809E5034  41 82 00 08 */	beq lbl_809E503C
/* 809E5038  3B A0 00 00 */	li r29, 0
lbl_809E503C:
/* 809E503C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 809E5040  38 81 00 08 */	addi r4, r1, 8
/* 809E5044  4B 97 D0 04 */	b __ptmf_cmpr
/* 809E5048  2C 03 00 00 */	cmpwi r3, 0
/* 809E504C  41 82 00 2C */	beq lbl_809E5078
/* 809E5050  3B 80 00 02 */	li r28, 2
/* 809E5054  3B C0 00 10 */	li r30, 0x10
/* 809E5058  48 00 00 18 */	b lbl_809E5070
lbl_809E505C:
/* 809E505C  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809E5060  7C 7F 1A 14 */	add r3, r31, r3
/* 809E5064  4B 76 B6 4C */	b initialize__18daNpcF_ActorMngr_cFv
/* 809E5068  3B 9C 00 01 */	addi r28, r28, 1
/* 809E506C  3B DE 00 08 */	addi r30, r30, 8
lbl_809E5070:
/* 809E5070  2C 1C 00 02 */	cmpwi r28, 2
/* 809E5074  41 80 FF E8 */	blt lbl_809E505C
lbl_809E5078:
/* 809E5078  38 00 00 00 */	li r0, 0
/* 809E507C  90 1F 0D FC */	stw r0, 0xdfc(r31)
/* 809E5080  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 809E5084  7F E3 FB 78 */	mr r3, r31
/* 809E5088  38 80 00 05 */	li r4, 5
/* 809E508C  38 A0 00 06 */	li r5, 6
/* 809E5090  4B 76 F1 E8 */	b getDistTableIdx__8daNpcF_cFii
/* 809E5094  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809E5098  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809E509C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809E50A0  7F E3 FB 78 */	mr r3, r31
/* 809E50A4  38 80 00 03 */	li r4, 3
/* 809E50A8  38 A0 00 06 */	li r5, 6
/* 809E50AC  4B 76 F1 CC */	b getDistTableIdx__8daNpcF_cFii
/* 809E50B0  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809E50B4  93 BF 05 5C */	stw r29, 0x55c(r31)
/* 809E50B8  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha
/* 809E50BC  38 83 7D CC */	addi r4, r3, m__17daNpc_grS_Param_c@l
/* 809E50C0  C0 04 00 08 */	lfs f0, 8(r4)
/* 809E50C4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809E50C8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809E50CC  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809E50D0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809E50D4  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E50D8  4B 69 0E 68 */	b SetWallR__12dBgS_AcchCirFf
/* 809E50DC  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha
/* 809E50E0  38 63 7D CC */	addi r3, r3, m__17daNpc_grS_Param_c@l
/* 809E50E4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809E50E8  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 809E50EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 809E50F0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809E50F4  39 61 00 30 */	addi r11, r1, 0x30
/* 809E50F8  4B 97 D1 2C */	b _restgpr_28
/* 809E50FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E5100  7C 08 03 A6 */	mtlr r0
/* 809E5104  38 21 00 30 */	addi r1, r1, 0x30
/* 809E5108  4E 80 00 20 */	blr 
