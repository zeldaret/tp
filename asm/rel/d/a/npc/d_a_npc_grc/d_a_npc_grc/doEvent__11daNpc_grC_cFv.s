lbl_809CDA74:
/* 809CDA74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809CDA78  7C 08 02 A6 */	mflr r0
/* 809CDA7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809CDA80  39 61 00 40 */	addi r11, r1, 0x40
/* 809CDA84  4B 99 47 4C */	b _savegpr_26
/* 809CDA88  7C 7B 1B 78 */	mr r27, r3
/* 809CDA8C  3C 60 80 9D */	lis r3, cNullVec__6Z2Calc@ha
/* 809CDA90  3B C3 F8 1C */	addi r30, r3, cNullVec__6Z2Calc@l
/* 809CDA94  3B 80 00 00 */	li r28, 0
/* 809CDA98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809CDA9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 809CDAA0  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 809CDAA4  28 00 00 00 */	cmplwi r0, 0
/* 809CDAA8  41 82 02 50 */	beq lbl_809CDCF8
/* 809CDAAC  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 809CDAB0  88 1B 0E 51 */	lbz r0, 0xe51(r27)
/* 809CDAB4  28 00 00 00 */	cmplwi r0, 0
/* 809CDAB8  40 82 00 10 */	bne lbl_809CDAC8
/* 809CDABC  38 00 00 00 */	li r0, 0
/* 809CDAC0  98 1B 09 ED */	stb r0, 0x9ed(r27)
/* 809CDAC4  48 00 00 0C */	b lbl_809CDAD0
lbl_809CDAC8:
/* 809CDAC8  38 00 00 01 */	li r0, 1
/* 809CDACC  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_809CDAD0:
/* 809CDAD0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809CDAD4  28 00 00 01 */	cmplwi r0, 1
/* 809CDAD8  40 82 00 B0 */	bne lbl_809CDB88
/* 809CDADC  80 7E 02 00 */	lwz r3, 0x200(r30)
/* 809CDAE0  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 809CDAE4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809CDAE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 809CDAEC  80 1E 02 08 */	lwz r0, 0x208(r30)
/* 809CDAF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CDAF4  7F 63 DB 78 */	mr r3, r27
/* 809CDAF8  38 81 00 1C */	addi r4, r1, 0x1c
/* 809CDAFC  4B FF FC 99 */	bl chkAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i
/* 809CDB00  2C 03 00 00 */	cmpwi r3, 0
/* 809CDB04  41 82 00 1C */	beq lbl_809CDB20
/* 809CDB08  7F 63 DB 78 */	mr r3, r27
/* 809CDB0C  38 80 00 00 */	li r4, 0
/* 809CDB10  39 9B 0E 0C */	addi r12, r27, 0xe0c
/* 809CDB14  4B 99 45 70 */	b __ptmf_scall
/* 809CDB18  60 00 00 00 */	nop 
/* 809CDB1C  48 00 00 64 */	b lbl_809CDB80
lbl_809CDB20:
/* 809CDB20  38 00 00 00 */	li r0, 0
/* 809CDB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809CDB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809CDB2C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809CDB30  28 03 00 01 */	cmplwi r3, 1
/* 809CDB34  41 82 00 0C */	beq lbl_809CDB40
/* 809CDB38  28 03 00 02 */	cmplwi r3, 2
/* 809CDB3C  40 82 00 08 */	bne lbl_809CDB44
lbl_809CDB40:
/* 809CDB40  38 00 00 01 */	li r0, 1
lbl_809CDB44:
/* 809CDB44  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809CDB48  41 82 00 14 */	beq lbl_809CDB5C
/* 809CDB4C  7F A3 EB 78 */	mr r3, r29
/* 809CDB50  4B 67 AC A0 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809CDB54  2C 03 00 00 */	cmpwi r3, 0
/* 809CDB58  41 82 00 28 */	beq lbl_809CDB80
lbl_809CDB5C:
/* 809CDB5C  80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 809CDB60  80 1E 02 10 */	lwz r0, 0x210(r30)
/* 809CDB64  90 61 00 10 */	stw r3, 0x10(r1)
/* 809CDB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CDB6C  80 1E 02 14 */	lwz r0, 0x214(r30)
/* 809CDB70  90 01 00 18 */	stw r0, 0x18(r1)
/* 809CDB74  7F 63 DB 78 */	mr r3, r27
/* 809CDB78  38 81 00 10 */	addi r4, r1, 0x10
/* 809CDB7C  4B FF FC 45 */	bl setAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i
lbl_809CDB80:
/* 809CDB80  3B 80 00 01 */	li r28, 1
/* 809CDB84  48 00 00 DC */	b lbl_809CDC60
lbl_809CDB88:
/* 809CDB88  80 9B 0E 4C */	lwz r4, 0xe4c(r27)
/* 809CDB8C  3C 04 00 01 */	addis r0, r4, 1
/* 809CDB90  28 00 FF FF */	cmplwi r0, 0xffff
/* 809CDB94  41 82 00 14 */	beq lbl_809CDBA8
/* 809CDB98  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809CDB9C  4B 67 5B 50 */	b setPtI_Id__14dEvt_control_cFUi
/* 809CDBA0  38 00 FF FF */	li r0, -1
/* 809CDBA4  90 1B 0E 4C */	stw r0, 0xe4c(r27)
lbl_809CDBA8:
/* 809CDBA8  7F A3 EB 78 */	mr r3, r29
/* 809CDBAC  80 9E 01 58 */	lwz r4, 0x158(r30)
/* 809CDBB0  38 A0 00 00 */	li r5, 0
/* 809CDBB4  38 C0 00 00 */	li r6, 0
/* 809CDBB8  4B 67 9F 64 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809CDBBC  7C 7A 1B 78 */	mr r26, r3
/* 809CDBC0  2C 1A FF FF */	cmpwi r26, -1
/* 809CDBC4  41 82 00 5C */	beq lbl_809CDC20
/* 809CDBC8  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 809CDBCC  7F A3 EB 78 */	mr r3, r29
/* 809CDBD0  7F 44 D3 78 */	mr r4, r26
/* 809CDBD4  38 BE 01 5C */	addi r5, r30, 0x15c
/* 809CDBD8  38 C0 00 01 */	li r6, 1
/* 809CDBDC  38 E0 00 00 */	li r7, 0
/* 809CDBE0  39 00 00 00 */	li r8, 0
/* 809CDBE4  4B 67 A2 2C */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809CDBE8  7C 60 1B 78 */	mr r0, r3
/* 809CDBEC  7F 63 DB 78 */	mr r3, r27
/* 809CDBF0  7F 44 D3 78 */	mr r4, r26
/* 809CDBF4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809CDBF8  39 9E 01 60 */	addi r12, r30, 0x160
/* 809CDBFC  7D 8C 02 14 */	add r12, r12, r0
/* 809CDC00  4B 99 44 84 */	b __ptmf_scall
/* 809CDC04  60 00 00 00 */	nop 
/* 809CDC08  2C 03 00 00 */	cmpwi r3, 0
/* 809CDC0C  41 82 00 10 */	beq lbl_809CDC1C
/* 809CDC10  7F A3 EB 78 */	mr r3, r29
/* 809CDC14  7F 44 D3 78 */	mr r4, r26
/* 809CDC18  4B 67 A5 64 */	b cutEnd__16dEvent_manager_cFi
lbl_809CDC1C:
/* 809CDC1C  3B 80 00 01 */	li r28, 1
lbl_809CDC20:
/* 809CDC20  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809CDC24  28 00 00 02 */	cmplwi r0, 2
/* 809CDC28  40 82 00 38 */	bne lbl_809CDC60
/* 809CDC2C  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 809CDC30  2C 04 FF FF */	cmpwi r4, -1
/* 809CDC34  41 82 00 2C */	beq lbl_809CDC60
/* 809CDC38  7F A3 EB 78 */	mr r3, r29
/* 809CDC3C  4B 67 9E 3C */	b endCheck__16dEvent_manager_cFs
/* 809CDC40  2C 03 00 00 */	cmpwi r3, 0
/* 809CDC44  41 82 00 1C */	beq lbl_809CDC60
/* 809CDC48  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809CDC4C  4B 67 48 1C */	b reset__14dEvt_control_cFv
/* 809CDC50  38 00 00 00 */	li r0, 0
/* 809CDC54  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809CDC58  38 00 FF FF */	li r0, -1
/* 809CDC5C  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_809CDC60:
/* 809CDC60  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 809CDC64  7F 63 DB 78 */	mr r3, r27
/* 809CDC68  38 81 00 0C */	addi r4, r1, 0xc
/* 809CDC6C  38 A1 00 08 */	addi r5, r1, 8
/* 809CDC70  7F 66 DB 78 */	mr r6, r27
/* 809CDC74  38 E0 00 00 */	li r7, 0
/* 809CDC78  4B 78 5A A0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809CDC7C  2C 03 00 00 */	cmpwi r3, 0
/* 809CDC80  41 82 00 58 */	beq lbl_809CDCD8
/* 809CDC84  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809CDC88  28 00 00 00 */	cmplwi r0, 0
/* 809CDC8C  40 82 00 A8 */	bne lbl_809CDD34
/* 809CDC90  7F 63 DB 78 */	mr r3, r27
/* 809CDC94  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809CDC98  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CDC9C  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CDCA0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CDCA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CDCA8  7D 89 03 A6 */	mtctr r12
/* 809CDCAC  4E 80 04 21 */	bctrl 
/* 809CDCB0  7F 63 DB 78 */	mr r3, r27
/* 809CDCB4  80 81 00 08 */	lwz r4, 8(r1)
/* 809CDCB8  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CDCBC  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CDCC0  38 A0 00 00 */	li r5, 0
/* 809CDCC4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809CDCC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CDCCC  7D 89 03 A6 */	mtctr r12
/* 809CDCD0  4E 80 04 21 */	bctrl 
/* 809CDCD4  48 00 00 60 */	b lbl_809CDD34
lbl_809CDCD8:
/* 809CDCD8  2C 1A 00 00 */	cmpwi r26, 0
/* 809CDCDC  41 82 00 58 */	beq lbl_809CDD34
/* 809CDCE0  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809CDCE4  28 00 00 00 */	cmplwi r0, 0
/* 809CDCE8  40 82 00 4C */	bne lbl_809CDD34
/* 809CDCEC  7F 63 DB 78 */	mr r3, r27
/* 809CDCF0  48 00 04 3D */	bl setExpressionTalkAfter__11daNpc_grC_cFv
/* 809CDCF4  48 00 00 40 */	b lbl_809CDD34
lbl_809CDCF8:
/* 809CDCF8  38 00 00 00 */	li r0, 0
/* 809CDCFC  90 1B 09 50 */	stw r0, 0x950(r27)
/* 809CDD00  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 809CDD04  2C 00 FF FF */	cmpwi r0, -1
/* 809CDD08  41 82 00 2C */	beq lbl_809CDD34
/* 809CDD0C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809CDD10  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809CDD14  80 64 00 00 */	lwz r3, 0(r4)
/* 809CDD18  80 04 00 04 */	lwz r0, 4(r4)
/* 809CDD1C  90 7B 0E 0C */	stw r3, 0xe0c(r27)
/* 809CDD20  90 1B 0E 10 */	stw r0, 0xe10(r27)
/* 809CDD24  80 04 00 08 */	lwz r0, 8(r4)
/* 809CDD28  90 1B 0E 14 */	stw r0, 0xe14(r27)
/* 809CDD2C  38 00 FF FF */	li r0, -1
/* 809CDD30  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_809CDD34:
/* 809CDD34  7F 83 E3 78 */	mr r3, r28
/* 809CDD38  39 61 00 40 */	addi r11, r1, 0x40
/* 809CDD3C  4B 99 44 E0 */	b _restgpr_26
/* 809CDD40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809CDD44  7C 08 03 A6 */	mtlr r0
/* 809CDD48  38 21 00 40 */	addi r1, r1, 0x40
/* 809CDD4C  4E 80 00 20 */	blr 
