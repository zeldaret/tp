lbl_80D2A7C4:
/* 80D2A7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2A7C8  7C 08 02 A6 */	mflr r0
/* 80D2A7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2A7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2A7D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2A7D8  7C 7E 1B 78 */	mr r30, r3
/* 80D2A7DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A7E0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A7E4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D2A7E8  A8 9E 06 34 */	lha r4, 0x634(r30)
/* 80D2A7EC  4B 31 D2 8D */	bl endCheck__16dEvent_manager_cFs
/* 80D2A7F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A7F4  40 82 01 30 */	bne lbl_80D2A924
/* 80D2A7F8  7F C3 F3 78 */	mr r3, r30
/* 80D2A7FC  48 00 02 39 */	bl demoProc__15daObjWarpOBrg_cFv
/* 80D2A800  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D2A804  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D2A808  41 82 01 1C */	beq lbl_80D2A924
/* 80D2A80C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A814  3B E3 0D D8 */	addi r31, r3, 0xdd8
/* 80D2A818  7F E3 FB 78 */	mr r3, r31
/* 80D2A81C  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A820  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A824  A0 84 00 16 */	lhz r4, 0x16(r4)
/* 80D2A828  4B 30 A1 7D */	bl offEventBit__11dSv_event_cFUs
/* 80D2A82C  7F E3 FB 78 */	mr r3, r31
/* 80D2A830  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A834  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A838  A0 84 00 18 */	lhz r4, 0x18(r4)
/* 80D2A83C  4B 30 A1 69 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A840  7F E3 FB 78 */	mr r3, r31
/* 80D2A844  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A848  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A84C  A0 84 00 1A */	lhz r4, 0x1a(r4)
/* 80D2A850  4B 30 A1 55 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A854  7F E3 FB 78 */	mr r3, r31
/* 80D2A858  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A85C  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A860  A0 84 00 1C */	lhz r4, 0x1c(r4)
/* 80D2A864  4B 30 A1 41 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A868  7F E3 FB 78 */	mr r3, r31
/* 80D2A86C  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A870  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A874  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 80D2A878  4B 30 A1 2D */	bl offEventBit__11dSv_event_cFUs
/* 80D2A87C  7F E3 FB 78 */	mr r3, r31
/* 80D2A880  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A884  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A888  A0 84 00 66 */	lhz r4, 0x66(r4)
/* 80D2A88C  4B 30 A1 19 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A890  7F E3 FB 78 */	mr r3, r31
/* 80D2A894  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A898  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A89C  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 80D2A8A0  4B 30 A1 05 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A8A4  7F E3 FB 78 */	mr r3, r31
/* 80D2A8A8  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A8AC  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A8B0  A0 84 00 6A */	lhz r4, 0x6a(r4)
/* 80D2A8B4  4B 30 A0 F1 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A8B8  7F E3 FB 78 */	mr r3, r31
/* 80D2A8BC  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A8C0  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A8C4  A0 84 00 6C */	lhz r4, 0x6c(r4)
/* 80D2A8C8  4B 30 A0 DD */	bl offEventBit__11dSv_event_cFUs
/* 80D2A8CC  7F E3 FB 78 */	mr r3, r31
/* 80D2A8D0  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80D2A8D4  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80D2A8D8  A0 84 00 6E */	lhz r4, 0x6e(r4)
/* 80D2A8DC  4B 30 A0 C9 */	bl offEventBit__11dSv_event_cFUs
/* 80D2A8E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A8E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A8E8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D2A8EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D2A8F0  81 8C 02 10 */	lwz r12, 0x210(r12)
/* 80D2A8F4  7D 89 03 A6 */	mtctr r12
/* 80D2A8F8  4E 80 04 21 */	bctrl 
/* 80D2A8FC  4B 30 51 ED */	bl dComIfGp_TransportWarp_check__Fv
/* 80D2A900  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A904  41 82 00 20 */	beq lbl_80D2A924
/* 80D2A908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A90C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A910  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D2A914  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D2A918  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D2A91C  A0 84 00 FA */	lhz r4, 0xfa(r4)
/* 80D2A920  4B 30 A0 6D */	bl onEventBit__11dSv_event_cFUs
lbl_80D2A924:
/* 80D2A924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2A928  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2A92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2A930  7C 08 03 A6 */	mtlr r0
/* 80D2A934  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2A938  4E 80 00 20 */	blr 
