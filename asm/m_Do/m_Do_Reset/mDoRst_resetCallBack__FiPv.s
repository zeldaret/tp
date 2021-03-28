lbl_8001574C:
/* 8001574C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015750  7C 08 02 A6 */	mflr r0
/* 80015754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015758  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 8001575C  80 04 00 00 */	lwz r0, 0(r4)
/* 80015760  2C 00 00 00 */	cmpwi r0, 0
/* 80015764  40 82 00 80 */	bne lbl_800157E4
/* 80015768  2C 03 FF FF */	cmpwi r3, -1
/* 8001576C  40 82 00 0C */	bne lbl_80015778
/* 80015770  48 24 DB 1D */	bl cAPICPad_recalibrate__Fv
/* 80015774  48 00 00 40 */	b lbl_800157B4
lbl_80015778:
/* 80015778  80 04 00 08 */	lwz r0, 8(r4)
/* 8001577C  2C 00 00 00 */	cmpwi r0, 0
/* 80015780  41 82 00 20 */	beq lbl_800157A0
/* 80015784  38 80 00 00 */	li r4, 0
/* 80015788  98 8D 8F 81 */	stb r4, struct_80451500+0x1(r13)
/* 8001578C  3C 60 80 01 */	lis r3, mDoRst_resetCallBack__FiPv@ha
/* 80015790  38 03 57 4C */	addi r0, r3, mDoRst_resetCallBack__FiPv@l
/* 80015794  90 0D 8F 6C */	stw r0, sCallback__Q210JUTGamePad13C3ButtonReset(r13)
/* 80015798  90 8D 8F 70 */	stw r4, sCallbackArg__Q210JUTGamePad13C3ButtonReset(r13)
/* 8001579C  48 00 00 48 */	b lbl_800157E4
lbl_800157A0:
/* 800157A0  38 00 00 01 */	li r0, 1
/* 800157A4  90 04 00 08 */	stw r0, 8(r4)
/* 800157A8  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 800157AC  90 64 00 0C */	stw r3, 0xc(r4)
/* 800157B0  48 24 DA DD */	bl cAPICPad_recalibrate__Fv
lbl_800157B4:
/* 800157B4  48 33 5E 75 */	bl DVDCheckDisk
/* 800157B8  2C 03 00 00 */	cmpwi r3, 0
/* 800157BC  40 82 00 1C */	bne lbl_800157D8
/* 800157C0  48 33 5A 09 */	bl DVDGetDriveStatus
/* 800157C4  2C 03 FF FF */	cmpwi r3, -1
/* 800157C8  41 82 00 10 */	beq lbl_800157D8
/* 800157CC  38 00 00 01 */	li r0, 1
/* 800157D0  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 800157D4  98 03 00 11 */	stb r0, 0x11(r3)
lbl_800157D8:
/* 800157D8  38 00 00 01 */	li r0, 1
/* 800157DC  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 800157E0  90 03 00 00 */	stw r0, 0(r3)
lbl_800157E4:
/* 800157E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800157E8  7C 08 03 A6 */	mtlr r0
/* 800157EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800157F0  4E 80 00 20 */	blr 
