lbl_8009C4FC:
/* 8009C4FC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8009C500  7C 08 02 A6 */	mflr r0
/* 8009C504  90 01 00 64 */	stw r0, 0x64(r1)
/* 8009C508  39 61 00 60 */	addi r11, r1, 0x60
/* 8009C50C  48 2C 5C CD */	bl _savegpr_28
/* 8009C510  7C 7F 1B 78 */	mr r31, r3
/* 8009C514  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8009C518  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8009C51C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8009C520  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8009C524  90 03 01 0C */	stw r0, 0x10c(r3)
/* 8009C528  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 8009C52C  90 03 01 10 */	stw r0, 0x110(r3)
/* 8009C530  80 04 00 AC */	lwz r0, 0xac(r4)
/* 8009C534  90 03 01 14 */	stw r0, 0x114(r3)
/* 8009C538  38 00 00 00 */	li r0, 0
/* 8009C53C  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 8009C540  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8009C544  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8009C548  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 8009C54C  54 00 10 3A */	slwi r0, r0, 2
/* 8009C550  7C 63 00 2E */	lwzx r3, r3, r0
/* 8009C554  83 A3 00 08 */	lwz r29, 8(r3)
/* 8009C558  81 83 00 00 */	lwz r12, 0(r3)
/* 8009C55C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8009C560  7D 89 03 A6 */	mtctr r12
/* 8009C564  4E 80 04 21 */	bctrl 
/* 8009C568  7F A3 EB 78 */	mr r3, r29
/* 8009C56C  48 27 8D 95 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 8009C570  80 02 D1 70 */	lwz r0, lit_3621(r2)
/* 8009C574  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009C578  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8009C57C  A8 03 03 48 */	lha r0, 0x348(r3)
/* 8009C580  98 01 00 10 */	stb r0, 0x10(r1)
/* 8009C584  A8 03 03 4A */	lha r0, 0x34a(r3)
/* 8009C588  98 01 00 11 */	stb r0, 0x11(r1)
/* 8009C58C  A8 03 03 4C */	lha r0, 0x34c(r3)
/* 8009C590  98 01 00 12 */	stb r0, 0x12(r1)
/* 8009C594  A8 03 03 4E */	lha r0, 0x34e(r3)
/* 8009C598  98 01 00 13 */	stb r0, 0x13(r1)
/* 8009C59C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8009C5A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009C5A4  38 60 00 04 */	li r3, 4
/* 8009C5A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8009C5AC  48 2C 13 B5 */	bl GXSetChanAmbColor
/* 8009C5B0  80 0D 80 88 */	lwz r0, g_whiteColor(r13)
/* 8009C5B4  90 01 00 08 */	stw r0, 8(r1)
/* 8009C5B8  38 60 00 04 */	li r3, 4
/* 8009C5BC  38 81 00 08 */	addi r4, r1, 8
/* 8009C5C0  48 2C 14 89 */	bl GXSetChanMatColor
/* 8009C5C4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8009C5C8  48 10 A8 D5 */	bl dKy_setLight_nowroom_actor__FP12dKy_tevstr_c
/* 8009C5CC  48 10 AF F5 */	bl dKy_setLight_again__Fv
/* 8009C5D0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8009C5D4  48 10 C0 7D */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 8009C5D8  83 9F 00 1C */	lwz r28, 0x1c(r31)
/* 8009C5DC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8009C5E0  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 8009C5E4  48 00 00 44 */	b lbl_8009C628
lbl_8009C5E8:
/* 8009C5E8  7F C3 F3 78 */	mr r3, r30
/* 8009C5EC  7F 84 E3 78 */	mr r4, r28
/* 8009C5F0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8009C5F4  48 2A 9E F1 */	bl PSMTXConcat
/* 8009C5F8  38 61 00 14 */	addi r3, r1, 0x14
/* 8009C5FC  38 80 00 00 */	li r4, 0
/* 8009C600  48 2C 3C 4D */	bl GXLoadPosMtxImm
/* 8009C604  38 61 00 14 */	addi r3, r1, 0x14
/* 8009C608  38 80 00 00 */	li r4, 0
/* 8009C60C  48 2C 3C 91 */	bl GXLoadNrmMtxImm
/* 8009C610  7F A3 EB 78 */	mr r3, r29
/* 8009C614  81 9D 00 00 */	lwz r12, 0(r29)
/* 8009C618  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8009C61C  7D 89 03 A6 */	mtctr r12
/* 8009C620  4E 80 04 21 */	bctrl 
/* 8009C624  83 9C 00 30 */	lwz r28, 0x30(r28)
lbl_8009C628:
/* 8009C628  28 1C 00 00 */	cmplwi r28, 0
/* 8009C62C  40 82 FF BC */	bne lbl_8009C5E8
/* 8009C630  38 00 00 00 */	li r0, 0
/* 8009C634  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 8009C638  39 61 00 60 */	addi r11, r1, 0x60
/* 8009C63C  48 2C 5B E9 */	bl _restgpr_28
/* 8009C640  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8009C644  7C 08 03 A6 */	mtlr r0
/* 8009C648  38 21 00 60 */	addi r1, r1, 0x60
/* 8009C64C  4E 80 00 20 */	blr 
