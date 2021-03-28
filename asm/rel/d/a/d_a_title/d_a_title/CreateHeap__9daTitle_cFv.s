lbl_80D66B54:
/* 80D66B54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D66B58  7C 08 02 A6 */	mflr r0
/* 80D66B5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D66B60  39 61 00 20 */	addi r11, r1, 0x20
/* 80D66B64  4B 5F B6 78 */	b _savegpr_29
/* 80D66B68  7C 7D 1B 78 */	mr r29, r3
/* 80D66B6C  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D66B70  38 63 7B E0 */	addi r3, r3, l_arcName@l
/* 80D66B74  38 80 00 0A */	li r4, 0xa
/* 80D66B78  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D66B7C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D66B80  3F C5 00 02 */	addis r30, r5, 2
/* 80D66B84  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D66B88  7F C5 F3 78 */	mr r5, r30
/* 80D66B8C  38 C0 00 80 */	li r6, 0x80
/* 80D66B90  4B 2D 57 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D66B94  7C 7F 1B 78 */	mr r31, r3
/* 80D66B98  3C 80 00 08 */	lis r4, 8
/* 80D66B9C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000285@ha */
/* 80D66BA0  38 A5 02 85 */	addi r5, r5, 0x0285 /* 0x11000285@l */
/* 80D66BA4  4B 2A E0 B0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D66BA8  90 7D 05 74 */	stw r3, 0x574(r29)
/* 80D66BAC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80D66BB0  28 00 00 00 */	cmplwi r0, 0
/* 80D66BB4  40 82 00 0C */	bne lbl_80D66BC0
/* 80D66BB8  38 60 00 00 */	li r3, 0
/* 80D66BBC  48 00 01 08 */	b lbl_80D66CC4
lbl_80D66BC0:
/* 80D66BC0  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D66BC4  38 63 7B E0 */	addi r3, r3, l_arcName@l
/* 80D66BC8  38 80 00 07 */	li r4, 7
/* 80D66BCC  7F C5 F3 78 */	mr r5, r30
/* 80D66BD0  38 C0 00 80 */	li r6, 0x80
/* 80D66BD4  4B 2D 57 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D66BD8  7C 64 1B 78 */	mr r4, r3
/* 80D66BDC  38 7D 05 78 */	addi r3, r29, 0x578
/* 80D66BE0  38 A0 00 01 */	li r5, 1
/* 80D66BE4  38 C0 00 00 */	li r6, 0
/* 80D66BE8  3C E0 80 D6 */	lis r7, lit_4030@ha
/* 80D66BEC  C0 27 7B F4 */	lfs f1, lit_4030@l(r7)
/* 80D66BF0  38 E0 00 00 */	li r7, 0
/* 80D66BF4  39 00 FF FF */	li r8, -1
/* 80D66BF8  39 20 00 00 */	li r9, 0
/* 80D66BFC  4B 2A 6B E0 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D66C00  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D66C04  38 63 7B E0 */	addi r3, r3, l_arcName@l
/* 80D66C08  38 80 00 0D */	li r4, 0xd
/* 80D66C0C  7F C5 F3 78 */	mr r5, r30
/* 80D66C10  38 C0 00 80 */	li r6, 0x80
/* 80D66C14  4B 2D 56 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D66C18  7C 65 1B 78 */	mr r5, r3
/* 80D66C1C  38 7D 05 94 */	addi r3, r29, 0x594
/* 80D66C20  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D66C24  38 C0 00 01 */	li r6, 1
/* 80D66C28  38 E0 00 00 */	li r7, 0
/* 80D66C2C  3D 00 80 D6 */	lis r8, lit_4030@ha
/* 80D66C30  C0 28 7B F4 */	lfs f1, lit_4030@l(r8)
/* 80D66C34  39 00 00 00 */	li r8, 0
/* 80D66C38  39 20 FF FF */	li r9, -1
/* 80D66C3C  4B 2A 68 40 */	b init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 80D66C40  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D66C44  38 63 7B E0 */	addi r3, r3, l_arcName@l
/* 80D66C48  38 80 00 10 */	li r4, 0x10
/* 80D66C4C  7F C5 F3 78 */	mr r5, r30
/* 80D66C50  38 C0 00 80 */	li r6, 0x80
/* 80D66C54  4B 2D 56 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D66C58  7C 65 1B 78 */	mr r5, r3
/* 80D66C5C  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80D66C60  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D66C64  38 C0 00 01 */	li r6, 1
/* 80D66C68  38 E0 00 00 */	li r7, 0
/* 80D66C6C  3D 00 80 D6 */	lis r8, lit_4030@ha
/* 80D66C70  C0 28 7B F4 */	lfs f1, lit_4030@l(r8)
/* 80D66C74  39 00 00 00 */	li r8, 0
/* 80D66C78  39 20 FF FF */	li r9, -1
/* 80D66C7C  4B 2A 6A 90 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D66C80  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D66C84  38 63 7B E0 */	addi r3, r3, l_arcName@l
/* 80D66C88  38 80 00 13 */	li r4, 0x13
/* 80D66C8C  7F C5 F3 78 */	mr r5, r30
/* 80D66C90  38 C0 00 80 */	li r6, 0x80
/* 80D66C94  4B 2D 56 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D66C98  7C 65 1B 78 */	mr r5, r3
/* 80D66C9C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80D66CA0  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D66CA4  38 C0 00 01 */	li r6, 1
/* 80D66CA8  38 E0 00 00 */	li r7, 0
/* 80D66CAC  3D 00 80 D6 */	lis r8, lit_4030@ha
/* 80D66CB0  C0 28 7B F4 */	lfs f1, lit_4030@l(r8)
/* 80D66CB4  39 00 00 00 */	li r8, 0
/* 80D66CB8  39 20 FF FF */	li r9, -1
/* 80D66CBC  4B 2A 69 80 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D66CC0  38 60 00 01 */	li r3, 1
lbl_80D66CC4:
/* 80D66CC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D66CC8  4B 5F B5 60 */	b _restgpr_29
/* 80D66CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D66CD0  7C 08 03 A6 */	mtlr r0
/* 80D66CD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D66CD8  4E 80 00 20 */	blr 
