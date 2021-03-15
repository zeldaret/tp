/* 800A4820 000A1760  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800A4824 000A1764  7C 08 02 A6 */ mflr r0
/* 800A4828 000A1768  90 01 00 14 */ stw r0, 0x14(r1)
/* 800A482C 000A176C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800A4830 000A1770  93 C1 00 08 */ stw r30, 8(r1)
/* 800A4834 000A1774  7C 7E 1B 79 */ or. r30, r3, r3
/* 800A4838 000A1778  7C 9F 23 78 */ mr r31, r4
/* 800A483C 000A177C  41 82 00 98 */ beq lbl_800A48D4
/* 800A4840 000A1780  3C 60 80 3D */ lis r3, lbl_803CEE60@ha
/* 800A4844 000A1784  38 03 EE 60 */ addi r0, r3, lbl_803CEE60@l
/* 800A4848 000A1788  90 1E 00 00 */ stw r0, 0(r30)
/* 800A484C 000A178C  38 7E 00 D4 */ addi r3, r30, 0xd4
/*.global __dt__15J3DTevKColorAnmFv*/
/* 800A4850 000A1790  3C 80 80 04 */ lis r4, __dt__15J3DTevKColorAnmFv@ha
/*.global __dt__15J3DTevKColorAnmFv*/
/* 800A4854 000A1794  38 84 B1 50 */ addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 800A4858 000A1798  38 A0 00 08 */ li r5, 8
/* 800A485C 000A179C  38 C0 00 04 */ li r6, 4
/* 800A4860 000A17A0  48 2B D4 89 */ bl __destroy_arr
/* 800A4864 000A17A4  38 7E 00 B4 */ addi r3, r30, 0xb4
/*.global __dt__14J3DTevColorAnmFv*/
/* 800A4868 000A17A8  3C 80 80 04 */ lis r4, __dt__14J3DTevColorAnmFv@ha
/*.global __dt__14J3DTevColorAnmFv*/
/* 800A486C 000A17AC  38 84 B1 A4 */ addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 800A4870 000A17B0  38 A0 00 08 */ li r5, 8
/* 800A4874 000A17B4  38 C0 00 04 */ li r6, 4
/* 800A4878 000A17B8  48 2B D4 71 */ bl __destroy_arr
/* 800A487C 000A17BC  38 7E 00 54 */ addi r3, r30, 0x54
/*.global __dt__11J3DTexNoAnmFv*/
/* 800A4880 000A17C0  3C 80 80 04 */ lis r4, __dt__11J3DTexNoAnmFv@ha
/*.global __dt__11J3DTexNoAnmFv*/
/* 800A4884 000A17C4  38 84 B1 F8 */ addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 800A4888 000A17C8  38 A0 00 0C */ li r5, 0xc
/* 800A488C 000A17CC  38 C0 00 08 */ li r6, 8
/* 800A4890 000A17D0  48 2B D4 59 */ bl __destroy_arr
/* 800A4894 000A17D4  38 7E 00 14 */ addi r3, r30, 0x14
/*.global __dt__12J3DTexMtxAnmFv*/
/* 800A4898 000A17D8  3C 80 80 04 */ lis r4, __dt__12J3DTexMtxAnmFv@ha
/*.global __dt__12J3DTexMtxAnmFv*/
/* 800A489C 000A17DC  38 84 B2 64 */ addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 800A48A0 000A17E0  38 A0 00 08 */ li r5, 8
/* 800A48A4 000A17E4  38 C0 00 08 */ li r6, 8
/* 800A48A8 000A17E8  48 2B D4 41 */ bl __destroy_arr
/* 800A48AC 000A17EC  38 7E 00 04 */ addi r3, r30, 4
/*.global __dt__14J3DMatColorAnmFv*/
/* 800A48B0 000A17F0  3C 80 80 04 */ lis r4, __dt__14J3DMatColorAnmFv@ha
/*.global __dt__14J3DMatColorAnmFv*/
/* 800A48B4 000A17F4  38 84 B2 B8 */ addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 800A48B8 000A17F8  38 A0 00 08 */ li r5, 8
/* 800A48BC 000A17FC  38 C0 00 02 */ li r6, 2
/* 800A48C0 000A1800  48 2B D4 29 */ bl __destroy_arr
/* 800A48C4 000A1804  7F E0 07 35 */ extsh. r0, r31
/* 800A48C8 000A1808  40 81 00 0C */ ble lbl_800A48D4
/* 800A48CC 000A180C  7F C3 F3 78 */ mr r3, r30
/* 800A48D0 000A1810  48 22 A4 6D */ bl __dl__FPv
lbl_800A48D4:
/* 800A48D4 000A1814  7F C3 F3 78 */ mr r3, r30
/* 800A48D8 000A1818  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800A48DC 000A181C  83 C1 00 08 */ lwz r30, 8(r1)
/* 800A48E0 000A1820  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800A48E4 000A1824  7C 08 03 A6 */ mtlr r0
/* 800A48E8 000A1828  38 21 00 10 */ addi r1, r1, 0x10
/* 800A48EC 000A182C  4E 80 00 20 */ blr