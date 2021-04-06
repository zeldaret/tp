lbl_80124144:
/* 80124144  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80124148  7C 08 02 A6 */	mflr r0
/* 8012414C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80124150  7C 68 1B 78 */	mr r8, r3
/* 80124154  A8 03 32 C0 */	lha r0, 0x32c0(r3)
/* 80124158  2C 00 00 00 */	cmpwi r0, 0
/* 8012415C  40 81 00 74 */	ble lbl_801241D0
/* 80124160  80 68 06 50 */	lwz r3, 0x650(r8)
/* 80124164  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80124168  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012416C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80124170  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80124174  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80124178  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8012417C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80124180  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80124184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80124188  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012418C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80124190  38 80 00 00 */	li r4, 0
/* 80124194  90 81 00 08 */	stw r4, 8(r1)
/* 80124198  38 00 FF FF */	li r0, -1
/* 8012419C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801241A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 801241A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 801241A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 801241AC  38 80 00 00 */	li r4, 0
/* 801241B0  38 A0 02 A4 */	li r5, 0x2a4
/* 801241B4  38 C1 00 20 */	addi r6, r1, 0x20
/* 801241B8  38 E8 01 0C */	addi r7, r8, 0x10c
/* 801241BC  39 08 04 E4 */	addi r8, r8, 0x4e4
/* 801241C0  39 20 00 00 */	li r9, 0
/* 801241C4  39 40 00 FF */	li r10, 0xff
/* 801241C8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801241CC  4B F2 88 C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_801241D0:
/* 801241D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801241D4  7C 08 03 A6 */	mtlr r0
/* 801241D8  38 21 00 30 */	addi r1, r1, 0x30
/* 801241DC  4E 80 00 20 */	blr 
