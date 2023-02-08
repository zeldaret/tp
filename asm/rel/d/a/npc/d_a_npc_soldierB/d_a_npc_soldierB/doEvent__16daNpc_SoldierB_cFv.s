lbl_80AF4770:
/* 80AF4770  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AF4774  7C 08 02 A6 */	mflr r0
/* 80AF4778  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AF477C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF4780  4B 86 DA 51 */	bl _savegpr_26
/* 80AF4784  7C 7C 1B 78 */	mr r28, r3
/* 80AF4788  3C 60 80 AF */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AF5C10@ha */
/* 80AF478C  3B E3 5C 10 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80AF5C10@l */
/* 80AF4790  3B A0 00 00 */	li r29, 0
/* 80AF4794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF4798  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF479C  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 80AF47A0  28 00 00 00 */	cmplwi r0, 0
/* 80AF47A4  41 82 01 E8 */	beq lbl_80AF498C
/* 80AF47A8  3B DB 4F F8 */	addi r30, r27, 0x4ff8
/* 80AF47AC  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AF47B0  28 00 00 01 */	cmplwi r0, 1
/* 80AF47B4  41 82 00 0C */	beq lbl_80AF47C0
/* 80AF47B8  28 00 00 02 */	cmplwi r0, 2
/* 80AF47BC  40 82 00 0C */	bne lbl_80AF47C8
lbl_80AF47C0:
/* 80AF47C0  38 00 00 00 */	li r0, 0
/* 80AF47C4  98 1C 09 ED */	stb r0, 0x9ed(r28)
lbl_80AF47C8:
/* 80AF47C8  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AF47CC  28 00 00 01 */	cmplwi r0, 1
/* 80AF47D0  40 82 00 B0 */	bne lbl_80AF4880
/* 80AF47D4  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80AF47D8  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80AF47DC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80AF47E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF47E4  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80AF47E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF47EC  7F 83 E3 78 */	mr r3, r28
/* 80AF47F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AF47F4  4B FF FD 15 */	bl chkAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i
/* 80AF47F8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF47FC  41 82 00 1C */	beq lbl_80AF4818
/* 80AF4800  7F 83 E3 78 */	mr r3, r28
/* 80AF4804  38 80 00 00 */	li r4, 0
/* 80AF4808  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AF480C  4B 86 D8 79 */	bl __ptmf_scall
/* 80AF4810  60 00 00 00 */	nop 
/* 80AF4814  48 00 00 64 */	b lbl_80AF4878
lbl_80AF4818:
/* 80AF4818  38 00 00 00 */	li r0, 0
/* 80AF481C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF4820  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF4824  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80AF4828  28 03 00 01 */	cmplwi r3, 1
/* 80AF482C  41 82 00 0C */	beq lbl_80AF4838
/* 80AF4830  28 03 00 02 */	cmplwi r3, 2
/* 80AF4834  40 82 00 08 */	bne lbl_80AF483C
lbl_80AF4838:
/* 80AF4838  38 00 00 01 */	li r0, 1
lbl_80AF483C:
/* 80AF483C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF4840  41 82 00 14 */	beq lbl_80AF4854
/* 80AF4844  7F C3 F3 78 */	mr r3, r30
/* 80AF4848  4B 55 3F A9 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AF484C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4850  41 82 00 28 */	beq lbl_80AF4878
lbl_80AF4854:
/* 80AF4854  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 80AF4858  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80AF485C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80AF4860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4864  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80AF4868  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AF486C  7F 83 E3 78 */	mr r3, r28
/* 80AF4870  38 81 00 10 */	addi r4, r1, 0x10
/* 80AF4874  4B FF FC C1 */	bl setAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i
lbl_80AF4878:
/* 80AF4878  3B A0 00 01 */	li r29, 1
/* 80AF487C  48 00 00 BC */	b lbl_80AF4938
lbl_80AF4880:
/* 80AF4880  7F C3 F3 78 */	mr r3, r30
/* 80AF4884  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80AF4888  38 A0 00 00 */	li r5, 0
/* 80AF488C  38 C0 00 00 */	li r6, 0
/* 80AF4890  4B 55 32 8D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AF4894  7C 7A 1B 78 */	mr r26, r3
/* 80AF4898  2C 1A FF FF */	cmpwi r26, -1
/* 80AF489C  41 82 00 5C */	beq lbl_80AF48F8
/* 80AF48A0  93 5C 09 2C */	stw r26, 0x92c(r28)
/* 80AF48A4  7F C3 F3 78 */	mr r3, r30
/* 80AF48A8  7F 44 D3 78 */	mr r4, r26
/* 80AF48AC  38 BF 00 84 */	addi r5, r31, 0x84
/* 80AF48B0  38 C0 00 02 */	li r6, 2
/* 80AF48B4  38 E0 00 00 */	li r7, 0
/* 80AF48B8  39 00 00 00 */	li r8, 0
/* 80AF48BC  4B 55 35 55 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AF48C0  7C 60 1B 78 */	mr r0, r3
/* 80AF48C4  7F 83 E3 78 */	mr r3, r28
/* 80AF48C8  7F 44 D3 78 */	mr r4, r26
/* 80AF48CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AF48D0  39 9F 00 98 */	addi r12, r31, 0x98
/* 80AF48D4  7D 8C 02 14 */	add r12, r12, r0
/* 80AF48D8  4B 86 D7 AD */	bl __ptmf_scall
/* 80AF48DC  60 00 00 00 */	nop 
/* 80AF48E0  2C 03 00 00 */	cmpwi r3, 0
/* 80AF48E4  41 82 00 10 */	beq lbl_80AF48F4
/* 80AF48E8  7F C3 F3 78 */	mr r3, r30
/* 80AF48EC  7F 44 D3 78 */	mr r4, r26
/* 80AF48F0  4B 55 38 8D */	bl cutEnd__16dEvent_manager_cFi
lbl_80AF48F4:
/* 80AF48F4  3B A0 00 01 */	li r29, 1
lbl_80AF48F8:
/* 80AF48F8  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AF48FC  28 00 00 02 */	cmplwi r0, 2
/* 80AF4900  40 82 00 38 */	bne lbl_80AF4938
/* 80AF4904  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 80AF4908  2C 04 FF FF */	cmpwi r4, -1
/* 80AF490C  41 82 00 2C */	beq lbl_80AF4938
/* 80AF4910  7F C3 F3 78 */	mr r3, r30
/* 80AF4914  4B 55 31 65 */	bl endCheck__16dEvent_manager_cFs
/* 80AF4918  2C 03 00 00 */	cmpwi r3, 0
/* 80AF491C  41 82 00 1C */	beq lbl_80AF4938
/* 80AF4920  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80AF4924  4B 54 DB 45 */	bl reset__14dEvt_control_cFv
/* 80AF4928  38 00 00 00 */	li r0, 0
/* 80AF492C  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 80AF4930  38 00 FF FF */	li r0, -1
/* 80AF4934  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
lbl_80AF4938:
/* 80AF4938  7F 83 E3 78 */	mr r3, r28
/* 80AF493C  38 81 00 0C */	addi r4, r1, 0xc
/* 80AF4940  38 A1 00 08 */	addi r5, r1, 8
/* 80AF4944  7F 86 E3 78 */	mr r6, r28
/* 80AF4948  38 E0 00 00 */	li r7, 0
/* 80AF494C  4B 65 ED CD */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AF4950  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4954  41 82 00 74 */	beq lbl_80AF49C8
/* 80AF4958  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 80AF495C  28 00 00 00 */	cmplwi r0, 0
/* 80AF4960  40 82 00 68 */	bne lbl_80AF49C8
/* 80AF4964  7F 83 E3 78 */	mr r3, r28
/* 80AF4968  80 81 00 08 */	lwz r4, 8(r1)
/* 80AF496C  3C A0 80 AF */	lis r5, lit_5036@ha /* 0x80AF5BD8@ha */
/* 80AF4970  C0 25 5B D8 */	lfs f1, lit_5036@l(r5)  /* 0x80AF5BD8@l */
/* 80AF4974  38 A0 00 00 */	li r5, 0
/* 80AF4978  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80AF497C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF4980  7D 89 03 A6 */	mtctr r12
/* 80AF4984  4E 80 04 21 */	bctrl 
/* 80AF4988  48 00 00 40 */	b lbl_80AF49C8
lbl_80AF498C:
/* 80AF498C  38 00 00 00 */	li r0, 0
/* 80AF4990  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80AF4994  80 1C 09 2C */	lwz r0, 0x92c(r28)
/* 80AF4998  2C 00 FF FF */	cmpwi r0, -1
/* 80AF499C  41 82 00 2C */	beq lbl_80AF49C8
/* 80AF49A0  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AF49A4  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AF49A8  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF49AC  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF49B0  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80AF49B4  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80AF49B8  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF49BC  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80AF49C0  38 00 FF FF */	li r0, -1
/* 80AF49C4  90 1C 09 2C */	stw r0, 0x92c(r28)
lbl_80AF49C8:
/* 80AF49C8  7F A3 EB 78 */	mr r3, r29
/* 80AF49CC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF49D0  4B 86 D8 4D */	bl _restgpr_26
/* 80AF49D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AF49D8  7C 08 03 A6 */	mtlr r0
/* 80AF49DC  38 21 00 40 */	addi r1, r1, 0x40
/* 80AF49E0  4E 80 00 20 */	blr 
