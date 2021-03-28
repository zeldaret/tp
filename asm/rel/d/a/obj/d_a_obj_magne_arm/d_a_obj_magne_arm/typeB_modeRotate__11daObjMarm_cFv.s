lbl_80591160:
/* 80591160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591164  7C 08 02 A6 */	mflr r0
/* 80591168  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059116C  39 61 00 20 */	addi r11, r1, 0x20
/* 80591170  4B DD 10 6C */	b _savegpr_29
/* 80591174  7C 7F 1B 78 */	mr r31, r3
/* 80591178  3C 60 80 59 */	lis r3, l_magne_scale@ha
/* 8059117C  3B C3 28 48 */	addi r30, r3, l_magne_scale@l
/* 80591180  8B BF 0A 17 */	lbz r29, 0xa17(r31)
/* 80591184  38 7F 0A 17 */	addi r3, r31, 0xa17
/* 80591188  48 00 16 8D */	bl func_80592814
/* 8059118C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80591190  40 82 01 04 */	bne lbl_80591294
/* 80591194  28 1D 00 00 */	cmplwi r29, 0
/* 80591198  41 82 00 0C */	beq lbl_805911A4
/* 8059119C  7F E3 FB 78 */	mr r3, r31
/* 805911A0  48 00 0C 79 */	bl seStart_MOVESTART__11daObjMarm_cFv
lbl_805911A4:
/* 805911A4  7F E3 FB 78 */	mr r3, r31
/* 805911A8  48 00 0A 55 */	bl endMagneHoleEffect__11daObjMarm_cFv
/* 805911AC  38 7E 00 38 */	addi r3, r30, 0x38
/* 805911B0  A8 63 00 02 */	lha r3, 2(r3)
/* 805911B4  7C 64 1B 78 */	mr r4, r3
/* 805911B8  88 1F 0A 09 */	lbz r0, 0xa09(r31)
/* 805911BC  7C 00 07 74 */	extsb r0, r0
/* 805911C0  2C 00 FF FF */	cmpwi r0, -1
/* 805911C4  40 82 00 0C */	bne lbl_805911D0
/* 805911C8  7C 03 00 D0 */	neg r0, r3
/* 805911CC  7C 04 07 34 */	extsh r4, r0
lbl_805911D0:
/* 805911D0  38 7F 0A 0A */	addi r3, r31, 0xa0a
/* 805911D4  38 A0 00 14 */	li r5, 0x14
/* 805911D8  38 C0 00 32 */	li r6, 0x32
/* 805911DC  38 E0 00 0A */	li r7, 0xa
/* 805911E0  4B CD F3 60 */	b cLib_addCalcAngleS__FPsssss
/* 805911E4  A8 7F 0A 0A */	lha r3, 0xa0a(r31)
/* 805911E8  A8 1F 09 FC */	lha r0, 0x9fc(r31)
/* 805911EC  7C 03 00 50 */	subf r0, r3, r0
/* 805911F0  B0 1F 09 FC */	sth r0, 0x9fc(r31)
/* 805911F4  A8 7F 0A 0A */	lha r3, 0xa0a(r31)
/* 805911F8  4B DD 3E D8 */	b abs
/* 805911FC  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 80591200  7C 00 1A 14 */	add r0, r0, r3
/* 80591204  90 1F 0A 10 */	stw r0, 0xa10(r31)
/* 80591208  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 8059120C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80591210  40 81 00 7C */	ble lbl_8059128C
/* 80591214  7F E3 FB 78 */	mr r3, r31
/* 80591218  48 00 09 E1 */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 8059121C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80591220  D0 1F 0A 2C */	stfs f0, 0xa2c(r31)
/* 80591224  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80591228  D0 1F 0A 3C */	stfs f0, 0xa3c(r31)
/* 8059122C  38 00 00 00 */	li r0, 0
/* 80591230  B0 1F 0A 40 */	sth r0, 0xa40(r31)
/* 80591234  88 7F 0A 08 */	lbz r3, 0xa08(r31)
/* 80591238  88 1F 0A 09 */	lbz r0, 0xa09(r31)
/* 8059123C  7C 03 02 14 */	add r0, r3, r0
/* 80591240  98 1F 0A 08 */	stb r0, 0xa08(r31)
/* 80591244  88 1F 0A 08 */	lbz r0, 0xa08(r31)
/* 80591248  28 00 00 00 */	cmplwi r0, 0
/* 8059124C  40 82 00 18 */	bne lbl_80591264
/* 80591250  38 00 00 01 */	li r0, 1
/* 80591254  98 1F 0A 09 */	stb r0, 0xa09(r31)
/* 80591258  7F E3 FB 78 */	mr r3, r31
/* 8059125C  4B FF FE 8D */	bl init_typeB_modeRotate__11daObjMarm_cFv
/* 80591260  48 00 00 1C */	b lbl_8059127C
lbl_80591264:
/* 80591264  28 00 00 01 */	cmplwi r0, 1
/* 80591268  40 82 00 14 */	bne lbl_8059127C
/* 8059126C  38 00 FF FF */	li r0, -1
/* 80591270  98 1F 0A 09 */	stb r0, 0xa09(r31)
/* 80591274  7F E3 FB 78 */	mr r3, r31
/* 80591278  4B FF FE 71 */	bl init_typeB_modeRotate__11daObjMarm_cFv
lbl_8059127C:
/* 8059127C  7F E3 FB 78 */	mr r3, r31
/* 80591280  48 00 0D A1 */	bl seStart_SWING__11daObjMarm_cFv
/* 80591284  7F E3 FB 78 */	mr r3, r31
/* 80591288  48 00 0C 61 */	bl seStart_STOP__11daObjMarm_cFv
lbl_8059128C:
/* 8059128C  7F E3 FB 78 */	mr r3, r31
/* 80591290  48 00 0B F1 */	bl seStartLevel_MOVE__11daObjMarm_cFv
lbl_80591294:
/* 80591294  39 61 00 20 */	addi r11, r1, 0x20
/* 80591298  4B DD 0F 90 */	b _restgpr_29
/* 8059129C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805912A0  7C 08 03 A6 */	mtlr r0
/* 805912A4  38 21 00 20 */	addi r1, r1, 0x20
/* 805912A8  4E 80 00 20 */	blr 
