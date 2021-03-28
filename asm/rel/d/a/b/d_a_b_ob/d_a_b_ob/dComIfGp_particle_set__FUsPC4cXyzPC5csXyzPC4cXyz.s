lbl_8061AAD8:
/* 8061AAD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061AADC  7C 08 02 A6 */	mflr r0
/* 8061AAE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061AAE4  7C 6A 1B 78 */	mr r10, r3
/* 8061AAE8  7C 87 23 78 */	mr r7, r4
/* 8061AAEC  7C A8 2B 78 */	mr r8, r5
/* 8061AAF0  7C C9 33 78 */	mr r9, r6
/* 8061AAF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061AAF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061AAFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8061AB00  38 80 00 00 */	li r4, 0
/* 8061AB04  90 81 00 08 */	stw r4, 8(r1)
/* 8061AB08  38 00 FF FF */	li r0, -1
/* 8061AB0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061AB10  90 81 00 10 */	stw r4, 0x10(r1)
/* 8061AB14  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061AB18  90 81 00 18 */	stw r4, 0x18(r1)
/* 8061AB1C  38 80 00 00 */	li r4, 0
/* 8061AB20  7D 45 53 78 */	mr r5, r10
/* 8061AB24  7C E6 3B 78 */	mr r6, r7
/* 8061AB28  38 E0 00 00 */	li r7, 0
/* 8061AB2C  39 40 00 FF */	li r10, 0xff
/* 8061AB30  3D 60 80 62 */	lis r11, lit_3772@ha
/* 8061AB34  C0 2B AD 84 */	lfs f1, lit_3772@l(r11)
/* 8061AB38  4B A3 1F 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8061AB3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061AB40  7C 08 03 A6 */	mtlr r0
/* 8061AB44  38 21 00 20 */	addi r1, r1, 0x20
/* 8061AB48  4E 80 00 20 */	blr 
