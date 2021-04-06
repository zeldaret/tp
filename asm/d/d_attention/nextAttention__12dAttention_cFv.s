lbl_80071960:
/* 80071960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80071964  7C 08 02 A6 */	mflr r0
/* 80071968  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007196C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80071970  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80071974  7C 7E 1B 78 */	mr r30, r3
/* 80071978  88 0D 80 F0 */	lbz r0, data_80450670(r13)
/* 8007197C  28 00 00 00 */	cmplwi r0, 0
/* 80071980  40 82 00 20 */	bne lbl_800719A0
/* 80071984  80 1E 03 D8 */	lwz r0, 0x3d8(r30)
/* 80071988  2C 00 00 01 */	cmpwi r0, 1
/* 8007198C  40 82 00 14 */	bne lbl_800719A0
/* 80071990  38 00 00 00 */	li r0, 0
/* 80071994  98 1E 03 2E */	stb r0, 0x32e(r30)
/* 80071998  38 60 00 00 */	li r3, 0
/* 8007199C  48 00 00 B4 */	b lbl_80071A50
lbl_800719A0:
/* 800719A0  88 1E 03 2E */	lbz r0, 0x32e(r30)
/* 800719A4  28 00 00 00 */	cmplwi r0, 0
/* 800719A8  41 82 00 38 */	beq lbl_800719E0
/* 800719AC  80 7E 03 DC */	lwz r3, 0x3dc(r30)
/* 800719B0  38 03 00 01 */	addi r0, r3, 1
/* 800719B4  90 1E 03 DC */	stw r0, 0x3dc(r30)
/* 800719B8  80 7E 03 DC */	lwz r3, 0x3dc(r30)
/* 800719BC  80 1E 03 D8 */	lwz r0, 0x3d8(r30)
/* 800719C0  7C 03 00 00 */	cmpw r3, r0
/* 800719C4  41 80 00 0C */	blt lbl_800719D0
/* 800719C8  38 00 00 00 */	li r0, 0
/* 800719CC  90 1E 03 DC */	stw r0, 0x3dc(r30)
lbl_800719D0:
/* 800719D0  7F C3 F3 78 */	mr r3, r30
/* 800719D4  38 80 00 00 */	li r4, 0
/* 800719D8  48 00 1B 65 */	bl LockonTarget__12dAttention_cFl
/* 800719DC  48 00 00 74 */	b lbl_80071A50
lbl_800719E0:
/* 800719E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 800719E4  90 01 00 08 */	stw r0, 8(r1)
/* 800719E8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 800719EC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 800719F0  38 81 00 08 */	addi r4, r1, 8
/* 800719F4  4B FA 7E 05 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800719F8  7C 7F 1B 78 */	mr r31, r3
/* 800719FC  7F C3 F3 78 */	mr r3, r30
/* 80071A00  38 80 FF FF */	li r4, -1
/* 80071A04  4B FF F8 3D */	bl initList__12dAttention_cFUl
/* 80071A08  7F C3 F3 78 */	mr r3, r30
/* 80071A0C  4B FF F9 C1 */	bl makeList__12dAttention_cFv
/* 80071A10  2C 03 00 00 */	cmpwi r3, 0
/* 80071A14  41 82 00 0C */	beq lbl_80071A20
/* 80071A18  7F C3 F3 78 */	mr r3, r30
/* 80071A1C  4B FF FC 9D */	bl sortList__12dAttention_cFv
lbl_80071A20:
/* 80071A20  38 7E 03 38 */	addi r3, r30, 0x338
/* 80071A24  48 00 1E 41 */	bl getActor__10dAttList_cFv
/* 80071A28  7C 1F 18 40 */	cmplw r31, r3
/* 80071A2C  40 82 00 18 */	bne lbl_80071A44
/* 80071A30  80 1E 03 D8 */	lwz r0, 0x3d8(r30)
/* 80071A34  2C 00 00 01 */	cmpwi r0, 1
/* 80071A38  40 81 00 0C */	ble lbl_80071A44
/* 80071A3C  38 00 00 01 */	li r0, 1
/* 80071A40  90 1E 03 DC */	stw r0, 0x3dc(r30)
lbl_80071A44:
/* 80071A44  7F C3 F3 78 */	mr r3, r30
/* 80071A48  38 80 00 00 */	li r4, 0
/* 80071A4C  48 00 1A F1 */	bl LockonTarget__12dAttention_cFl
lbl_80071A50:
/* 80071A50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80071A54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80071A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80071A5C  7C 08 03 A6 */	mtlr r0
/* 80071A60  38 21 00 20 */	addi r1, r1, 0x20
/* 80071A64  4E 80 00 20 */	blr 
