lbl_8004A8DC:
/* 8004A8DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8004A8E0  7C 08 02 A6 */	mflr r0
/* 8004A8E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8004A8E8  39 61 00 50 */	addi r11, r1, 0x50
/* 8004A8EC  48 31 78 E9 */	bl _savegpr_27
/* 8004A8F0  7C 7B 1B 78 */	mr r27, r3
/* 8004A8F4  7C 9C 23 78 */	mr r28, r4
/* 8004A8F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8004A8FC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8004A900  80 63 00 00 */	lwz r3, 0(r3)
/* 8004A904  83 A3 00 58 */	lwz r29, 0x58(r3)
/* 8004A908  3F C0 C0 00 */	lis r30, 0xc000
/* 8004A90C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8004A910  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 8004A914  48 00 01 00 */	b lbl_8004AA14
lbl_8004A918:
/* 8004A918  7F A3 EB 78 */	mr r3, r29
/* 8004A91C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004A920  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8004A924  7D 89 03 A6 */	mtctr r12
/* 8004A928  4E 80 04 21 */	bctrl 
/* 8004A92C  80 7D 00 08 */	lwz r3, 8(r29)
/* 8004A930  48 2C A9 D1 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 8004A934  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 8004A938  7C 03 F0 40 */	cmplw r3, r30
/* 8004A93C  40 80 00 0C */	bge lbl_8004A948
/* 8004A940  7C 60 1B 78 */	mr r0, r3
/* 8004A944  48 00 00 08 */	b lbl_8004A94C
lbl_8004A948:
/* 8004A948  38 00 00 00 */	li r0, 0
lbl_8004A94C:
/* 8004A94C  28 00 00 00 */	cmplwi r0, 0
/* 8004A950  41 82 00 2C */	beq lbl_8004A97C
/* 8004A954  3C 00 C0 00 */	lis r0, 0xc000
/* 8004A958  7C 03 00 40 */	cmplw r3, r0
/* 8004A95C  40 80 00 08 */	bge lbl_8004A964
/* 8004A960  48 00 00 08 */	b lbl_8004A968
lbl_8004A964:
/* 8004A964  38 60 00 00 */	li r3, 0
lbl_8004A968:
/* 8004A968  7F A4 EB 78 */	mr r4, r29
/* 8004A96C  81 83 00 00 */	lwz r12, 0(r3)
/* 8004A970  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8004A974  7D 89 03 A6 */	mtctr r12
/* 8004A978  4E 80 04 21 */	bctrl 
lbl_8004A97C:
/* 8004A97C  7F A3 EB 78 */	mr r3, r29
/* 8004A980  7F 84 E3 78 */	mr r4, r28
/* 8004A984  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004A988  81 8C 00 08 */	lwz r12, 8(r12)
/* 8004A98C  7D 89 03 A6 */	mtctr r12
/* 8004A990  4E 80 04 21 */	bctrl 
/* 8004A994  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8004A998  38 80 00 00 */	li r4, 0
/* 8004A99C  81 83 00 00 */	lwz r12, 0(r3)
/* 8004A9A0  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8004A9A4  7D 89 03 A6 */	mtctr r12
/* 8004A9A8  4E 80 04 21 */	bctrl 
/* 8004A9AC  7C 64 1B 78 */	mr r4, r3
/* 8004A9B0  80 7B 00 00 */	lwz r3, 0(r27)
/* 8004A9B4  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8004A9B8  38 A0 00 00 */	li r5, 0
/* 8004A9BC  48 2C 76 91 */	bl loadGX__10J3DTextureCFUs11_GXTexMapID
/* 8004A9C0  48 15 CC 01 */	bl dKy_setLight_again__Fv
/* 8004A9C4  38 7B 00 08 */	addi r3, r27, 8
/* 8004A9C8  48 15 CC 19 */	bl dKy_Global_amb_set__FP12dKy_tevstr_c
/* 8004A9CC  38 7B 00 08 */	addi r3, r27, 8
/* 8004A9D0  48 15 DC 81 */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 8004A9D4  7F E3 FB 78 */	mr r3, r31
/* 8004A9D8  7F 84 E3 78 */	mr r4, r28
/* 8004A9DC  38 A1 00 08 */	addi r5, r1, 8
/* 8004A9E0  48 2F BB 05 */	bl PSMTXConcat
/* 8004A9E4  38 61 00 08 */	addi r3, r1, 8
/* 8004A9E8  38 80 00 00 */	li r4, 0
/* 8004A9EC  48 31 58 61 */	bl GXLoadPosMtxImm
/* 8004A9F0  38 61 00 08 */	addi r3, r1, 8
/* 8004A9F4  38 80 00 00 */	li r4, 0
/* 8004A9F8  48 31 58 A5 */	bl GXLoadNrmMtxImm
/* 8004A9FC  80 7D 00 08 */	lwz r3, 8(r29)
/* 8004AA00  81 83 00 00 */	lwz r12, 0(r3)
/* 8004AA04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8004AA08  7D 89 03 A6 */	mtctr r12
/* 8004AA0C  4E 80 04 21 */	bctrl 
/* 8004AA10  83 BD 00 04 */	lwz r29, 4(r29)
lbl_8004AA14:
/* 8004AA14  28 1D 00 00 */	cmplwi r29, 0
/* 8004AA18  40 82 FF 00 */	bne lbl_8004A918
/* 8004AA1C  39 61 00 50 */	addi r11, r1, 0x50
/* 8004AA20  48 31 78 01 */	bl _restgpr_27
/* 8004AA24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8004AA28  7C 08 03 A6 */	mtlr r0
/* 8004AA2C  38 21 00 50 */	addi r1, r1, 0x50
/* 8004AA30  4E 80 00 20 */	blr 
