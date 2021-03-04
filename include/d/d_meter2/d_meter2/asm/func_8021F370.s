/* 8021F370 0021C2B0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8021F374 0021C2B4  7C 08 02 A6 */ mflr r0
/* 8021F378 0021C2B8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8021F37C 0021C2BC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8021F380 0021C2C0  7C 7F 1B 78 */ mr r31, r3
/* 8021F384 0021C2C4  80 63 01 20 */ lwz r3, 0x120(r3)
/* 8021F388 0021C2C8  28 03 00 00 */ cmplwi r3, 0
/* 8021F38C 0021C2CC  41 82 00 08 */ beq lbl_8021F394
/* 8021F390 0021C2D0  4B FE EB 8D */ bl dMeterMap_c_NS__draw
lbl_8021F394:
/* 8021F394 0021C2D4  80 DF 01 10 */ lwz r6, 0x110(r31)
/* 8021F398 0021C2D8  28 06 00 00 */ cmplwi r6, 0
/* 8021F39C 0021C2DC  41 82 00 1C */ beq lbl_8021F3B8
/* 8021F3A0 0021C2E0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021F3A4 0021C2E4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F3A8 0021C2E8  38 63 5F 64 */ addi r3, r3, 0x5f64
/* 8021F3AC 0021C2EC  38 83 00 AC */ addi r4, r3, 0xac
/* 8021F3B0 0021C2F0  38 A3 00 B0 */ addi r5, r3, 0xb0
/* 8021F3B4 0021C2F4  4B E3 73 E1 */ bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F3B8:
/* 8021F3B8 0021C2F8  80 DF 01 14 */ lwz r6, 0x114(r31)
/* 8021F3BC 0021C2FC  28 06 00 00 */ cmplwi r6, 0
/* 8021F3C0 0021C300  41 82 00 50 */ beq lbl_8021F410
/* 8021F3C4 0021C304  88 1F 01 E5 */ lbz r0, 0x1e5(r31)
/* 8021F3C8 0021C308  28 00 00 05 */ cmplwi r0, 5
/* 8021F3CC 0021C30C  40 82 00 2C */ bne lbl_8021F3F8
/* 8021F3D0 0021C310  A0 1F 01 B6 */ lhz r0, 0x1b6(r31)
/* 8021F3D4 0021C314  28 00 00 00 */ cmplwi r0, 0
/* 8021F3D8 0021C318  41 82 00 38 */ beq lbl_8021F410
/* 8021F3DC 0021C31C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021F3E0 0021C320  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F3E4 0021C324  38 63 5F 64 */ addi r3, r3, 0x5f64
/* 8021F3E8 0021C328  38 83 00 AC */ addi r4, r3, 0xac
/* 8021F3EC 0021C32C  38 A3 00 B0 */ addi r5, r3, 0xb0
/* 8021F3F0 0021C330  4B E3 73 A5 */ bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8021F3F4 0021C334  48 00 00 1C */ b lbl_8021F410
lbl_8021F3F8:
/* 8021F3F8 0021C338  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021F3FC 0021C33C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F400 0021C340  38 63 5F 64 */ addi r3, r3, 0x5f64
/* 8021F404 0021C344  38 83 00 AC */ addi r4, r3, 0xac
/* 8021F408 0021C348  38 A3 00 B0 */ addi r5, r3, 0xb0
/* 8021F40C 0021C34C  4B E3 73 89 */ bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F410:
/* 8021F410 0021C350  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021F414 0021C354  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8021F418 0021C358  88 03 00 B9 */ lbz r0, 0xb9(r3)
/* 8021F41C 0021C35C  28 00 00 02 */ cmplwi r0, 2
/* 8021F420 0021C360  40 82 00 24 */ bne lbl_8021F444
/* 8021F424 0021C364  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021F428 0021C368  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F42C 0021C36C  38 63 5F 64 */ addi r3, r3, 0x5f64
/* 8021F430 0021C370  38 83 01 B4 */ addi r4, r3, 0x1b4
/* 8021F434 0021C374  38 A3 01 B8 */ addi r5, r3, 0x1b8
/* 8021F438 0021C378  80 DF 01 0C */ lwz r6, 0x10c(r31)
/* 8021F43C 0021C37C  4B E3 73 59 */ bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8021F440 0021C380  48 00 00 20 */ b lbl_8021F460
lbl_8021F444:
/* 8021F444 0021C384  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021F448 0021C388  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F44C 0021C38C  38 63 5F 64 */ addi r3, r3, 0x5f64
/* 8021F450 0021C390  38 83 00 AC */ addi r4, r3, 0xac
/* 8021F454 0021C394  38 A3 00 B0 */ addi r5, r3, 0xb0
/* 8021F458 0021C398  80 DF 01 0C */ lwz r6, 0x10c(r31)
/* 8021F45C 0021C39C  4B E3 73 39 */ bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F460:
/* 8021F460 0021C3A0  80 DF 01 18 */ lwz r6, 0x118(r31)
/* 8021F464 0021C3A4  28 06 00 00 */ cmplwi r6, 0
/* 8021F468 0021C3A8  41 82 00 1C */ beq lbl_8021F484
/* 8021F46C 0021C3AC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021F470 0021C3B0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021F474 0021C3B4  38 63 5F 64 */ addi r3, r3, 0x5f64
/* 8021F478 0021C3B8  38 83 00 AC */ addi r4, r3, 0xac
/* 8021F47C 0021C3BC  38 A3 00 B0 */ addi r5, r3, 0xb0
/* 8021F480 0021C3C0  4B E3 73 15 */ bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8021F484:
/* 8021F484 0021C3C4  38 60 00 01 */ li r3, 1
/* 8021F488 0021C3C8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8021F48C 0021C3CC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8021F490 0021C3D0  7C 08 03 A6 */ mtlr r0
/* 8021F494 0021C3D4  38 21 00 10 */ addi r1, r1, 0x10
/* 8021F498 0021C3D8  4E 80 00 20 */ blr
