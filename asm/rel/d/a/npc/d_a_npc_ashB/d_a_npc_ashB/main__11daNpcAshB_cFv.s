lbl_80960AE8:
/* 80960AE8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80960AEC  7C 08 02 A6 */	mflr r0
/* 80960AF0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80960AF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80960AF8  4B A0 16 E4 */	b _savegpr_29
/* 80960AFC  7C 7E 1B 78 */	mr r30, r3
/* 80960B00  3C 60 80 96 */	lis r3, m__17daNpcAshB_Param_c@ha
/* 80960B04  3B E3 20 E4 */	addi r31, r3, m__17daNpcAshB_Param_c@l
/* 80960B08  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 80960B0C  4B A0 15 0C */	b __ptmf_test
/* 80960B10  2C 03 00 00 */	cmpwi r3, 0
/* 80960B14  41 82 00 18 */	beq lbl_80960B2C
/* 80960B18  7F C3 F3 78 */	mr r3, r30
/* 80960B1C  38 80 00 00 */	li r4, 0
/* 80960B20  39 9E 0D C4 */	addi r12, r30, 0xdc4
/* 80960B24  4B A0 15 60 */	b __ptmf_scall
/* 80960B28  60 00 00 00 */	nop 
lbl_80960B2C:
/* 80960B2C  80 7E 0D D8 */	lwz r3, 0xdd8(r30)
/* 80960B30  3C 03 00 01 */	addis r0, r3, 1
/* 80960B34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80960B38  41 82 00 4C */	beq lbl_80960B84
/* 80960B3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80960B40  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80960B44  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80960B48  28 00 00 00 */	cmplwi r0, 0
/* 80960B4C  41 82 00 38 */	beq lbl_80960B84
/* 80960B50  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80960B54  4B 6E 78 94 */	b getRunEventName__16dEvent_manager_cFv
/* 80960B58  3C 80 80 96 */	lis r4, struct_809623E8+0x0@ha
/* 80960B5C  38 84 23 E8 */	addi r4, r4, struct_809623E8+0x0@l
/* 80960B60  38 84 00 1D */	addi r4, r4, 0x1d
/* 80960B64  4B A0 7E 30 */	b strcmp
/* 80960B68  2C 03 00 00 */	cmpwi r3, 0
/* 80960B6C  40 82 00 18 */	bne lbl_80960B84
/* 80960B70  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80960B74  80 9E 0D D8 */	lwz r4, 0xdd8(r30)
/* 80960B78  4B 6E 2B 74 */	b setPtI_Id__14dEvt_control_cFUi
/* 80960B7C  38 00 FF FF */	li r0, -1
/* 80960B80  90 1E 0D D8 */	stw r0, 0xdd8(r30)
lbl_80960B84:
/* 80960B84  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80960B88  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80960B8C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80960B90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80960B94  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80960B98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80960B9C  38 7F 00 00 */	addi r3, r31, 0
/* 80960BA0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80960BA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80960BA8  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80960BAC  90 01 00 08 */	stw r0, 8(r1)
/* 80960BB0  38 01 00 24 */	addi r0, r1, 0x24
/* 80960BB4  90 01 00 08 */	stw r0, 8(r1)
/* 80960BB8  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80960BBC  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80960BC0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80960BC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80960BC8  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80960BCC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80960BD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80960BD4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80960BD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80960BDC  38 01 00 30 */	addi r0, r1, 0x30
/* 80960BE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80960BE4  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 80960BE8  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80960BEC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80960BF0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80960BF4  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80960BF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80960BFC  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80960C00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80960C04  38 01 00 3C */	addi r0, r1, 0x3c
/* 80960C08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80960C0C  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80960C10  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80960C14  90 61 00 48 */	stw r3, 0x48(r1)
/* 80960C18  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80960C1C  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80960C20  90 01 00 50 */	stw r0, 0x50(r1)
/* 80960C24  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80960C28  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80960C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80960C30  38 01 00 48 */	addi r0, r1, 0x48
/* 80960C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80960C38  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80960C3C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80960C40  90 61 00 54 */	stw r3, 0x54(r1)
/* 80960C44  90 01 00 58 */	stw r0, 0x58(r1)
/* 80960C48  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80960C4C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80960C50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80960C54  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80960C58  90 01 00 18 */	stw r0, 0x18(r1)
/* 80960C5C  38 01 00 54 */	addi r0, r1, 0x54
/* 80960C60  90 01 00 18 */	stw r0, 0x18(r1)
/* 80960C64  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 80960C68  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80960C6C  90 61 00 60 */	stw r3, 0x60(r1)
/* 80960C70  90 01 00 64 */	stw r0, 0x64(r1)
/* 80960C74  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80960C78  90 01 00 68 */	stw r0, 0x68(r1)
/* 80960C7C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80960C80  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80960C84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80960C88  38 01 00 60 */	addi r0, r1, 0x60
/* 80960C8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80960C90  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80960C94  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80960C98  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80960C9C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80960CA0  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80960CA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80960CA8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80960CAC  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80960CB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80960CB4  38 01 00 6C */	addi r0, r1, 0x6c
/* 80960CB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80960CBC  38 A1 00 74 */	addi r5, r1, 0x74
/* 80960CC0  38 9F 01 00 */	addi r4, r31, 0x100
/* 80960CC4  38 00 00 03 */	li r0, 3
/* 80960CC8  7C 09 03 A6 */	mtctr r0
lbl_80960CCC:
/* 80960CCC  80 64 00 04 */	lwz r3, 4(r4)
/* 80960CD0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80960CD4  90 65 00 04 */	stw r3, 4(r5)
/* 80960CD8  94 05 00 08 */	stwu r0, 8(r5)
/* 80960CDC  42 00 FF F0 */	bdnz lbl_80960CCC
/* 80960CE0  80 04 00 04 */	lwz r0, 4(r4)
/* 80960CE4  90 05 00 04 */	stw r0, 4(r5)
/* 80960CE8  38 01 00 08 */	addi r0, r1, 8
/* 80960CEC  90 01 00 78 */	stw r0, 0x78(r1)
/* 80960CF0  38 01 00 0C */	addi r0, r1, 0xc
/* 80960CF4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80960CF8  38 01 00 10 */	addi r0, r1, 0x10
/* 80960CFC  90 01 00 80 */	stw r0, 0x80(r1)
/* 80960D00  38 01 00 14 */	addi r0, r1, 0x14
/* 80960D04  90 01 00 84 */	stw r0, 0x84(r1)
/* 80960D08  38 01 00 18 */	addi r0, r1, 0x18
/* 80960D0C  90 01 00 88 */	stw r0, 0x88(r1)
/* 80960D10  38 01 00 1C */	addi r0, r1, 0x1c
/* 80960D14  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80960D18  38 01 00 20 */	addi r0, r1, 0x20
/* 80960D1C  90 01 00 90 */	stw r0, 0x90(r1)
/* 80960D20  A8 7E 09 DE */	lha r3, 0x9de(r30)
/* 80960D24  7C 60 07 35 */	extsh. r0, r3
/* 80960D28  41 80 00 18 */	blt lbl_80960D40
/* 80960D2C  2C 03 00 07 */	cmpwi r3, 7
/* 80960D30  40 80 00 10 */	bge lbl_80960D40
/* 80960D34  7F C3 F3 78 */	mr r3, r30
/* 80960D38  38 81 00 78 */	addi r4, r1, 0x78
/* 80960D3C  4B 7F 24 14 */	b playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80960D40:
/* 80960D40  7F C3 F3 78 */	mr r3, r30
/* 80960D44  48 00 00 21 */	bl playMotion__11daNpcAshB_cFv
/* 80960D48  38 60 00 01 */	li r3, 1
/* 80960D4C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80960D50  4B A0 14 D8 */	b _restgpr_29
/* 80960D54  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80960D58  7C 08 03 A6 */	mtlr r0
/* 80960D5C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80960D60  4E 80 00 20 */	blr 
