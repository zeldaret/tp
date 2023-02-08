lbl_80590CE4:
/* 80590CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80590CE8  7C 08 02 A6 */	mflr r0
/* 80590CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80590CF4  4B DD 14 E9 */	bl _savegpr_29
/* 80590CF8  7C 7E 1B 78 */	mr r30, r3
/* 80590CFC  3C 60 80 59 */	lis r3, l_magne_scale@ha /* 0x80592848@ha */
/* 80590D00  3B E3 28 48 */	addi r31, r3, l_magne_scale@l /* 0x80592848@l */
/* 80590D04  8B BE 0A 17 */	lbz r29, 0xa17(r30)
/* 80590D08  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 80590D0C  48 00 1B 09 */	bl func_80592814
/* 80590D10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80590D14  40 82 00 F8 */	bne lbl_80590E0C
/* 80590D18  7F C3 F3 78 */	mr r3, r30
/* 80590D1C  48 00 0E E1 */	bl endMagneHoleEffect__11daObjMarm_cFv
/* 80590D20  28 1D 00 00 */	cmplwi r29, 0
/* 80590D24  41 82 00 0C */	beq lbl_80590D30
/* 80590D28  7F C3 F3 78 */	mr r3, r30
/* 80590D2C  48 00 10 ED */	bl seStart_MOVESTART__11daObjMarm_cFv
lbl_80590D30:
/* 80590D30  A8 7F 00 38 */	lha r3, 0x38(r31)
/* 80590D34  7C 64 1B 78 */	mr r4, r3
/* 80590D38  88 1E 0A 09 */	lbz r0, 0xa09(r30)
/* 80590D3C  7C 00 07 74 */	extsb r0, r0
/* 80590D40  2C 00 FF FF */	cmpwi r0, -1
/* 80590D44  40 82 00 0C */	bne lbl_80590D50
/* 80590D48  7C 03 00 D0 */	neg r0, r3
/* 80590D4C  7C 04 07 34 */	extsh r4, r0
lbl_80590D50:
/* 80590D50  38 7E 0A 0A */	addi r3, r30, 0xa0a
/* 80590D54  38 A0 00 14 */	li r5, 0x14
/* 80590D58  38 C0 00 32 */	li r6, 0x32
/* 80590D5C  38 E0 00 0A */	li r7, 0xa
/* 80590D60  4B CD F7 E1 */	bl cLib_addCalcAngleS__FPsssss
/* 80590D64  A8 7E 0A 0A */	lha r3, 0xa0a(r30)
/* 80590D68  A8 1E 09 FC */	lha r0, 0x9fc(r30)
/* 80590D6C  7C 03 00 50 */	subf r0, r3, r0
/* 80590D70  B0 1E 09 FC */	sth r0, 0x9fc(r30)
/* 80590D74  A8 7E 0A 0A */	lha r3, 0xa0a(r30)
/* 80590D78  4B DD 43 59 */	bl abs
/* 80590D7C  80 1E 0A 10 */	lwz r0, 0xa10(r30)
/* 80590D80  7C 00 1A 14 */	add r0, r0, r3
/* 80590D84  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 80590D88  80 1E 0A 10 */	lwz r0, 0xa10(r30)
/* 80590D8C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80590D90  40 81 00 74 */	ble lbl_80590E04
/* 80590D94  7F C3 F3 78 */	mr r3, r30
/* 80590D98  48 00 0E 61 */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 80590D9C  88 7E 0A 08 */	lbz r3, 0xa08(r30)
/* 80590DA0  88 1E 0A 09 */	lbz r0, 0xa09(r30)
/* 80590DA4  7C 03 02 14 */	add r0, r3, r0
/* 80590DA8  98 1E 0A 08 */	stb r0, 0xa08(r30)
/* 80590DAC  88 1E 0A 08 */	lbz r0, 0xa08(r30)
/* 80590DB0  28 00 00 00 */	cmplwi r0, 0
/* 80590DB4  40 82 00 10 */	bne lbl_80590DC4
/* 80590DB8  38 00 00 01 */	li r0, 1
/* 80590DBC  98 1E 0A 09 */	stb r0, 0xa09(r30)
/* 80590DC0  48 00 00 14 */	b lbl_80590DD4
lbl_80590DC4:
/* 80590DC4  28 00 00 02 */	cmplwi r0, 2
/* 80590DC8  40 82 00 0C */	bne lbl_80590DD4
/* 80590DCC  38 00 FF FF */	li r0, -1
/* 80590DD0  98 1E 0A 09 */	stb r0, 0xa09(r30)
lbl_80590DD4:
/* 80590DD4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80590DD8  D0 1E 0A 2C */	stfs f0, 0xa2c(r30)
/* 80590DDC  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80590DE0  D0 1E 0A 3C */	stfs f0, 0xa3c(r30)
/* 80590DE4  38 00 00 00 */	li r0, 0
/* 80590DE8  B0 1E 0A 40 */	sth r0, 0xa40(r30)
/* 80590DEC  7F C3 F3 78 */	mr r3, r30
/* 80590DF0  4B FF FE 81 */	bl init_typeA_modeRotate__11daObjMarm_cFv
/* 80590DF4  7F C3 F3 78 */	mr r3, r30
/* 80590DF8  48 00 12 29 */	bl seStart_SWING__11daObjMarm_cFv
/* 80590DFC  7F C3 F3 78 */	mr r3, r30
/* 80590E00  48 00 10 E9 */	bl seStart_STOP__11daObjMarm_cFv
lbl_80590E04:
/* 80590E04  7F C3 F3 78 */	mr r3, r30
/* 80590E08  48 00 10 79 */	bl seStartLevel_MOVE__11daObjMarm_cFv
lbl_80590E0C:
/* 80590E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80590E10  4B DD 14 19 */	bl _restgpr_29
/* 80590E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80590E18  7C 08 03 A6 */	mtlr r0
/* 80590E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80590E20  4E 80 00 20 */	blr 
