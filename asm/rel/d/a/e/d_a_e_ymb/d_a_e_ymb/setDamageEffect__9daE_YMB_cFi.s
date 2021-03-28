lbl_80817AEC:
/* 80817AEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80817AF0  7C 08 02 A6 */	mflr r0
/* 80817AF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80817AF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80817AFC  4B B4 A6 E0 */	b _savegpr_29
/* 80817B00  7C 7E 1B 78 */	mr r30, r3
/* 80817B04  7C 9D 23 78 */	mr r29, r4
/* 80817B08  3C 60 80 82 */	lis r3, lit_1109@ha
/* 80817B0C  3B E3 1E 18 */	addi r31, r3, lit_1109@l
/* 80817B10  88 1F 02 34 */	lbz r0, 0x234(r31)
/* 80817B14  7C 00 07 75 */	extsb. r0, r0
/* 80817B18  40 82 00 34 */	bne lbl_80817B4C
/* 80817B1C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80817B20  C0 03 00 08 */	lfs f0, 8(r3)
/* 80817B24  D0 1F 02 38 */	stfs f0, 0x238(r31)
/* 80817B28  38 7F 02 38 */	addi r3, r31, 0x238
/* 80817B2C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80817B30  D0 03 00 08 */	stfs f0, 8(r3)
/* 80817B34  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha
/* 80817B38  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80817B3C  38 BF 02 28 */	addi r5, r31, 0x228
/* 80817B40  4B FF E5 59 */	bl __register_global_object
/* 80817B44  38 00 00 01 */	li r0, 1
/* 80817B48  98 1F 02 34 */	stb r0, 0x234(r31)
lbl_80817B4C:
/* 80817B4C  7F C3 F3 78 */	mr r3, r30
/* 80817B50  38 81 00 20 */	addi r4, r1, 0x20
/* 80817B54  48 00 85 4D */	bl getBellyBitePos__9daE_YMB_cFP4cXyz
/* 80817B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80817B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80817B60  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80817B64  38 00 00 FF */	li r0, 0xff
/* 80817B68  90 01 00 08 */	stw r0, 8(r1)
/* 80817B6C  38 80 00 00 */	li r4, 0
/* 80817B70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80817B74  38 00 FF FF */	li r0, -1
/* 80817B78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80817B7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817B80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817B84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80817B88  80 9E 15 1C */	lwz r4, 0x151c(r30)
/* 80817B8C  38 A0 00 00 */	li r5, 0
/* 80817B90  57 A0 08 3C */	slwi r0, r29, 1
/* 80817B94  3C C0 80 82 */	lis r6, w_eff_id_4611@ha
/* 80817B98  38 C6 1C 88 */	addi r6, r6, w_eff_id_4611@l
/* 80817B9C  7C C6 02 2E */	lhzx r6, r6, r0
/* 80817BA0  38 E1 00 20 */	addi r7, r1, 0x20
/* 80817BA4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80817BA8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80817BAC  39 5F 02 38 */	addi r10, r31, 0x238
/* 80817BB0  3D 60 80 82 */	lis r11, lit_3791@ha
/* 80817BB4  C0 2B 18 AC */	lfs f1, lit_3791@l(r11)
/* 80817BB8  4B 83 59 14 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817BBC  90 7E 15 1C */	stw r3, 0x151c(r30)
/* 80817BC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80817BC4  4B B4 A6 64 */	b _restgpr_29
/* 80817BC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80817BCC  7C 08 03 A6 */	mtlr r0
/* 80817BD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80817BD4  4E 80 00 20 */	blr 
