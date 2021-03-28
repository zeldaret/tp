lbl_80B8EBB4:
/* 80B8EBB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B8EBB8  7C 08 02 A6 */	mflr r0
/* 80B8EBBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B8EBC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8EBC4  4B 7D 36 14 */	b _savegpr_28
/* 80B8EBC8  7C 7E 1B 78 */	mr r30, r3
/* 80B8EBCC  80 83 0D D0 */	lwz r4, 0xdd0(r3)
/* 80B8EBD0  80 03 0D D4 */	lwz r0, 0xdd4(r3)
/* 80B8EBD4  90 81 00 08 */	stw r4, 8(r1)
/* 80B8EBD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8EBDC  80 03 0D D8 */	lwz r0, 0xdd8(r3)
/* 80B8EBE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8EBE4  3B E0 00 0A */	li r31, 0xa
/* 80B8EBE8  48 00 1F 59 */	bl selectAction__11daNpc_zrC_cFv
/* 80B8EBEC  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B8EBF0  28 00 00 00 */	cmplwi r0, 0
/* 80B8EBF4  40 82 00 20 */	bne lbl_80B8EC14
/* 80B8EBF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B8EBFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8EC00  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B8EC04  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B8EC08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B8EC0C  41 82 00 08 */	beq lbl_80B8EC14
/* 80B8EC10  3B E0 00 00 */	li r31, 0
lbl_80B8EC14:
/* 80B8EC14  38 7E 0D D0 */	addi r3, r30, 0xdd0
/* 80B8EC18  38 81 00 08 */	addi r4, r1, 8
/* 80B8EC1C  4B 7D 34 2C */	b __ptmf_cmpr
/* 80B8EC20  2C 03 00 00 */	cmpwi r3, 0
/* 80B8EC24  41 82 00 2C */	beq lbl_80B8EC50
/* 80B8EC28  3B 80 00 03 */	li r28, 3
/* 80B8EC2C  3B A0 00 18 */	li r29, 0x18
/* 80B8EC30  48 00 00 18 */	b lbl_80B8EC48
lbl_80B8EC34:
/* 80B8EC34  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80B8EC38  7C 7E 1A 14 */	add r3, r30, r3
/* 80B8EC3C  4B 5C 1A 74 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80B8EC40  3B 9C 00 01 */	addi r28, r28, 1
/* 80B8EC44  3B BD 00 08 */	addi r29, r29, 8
lbl_80B8EC48:
/* 80B8EC48  2C 1C 00 03 */	cmpwi r28, 3
/* 80B8EC4C  41 80 FF E8 */	blt lbl_80B8EC34
lbl_80B8EC50:
/* 80B8EC50  38 00 00 00 */	li r0, 0
/* 80B8EC54  90 1E 0E 10 */	stw r0, 0xe10(r30)
/* 80B8EC58  90 1E 0E 14 */	stw r0, 0xe14(r30)
/* 80B8EC5C  88 7E 0E 28 */	lbz r3, 0xe28(r30)
/* 80B8EC60  28 03 00 01 */	cmplwi r3, 1
/* 80B8EC64  41 82 00 C8 */	beq lbl_80B8ED2C
/* 80B8EC68  28 03 00 02 */	cmplwi r3, 2
/* 80B8EC6C  40 82 00 5C */	bne lbl_80B8ECC8
/* 80B8EC70  88 1E 0E 30 */	lbz r0, 0xe30(r30)
/* 80B8EC74  28 00 00 00 */	cmplwi r0, 0
/* 80B8EC78  41 82 00 4C */	beq lbl_80B8ECC4
/* 80B8EC7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B8EC80  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B8EC84  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80B8EC88  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B8EC8C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B8EC90  7D 89 03 A6 */	mtctr r12
/* 80B8EC94  4E 80 04 21 */	bctrl 
/* 80B8EC98  28 03 00 00 */	cmplwi r3, 0
/* 80B8EC9C  40 82 00 28 */	bne lbl_80B8ECC4
/* 80B8ECA0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80B8ECA4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B8ECA8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B8ECAC  41 82 00 18 */	beq lbl_80B8ECC4
/* 80B8ECB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B8ECB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8ECB8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80B8ECBC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B8ECC0  41 82 00 08 */	beq lbl_80B8ECC8
lbl_80B8ECC4:
/* 80B8ECC4  3B E0 00 00 */	li r31, 0
lbl_80B8ECC8:
/* 80B8ECC8  7F C3 F3 78 */	mr r3, r30
/* 80B8ECCC  38 80 00 05 */	li r4, 5
/* 80B8ECD0  38 A0 00 06 */	li r5, 6
/* 80B8ECD4  4B 5C 55 A4 */	b getDistTableIdx__8daNpcF_cFii
/* 80B8ECD8  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80B8ECDC  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80B8ECE0  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80B8ECE4  7F C3 F3 78 */	mr r3, r30
/* 80B8ECE8  38 80 00 03 */	li r4, 3
/* 80B8ECEC  38 A0 00 06 */	li r5, 6
/* 80B8ECF0  4B 5C 55 88 */	b getDistTableIdx__8daNpcF_cFii
/* 80B8ECF4  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80B8ECF8  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 80B8ECFC  88 1E 0E 28 */	lbz r0, 0xe28(r30)
/* 80B8ED00  28 00 00 03 */	cmplwi r0, 3
/* 80B8ED04  40 82 00 14 */	bne lbl_80B8ED18
/* 80B8ED08  3C 60 80 B9 */	lis r3, lit_4484@ha
/* 80B8ED0C  C0 03 32 98 */	lfs f0, lit_4484@l(r3)
/* 80B8ED10  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80B8ED14  48 00 00 34 */	b lbl_80B8ED48
lbl_80B8ED18:
/* 80B8ED18  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha
/* 80B8ED1C  38 63 31 FC */	addi r3, r3, m__17daNpc_zrC_Param_c@l
/* 80B8ED20  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B8ED24  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80B8ED28  48 00 00 20 */	b lbl_80B8ED48
lbl_80B8ED2C:
/* 80B8ED2C  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80B8ED30  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80B8ED34  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80B8ED38  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B8ED3C  3C 60 80 B9 */	lis r3, lit_4484@ha
/* 80B8ED40  C0 03 32 98 */	lfs f0, lit_4484@l(r3)
/* 80B8ED44  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80B8ED48:
/* 80B8ED48  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha
/* 80B8ED4C  38 83 31 FC */	addi r4, r3, m__17daNpc_zrC_Param_c@l
/* 80B8ED50  C0 04 00 08 */	lfs f0, 8(r4)
/* 80B8ED54  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80B8ED58  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80B8ED5C  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80B8ED60  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B8ED64  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B8ED68  4B 4E 71 D8 */	b SetWallR__12dBgS_AcchCirFf
/* 80B8ED6C  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha
/* 80B8ED70  38 63 31 FC */	addi r3, r3, m__17daNpc_zrC_Param_c@l
/* 80B8ED74  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8ED78  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 80B8ED7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8ED80  4B 7D 34 A4 */	b _restgpr_28
/* 80B8ED84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B8ED88  7C 08 03 A6 */	mtlr r0
/* 80B8ED8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B8ED90  4E 80 00 20 */	blr 
