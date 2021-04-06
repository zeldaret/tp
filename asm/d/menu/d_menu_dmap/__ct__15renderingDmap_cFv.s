lbl_801C051C:
/* 801C051C  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801C0520  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801C0524  90 03 00 00 */	stw r0, 0(r3)
/* 801C0528  3C 80 80 3A */	lis r4, __vt__11dDrawPath_c@ha /* 0x803A7CF8@ha */
/* 801C052C  38 04 7C F8 */	addi r0, r4, __vt__11dDrawPath_c@l /* 0x803A7CF8@l */
/* 801C0530  90 03 00 00 */	stw r0, 0(r3)
/* 801C0534  3C 80 80 3A */	lis r4, __vt__28dDrawPathWithNormalPattern_c@ha /* 0x803A6F94@ha */
/* 801C0538  38 04 6F 94 */	addi r0, r4, __vt__28dDrawPathWithNormalPattern_c@l /* 0x803A6F94@l */
/* 801C053C  90 03 00 00 */	stw r0, 0(r3)
/* 801C0540  3C 80 80 3A */	lis r4, __vt__15dRenderingMap_c@ha /* 0x803A6FD4@ha */
/* 801C0544  38 04 6F D4 */	addi r0, r4, __vt__15dRenderingMap_c@l /* 0x803A6FD4@l */
/* 801C0548  90 03 00 00 */	stw r0, 0(r3)
/* 801C054C  3C 80 80 3A */	lis r4, __vt__18dRenderingFDAmap_c@ha /* 0x803A7C90@ha */
/* 801C0550  38 04 7C 90 */	addi r0, r4, __vt__18dRenderingFDAmap_c@l /* 0x803A7C90@l */
/* 801C0554  90 03 00 00 */	stw r0, 0(r3)
/* 801C0558  38 A0 00 00 */	li r5, 0
/* 801C055C  90 A3 00 04 */	stw r5, 4(r3)
/* 801C0560  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801C0564  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C0568  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801C056C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801C0570  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801C0574  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801C0578  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 801C057C  B0 A3 00 1E */	sth r5, 0x1e(r3)
/* 801C0580  B0 A3 00 20 */	sth r5, 0x20(r3)
/* 801C0584  B0 A3 00 22 */	sth r5, 0x22(r3)
/* 801C0588  3C 80 80 3A */	lis r4, __vt__16renderingDAmap_c@ha /* 0x803A7EE0@ha */
/* 801C058C  38 04 7E E0 */	addi r0, r4, __vt__16renderingDAmap_c@l /* 0x803A7EE0@l */
/* 801C0590  90 03 00 00 */	stw r0, 0(r3)
/* 801C0594  90 A3 00 24 */	stw r5, 0x24(r3)
/* 801C0598  90 A3 00 28 */	stw r5, 0x28(r3)
/* 801C059C  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 801C05A0  98 A3 00 30 */	stb r5, 0x30(r3)
/* 801C05A4  98 A3 00 31 */	stb r5, 0x31(r3)
/* 801C05A8  3C 80 80 3A */	lis r4, __vt__19renderingPlusDoor_c@ha /* 0x803A7D80@ha */
/* 801C05AC  38 04 7D 80 */	addi r0, r4, __vt__19renderingPlusDoor_c@l /* 0x803A7D80@l */
/* 801C05B0  90 03 00 00 */	stw r0, 0(r3)
/* 801C05B4  3C 80 80 3C */	lis r4, __vt__15renderingDmap_c@ha /* 0x803BCE68@ha */
/* 801C05B8  38 04 CE 68 */	addi r0, r4, __vt__15renderingDmap_c@l /* 0x803BCE68@l */
/* 801C05BC  90 03 00 00 */	stw r0, 0(r3)
/* 801C05C0  4E 80 00 20 */	blr 
