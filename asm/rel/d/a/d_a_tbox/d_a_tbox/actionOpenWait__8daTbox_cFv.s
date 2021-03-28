lbl_804946A4:
/* 804946A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804946A8  7C 08 02 A6 */	mflr r0
/* 804946AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804946B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804946B4  4B EC DB 20 */	b _savegpr_27
/* 804946B8  7C 7C 1B 78 */	mr r28, r3
/* 804946BC  3C 80 80 49 */	lis r4, cNullVec__6Z2Calc@ha
/* 804946C0  3B C4 64 94 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 804946C4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 804946C8  83 A4 10 18 */	lwz r29, m_midnaActor__9daPy_py_c@l(r4)
/* 804946CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804946D0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 804946D4  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 804946D8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804946DC  28 00 00 03 */	cmplwi r0, 3
/* 804946E0  40 82 00 F4 */	bne lbl_804947D4
/* 804946E4  A0 1F 4F A0 */	lhz r0, 0x4fa0(r31)
/* 804946E8  60 00 00 04 */	ori r0, r0, 4
/* 804946EC  B0 1F 4F A0 */	sth r0, 0x4fa0(r31)
/* 804946F0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804946F4  54 00 67 3F */	rlwinm. r0, r0, 0xc, 0x1c, 0x1f
/* 804946F8  41 82 00 70 */	beq lbl_80494768
/* 804946FC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80494700  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80494704  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80494708  41 82 00 60 */	beq lbl_80494768
/* 8049470C  7F A3 EB 78 */	mr r3, r29
/* 80494710  39 9D 09 D4 */	addi r12, r29, 0x9d4
/* 80494714  4B EC D9 70 */	b __ptmf_scall
/* 80494718  60 00 00 00 */	nop 
/* 8049471C  2C 03 00 00 */	cmpwi r3, 0
/* 80494720  40 82 00 48 */	bne lbl_80494768
/* 80494724  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 80494728  80 1E 01 F8 */	lwz r0, 0x1f8(r30)
/* 8049472C  90 7C 07 40 */	stw r3, 0x740(r28)
/* 80494730  90 1C 07 44 */	stw r0, 0x744(r28)
/* 80494734  80 1E 01 FC */	lwz r0, 0x1fc(r30)
/* 80494738  90 1C 07 48 */	stw r0, 0x748(r28)
/* 8049473C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80494740  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80494744  38 A0 00 00 */	li r5, 0
/* 80494748  38 C0 00 00 */	li r6, 0
/* 8049474C  4B BB 33 D0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80494750  90 7C 07 4C */	stw r3, 0x74c(r28)
/* 80494754  7F 83 E3 78 */	mr r3, r28
/* 80494758  4B FF ED C1 */	bl demoProc__8daTbox_cFv
/* 8049475C  38 00 00 00 */	li r0, 0
/* 80494760  90 1C 09 F4 */	stw r0, 0x9f4(r28)
/* 80494764  48 00 01 4C */	b lbl_804948B0
lbl_80494768:
/* 80494768  7F 63 DB 78 */	mr r3, r27
/* 8049476C  A0 1C 09 82 */	lhz r0, 0x982(r28)
/* 80494770  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80494774  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80494778  81 8C 02 14 */	lwz r12, 0x214(r12)
/* 8049477C  7D 89 03 A6 */	mtctr r12
/* 80494780  4E 80 04 21 */	bctrl 
/* 80494784  98 7C 07 18 */	stb r3, 0x718(r28)
/* 80494788  7F 83 E3 78 */	mr r3, r28
/* 8049478C  4B FF FE 3D */	bl setGetDemoItem__8daTbox_cFv
/* 80494790  80 7E 02 00 */	lwz r3, 0x200(r30)
/* 80494794  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 80494798  90 7C 07 40 */	stw r3, 0x740(r28)
/* 8049479C  90 1C 07 44 */	stw r0, 0x744(r28)
/* 804947A0  80 1E 02 08 */	lwz r0, 0x208(r30)
/* 804947A4  90 1C 07 48 */	stw r0, 0x748(r28)
/* 804947A8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 804947AC  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 804947B0  38 A0 00 00 */	li r5, 0
/* 804947B4  38 C0 00 00 */	li r6, 0
/* 804947B8  4B BB 33 64 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 804947BC  90 7C 07 4C */	stw r3, 0x74c(r28)
/* 804947C0  7F 83 E3 78 */	mr r3, r28
/* 804947C4  4B FF ED 55 */	bl demoProc__8daTbox_cFv
/* 804947C8  38 00 00 00 */	li r0, 0
/* 804947CC  90 1C 09 F4 */	stw r0, 0x9f4(r28)
/* 804947D0  48 00 00 E0 */	b lbl_804948B0
lbl_804947D4:
/* 804947D4  4B FF D7 95 */	bl boxCheck__8daTbox_cFv
/* 804947D8  2C 03 00 00 */	cmpwi r3, 0
/* 804947DC  41 82 00 D4 */	beq lbl_804948B0
/* 804947E0  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 804947E4  60 00 00 04 */	ori r0, r0, 4
/* 804947E8  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 804947EC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804947F0  54 00 67 3F */	rlwinm. r0, r0, 0xc, 0x1c, 0x1f
/* 804947F4  40 82 00 1C */	bne lbl_80494810
/* 804947F8  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 804947FC  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 80494800  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 80494804  38 84 00 FC */	addi r4, r4, 0xfc
/* 80494808  4B BA EC 20 */	b setEventName__11dEvt_info_cFPc
/* 8049480C  48 00 00 A4 */	b lbl_804948B0
lbl_80494810:
/* 80494810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80494814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80494818  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8049481C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80494820  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80494824  41 82 00 34 */	beq lbl_80494858
/* 80494828  7F A3 EB 78 */	mr r3, r29
/* 8049482C  39 9D 09 D4 */	addi r12, r29, 0x9d4
/* 80494830  4B EC D8 54 */	b __ptmf_scall
/* 80494834  60 00 00 00 */	nop 
/* 80494838  2C 03 00 00 */	cmpwi r3, 0
/* 8049483C  40 82 00 1C */	bne lbl_80494858
/* 80494840  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 80494844  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 80494848  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 8049484C  38 84 01 14 */	addi r4, r4, 0x114
/* 80494850  4B BA EB D8 */	b setEventName__11dEvt_info_cFPc
/* 80494854  48 00 00 5C */	b lbl_804948B0
lbl_80494858:
/* 80494858  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8049485C  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80494860  2C 00 00 02 */	cmpwi r0, 2
/* 80494864  40 82 00 10 */	bne lbl_80494874
/* 80494868  A8 1C 09 84 */	lha r0, 0x984(r28)
/* 8049486C  B0 1C 00 FC */	sth r0, 0xfc(r28)
/* 80494870  48 00 00 40 */	b lbl_804948B0
lbl_80494874:
/* 80494874  7F 83 E3 78 */	mr r3, r28
/* 80494878  4B FF CD 45 */	bl checkEnvEffectTbox__8daTbox_cFv
/* 8049487C  2C 03 00 00 */	cmpwi r3, 0
/* 80494880  41 82 00 1C */	beq lbl_8049489C
/* 80494884  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 80494888  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 8049488C  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 80494890  38 84 01 2D */	addi r4, r4, 0x12d
/* 80494894  4B BA EB 94 */	b setEventName__11dEvt_info_cFPc
/* 80494898  48 00 00 18 */	b lbl_804948B0
lbl_8049489C:
/* 8049489C  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 804948A0  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 804948A4  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 804948A8  38 84 01 45 */	addi r4, r4, 0x145
/* 804948AC  4B BA EB 7C */	b setEventName__11dEvt_info_cFPc
lbl_804948B0:
/* 804948B0  38 60 00 01 */	li r3, 1
/* 804948B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804948B8  4B EC D9 68 */	b _restgpr_27
/* 804948BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804948C0  7C 08 03 A6 */	mtlr r0
/* 804948C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804948C8  4E 80 00 20 */	blr 
