/* 8002FDE8 0002CD28  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002FDEC 0002CD2C  7C 08 02 A6 */ mflr r0
/* 8002FDF0 0002CD30  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002FDF4 0002CD34  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002FDF8 0002CD38  93 C1 00 08 */ stw r30, 8(r1)
/* 8002FDFC 0002CD3C  7C 7F 1B 79 */ or. r31, r3, r3
/* 8002FE00 0002CD40  7C 9E 23 78 */ mr r30, r4
/* 8002FE04 0002CD44  41 82 00 D8 */ beq lbl_8002FEDC
/* 8002FE08 0002CD48  38 7F 4E 3C */ addi r3, r31, 0x4e3c
/*.global dComIfG_camera_info_class_NS_dtor*/
/* 8002FE0C 0002CD4C  3C 80 80 03 */ lis r4, dComIfG_camera_info_class_NS_dtor@ha
/*.global dComIfG_camera_info_class_NS_dtor*/
/* 8002FE10 0002CD50  38 84 02 08 */ addi r4, r4, dComIfG_camera_info_class_NS_dtor@l
/* 8002FE14 0002CD54  38 A0 00 38 */ li r5, 0x38
/* 8002FE18 0002CD58  38 C0 00 01 */ li r6, 1
/* 8002FE1C 0002CD5C  48 33 1E CD */ bl func_80361CE8
/* 8002FE20 0002CD60  38 7F 4E 10 */ addi r3, r31, 0x4e10
/*.global dDlst_window_c_NS_dtor*/
/* 8002FE24 0002CD64  3C 80 80 03 */ lis r4, dDlst_window_c_NS_dtor@ha
/*.global dDlst_window_c_NS_dtor*/
/* 8002FE28 0002CD68  38 84 01 CC */ addi r4, r4, dDlst_window_c_NS_dtor@l
/* 8002FE2C 0002CD6C  38 A0 00 2C */ li r5, 0x2c
/* 8002FE30 0002CD70  38 C0 00 01 */ li r6, 1
/* 8002FE34 0002CD74  48 33 1E B5 */ bl func_80361CE8
/* 8002FE38 0002CD78  38 7F 47 80 */ addi r3, r31, 0x4780
/* 8002FE3C 0002CD7C  38 80 FF FF */ li r4, -1
/* 8002FE40 0002CD80  48 04 09 35 */ bl dAttention_c_NS_dtor
/* 8002FE44 0002CD84  34 1F 40 C0 */ addic. r0, r31, 0x40c0
/* 8002FE48 0002CD88  41 82 00 1C */ beq lbl_8002FE64
/* 8002FE4C 0002CD8C  38 7F 40 C0 */ addi r3, r31, 0x40c0
/*.global dEvDtBase_c_NS_dtor*/
/* 8002FE50 0002CD90  3C 80 80 03 */ lis r4, dEvDtBase_c_NS_dtor@ha
/*.global dEvDtBase_c_NS_dtor*/
/* 8002FE54 0002CD94  38 84 01 90 */ addi r4, r4, dEvDtBase_c_NS_dtor@l
/* 8002FE58 0002CD98  38 A0 00 24 */ li r5, 0x24
/* 8002FE5C 0002CD9C  38 C0 00 0B */ li r6, 0xb
/* 8002FE60 0002CDA0  48 33 1E 89 */ bl func_80361CE8
lbl_8002FE64:
/* 8002FE64 0002CDA4  34 1F 3F 90 */ addic. r0, r31, 0x3f90
/* 8002FE68 0002CDA8  41 82 00 1C */ beq lbl_8002FE84
/* 8002FE6C 0002CDAC  38 7F 3F 94 */ addi r3, r31, 0x3f94
/*.global dEvt_order_c_NS_dtor*/
/* 8002FE70 0002CDB0  3C 80 80 03 */ lis r4, dEvt_order_c_NS_dtor@ha
/*.global dEvt_order_c_NS_dtor*/
/* 8002FE74 0002CDB4  38 84 01 54 */ addi r4, r4, dEvt_order_c_NS_dtor@l
/* 8002FE78 0002CDB8  38 A0 00 18 */ li r5, 0x18
/* 8002FE7C 0002CDBC  38 C0 00 08 */ li r6, 8
/* 8002FE80 0002CDC0  48 33 1E 69 */ bl func_80361CE8
lbl_8002FE84:
/* 8002FE84 0002CDC4  38 7F 14 04 */ addi r3, r31, 0x1404
/* 8002FE88 0002CDC8  38 80 FF FF */ li r4, -1
/* 8002FE8C 0002CDCC  48 00 00 B5 */ bl dCcS_NS_dtor
/* 8002FE90 0002CDD0  28 1F 00 00 */ cmplwi r31, 0
/* 8002FE94 0002CDD4  41 82 00 38 */ beq lbl_8002FECC
/* 8002FE98 0002CDD8  3C 60 80 3B */ lis r3, lbl_803AB608@ha
/* 8002FE9C 0002CDDC  38 03 B6 08 */ addi r0, r3, lbl_803AB608@l
/* 8002FEA0 0002CDE0  90 1F 14 00 */ stw r0, 0x1400(r31)
/* 8002FEA4 0002CDE4  41 82 00 28 */ beq lbl_8002FECC
/* 8002FEA8 0002CDE8  3C 60 80 3B */ lis r3, lbl_803AB61C@ha
/* 8002FEAC 0002CDEC  38 03 B6 1C */ addi r0, r3, lbl_803AB61C@l
/* 8002FEB0 0002CDF0  90 1F 14 00 */ stw r0, 0x1400(r31)
/* 8002FEB4 0002CDF4  7F E3 FB 78 */ mr r3, r31
/*.global cBgS_ChkElm_NS_dtor*/
/* 8002FEB8 0002CDF8  3C 80 80 03 */ lis r4, cBgS_ChkElm_NS_dtor@ha
/*.global cBgS_ChkElm_NS_dtor*/
/* 8002FEBC 0002CDFC  38 84 FE F8 */ addi r4, r4, cBgS_ChkElm_NS_dtor@l
/* 8002FEC0 0002CE00  38 A0 00 14 */ li r5, 0x14
/* 8002FEC4 0002CE04  38 C0 01 00 */ li r6, 0x100
/* 8002FEC8 0002CE08  48 33 1E 21 */ bl func_80361CE8
lbl_8002FECC:
/* 8002FECC 0002CE0C  7F C0 07 35 */ extsh. r0, r30
/* 8002FED0 0002CE10  40 81 00 0C */ ble lbl_8002FEDC
/* 8002FED4 0002CE14  7F E3 FB 78 */ mr r3, r31
/* 8002FED8 0002CE18  48 29 EE 65 */ bl __dl__FPv
lbl_8002FEDC:
/* 8002FEDC 0002CE1C  7F E3 FB 78 */ mr r3, r31
/* 8002FEE0 0002CE20  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002FEE4 0002CE24  83 C1 00 08 */ lwz r30, 8(r1)
/* 8002FEE8 0002CE28  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002FEEC 0002CE2C  7C 08 03 A6 */ mtlr r0
/* 8002FEF0 0002CE30  38 21 00 10 */ addi r1, r1, 0x10
/* 8002FEF4 0002CE34  4E 80 00 20 */ blr