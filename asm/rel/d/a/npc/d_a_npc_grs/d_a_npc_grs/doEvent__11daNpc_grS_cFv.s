lbl_809E6570:
/* 809E6570  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809E6574  7C 08 02 A6 */	mflr r0
/* 809E6578  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E657C  39 61 00 40 */	addi r11, r1, 0x40
/* 809E6580  4B 97 BC 50 */	b _savegpr_26
/* 809E6584  7C 7B 1B 78 */	mr r27, r3
/* 809E6588  3C 60 80 9E */	lis r3, cNullVec__6Z2Calc@ha
/* 809E658C  3B C3 7F C4 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 809E6590  3B 80 00 00 */	li r28, 0
/* 809E6594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E6598  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 809E659C  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 809E65A0  28 00 00 00 */	cmplwi r0, 0
/* 809E65A4  41 82 02 58 */	beq lbl_809E67FC
/* 809E65A8  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 809E65AC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809E65B0  28 00 00 01 */	cmplwi r0, 1
/* 809E65B4  41 82 00 0C */	beq lbl_809E65C0
/* 809E65B8  28 00 00 02 */	cmplwi r0, 2
/* 809E65BC  40 82 00 18 */	bne lbl_809E65D4
lbl_809E65C0:
/* 809E65C0  88 1B 0E 34 */	lbz r0, 0xe34(r27)
/* 809E65C4  28 00 00 00 */	cmplwi r0, 0
/* 809E65C8  40 82 00 0C */	bne lbl_809E65D4
/* 809E65CC  38 00 00 00 */	li r0, 0
/* 809E65D0  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_809E65D4:
/* 809E65D4  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809E65D8  28 00 00 01 */	cmplwi r0, 1
/* 809E65DC  40 82 00 B0 */	bne lbl_809E668C
/* 809E65E0  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 809E65E4  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 809E65E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809E65EC  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E65F0  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 809E65F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E65F8  7F 63 DB 78 */	mr r3, r27
/* 809E65FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 809E6600  4B FF FC F1 */	bl chkAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i
/* 809E6604  2C 03 00 00 */	cmpwi r3, 0
/* 809E6608  41 82 00 1C */	beq lbl_809E6624
/* 809E660C  7F 63 DB 78 */	mr r3, r27
/* 809E6610  38 80 00 00 */	li r4, 0
/* 809E6614  39 9B 0D D8 */	addi r12, r27, 0xdd8
/* 809E6618  4B 97 BA 6C */	b __ptmf_scall
/* 809E661C  60 00 00 00 */	nop 
/* 809E6620  48 00 00 64 */	b lbl_809E6684
lbl_809E6624:
/* 809E6624  38 00 00 00 */	li r0, 0
/* 809E6628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E662C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E6630  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809E6634  28 03 00 01 */	cmplwi r3, 1
/* 809E6638  41 82 00 0C */	beq lbl_809E6644
/* 809E663C  28 03 00 02 */	cmplwi r3, 2
/* 809E6640  40 82 00 08 */	bne lbl_809E6648
lbl_809E6644:
/* 809E6644  38 00 00 01 */	li r0, 1
lbl_809E6648:
/* 809E6648  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809E664C  41 82 00 14 */	beq lbl_809E6660
/* 809E6650  7F A3 EB 78 */	mr r3, r29
/* 809E6654  4B 66 21 9C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809E6658  2C 03 00 00 */	cmpwi r3, 0
/* 809E665C  41 82 00 28 */	beq lbl_809E6684
lbl_809E6660:
/* 809E6660  80 7E 01 2C */	lwz r3, 0x12c(r30)
/* 809E6664  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 809E6668  90 61 00 10 */	stw r3, 0x10(r1)
/* 809E666C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E6670  80 1E 01 34 */	lwz r0, 0x134(r30)
/* 809E6674  90 01 00 18 */	stw r0, 0x18(r1)
/* 809E6678  7F 63 DB 78 */	mr r3, r27
/* 809E667C  38 81 00 10 */	addi r4, r1, 0x10
/* 809E6680  4B FF FC 9D */	bl setAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i
lbl_809E6684:
/* 809E6684  3B 80 00 01 */	li r28, 1
/* 809E6688  48 00 00 DC */	b lbl_809E6764
lbl_809E668C:
/* 809E668C  80 9B 0E 18 */	lwz r4, 0xe18(r27)
/* 809E6690  3C 04 00 01 */	addis r0, r4, 1
/* 809E6694  28 00 FF FF */	cmplwi r0, 0xffff
/* 809E6698  41 82 00 14 */	beq lbl_809E66AC
/* 809E669C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809E66A0  4B 65 D0 4C */	b setPtI_Id__14dEvt_control_cFUi
/* 809E66A4  38 00 FF FF */	li r0, -1
/* 809E66A8  90 1B 0E 18 */	stw r0, 0xe18(r27)
lbl_809E66AC:
/* 809E66AC  7F A3 EB 78 */	mr r3, r29
/* 809E66B0  80 9E 00 CC */	lwz r4, 0xcc(r30)
/* 809E66B4  38 A0 00 00 */	li r5, 0
/* 809E66B8  38 C0 00 00 */	li r6, 0
/* 809E66BC  4B 66 14 60 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809E66C0  7C 7A 1B 78 */	mr r26, r3
/* 809E66C4  2C 1A FF FF */	cmpwi r26, -1
/* 809E66C8  41 82 00 5C */	beq lbl_809E6724
/* 809E66CC  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 809E66D0  7F A3 EB 78 */	mr r3, r29
/* 809E66D4  7F 44 D3 78 */	mr r4, r26
/* 809E66D8  38 BE 00 D0 */	addi r5, r30, 0xd0
/* 809E66DC  38 C0 00 02 */	li r6, 2
/* 809E66E0  38 E0 00 00 */	li r7, 0
/* 809E66E4  39 00 00 00 */	li r8, 0
/* 809E66E8  4B 66 17 28 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809E66EC  7C 60 1B 78 */	mr r0, r3
/* 809E66F0  7F 63 DB 78 */	mr r3, r27
/* 809E66F4  7F 44 D3 78 */	mr r4, r26
/* 809E66F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809E66FC  39 9E 00 E4 */	addi r12, r30, 0xe4
/* 809E6700  7D 8C 02 14 */	add r12, r12, r0
/* 809E6704  4B 97 B9 80 */	b __ptmf_scall
/* 809E6708  60 00 00 00 */	nop 
/* 809E670C  2C 03 00 00 */	cmpwi r3, 0
/* 809E6710  41 82 00 10 */	beq lbl_809E6720
/* 809E6714  7F A3 EB 78 */	mr r3, r29
/* 809E6718  7F 44 D3 78 */	mr r4, r26
/* 809E671C  4B 66 1A 60 */	b cutEnd__16dEvent_manager_cFi
lbl_809E6720:
/* 809E6720  3B 80 00 01 */	li r28, 1
lbl_809E6724:
/* 809E6724  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809E6728  28 00 00 02 */	cmplwi r0, 2
/* 809E672C  40 82 00 38 */	bne lbl_809E6764
/* 809E6730  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 809E6734  2C 04 FF FF */	cmpwi r4, -1
/* 809E6738  41 82 00 2C */	beq lbl_809E6764
/* 809E673C  7F A3 EB 78 */	mr r3, r29
/* 809E6740  4B 66 13 38 */	b endCheck__16dEvent_manager_cFs
/* 809E6744  2C 03 00 00 */	cmpwi r3, 0
/* 809E6748  41 82 00 1C */	beq lbl_809E6764
/* 809E674C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809E6750  4B 65 BD 18 */	b reset__14dEvt_control_cFv
/* 809E6754  38 00 00 00 */	li r0, 0
/* 809E6758  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809E675C  38 00 FF FF */	li r0, -1
/* 809E6760  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_809E6764:
/* 809E6764  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 809E6768  7F 63 DB 78 */	mr r3, r27
/* 809E676C  38 81 00 0C */	addi r4, r1, 0xc
/* 809E6770  38 A1 00 08 */	addi r5, r1, 8
/* 809E6774  7F 66 DB 78 */	mr r6, r27
/* 809E6778  38 E0 00 00 */	li r7, 0
/* 809E677C  4B 76 CF 9C */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809E6780  2C 03 00 00 */	cmpwi r3, 0
/* 809E6784  41 82 00 58 */	beq lbl_809E67DC
/* 809E6788  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809E678C  28 00 00 00 */	cmplwi r0, 0
/* 809E6790  40 82 00 A8 */	bne lbl_809E6838
/* 809E6794  7F 63 DB 78 */	mr r3, r27
/* 809E6798  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809E679C  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E67A0  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E67A4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E67A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E67AC  7D 89 03 A6 */	mtctr r12
/* 809E67B0  4E 80 04 21 */	bctrl 
/* 809E67B4  7F 63 DB 78 */	mr r3, r27
/* 809E67B8  80 81 00 08 */	lwz r4, 8(r1)
/* 809E67BC  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E67C0  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E67C4  38 A0 00 00 */	li r5, 0
/* 809E67C8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E67CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E67D0  7D 89 03 A6 */	mtctr r12
/* 809E67D4  4E 80 04 21 */	bctrl 
/* 809E67D8  48 00 00 60 */	b lbl_809E6838
lbl_809E67DC:
/* 809E67DC  2C 1A 00 00 */	cmpwi r26, 0
/* 809E67E0  41 82 00 58 */	beq lbl_809E6838
/* 809E67E4  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809E67E8  28 00 00 00 */	cmplwi r0, 0
/* 809E67EC  40 82 00 4C */	bne lbl_809E6838
/* 809E67F0  7F 63 DB 78 */	mr r3, r27
/* 809E67F4  48 00 03 0D */	bl setExpressionTalkAfter__11daNpc_grS_cFv
/* 809E67F8  48 00 00 40 */	b lbl_809E6838
lbl_809E67FC:
/* 809E67FC  38 00 00 00 */	li r0, 0
/* 809E6800  90 1B 09 50 */	stw r0, 0x950(r27)
/* 809E6804  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 809E6808  2C 00 FF FF */	cmpwi r0, -1
/* 809E680C  41 82 00 2C */	beq lbl_809E6838
/* 809E6810  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809E6814  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809E6818  80 64 00 00 */	lwz r3, 0(r4)
/* 809E681C  80 04 00 04 */	lwz r0, 4(r4)
/* 809E6820  90 7B 0D D8 */	stw r3, 0xdd8(r27)
/* 809E6824  90 1B 0D DC */	stw r0, 0xddc(r27)
/* 809E6828  80 04 00 08 */	lwz r0, 8(r4)
/* 809E682C  90 1B 0D E0 */	stw r0, 0xde0(r27)
/* 809E6830  38 00 FF FF */	li r0, -1
/* 809E6834  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_809E6838:
/* 809E6838  7F 83 E3 78 */	mr r3, r28
/* 809E683C  39 61 00 40 */	addi r11, r1, 0x40
/* 809E6840  4B 97 B9 DC */	b _restgpr_26
/* 809E6844  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809E6848  7C 08 03 A6 */	mtlr r0
/* 809E684C  38 21 00 40 */	addi r1, r1, 0x40
/* 809E6850  4E 80 00 20 */	blr 
