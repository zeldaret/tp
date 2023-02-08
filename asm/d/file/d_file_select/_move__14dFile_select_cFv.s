lbl_801844FC:
/* 801844FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80184500  7C 08 02 A6 */	mflr r0
/* 80184504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80184508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018450C  93 C1 00 08 */	stw r30, 8(r1)
/* 80184510  7C 7F 1B 78 */	mr r31, r3
/* 80184514  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80184518  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8018451C  48 09 7D 1D */	bl decMsgKeyWaitTimer__13dMeter2Info_cFv
/* 80184520  48 1C 6C A9 */	bl DVDGetDriveStatus
/* 80184524  2C 03 00 00 */	cmpwi r3, 0
/* 80184528  41 82 00 20 */	beq lbl_80184548
/* 8018452C  2C 03 00 01 */	cmpwi r3, 1
/* 80184530  41 82 00 18 */	beq lbl_80184548
/* 80184534  88 1F 03 B1 */	lbz r0, 0x3b1(r31)
/* 80184538  28 00 00 00 */	cmplwi r0, 0
/* 8018453C  41 82 00 0C */	beq lbl_80184548
/* 80184540  38 00 00 00 */	li r0, 0
/* 80184544  98 1F 03 B1 */	stb r0, 0x3b1(r31)
lbl_80184548:
/* 80184548  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 8018454C  3B C3 AF 40 */	addi r30, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 80184550  88 1E 1F BE */	lbz r0, 0x1fbe(r30)
/* 80184554  28 00 00 00 */	cmplwi r0, 0
/* 80184558  41 82 00 0C */	beq lbl_80184564
/* 8018455C  28 00 00 01 */	cmplwi r0, 1
/* 80184560  40 82 00 50 */	bne lbl_801845B0
lbl_80184564:
/* 80184564  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80184568  80 03 00 00 */	lwz r0, 0(r3)
/* 8018456C  2C 00 00 00 */	cmpwi r0, 0
/* 80184570  40 82 00 40 */	bne lbl_801845B0
/* 80184574  88 1F 03 B1 */	lbz r0, 0x3b1(r31)
/* 80184578  28 00 00 00 */	cmplwi r0, 0
/* 8018457C  40 82 00 34 */	bne lbl_801845B0
/* 80184580  80 7F 23 78 */	lwz r3, 0x2378(r31)
/* 80184584  88 03 00 B2 */	lbz r0, 0xb2(r3)
/* 80184588  28 00 00 00 */	cmplwi r0, 0
/* 8018458C  41 82 00 18 */	beq lbl_801845A4
/* 80184590  38 80 00 00 */	li r4, 0
/* 80184594  81 83 00 00 */	lwz r12, 0(r3)
/* 80184598  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8018459C  7D 89 03 A6 */	mtctr r12
/* 801845A0  4E 80 04 21 */	bctrl 
lbl_801845A4:
/* 801845A4  38 00 00 00 */	li r0, 0
/* 801845A8  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 801845AC  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_801845B0:
/* 801845B0  7F E3 FB 78 */	mr r3, r31
/* 801845B4  88 1F 02 6F */	lbz r0, 0x26f(r31)
/* 801845B8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801845BC  3C 80 80 3C */	lis r4, DataSelProc@ha /* 0x803BAAEC@ha */
/* 801845C0  38 04 AA EC */	addi r0, r4, DataSelProc@l /* 0x803BAAEC@l */
/* 801845C4  7D 80 2A 14 */	add r12, r0, r5
/* 801845C8  48 1D DA BD */	bl __ptmf_scall
/* 801845CC  60 00 00 00 */	nop 
/* 801845D0  7F E3 FB 78 */	mr r3, r31
/* 801845D4  48 00 00 91 */	bl selFileWakuAnm__14dFile_select_cFv
/* 801845D8  7F E3 FB 78 */	mr r3, r31
/* 801845DC  48 00 02 C5 */	bl bookIconAnm__14dFile_select_cFv
/* 801845E0  7F E3 FB 78 */	mr r3, r31
/* 801845E4  48 00 05 61 */	bl dataDelEffAnm__14dFile_select_cFv
/* 801845E8  7F E3 FB 78 */	mr r3, r31
/* 801845EC  48 00 06 11 */	bl dataCopyEffAnm__14dFile_select_cFv
/* 801845F0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801845F4  48 17 50 9D */	bl animation__9J2DScreenFv
/* 801845F8  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801845FC  48 17 50 95 */	bl animation__9J2DScreenFv
/* 80184600  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80184604  48 17 50 8D */	bl animation__9J2DScreenFv
/* 80184608  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018460C  48 17 50 85 */	bl animation__9J2DScreenFv
/* 80184610  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 80184614  28 00 00 00 */	cmplwi r0, 0
/* 80184618  41 82 00 1C */	beq lbl_80184634
/* 8018461C  7F E3 FB 78 */	mr r3, r31
/* 80184620  48 00 03 7D */	bl selCopyFileWakuAnm__14dFile_select_cFv
/* 80184624  7F E3 FB 78 */	mr r3, r31
/* 80184628  48 00 04 21 */	bl copyBookIconAnm__14dFile_select_cFv
/* 8018462C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80184630  48 17 50 61 */	bl animation__9J2DScreenFv
lbl_80184634:
/* 80184634  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80184638  48 00 D8 E1 */	bl _move__15dFile_warning_cFv
/* 8018463C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80184640  48 00 BE A5 */	bl _move__16dFile_select3D_cFv
/* 80184644  38 00 00 02 */	li r0, 2
/* 80184648  98 1E 1F BE */	stb r0, 0x1fbe(r30)
/* 8018464C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80184650  83 C1 00 08 */	lwz r30, 8(r1)
/* 80184654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80184658  7C 08 03 A6 */	mtlr r0
/* 8018465C  38 21 00 10 */	addi r1, r1, 0x10
/* 80184660  4E 80 00 20 */	blr 
