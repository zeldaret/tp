lbl_80BA0A94:
/* 80BA0A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA0A98  7C 08 02 A6 */	mflr r0
/* 80BA0A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA0AA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA0AA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BA0AA8  7C 7E 1B 78 */	mr r30, r3
/* 80BA0AAC  7C 9F 23 78 */	mr r31, r4
/* 80BA0AB0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80BA0AB4  B0 03 04 CA */	sth r0, 0x4ca(r3)
/* 80BA0AB8  4B FF F7 51 */	bl rotateCheck__14daObjYtaihou_cFv
/* 80BA0ABC  7F C3 F3 78 */	mr r3, r30
/* 80BA0AC0  4B FF F5 C5 */	bl setMtx__14daObjYtaihou_cFv
/* 80BA0AC4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BA0AC8  80 9E 05 E8 */	lwz r4, 0x5e8(r30)
/* 80BA0ACC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA0AD0  4B 7A 59 E0 */	b PSMTXCopy
/* 80BA0AD4  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80BA0AD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA0ADC  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80BA0AE0  4B 4A 7D 8C */	b eventUpdate__17dEvLib_callback_cFv
/* 80BA0AE4  7F C3 F3 78 */	mr r3, r30
/* 80BA0AE8  4B FF F9 75 */	bl shotCheck__14daObjYtaihou_cFv
/* 80BA0AEC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BA0AF0  3C 80 80 BA */	lis r4, l_cc_offset@ha
/* 80BA0AF4  38 84 11 C8 */	addi r4, r4, l_cc_offset@l
/* 80BA0AF8  38 A1 00 08 */	addi r5, r1, 8
/* 80BA0AFC  4B 7A 62 70 */	b PSMTXMultVec
/* 80BA0B00  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80BA0B04  38 81 00 08 */	addi r4, r1, 8
/* 80BA0B08  4B 6C E6 D4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80BA0B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA0B10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA0B14  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BA0B18  38 9E 06 28 */	addi r4, r30, 0x628
/* 80BA0B1C  4B 6C 40 8C */	b Set__4cCcSFP8cCcD_Obj
/* 80BA0B20  88 1E 07 76 */	lbz r0, 0x776(r30)
/* 80BA0B24  98 1E 07 77 */	stb r0, 0x777(r30)
/* 80BA0B28  38 00 00 00 */	li r0, 0
/* 80BA0B2C  98 1E 07 76 */	stb r0, 0x776(r30)
/* 80BA0B30  38 60 00 01 */	li r3, 1
/* 80BA0B34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA0B38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BA0B3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA0B40  7C 08 03 A6 */	mtlr r0
/* 80BA0B44  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA0B48  4E 80 00 20 */	blr 
