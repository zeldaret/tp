lbl_80591604:
/* 80591604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591608  7C 08 02 A6 */	mflr r0
/* 8059160C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80591610  39 61 00 20 */	addi r11, r1, 0x20
/* 80591614  4B DD 0B C9 */	bl _savegpr_29
/* 80591618  7C 7F 1B 78 */	mr r31, r3
/* 8059161C  3C 60 80 59 */	lis r3, l_magne_scale@ha /* 0x80592848@ha */
/* 80591620  3B C3 28 48 */	addi r30, r3, l_magne_scale@l /* 0x80592848@l */
/* 80591624  8B BF 0A 17 */	lbz r29, 0xa17(r31)
/* 80591628  38 7F 0A 17 */	addi r3, r31, 0xa17
/* 8059162C  48 00 11 E9 */	bl func_80592814
/* 80591630  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80591634  40 82 01 04 */	bne lbl_80591738
/* 80591638  7F E3 FB 78 */	mr r3, r31
/* 8059163C  48 00 05 C1 */	bl endMagneHoleEffect__11daObjMarm_cFv
/* 80591640  28 1D 00 00 */	cmplwi r29, 0
/* 80591644  41 82 00 0C */	beq lbl_80591650
/* 80591648  7F E3 FB 78 */	mr r3, r31
/* 8059164C  48 00 07 CD */	bl seStart_MOVESTART__11daObjMarm_cFv
lbl_80591650:
/* 80591650  38 7E 00 38 */	addi r3, r30, 0x38
/* 80591654  A8 63 00 04 */	lha r3, 4(r3)
/* 80591658  7C 64 1B 78 */	mr r4, r3
/* 8059165C  88 1F 0A 09 */	lbz r0, 0xa09(r31)
/* 80591660  7C 00 07 74 */	extsb r0, r0
/* 80591664  2C 00 FF FF */	cmpwi r0, -1
/* 80591668  40 82 00 0C */	bne lbl_80591674
/* 8059166C  7C 03 00 D0 */	neg r0, r3
/* 80591670  7C 04 07 34 */	extsh r4, r0
lbl_80591674:
/* 80591674  38 7F 0A 0A */	addi r3, r31, 0xa0a
/* 80591678  38 A0 00 14 */	li r5, 0x14
/* 8059167C  38 C0 00 32 */	li r6, 0x32
/* 80591680  38 E0 00 0A */	li r7, 0xa
/* 80591684  4B CD EE BD */	bl cLib_addCalcAngleS__FPsssss
/* 80591688  A8 7F 0A 0A */	lha r3, 0xa0a(r31)
/* 8059168C  A8 1F 09 FC */	lha r0, 0x9fc(r31)
/* 80591690  7C 03 00 50 */	subf r0, r3, r0
/* 80591694  B0 1F 09 FC */	sth r0, 0x9fc(r31)
/* 80591698  A8 7F 0A 0A */	lha r3, 0xa0a(r31)
/* 8059169C  4B DD 3A 35 */	bl abs
/* 805916A0  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 805916A4  7C 00 1A 14 */	add r0, r0, r3
/* 805916A8  90 1F 0A 10 */	stw r0, 0xa10(r31)
/* 805916AC  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 805916B0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805916B4  40 81 00 7C */	ble lbl_80591730
/* 805916B8  7F E3 FB 78 */	mr r3, r31
/* 805916BC  48 00 05 3D */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 805916C0  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805916C4  D0 1F 0A 2C */	stfs f0, 0xa2c(r31)
/* 805916C8  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 805916CC  D0 1F 0A 3C */	stfs f0, 0xa3c(r31)
/* 805916D0  38 00 00 00 */	li r0, 0
/* 805916D4  B0 1F 0A 40 */	sth r0, 0xa40(r31)
/* 805916D8  88 7F 0A 08 */	lbz r3, 0xa08(r31)
/* 805916DC  88 1F 0A 09 */	lbz r0, 0xa09(r31)
/* 805916E0  7C 03 02 14 */	add r0, r3, r0
/* 805916E4  98 1F 0A 08 */	stb r0, 0xa08(r31)
/* 805916E8  88 1F 0A 08 */	lbz r0, 0xa08(r31)
/* 805916EC  28 00 00 00 */	cmplwi r0, 0
/* 805916F0  40 82 00 18 */	bne lbl_80591708
/* 805916F4  38 00 00 01 */	li r0, 1
/* 805916F8  98 1F 0A 09 */	stb r0, 0xa09(r31)
/* 805916FC  7F E3 FB 78 */	mr r3, r31
/* 80591700  4B FF FD 8D */	bl init_typeC_modeLiftDown__11daObjMarm_cFv
/* 80591704  48 00 00 1C */	b lbl_80591720
lbl_80591708:
/* 80591708  28 00 00 01 */	cmplwi r0, 1
/* 8059170C  40 82 00 14 */	bne lbl_80591720
/* 80591710  38 00 FF FF */	li r0, -1
/* 80591714  98 1F 0A 09 */	stb r0, 0xa09(r31)
/* 80591718  7F E3 FB 78 */	mr r3, r31
/* 8059171C  4B FF F9 CD */	bl init_typeB_modeRotate__11daObjMarm_cFv
lbl_80591720:
/* 80591720  7F E3 FB 78 */	mr r3, r31
/* 80591724  48 00 08 FD */	bl seStart_SWING__11daObjMarm_cFv
/* 80591728  7F E3 FB 78 */	mr r3, r31
/* 8059172C  48 00 07 BD */	bl seStart_STOP__11daObjMarm_cFv
lbl_80591730:
/* 80591730  7F E3 FB 78 */	mr r3, r31
/* 80591734  48 00 07 4D */	bl seStartLevel_MOVE__11daObjMarm_cFv
lbl_80591738:
/* 80591738  39 61 00 20 */	addi r11, r1, 0x20
/* 8059173C  4B DD 0A ED */	bl _restgpr_29
/* 80591740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591744  7C 08 03 A6 */	mtlr r0
/* 80591748  38 21 00 20 */	addi r1, r1, 0x20
/* 8059174C  4E 80 00 20 */	blr 
