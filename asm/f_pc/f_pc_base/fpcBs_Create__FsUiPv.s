lbl_80020820:
/* 80020820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020824  7C 08 02 A6 */	mflr r0
/* 80020828  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002082C  39 61 00 20 */	addi r11, r1, 0x20
/* 80020830  48 34 19 A1 */	bl _savegpr_26
/* 80020834  7C 7A 1B 78 */	mr r26, r3
/* 80020838  7C 9B 23 78 */	mr r27, r4
/* 8002083C  7C BC 2B 78 */	mr r28, r5
/* 80020840  48 00 2D 25 */	bl fpcPf_Get__Fs
/* 80020844  7C 7F 1B 78 */	mr r31, r3
/* 80020848  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8002084C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80020850  7F A3 02 14 */	add r29, r3, r0
/* 80020854  38 60 FF FC */	li r3, -4
/* 80020858  7F A4 EB 78 */	mr r4, r29
/* 8002085C  48 24 29 CD */	bl memalignB__3cMlFiUl
/* 80020860  7C 7E 1B 79 */	or. r30, r3, r3
/* 80020864  40 82 00 0C */	bne lbl_80020870
/* 80020868  38 60 00 00 */	li r3, 0
/* 8002086C  48 00 00 98 */	b lbl_80020904
lbl_80020870:
/* 80020870  7F A4 EB 78 */	mr r4, r29
/* 80020874  48 25 14 39 */	bl sBs_ClearArea__FPvUl
/* 80020878  38 7E 00 18 */	addi r3, r30, 0x18
/* 8002087C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80020880  7F C5 F3 78 */	mr r5, r30
/* 80020884  48 00 16 2D */	bl fpcLyTg_Init__FP26layer_management_tag_classUiPv
/* 80020888  38 7E 00 34 */	addi r3, r30, 0x34
/* 8002088C  7F C4 F3 78 */	mr r4, r30
/* 80020890  48 00 2D FD */	bl fpcLnTg_Init__FP8line_tagPv
/* 80020894  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80020898  7F C4 F3 78 */	mr r4, r30
/* 8002089C  48 00 07 81 */	bl fpcDtTg_Init__FP16delete_tag_classPv
/* 800208A0  38 7E 00 68 */	addi r3, r30, 0x68
/* 800208A4  7F C4 F3 78 */	mr r4, r30
/* 800208A8  80 BF 00 00 */	lwz r5, 0(r31)
/* 800208AC  A0 DF 00 04 */	lhz r6, 4(r31)
/* 800208B0  A0 FF 00 06 */	lhz r7, 6(r31)
/* 800208B4  48 00 2C 09 */	bl fpcPi_Init__FP22process_priority_classPvUiUsUs
/* 800208B8  38 00 00 00 */	li r0, 0
/* 800208BC  98 1E 00 0C */	stb r0, 0xc(r30)
/* 800208C0  98 1E 00 0A */	stb r0, 0xa(r30)
/* 800208C4  93 7E 00 04 */	stw r27, 4(r30)
/* 800208C8  B3 5E 00 0E */	sth r26, 0xe(r30)
/* 800208CC  38 6D 87 80 */	la r3, g_fpcBs_type(r13) /* 80450D00-_SDA_BASE_ */
/* 800208D0  4B FF FD 8D */	bl fpcBs_MakeOfType__FPi
/* 800208D4  90 7E 00 00 */	stw r3, 0(r30)
/* 800208D8  A8 1F 00 08 */	lha r0, 8(r31)
/* 800208DC  B0 1E 00 08 */	sth r0, 8(r30)
/* 800208E0  7F C3 F3 78 */	mr r3, r30
/* 800208E4  48 00 30 65 */	bl fpcPause_Init__FPv
/* 800208E8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800208EC  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 800208F0  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800208F4  93 9E 00 AC */	stw r28, 0xac(r30)
/* 800208F8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800208FC  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 80020900  7F C3 F3 78 */	mr r3, r30
lbl_80020904:
/* 80020904  39 61 00 20 */	addi r11, r1, 0x20
/* 80020908  48 34 19 15 */	bl _restgpr_26
/* 8002090C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020910  7C 08 03 A6 */	mtlr r0
/* 80020914  38 21 00 20 */	addi r1, r1, 0x20
/* 80020918  4E 80 00 20 */	blr 
