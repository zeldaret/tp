lbl_80AF99F4:
/* 80AF99F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF99F8  7C 08 02 A6 */	mflr r0
/* 80AF99FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF9A00  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF9A04  4B 86 87 D4 */	b _savegpr_28
/* 80AF9A08  7C 7D 1B 78 */	mr r29, r3
/* 80AF9A0C  3C 60 80 B0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80AF9A10  3B E3 C1 D0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80AF9A14  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 80AF9A18  4B 65 6C D4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AF9A1C  28 03 00 00 */	cmplwi r3, 0
/* 80AF9A20  40 82 00 20 */	bne lbl_80AF9A40
/* 80AF9A24  7F A3 EB 78 */	mr r3, r29
/* 80AF9A28  38 80 00 13 */	li r4, 0x13
/* 80AF9A2C  38 A0 00 00 */	li r5, 0
/* 80AF9A30  4B 65 A8 70 */	b getEvtAreaTagP__8daNpcF_cFii
/* 80AF9A34  7C 64 1B 78 */	mr r4, r3
/* 80AF9A38  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 80AF9A3C  4B 65 6C 80 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AF9A40:
/* 80AF9A40  80 7D 0D D0 */	lwz r3, 0xdd0(r29)
/* 80AF9A44  80 1D 0D D4 */	lwz r0, 0xdd4(r29)
/* 80AF9A48  90 61 00 08 */	stw r3, 8(r1)
/* 80AF9A4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF9A50  80 1D 0D D8 */	lwz r0, 0xdd8(r29)
/* 80AF9A54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF9A58  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AF9A5C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AF9A60  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF9A64  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF9A68  90 7D 0D D0 */	stw r3, 0xdd0(r29)
/* 80AF9A6C  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80AF9A70  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF9A74  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80AF9A78  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha
/* 80AF9A7C  38 63 BE 0C */	addi r3, r3, m__16daNpcThe_Param_c@l
/* 80AF9A80  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80AF9A84  28 00 00 00 */	cmplwi r0, 0
/* 80AF9A88  41 82 00 20 */	beq lbl_80AF9AA8
/* 80AF9A8C  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80AF9A90  80 1F 02 FC */	lwz r0, 0x2fc(r31)
/* 80AF9A94  90 7D 0D D0 */	stw r3, 0xdd0(r29)
/* 80AF9A98  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80AF9A9C  80 1F 03 00 */	lwz r0, 0x300(r31)
/* 80AF9AA0  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80AF9AA4  48 00 00 44 */	b lbl_80AF9AE8
lbl_80AF9AA8:
/* 80AF9AA8  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80AF9AAC  28 00 00 00 */	cmplwi r0, 0
/* 80AF9AB0  41 82 00 20 */	beq lbl_80AF9AD0
/* 80AF9AB4  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80AF9AB8  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80AF9ABC  90 7D 0D D0 */	stw r3, 0xdd0(r29)
/* 80AF9AC0  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80AF9AC4  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80AF9AC8  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80AF9ACC  48 00 00 1C */	b lbl_80AF9AE8
lbl_80AF9AD0:
/* 80AF9AD0  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 80AF9AD4  80 1F 03 14 */	lwz r0, 0x314(r31)
/* 80AF9AD8  90 7D 0D D0 */	stw r3, 0xdd0(r29)
/* 80AF9ADC  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80AF9AE0  80 1F 03 18 */	lwz r0, 0x318(r31)
/* 80AF9AE4  90 1D 0D D8 */	stw r0, 0xdd8(r29)
lbl_80AF9AE8:
/* 80AF9AE8  38 7D 0D D0 */	addi r3, r29, 0xdd0
/* 80AF9AEC  38 81 00 08 */	addi r4, r1, 8
/* 80AF9AF0  4B 86 85 58 */	b __ptmf_cmpr
/* 80AF9AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9AF8  41 82 00 2C */	beq lbl_80AF9B24
/* 80AF9AFC  3B 80 00 03 */	li r28, 3
/* 80AF9B00  3B C0 00 18 */	li r30, 0x18
/* 80AF9B04  48 00 00 18 */	b lbl_80AF9B1C
lbl_80AF9B08:
/* 80AF9B08  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AF9B0C  7C 7D 1A 14 */	add r3, r29, r3
/* 80AF9B10  4B 65 6B A0 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80AF9B14  3B 9C 00 01 */	addi r28, r28, 1
/* 80AF9B18  3B DE 00 08 */	addi r30, r30, 8
lbl_80AF9B1C:
/* 80AF9B1C  2C 1C 00 03 */	cmpwi r28, 3
/* 80AF9B20  41 80 FF E8 */	blt lbl_80AF9B08
lbl_80AF9B24:
/* 80AF9B24  88 9D 0E 1E */	lbz r4, 0xe1e(r29)
/* 80AF9B28  28 04 00 02 */	cmplwi r4, 2
/* 80AF9B2C  40 82 00 0C */	bne lbl_80AF9B38
/* 80AF9B30  38 00 00 01 */	li r0, 1
/* 80AF9B34  48 00 00 10 */	b lbl_80AF9B44
lbl_80AF9B38:
/* 80AF9B38  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha
/* 80AF9B3C  38 63 BE 0C */	addi r3, r3, m__16daNpcThe_Param_c@l
/* 80AF9B40  A8 03 00 4A */	lha r0, 0x4a(r3)
lbl_80AF9B44:
/* 80AF9B44  7C 1F 07 34 */	extsh r31, r0
/* 80AF9B48  28 04 00 02 */	cmplwi r4, 2
/* 80AF9B4C  40 82 00 0C */	bne lbl_80AF9B58
/* 80AF9B50  38 00 00 01 */	li r0, 1
/* 80AF9B54  48 00 00 10 */	b lbl_80AF9B64
lbl_80AF9B58:
/* 80AF9B58  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha
/* 80AF9B5C  38 63 BE 0C */	addi r3, r3, m__16daNpcThe_Param_c@l
/* 80AF9B60  A8 03 00 4E */	lha r0, 0x4e(r3)
lbl_80AF9B64:
/* 80AF9B64  7C 1E 07 34 */	extsh r30, r0
/* 80AF9B68  38 00 00 0A */	li r0, 0xa
/* 80AF9B6C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AF9B70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF9B74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF9B78  3B 83 4E 00 */	addi r28, r3, 0x4e00
/* 80AF9B7C  7F 83 E3 78 */	mr r3, r28
/* 80AF9B80  3C 80 80 B0 */	lis r4, stringBase0@ha
/* 80AF9B84  38 84 C1 58 */	addi r4, r4, stringBase0@l
/* 80AF9B88  38 84 00 54 */	addi r4, r4, 0x54
/* 80AF9B8C  4B 86 EE 08 */	b strcmp
/* 80AF9B90  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9B94  40 82 00 30 */	bne lbl_80AF9BC4
/* 80AF9B98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF9B9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF9BA0  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AF9BA4  2C 00 00 05 */	cmpwi r0, 5
/* 80AF9BA8  40 82 00 1C */	bne lbl_80AF9BC4
/* 80AF9BAC  38 60 00 00 */	li r3, 0
/* 80AF9BB0  4B 53 2D CC */	b getLayerNo__14dComIfG_play_cFi
/* 80AF9BB4  2C 03 00 02 */	cmpwi r3, 2
/* 80AF9BB8  40 82 00 0C */	bne lbl_80AF9BC4
/* 80AF9BBC  38 00 00 01 */	li r0, 1
/* 80AF9BC0  48 00 00 08 */	b lbl_80AF9BC8
lbl_80AF9BC4:
/* 80AF9BC4  38 00 00 00 */	li r0, 0
lbl_80AF9BC8:
/* 80AF9BC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF9BCC  41 82 00 2C */	beq lbl_80AF9BF8
/* 80AF9BD0  38 00 00 4E */	li r0, 0x4e
/* 80AF9BD4  98 1D 05 44 */	stb r0, 0x544(r29)
/* 80AF9BD8  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AF9BDC  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AF9BE0  38 00 00 4D */	li r0, 0x4d
/* 80AF9BE4  98 1D 05 47 */	stb r0, 0x547(r29)
/* 80AF9BE8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80AF9BEC  64 00 00 80 */	oris r0, r0, 0x80
/* 80AF9BF0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AF9BF4  48 00 00 A8 */	b lbl_80AF9C9C
lbl_80AF9BF8:
/* 80AF9BF8  7F 83 E3 78 */	mr r3, r28
/* 80AF9BFC  3C 80 80 B0 */	lis r4, stringBase0@ha
/* 80AF9C00  38 84 C1 58 */	addi r4, r4, stringBase0@l
/* 80AF9C04  38 84 00 54 */	addi r4, r4, 0x54
/* 80AF9C08  4B 86 ED 8C */	b strcmp
/* 80AF9C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9C10  40 82 00 4C */	bne lbl_80AF9C5C
/* 80AF9C14  7F A3 EB 78 */	mr r3, r29
/* 80AF9C18  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF9C1C  38 84 BE 0C */	addi r4, r4, m__16daNpcThe_Param_c@l
/* 80AF9C20  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 80AF9C24  7F C5 F3 78 */	mr r5, r30
/* 80AF9C28  4B 65 A6 50 */	b getDistTableIdx__8daNpcF_cFii
/* 80AF9C2C  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80AF9C30  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AF9C34  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AF9C38  7F A3 EB 78 */	mr r3, r29
/* 80AF9C3C  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF9C40  38 84 BE 0C */	addi r4, r4, m__16daNpcThe_Param_c@l
/* 80AF9C44  A8 84 00 48 */	lha r4, 0x48(r4)
/* 80AF9C48  38 84 00 01 */	addi r4, r4, 1
/* 80AF9C4C  7F E5 FB 78 */	mr r5, r31
/* 80AF9C50  4B 65 A6 28 */	b getDistTableIdx__8daNpcF_cFii
/* 80AF9C54  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80AF9C58  48 00 00 44 */	b lbl_80AF9C9C
lbl_80AF9C5C:
/* 80AF9C5C  7F A3 EB 78 */	mr r3, r29
/* 80AF9C60  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF9C64  38 84 BE 0C */	addi r4, r4, m__16daNpcThe_Param_c@l
/* 80AF9C68  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 80AF9C6C  7F C5 F3 78 */	mr r5, r30
/* 80AF9C70  4B 65 A6 08 */	b getDistTableIdx__8daNpcF_cFii
/* 80AF9C74  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80AF9C78  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AF9C7C  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AF9C80  7F A3 EB 78 */	mr r3, r29
/* 80AF9C84  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF9C88  38 84 BE 0C */	addi r4, r4, m__16daNpcThe_Param_c@l
/* 80AF9C8C  A8 84 00 48 */	lha r4, 0x48(r4)
/* 80AF9C90  7F E5 FB 78 */	mr r5, r31
/* 80AF9C94  4B 65 A5 E4 */	b getDistTableIdx__8daNpcF_cFii
/* 80AF9C98  98 7D 05 47 */	stb r3, 0x547(r29)
lbl_80AF9C9C:
/* 80AF9C9C  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha
/* 80AF9CA0  38 83 BE 0C */	addi r4, r3, m__16daNpcThe_Param_c@l
/* 80AF9CA4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AF9CA8  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80AF9CAC  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80AF9CB0  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80AF9CB4  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80AF9CB8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AF9CBC  4B 57 C2 84 */	b SetWallR__12dBgS_AcchCirFf
/* 80AF9CC0  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha
/* 80AF9CC4  38 63 BE 0C */	addi r3, r3, m__16daNpcThe_Param_c@l
/* 80AF9CC8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AF9CCC  D0 1D 08 14 */	stfs f0, 0x814(r29)
/* 80AF9CD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AF9CD4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80AF9CD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF9CDC  4B 86 85 48 */	b _restgpr_28
/* 80AF9CE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF9CE4  7C 08 03 A6 */	mtlr r0
/* 80AF9CE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF9CEC  4E 80 00 20 */	blr 
