lbl_809BFDFC:
/* 809BFDFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809BFE00  7C 08 02 A6 */	mflr r0
/* 809BFE04  90 01 00 44 */	stw r0, 0x44(r1)
/* 809BFE08  39 61 00 40 */	addi r11, r1, 0x40
/* 809BFE0C  4B 9A 23 C4 */	b _savegpr_26
/* 809BFE10  7C 7E 1B 78 */	mr r30, r3
/* 809BFE14  80 83 14 04 */	lwz r4, 0x1404(r3)
/* 809BFE18  80 03 14 08 */	lwz r0, 0x1408(r3)
/* 809BFE1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 809BFE20  90 01 00 18 */	stw r0, 0x18(r1)
/* 809BFE24  80 03 14 0C */	lwz r0, 0x140c(r3)
/* 809BFE28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809BFE2C  3B E0 00 0A */	li r31, 0xa
/* 809BFE30  48 00 2B 61 */	bl selectAction__11daNpc_grA_cFv
/* 809BFE34  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809BFE38  28 00 00 00 */	cmplwi r0, 0
/* 809BFE3C  40 82 00 20 */	bne lbl_809BFE5C
/* 809BFE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809BFE44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809BFE48  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809BFE4C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809BFE50  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809BFE54  41 82 00 08 */	beq lbl_809BFE5C
/* 809BFE58  3B E0 00 00 */	li r31, 0
lbl_809BFE5C:
/* 809BFE5C  38 7E 14 04 */	addi r3, r30, 0x1404
/* 809BFE60  38 81 00 14 */	addi r4, r1, 0x14
/* 809BFE64  4B 9A 21 E4 */	b __ptmf_cmpr
/* 809BFE68  2C 03 00 00 */	cmpwi r3, 0
/* 809BFE6C  41 82 00 2C */	beq lbl_809BFE98
/* 809BFE70  3B 40 00 03 */	li r26, 3
/* 809BFE74  3B A0 00 18 */	li r29, 0x18
/* 809BFE78  48 00 00 18 */	b lbl_809BFE90
lbl_809BFE7C:
/* 809BFE7C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 809BFE80  7C 7E 1A 14 */	add r3, r30, r3
/* 809BFE84  4B 79 08 2C */	b initialize__18daNpcF_ActorMngr_cFv
/* 809BFE88  3B 5A 00 01 */	addi r26, r26, 1
/* 809BFE8C  3B BD 00 08 */	addi r29, r29, 8
lbl_809BFE90:
/* 809BFE90  2C 1A 00 03 */	cmpwi r26, 3
/* 809BFE94  41 80 FF E8 */	blt lbl_809BFE7C
lbl_809BFE98:
/* 809BFE98  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809BFE9C  28 00 00 00 */	cmplwi r0, 0
/* 809BFEA0  41 82 00 44 */	beq lbl_809BFEE4
/* 809BFEA4  38 00 00 00 */	li r0, 0
/* 809BFEA8  90 1E 14 5C */	stw r0, 0x145c(r30)
/* 809BFEAC  90 1E 14 60 */	stw r0, 0x1460(r30)
/* 809BFEB0  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BFEB4  28 00 00 09 */	cmplwi r0, 9
/* 809BFEB8  40 82 00 18 */	bne lbl_809BFED0
/* 809BFEBC  3B 60 00 0B */	li r27, 0xb
/* 809BFEC0  3B 40 00 04 */	li r26, 4
/* 809BFEC4  3B A0 00 0B */	li r29, 0xb
/* 809BFEC8  3B 80 00 04 */	li r28, 4
/* 809BFECC  48 00 00 3C */	b lbl_809BFF08
lbl_809BFED0:
/* 809BFED0  3B 60 00 0F */	li r27, 0xf
/* 809BFED4  3B 40 00 06 */	li r26, 6
/* 809BFED8  3B A0 00 0F */	li r29, 0xf
/* 809BFEDC  3B 80 00 06 */	li r28, 6
/* 809BFEE0  48 00 00 28 */	b lbl_809BFF08
lbl_809BFEE4:
/* 809BFEE4  38 00 00 00 */	li r0, 0
/* 809BFEE8  90 1E 14 5C */	stw r0, 0x145c(r30)
/* 809BFEEC  90 1E 14 60 */	stw r0, 0x1460(r30)
/* 809BFEF0  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809BFEF4  38 63 9D 98 */	addi r3, r3, m__17daNpc_grA_Param_c@l
/* 809BFEF8  AB 63 00 48 */	lha r27, 0x48(r3)
/* 809BFEFC  AB 43 00 4A */	lha r26, 0x4a(r3)
/* 809BFF00  AB A3 00 4C */	lha r29, 0x4c(r3)
/* 809BFF04  AB 83 00 4E */	lha r28, 0x4e(r3)
lbl_809BFF08:
/* 809BFF08  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BFF0C  28 00 00 05 */	cmplwi r0, 5
/* 809BFF10  40 82 00 28 */	bne lbl_809BFF38
/* 809BFF14  38 00 00 4E */	li r0, 0x4e
/* 809BFF18  98 1E 05 44 */	stb r0, 0x544(r30)
/* 809BFF1C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 809BFF20  38 00 00 4D */	li r0, 0x4d
/* 809BFF24  98 1E 05 47 */	stb r0, 0x547(r30)
/* 809BFF28  3C 60 00 80 */	lis r3, 0x0080 /* 0x0080000A@ha */
/* 809BFF2C  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0080000A@l */
/* 809BFF30  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809BFF34  48 00 00 8C */	b lbl_809BFFC0
lbl_809BFF38:
/* 809BFF38  3C 60 80 9D */	lis r3, lit_4986@ha
/* 809BFF3C  38 83 AC 70 */	addi r4, r3, lit_4986@l
/* 809BFF40  80 64 00 00 */	lwz r3, 0(r4)
/* 809BFF44  80 04 00 04 */	lwz r0, 4(r4)
/* 809BFF48  90 61 00 08 */	stw r3, 8(r1)
/* 809BFF4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809BFF50  80 04 00 08 */	lwz r0, 8(r4)
/* 809BFF54  90 01 00 10 */	stw r0, 0x10(r1)
/* 809BFF58  7F C3 F3 78 */	mr r3, r30
/* 809BFF5C  38 81 00 08 */	addi r4, r1, 8
/* 809BFF60  48 00 29 5D */	bl chkAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i
/* 809BFF64  2C 03 00 00 */	cmpwi r3, 0
/* 809BFF68  41 82 00 0C */	beq lbl_809BFF74
/* 809BFF6C  3B 60 00 0A */	li r27, 0xa
/* 809BFF70  3B A0 00 0C */	li r29, 0xc
lbl_809BFF74:
/* 809BFF74  7F C3 F3 78 */	mr r3, r30
/* 809BFF78  7F A4 07 34 */	extsh r4, r29
/* 809BFF7C  7F 85 07 34 */	extsh r5, r28
/* 809BFF80  4B 79 42 F8 */	b getDistTableIdx__8daNpcF_cFii
/* 809BFF84  98 7E 05 44 */	stb r3, 0x544(r30)
/* 809BFF88  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 809BFF8C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 809BFF90  7F C3 F3 78 */	mr r3, r30
/* 809BFF94  7F 64 07 34 */	extsh r4, r27
/* 809BFF98  7F 45 07 34 */	extsh r5, r26
/* 809BFF9C  4B 79 42 DC */	b getDistTableIdx__8daNpcF_cFii
/* 809BFFA0  98 7E 05 47 */	stb r3, 0x547(r30)
/* 809BFFA4  80 1E 14 D8 */	lwz r0, 0x14d8(r30)
/* 809BFFA8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809BFFAC  40 82 00 10 */	bne lbl_809BFFBC
/* 809BFFB0  38 00 00 00 */	li r0, 0
/* 809BFFB4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809BFFB8  48 00 00 08 */	b lbl_809BFFC0
lbl_809BFFBC:
/* 809BFFBC  93 FE 05 5C */	stw r31, 0x55c(r30)
lbl_809BFFC0:
/* 809BFFC0  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809BFFC4  38 83 9D 98 */	addi r4, r3, m__17daNpc_grA_Param_c@l
/* 809BFFC8  C0 04 00 08 */	lfs f0, 8(r4)
/* 809BFFCC  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 809BFFD0  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 809BFFD4  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 809BFFD8  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809BFFDC  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BFFE0  28 00 00 02 */	cmplwi r0, 2
/* 809BFFE4  40 82 00 10 */	bne lbl_809BFFF4
/* 809BFFE8  3C 80 80 9D */	lis r4, lit_4527@ha
/* 809BFFEC  C0 24 9E 2C */	lfs f1, lit_4527@l(r4)
/* 809BFFF0  48 00 00 08 */	b lbl_809BFFF8
lbl_809BFFF4:
/* 809BFFF4  C0 24 00 1C */	lfs f1, 0x1c(r4)
lbl_809BFFF8:
/* 809BFFF8  4B 6B 5F 48 */	b SetWallR__12dBgS_AcchCirFf
/* 809BFFFC  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809C0000  38 63 9D 98 */	addi r3, r3, m__17daNpc_grA_Param_c@l
/* 809C0004  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809C0008  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 809C000C  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809C0010  28 00 00 06 */	cmplwi r0, 6
/* 809C0014  41 82 00 0C */	beq lbl_809C0020
/* 809C0018  C0 03 00 04 */	lfs f0, 4(r3)
/* 809C001C  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_809C0020:
/* 809C0020  39 61 00 40 */	addi r11, r1, 0x40
/* 809C0024  4B 9A 21 F8 */	b _restgpr_26
/* 809C0028  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C002C  7C 08 03 A6 */	mtlr r0
/* 809C0030  38 21 00 40 */	addi r1, r1, 0x40
/* 809C0034  4E 80 00 20 */	blr 
