/* 800D0E08 000CDD48  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D0E0C 000CDD4C  7C 08 02 A6 */ mflr r0
/* 800D0E10 000CDD50  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D0E14 000CDD54  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D0E18 000CDD58  7C 7F 1B 78 */ mr r31, r3
/* 800D0E1C 000CDD5C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D0E20 000CDD60  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0E24 000CDD64  88 03 00 14 */ lbz r0, 0x14(r3)
/* 800D0E28 000CDD68  28 00 00 49 */ cmplwi r0, 0x49
/* 800D0E2C 000CDD6C  40 82 00 4C */ bne lbl_800D0E78
/* 800D0E30 000CDD70  85 83 4E 20 */ lwzu r12, 0x4e20(r3)
/* 800D0E34 000CDD74  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 800D0E38 000CDD78  7D 89 03 A6 */ mtctr r12
/* 800D0E3C 000CDD7C  4E 80 04 21 */ bctrl
/* 800D0E40 000CDD80  88 03 00 09 */ lbz r0, 9(r3)
/* 800D0E44 000CDD84  54 00 FE FE */ rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 800D0E48 000CDD88  2C 00 00 17 */ cmpwi r0, 0x17
/* 800D0E4C 000CDD8C  41 82 00 1C */ beq lbl_800D0E68
/*.global daAlink_searchNightStalker*/
/* 800D0E50 000CDD90  3C 60 80 0D */ lis r3, daAlink_searchNightStalker__FP10fopAc_ac_cPv@ha
/*.global daAlink_searchNightStalker*/
/* 800D0E54 000CDD94  38 63 0D 38 */ addi r3, r3, daAlink_searchNightStalker__FP10fopAc_ac_cPv@l
/* 800D0E58 000CDD98  38 80 00 00 */ li r4, 0
/* 800D0E5C 000CDD9C  4B F4 89 9D */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800D0E60 000CDDA0  28 03 00 00 */ cmplwi r3, 0
/* 800D0E64 000CDDA4  41 82 00 14 */ beq lbl_800D0E78
lbl_800D0E68:
/* 800D0E68 000CDDA8  80 1F 05 7C */ lwz r0, 0x57c(r31)
/* 800D0E6C 000CDDAC  64 00 00 10 */ oris r0, r0, 0x10
/* 800D0E70 000CDDB0  90 1F 05 7C */ stw r0, 0x57c(r31)
/* 800D0E74 000CDDB4  48 00 00 10 */ b lbl_800D0E84
lbl_800D0E78:
/* 800D0E78 000CDDB8  80 1F 05 7C */ lwz r0, 0x57c(r31)
/* 800D0E7C 000CDDBC  54 00 03 14 */ rlwinm r0, r0, 0, 0xc, 0xa
/* 800D0E80 000CDDC0  90 1F 05 7C */ stw r0, 0x57c(r31)
lbl_800D0E84:
/* 800D0E84 000CDDC4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D0E88 000CDDC8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D0E8C 000CDDCC  7C 08 03 A6 */ mtlr r0
/* 800D0E90 000CDDD0  38 21 00 10 */ addi r1, r1, 0x10
/* 800D0E94 000CDDD4  4E 80 00 20 */ blr
