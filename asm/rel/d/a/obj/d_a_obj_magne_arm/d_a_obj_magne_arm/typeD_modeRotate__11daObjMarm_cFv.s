lbl_80591AA8:
/* 80591AA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591AAC  7C 08 02 A6 */	mflr r0
/* 80591AB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80591AB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80591AB8  4B DD 07 24 */	b _savegpr_29
/* 80591ABC  7C 7F 1B 78 */	mr r31, r3
/* 80591AC0  3C 60 80 59 */	lis r3, l_magne_scale@ha
/* 80591AC4  3B C3 28 48 */	addi r30, r3, l_magne_scale@l
/* 80591AC8  8B BF 0A 17 */	lbz r29, 0xa17(r31)
/* 80591ACC  38 7F 0A 17 */	addi r3, r31, 0xa17
/* 80591AD0  48 00 0D 45 */	bl func_80592814
/* 80591AD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80591AD8  40 82 01 04 */	bne lbl_80591BDC
/* 80591ADC  7F E3 FB 78 */	mr r3, r31
/* 80591AE0  48 00 01 1D */	bl endMagneHoleEffect__11daObjMarm_cFv
/* 80591AE4  28 1D 00 00 */	cmplwi r29, 0
/* 80591AE8  41 82 00 0C */	beq lbl_80591AF4
/* 80591AEC  7F E3 FB 78 */	mr r3, r31
/* 80591AF0  48 00 03 29 */	bl seStart_MOVESTART__11daObjMarm_cFv
lbl_80591AF4:
/* 80591AF4  38 7E 00 38 */	addi r3, r30, 0x38
/* 80591AF8  A8 63 00 06 */	lha r3, 6(r3)
/* 80591AFC  7C 64 1B 78 */	mr r4, r3
/* 80591B00  88 1F 0A 09 */	lbz r0, 0xa09(r31)
/* 80591B04  7C 00 07 74 */	extsb r0, r0
/* 80591B08  2C 00 FF FF */	cmpwi r0, -1
/* 80591B0C  40 82 00 0C */	bne lbl_80591B18
/* 80591B10  7C 03 00 D0 */	neg r0, r3
/* 80591B14  7C 04 07 34 */	extsh r4, r0
lbl_80591B18:
/* 80591B18  38 7F 0A 0A */	addi r3, r31, 0xa0a
/* 80591B1C  38 A0 00 14 */	li r5, 0x14
/* 80591B20  38 C0 00 32 */	li r6, 0x32
/* 80591B24  38 E0 00 0A */	li r7, 0xa
/* 80591B28  4B CD EA 18 */	b cLib_addCalcAngleS__FPsssss
/* 80591B2C  A8 7F 0A 0A */	lha r3, 0xa0a(r31)
/* 80591B30  A8 1F 09 FC */	lha r0, 0x9fc(r31)
/* 80591B34  7C 03 00 50 */	subf r0, r3, r0
/* 80591B38  B0 1F 09 FC */	sth r0, 0x9fc(r31)
/* 80591B3C  A8 7F 0A 0A */	lha r3, 0xa0a(r31)
/* 80591B40  4B DD 35 90 */	b abs
/* 80591B44  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 80591B48  7C 00 1A 14 */	add r0, r0, r3
/* 80591B4C  90 1F 0A 10 */	stw r0, 0xa10(r31)
/* 80591B50  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 80591B54  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80591B58  40 81 00 7C */	ble lbl_80591BD4
/* 80591B5C  7F E3 FB 78 */	mr r3, r31
/* 80591B60  48 00 00 99 */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 80591B64  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80591B68  D0 1F 0A 2C */	stfs f0, 0xa2c(r31)
/* 80591B6C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80591B70  D0 1F 0A 3C */	stfs f0, 0xa3c(r31)
/* 80591B74  38 00 00 00 */	li r0, 0
/* 80591B78  B0 1F 0A 40 */	sth r0, 0xa40(r31)
/* 80591B7C  88 7F 0A 08 */	lbz r3, 0xa08(r31)
/* 80591B80  88 1F 0A 09 */	lbz r0, 0xa09(r31)
/* 80591B84  7C 03 02 14 */	add r0, r3, r0
/* 80591B88  98 1F 0A 08 */	stb r0, 0xa08(r31)
/* 80591B8C  88 1F 0A 08 */	lbz r0, 0xa08(r31)
/* 80591B90  28 00 00 00 */	cmplwi r0, 0
/* 80591B94  40 82 00 18 */	bne lbl_80591BAC
/* 80591B98  38 00 00 01 */	li r0, 1
/* 80591B9C  98 1F 0A 09 */	stb r0, 0xa09(r31)
/* 80591BA0  7F E3 FB 78 */	mr r3, r31
/* 80591BA4  4B FF FD 8D */	bl init_typeD_modeLiftDown__11daObjMarm_cFv
/* 80591BA8  48 00 00 1C */	b lbl_80591BC4
lbl_80591BAC:
/* 80591BAC  28 00 00 01 */	cmplwi r0, 1
/* 80591BB0  40 82 00 14 */	bne lbl_80591BC4
/* 80591BB4  38 00 FF FF */	li r0, -1
/* 80591BB8  98 1F 0A 09 */	stb r0, 0xa09(r31)
/* 80591BBC  7F E3 FB 78 */	mr r3, r31
/* 80591BC0  4B FF FE 71 */	bl init_typeD_modeRotate__11daObjMarm_cFv
lbl_80591BC4:
/* 80591BC4  7F E3 FB 78 */	mr r3, r31
/* 80591BC8  48 00 04 59 */	bl seStart_SWING__11daObjMarm_cFv
/* 80591BCC  7F E3 FB 78 */	mr r3, r31
/* 80591BD0  48 00 03 19 */	bl seStart_STOP__11daObjMarm_cFv
lbl_80591BD4:
/* 80591BD4  7F E3 FB 78 */	mr r3, r31
/* 80591BD8  48 00 02 A9 */	bl seStartLevel_MOVE__11daObjMarm_cFv
lbl_80591BDC:
/* 80591BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80591BE0  4B DD 06 48 */	b _restgpr_29
/* 80591BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591BE8  7C 08 03 A6 */	mtlr r0
/* 80591BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80591BF0  4E 80 00 20 */	blr 
