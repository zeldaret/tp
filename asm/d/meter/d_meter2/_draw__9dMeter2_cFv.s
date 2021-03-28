lbl_8021F370:
/* 8021F370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021F374  7C 08 02 A6 */	mflr r0
/* 8021F378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021F37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021F380  7C 7F 1B 78 */	mr r31, r3
/* 8021F384  80 63 01 20 */	lwz r3, 0x120(r3)
/* 8021F388  28 03 00 00 */	cmplwi r3, 0
/* 8021F38C  41 82 00 08 */	beq lbl_8021F394
/* 8021F390  4B FE EB 8D */	bl _draw__11dMeterMap_cFv
lbl_8021F394:
/* 8021F394  80 DF 01 10 */	lwz r6, 0x110(r31)
/* 8021F398  28 06 00 00 */	cmplwi r6, 0
/* 8021F39C  41 82 00 1C */	beq lbl_8021F3B8
/* 8021F3A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021F3A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F3A8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8021F3AC  38 83 00 AC */	addi r4, r3, 0xac
/* 8021F3B0  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 8021F3B4  4B E3 73 E1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F3B8:
/* 8021F3B8  80 DF 01 14 */	lwz r6, 0x114(r31)
/* 8021F3BC  28 06 00 00 */	cmplwi r6, 0
/* 8021F3C0  41 82 00 50 */	beq lbl_8021F410
/* 8021F3C4  88 1F 01 E5 */	lbz r0, 0x1e5(r31)
/* 8021F3C8  28 00 00 05 */	cmplwi r0, 5
/* 8021F3CC  40 82 00 2C */	bne lbl_8021F3F8
/* 8021F3D0  A0 1F 01 B6 */	lhz r0, 0x1b6(r31)
/* 8021F3D4  28 00 00 00 */	cmplwi r0, 0
/* 8021F3D8  41 82 00 38 */	beq lbl_8021F410
/* 8021F3DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021F3E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F3E4  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8021F3E8  38 83 00 AC */	addi r4, r3, 0xac
/* 8021F3EC  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 8021F3F0  4B E3 73 A5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8021F3F4  48 00 00 1C */	b lbl_8021F410
lbl_8021F3F8:
/* 8021F3F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021F3FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F400  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8021F404  38 83 00 AC */	addi r4, r3, 0xac
/* 8021F408  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 8021F40C  4B E3 73 89 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F410:
/* 8021F410  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021F414  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021F418  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 8021F41C  28 00 00 02 */	cmplwi r0, 2
/* 8021F420  40 82 00 24 */	bne lbl_8021F444
/* 8021F424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021F428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F42C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8021F430  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8021F434  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 8021F438  80 DF 01 0C */	lwz r6, 0x10c(r31)
/* 8021F43C  4B E3 73 59 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8021F440  48 00 00 20 */	b lbl_8021F460
lbl_8021F444:
/* 8021F444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021F448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F44C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8021F450  38 83 00 AC */	addi r4, r3, 0xac
/* 8021F454  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 8021F458  80 DF 01 0C */	lwz r6, 0x10c(r31)
/* 8021F45C  4B E3 73 39 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F460:
/* 8021F460  80 DF 01 18 */	lwz r6, 0x118(r31)
/* 8021F464  28 06 00 00 */	cmplwi r6, 0
/* 8021F468  41 82 00 1C */	beq lbl_8021F484
/* 8021F46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021F470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F474  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8021F478  38 83 00 AC */	addi r4, r3, 0xac
/* 8021F47C  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 8021F480  4B E3 73 15 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F484:
/* 8021F484  38 60 00 01 */	li r3, 1
/* 8021F488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021F48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021F490  7C 08 03 A6 */	mtlr r0
/* 8021F494  38 21 00 10 */	addi r1, r1, 0x10
/* 8021F498  4E 80 00 20 */	blr 
