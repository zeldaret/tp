lbl_801864DC:
/* 801864DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801864E0  7C 08 02 A6 */	mflr r0
/* 801864E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801864E8  39 61 00 30 */	addi r11, r1, 0x30
/* 801864EC  48 1D BC E9 */	bl _savegpr_27
/* 801864F0  7C 7F 1B 78 */	mr r31, r3
/* 801864F4  48 00 6D 69 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 801864F8  7C 7B 1B 78 */	mr r27, r3
/* 801864FC  7F E3 FB 78 */	mr r3, r31
/* 80186500  4B FF F5 AD */	bl selectDataMoveAnm__14dFile_select_cFv
/* 80186504  7C 7C 1B 78 */	mr r28, r3
/* 80186508  7F E3 FB 78 */	mr r3, r31
/* 8018650C  48 00 07 A1 */	bl menuMoveAnm__14dFile_select_cFv
/* 80186510  7C 7D 1B 78 */	mr r29, r3
/* 80186514  7F E3 FB 78 */	mr r3, r31
/* 80186518  48 00 6F 05 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 8018651C  7C 7E 1B 78 */	mr r30, r3
/* 80186520  7F E3 FB 78 */	mr r3, r31
/* 80186524  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80186528  48 00 71 65 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 8018652C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80186530  28 00 00 01 */	cmplwi r0, 1
/* 80186534  40 82 00 EC */	bne lbl_80186620
/* 80186538  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8018653C  28 00 00 01 */	cmplwi r0, 1
/* 80186540  40 82 00 E0 */	bne lbl_80186620
/* 80186544  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80186548  28 00 00 01 */	cmplwi r0, 1
/* 8018654C  40 82 00 D4 */	bne lbl_80186620
/* 80186550  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80186554  28 00 00 01 */	cmplwi r0, 1
/* 80186558  40 82 00 C8 */	bne lbl_80186620
/* 8018655C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80186560  28 00 00 01 */	cmplwi r0, 1
/* 80186564  40 82 00 BC */	bne lbl_80186620
/* 80186568  38 00 00 01 */	li r0, 1
/* 8018656C  98 1F 02 67 */	stb r0, 0x267(r31)
/* 80186570  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80186574  54 00 10 3A */	slwi r0, r0, 2
/* 80186578  7C 7F 02 14 */	add r3, r31, r0
/* 8018657C  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80186580  80 63 00 04 */	lwz r3, 4(r3)
/* 80186584  80 9F 03 28 */	lwz r4, 0x328(r31)
/* 80186588  81 83 00 00 */	lwz r12, 0(r3)
/* 8018658C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80186590  7D 89 03 A6 */	mtctr r12
/* 80186594  4E 80 04 21 */	bctrl 
/* 80186598  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018659C  54 00 10 3A */	slwi r0, r0, 2
/* 801865A0  3C 60 80 3C */	lis r3, MenuSelStartFrameTbl@ha
/* 801865A4  38 63 A8 84 */	addi r3, r3, MenuSelStartFrameTbl@l
/* 801865A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 801865AC  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 801865B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801865B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801865B8  3C 00 43 30 */	lis r0, 0x4330
/* 801865BC  90 01 00 08 */	stw r0, 8(r1)
/* 801865C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801865C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801865C8  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 801865CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801865D0  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 801865D4  54 00 10 3A */	slwi r0, r0, 2
/* 801865D8  7C 7F 02 14 */	add r3, r31, r0
/* 801865DC  80 63 03 40 */	lwz r3, 0x340(r3)
/* 801865E0  80 63 00 04 */	lwz r3, 4(r3)
/* 801865E4  48 17 19 E9 */	bl animationTransform__7J2DPaneFv
/* 801865E8  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 801865EC  54 00 10 3A */	slwi r0, r0, 2
/* 801865F0  7C 7F 02 14 */	add r3, r31, r0
/* 801865F4  80 63 03 40 */	lwz r3, 0x340(r3)
/* 801865F8  80 63 00 04 */	lwz r3, 4(r3)
/* 801865FC  38 80 00 00 */	li r4, 0
/* 80186600  81 83 00 00 */	lwz r12, 0(r3)
/* 80186604  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80186608  7D 89 03 A6 */	mtctr r12
/* 8018660C  4E 80 04 21 */	bctrl 
/* 80186610  7F E3 FB 78 */	mr r3, r31
/* 80186614  48 00 73 FD */	bl menuCursorShow__14dFile_select_cFv
/* 80186618  38 00 00 08 */	li r0, 8
/* 8018661C  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80186620:
/* 80186620  39 61 00 30 */	addi r11, r1, 0x30
/* 80186624  48 1D BB FD */	bl _restgpr_27
/* 80186628  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018662C  7C 08 03 A6 */	mtlr r0
/* 80186630  38 21 00 30 */	addi r1, r1, 0x30
/* 80186634  4E 80 00 20 */	blr 
