/* 800F4A50 000F1990  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F4A54 000F1994  7C 08 02 A6 */ mflr r0
/* 800F4A58 000F1998  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F4A5C 000F199C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F4A60 000F19A0  93 C1 00 08 */ stw r30, 8(r1)
/* 800F4A64 000F19A4  7C 7E 1B 78 */ mr r30, r3
/* 800F4A68 000F19A8  38 80 00 8C */ li r4, 0x8c
/* 800F4A6C 000F19AC  4B FC D5 01 */ bl daAlink_c_NS_commonProcInit
/* 800F4A70 000F19B0  7F C3 F3 78 */ mr r3, r30
/* 800F4A74 000F19B4  38 80 00 00 */ li r4, 0
/* 800F4A78 000F19B8  4B FE DB 09 */ bl daAlink_c_NS_setHeavyBoots
/* 800F4A7C 000F19BC  38 7E 28 14 */ addi r3, r30, 0x2814
/* 800F4A80 000F19C0  80 9E 27 F4 */ lwz r4, 0x27f4(r30)
/* 800F4A84 000F19C4  48 06 A2 35 */ bl daPy_actorKeep_c_NS_setData
/* 800F4A88 000F19C8  7F C3 F3 78 */ mr r3, r30
/* 800F4A8C 000F19CC  38 80 00 00 */ li r4, 0
/* 800F4A90 000F19D0  38 A0 00 00 */ li r5, 0
/* 800F4A94 000F19D4  4B FC C8 49 */ bl daAlink_c_NS_deleteEquipItem
/* 800F4A98 000F19D8  83 FE 27 F4 */ lwz r31, 0x27f4(r30)
/* 800F4A9C 000F19DC  7F C3 F3 78 */ mr r3, r30
/* 800F4AA0 000F19E0  38 80 00 94 */ li r4, 0x94
/* 800F4AA4 000F19E4  3C A0 80 39 */ lis r5, lbl_8038E164@ha
/* 800F4AA8 000F19E8  38 C5 E1 64 */ addi r6, r5, lbl_8038E164@l
/* 800F4AAC 000F19EC  C0 26 00 2C */ lfs f1, 0x2c(r6)
/* 800F4AB0 000F19F0  C0 46 00 50 */ lfs f2, 0x50(r6)
/* 800F4AB4 000F19F4  A8 A6 00 28 */ lha r5, 0x28(r6)
/* 800F4AB8 000F19F8  C0 66 00 34 */ lfs f3, 0x34(r6)
/* 800F4ABC 000F19FC  4B FB 85 51 */ bl daAlink_c_NS_setSingleAnime
/* 800F4AC0 000F1A00  7F C3 F3 78 */ mr r3, r30
/* 800F4AC4 000F1A04  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F4AC8 000F1A08  C0 5E 05 34 */ lfs f2, 0x534(r30)
/* 800F4ACC 000F1A0C  38 80 00 00 */ li r4, 0
/* 800F4AD0 000F1A10  4B FC 6C A1 */ bl setSpecialGravity__9daAlink_cFffi
/* 800F4AD4 000F1A14  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F4AD8 000F1A18  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800F4ADC 000F1A1C  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 800F4AE0 000F1A20  7F C3 F3 78 */ mr r3, r30
/* 800F4AE4 000F1A24  7F E4 FB 78 */ mr r4, r31
/* 800F4AE8 000F1A28  4B FF FA 7D */ bl daAlink_c_NS_setRideCanoeBasePos
/* 800F4AEC 000F1A2C  7F E3 FB 78 */ mr r3, r31
/* 800F4AF0 000F1A30  7F C4 F3 78 */ mr r4, r30
/* 800F4AF4 000F1A34  4B F2 5C 1D */ bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800F4AF8 000F1A38  A8 9F 04 E6 */ lha r4, 0x4e6(r31)
/* 800F4AFC 000F1A3C  7C 04 18 50 */ subf r0, r4, r3
/* 800F4B00 000F1A40  7C 00 07 35 */ extsh. r0, r0
/* 800F4B04 000F1A44  40 81 00 20 */ ble lbl_800F4B24
/* 800F4B08 000F1A48  38 04 C0 00 */ addi r0, r4, -16384
/* 800F4B0C 000F1A4C  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 800F4B10 000F1A50  38 00 00 00 */ li r0, 0
/* 800F4B14 000F1A54  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800F4B18 000F1A58  C0 02 95 1C */ lfs f0, lbl_80452F1C-_SDA2_BASE_(r2)
/* 800F4B1C 000F1A5C  D0 1E 37 C8 */ stfs f0, 0x37c8(r30)
/* 800F4B20 000F1A60  48 00 00 1C */ b lbl_800F4B3C
lbl_800F4B24:
/* 800F4B24 000F1A64  38 04 40 00 */ addi r0, r4, 0x4000
/* 800F4B28 000F1A68  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 800F4B2C 000F1A6C  38 00 00 01 */ li r0, 1
/* 800F4B30 000F1A70  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800F4B34 000F1A74  C0 02 95 20 */ lfs f0, lbl_80452F20-_SDA2_BASE_(r2)
/* 800F4B38 000F1A78  D0 1E 37 C8 */ stfs f0, 0x37c8(r30)
lbl_800F4B3C:
/* 800F4B3C 000F1A7C  80 7F 05 70 */ lwz r3, 0x570(r31)
/* 800F4B40 000F1A80  38 63 00 24 */ addi r3, r3, 0x24
/* 800F4B44 000F1A84  38 9E 37 C8 */ addi r4, r30, 0x37c8
/* 800F4B48 000F1A88  38 BE 04 D0 */ addi r5, r30, 0x4d0
/* 800F4B4C 000F1A8C  48 25 22 21 */ bl PSMTXMultVec
/* 800F4B50 000F1A90  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800F4B54 000F1A94  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800F4B58 000F1A98  7F C3 F3 78 */ mr r3, r30
/* 800F4B5C 000F1A9C  4B FF F4 69 */ bl daAlink_c_NS_initCanoeRide
/* 800F4B60 000F1AA0  38 00 00 80 */ li r0, 0x80
/* 800F4B64 000F1AA4  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 800F4B68 000F1AA8  7F C3 F3 78 */ mr r3, r30
/* 800F4B6C 000F1AAC  38 80 00 01 */ li r4, 1
/* 800F4B70 000F1AB0  48 00 E7 59 */ bl daAlink_c_NS_swimOutAfter
/* 800F4B74 000F1AB4  38 60 00 01 */ li r3, 1
/* 800F4B78 000F1AB8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F4B7C 000F1ABC  83 C1 00 08 */ lwz r30, 8(r1)
/* 800F4B80 000F1AC0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F4B84 000F1AC4  7C 08 03 A6 */ mtlr r0
/* 800F4B88 000F1AC8  38 21 00 10 */ addi r1, r1, 0x10
/* 800F4B8C 000F1ACC  4E 80 00 20 */ blr