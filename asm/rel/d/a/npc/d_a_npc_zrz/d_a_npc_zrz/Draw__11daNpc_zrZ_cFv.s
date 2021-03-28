lbl_80B94A48:
/* 80B94A48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B94A4C  7C 08 02 A6 */	mflr r0
/* 80B94A50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B94A54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B94A58  7C 7F 1B 78 */	mr r31, r3
/* 80B94A5C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80B94A60  80 84 00 04 */	lwz r4, 4(r4)
/* 80B94A64  80 84 00 04 */	lwz r4, 4(r4)
/* 80B94A68  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80B94A6C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B94A70  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80B94A74  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80B94A78  88 03 14 4C */	lbz r0, 0x144c(r3)
/* 80B94A7C  28 00 00 01 */	cmplwi r0, 1
/* 80B94A80  40 82 00 54 */	bne lbl_80B94AD4
/* 80B94A84  3C 80 80 BA */	lis r4, lit_4555@ha
/* 80B94A88  38 A4 B4 94 */	addi r5, r4, lit_4555@l
/* 80B94A8C  80 85 00 00 */	lwz r4, 0(r5)
/* 80B94A90  80 05 00 04 */	lwz r0, 4(r5)
/* 80B94A94  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B94A98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B94A9C  80 05 00 08 */	lwz r0, 8(r5)
/* 80B94AA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B94AA4  38 81 00 14 */	addi r4, r1, 0x14
/* 80B94AA8  48 00 1C 99 */	bl chkAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i
/* 80B94AAC  7C 64 1B 78 */	mr r4, r3
/* 80B94AB0  7F E3 FB 78 */	mr r3, r31
/* 80B94AB4  38 A0 00 00 */	li r5, 0
/* 80B94AB8  3C C0 80 BA */	lis r6, m__17daNpc_zrZ_Param_c@ha
/* 80B94ABC  38 C6 AF EC */	addi r6, r6, m__17daNpc_zrZ_Param_c@l
/* 80B94AC0  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80B94AC4  38 C0 00 00 */	li r6, 0
/* 80B94AC8  38 E0 00 00 */	li r7, 0
/* 80B94ACC  48 00 00 69 */	bl draw__11daNpc_zrZ_cFiifP11_GXColorS10i
/* 80B94AD0  48 00 00 50 */	b lbl_80B94B20
lbl_80B94AD4:
/* 80B94AD4  3C 80 80 BA */	lis r4, lit_4558@ha
/* 80B94AD8  38 A4 B4 A0 */	addi r5, r4, lit_4558@l
/* 80B94ADC  80 85 00 00 */	lwz r4, 0(r5)
/* 80B94AE0  80 05 00 04 */	lwz r0, 4(r5)
/* 80B94AE4  90 81 00 08 */	stw r4, 8(r1)
/* 80B94AE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B94AEC  80 05 00 08 */	lwz r0, 8(r5)
/* 80B94AF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B94AF4  38 81 00 08 */	addi r4, r1, 8
/* 80B94AF8  48 00 1C 49 */	bl chkAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i
/* 80B94AFC  7C 64 1B 78 */	mr r4, r3
/* 80B94B00  7F E3 FB 78 */	mr r3, r31
/* 80B94B04  38 A0 00 00 */	li r5, 0
/* 80B94B08  3C C0 80 BA */	lis r6, m__17daNpc_zrZ_Param_c@ha
/* 80B94B0C  38 C6 AF EC */	addi r6, r6, m__17daNpc_zrZ_Param_c@l
/* 80B94B10  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80B94B14  38 C0 00 00 */	li r6, 0
/* 80B94B18  38 E0 00 00 */	li r7, 0
/* 80B94B1C  4B 5B D7 90 */	b draw__8daNpcF_cFiifP11_GXColorS10i
lbl_80B94B20:
/* 80B94B20  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B94B24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B94B28  7C 08 03 A6 */	mtlr r0
/* 80B94B2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B94B30  4E 80 00 20 */	blr 
