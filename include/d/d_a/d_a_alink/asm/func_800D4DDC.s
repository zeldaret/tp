/* 800D4DDC 000D1D1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D4DE0 000D1D20  7C 08 02 A6 */ mflr r0
/* 800D4DE4 000D1D24  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D4DE8 000D1D28  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D4DEC 000D1D2C  93 C1 00 08 */ stw r30, 8(r1)
/* 800D4DF0 000D1D30  7C 7E 1B 78 */ mr r30, r3
/* 800D4DF4 000D1D34  7C 9F 23 78 */ mr r31, r4
/* 800D4DF8 000D1D38  38 80 00 2A */ li r4, 0x2a
/* 800D4DFC 000D1D3C  4B FE D1 71 */ bl daAlink_c_NS_commonProcInit
/* 800D4E00 000D1D40  7F C3 F3 78 */ mr r3, r30
/* 800D4E04 000D1D44  4B FD EB 01 */ bl daAlink_c_NS_checkZeroSpeedF
/* 800D4E08 000D1D48  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D4E0C 000D1D4C  41 82 00 10 */ beq lbl_800D4E1C
/* 800D4E10 000D1D50  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800D4E14 000D1D54  60 00 00 01 */ ori r0, r0, 1
/* 800D4E18 000D1D58  90 1E 31 A0 */ stw r0, 0x31a0(r30)
lbl_800D4E1C:
/* 800D4E1C 000D1D5C  2C 1F 00 00 */ cmpwi r31, 0
/* 800D4E20 000D1D60  41 82 00 40 */ beq lbl_800D4E60
/* 800D4E24 000D1D64  7F C3 F3 78 */ mr r3, r30
/* 800D4E28 000D1D68  38 80 01 8B */ li r4, 0x18b
/* 800D4E2C 000D1D6C  4B FD 76 25 */ bl daAlink_c_NS_getMainBckData
/* 800D4E30 000D1D70  A0 83 00 00 */ lhz r4, 0(r3)
/* 800D4E34 000D1D74  7F C3 F3 78 */ mr r3, r30
/* 800D4E38 000D1D78  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D4E3C 000D1D7C  C0 42 92 BC */ lfs f2, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800D4E40 000D1D80  4B FD 85 69 */ bl daAlink_c_NS_setUpperAnimeBaseSpeed
/* 800D4E44 000D1D84  C0 1E 1F E0 */ lfs f0, 0x1fe0(r30)
/* 800D4E48 000D1D88  D0 1E 20 58 */ stfs f0, 0x2058(r30)
/* 800D4E4C 000D1D8C  80 7E 1F 54 */ lwz r3, 0x1f54(r30)
/* 800D4E50 000D1D90  D0 03 00 08 */ stfs f0, 8(r3)
/* 800D4E54 000D1D94  7F C3 F3 78 */ mr r3, r30
/* 800D4E58 000D1D98  38 80 01 8B */ li r4, 0x18b
/* 800D4E5C 000D1D9C  4B FD AC B9 */ bl daAlink_c_NS_setFacePriAnime
lbl_800D4E60:
/* 800D4E60 000D1DA0  7F C3 F3 78 */ mr r3, r30
/* 800D4E64 000D1DA4  38 80 00 76 */ li r4, 0x76
/* 800D4E68 000D1DA8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D4E6C 000D1DAC  3C A0 80 39 */ lis r5, lbl_8038DB84@ha
/* 800D4E70 000D1DB0  38 A5 DB 84 */ addi r5, r5, lbl_8038DB84@l
/* 800D4E74 000D1DB4  C0 45 00 50 */ lfs f2, 0x50(r5)
/* 800D4E78 000D1DB8  4B FD 81 69 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 800D4E7C 000D1DBC  38 00 00 00 */ li r0, 0
/* 800D4E80 000D1DC0  98 1E 2F 98 */ stb r0, 0x2f98(r30)
/* 800D4E84 000D1DC4  3C 60 80 39 */ lis r3, lbl_8038DB84@ha
/* 800D4E88 000D1DC8  38 63 DB 84 */ addi r3, r3, lbl_8038DB84@l
/* 800D4E8C 000D1DCC  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 800D4E90 000D1DD0  D0 1E 05 94 */ stfs f0, 0x594(r30)
/* 800D4E94 000D1DD4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D4E98 000D1DD8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D4E9C 000D1DDC  88 03 00 14 */ lbz r0, 0x14(r3)
/* 800D4EA0 000D1DE0  28 00 00 3F */ cmplwi r0, 0x3f
/* 800D4EA4 000D1DE4  41 82 00 10 */ beq lbl_800D4EB4
/* 800D4EA8 000D1DE8  80 7E 06 C4 */ lwz r3, 0x6c4(r30)
/* 800D4EAC 000D1DEC  4B FD 43 9D */ bl daAlink_c_NS_simpleAnmPlay
/* 800D4EB0 000D1DF0  48 00 00 0C */ b lbl_800D4EBC
lbl_800D4EB4:
/* 800D4EB4 000D1DF4  38 00 00 01 */ li r0, 1
/* 800D4EB8 000D1DF8  B0 1E 30 08 */ sth r0, 0x3008(r30)
lbl_800D4EBC:
/* 800D4EBC 000D1DFC  B3 FE 30 0C */ sth r31, 0x300c(r30)
/* 800D4EC0 000D1E00  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800D4EC4 000D1E04  64 00 10 00 */ oris r0, r0, 0x1000
/* 800D4EC8 000D1E08  90 1E 05 74 */ stw r0, 0x574(r30)
/* 800D4ECC 000D1E0C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D4ED0 000D1E10  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D4ED4 000D1E14  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800D4ED8 000D1E18  64 00 40 00 */ oris r0, r0, 0x4000
/* 800D4EDC 000D1E1C  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800D4EE0 000D1E20  38 60 00 01 */ li r3, 1
/* 800D4EE4 000D1E24  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D4EE8 000D1E28  83 C1 00 08 */ lwz r30, 8(r1)
/* 800D4EEC 000D1E2C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D4EF0 000D1E30  7C 08 03 A6 */ mtlr r0
/* 800D4EF4 000D1E34  38 21 00 10 */ addi r1, r1, 0x10
/* 800D4EF8 000D1E38  4E 80 00 20 */ blr