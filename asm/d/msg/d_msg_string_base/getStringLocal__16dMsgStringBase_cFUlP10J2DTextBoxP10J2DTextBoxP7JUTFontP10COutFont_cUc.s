lbl_80249768:
/* 80249768  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8024976C  7C 08 02 A6 */	mflr r0
/* 80249770  90 01 00 44 */	stw r0, 0x44(r1)
/* 80249774  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80249778  39 61 00 38 */	addi r11, r1, 0x38
/* 8024977C  48 11 8A 51 */	bl _savegpr_25
/* 80249780  7C 7E 1B 78 */	mr r30, r3
/* 80249784  7C 9F 23 78 */	mr r31, r4
/* 80249788  7C B9 2B 78 */	mr r25, r5
/* 8024978C  7C DA 33 78 */	mr r26, r6
/* 80249790  7C FB 3B 78 */	mr r27, r7
/* 80249794  7D 1C 43 78 */	mr r28, r8
/* 80249798  7D 3D 4B 78 */	mr r29, r9
/* 8024979C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802497A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802497A4  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802497A8  28 04 00 00 */	cmplwi r4, 0
/* 802497AC  41 82 00 64 */	beq lbl_80249810
/* 802497B0  28 1F 13 88 */	cmplwi r31, 0x1388
/* 802497B4  40 81 00 34 */	ble lbl_802497E8
/* 802497B8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802497BC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802497C0  7C 00 18 40 */	cmplw r0, r3
/* 802497C4  41 82 00 4C */	beq lbl_80249810
/* 802497C8  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802497CC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802497D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802497D4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802497D8  38 81 00 0C */	addi r4, r1, 0xc
/* 802497DC  38 A0 00 80 */	li r5, 0x80
/* 802497E0  48 09 31 31 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 802497E4  48 00 00 2C */	b lbl_80249810
lbl_802497E8:
/* 802497E8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802497EC  7C 00 20 40 */	cmplw r0, r4
/* 802497F0  41 82 00 20 */	beq lbl_80249810
/* 802497F4  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 802497F8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802497FC  90 01 00 08 */	stw r0, 8(r1)
/* 80249800  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80249804  38 81 00 08 */	addi r4, r1, 8
/* 80249808  38 A0 00 80 */	li r5, 0x80
/* 8024980C  48 09 31 05 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
lbl_80249810:
/* 80249810  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80249814  7F 24 CB 78 */	mr r4, r25
/* 80249818  7F 45 D3 78 */	mr r5, r26
/* 8024981C  7F 66 DB 78 */	mr r6, r27
/* 80249820  7F 87 E3 78 */	mr r7, r28
/* 80249824  7F A8 EB 78 */	mr r8, r29
/* 80249828  4B FE 61 85 */	bl init__26jmessage_string_tReferenceFP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
/* 8024982C  80 79 01 08 */	lwz r3, 0x108(r25)
/* 80249830  90 61 00 10 */	stw r3, 0x10(r1)
/* 80249834  80 19 01 04 */	lwz r0, 0x104(r25)
/* 80249838  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024983C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80249840  90 04 00 78 */	stw r0, 0x78(r4)
/* 80249844  90 64 00 7C */	stw r3, 0x7c(r4)
/* 80249848  80 7E 00 08 */	lwz r3, 8(r30)
/* 8024984C  7F E4 FB 78 */	mr r4, r31
/* 80249850  38 A0 00 00 */	li r5, 0
/* 80249854  38 C0 00 00 */	li r6, 0
/* 80249858  48 05 E0 9D */	bl setMessageID__Q28JMessage8TControlFUlUlPb
/* 8024985C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80249860  48 05 DD D5 */	bl update__Q28JMessage8TControlFv
/* 80249864  80 7E 00 08 */	lwz r3, 8(r30)
/* 80249868  48 05 DE 55 */	bl render__Q28JMessage8TControlFv
/* 8024986C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80249870  38 80 00 00 */	li r4, 0
/* 80249874  4B FE 61 C5 */	bl getLineLength__26jmessage_string_tReferenceFi
/* 80249878  FF E0 08 90 */	fmr f31, f1
/* 8024987C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80249880  48 05 DD 55 */	bl reset__Q28JMessage8TControlFv
/* 80249884  80 7E 00 08 */	lwz r3, 8(r30)
/* 80249888  80 83 00 04 */	lwz r4, 4(r3)
/* 8024988C  28 04 00 00 */	cmplwi r4, 0
/* 80249890  41 82 00 0C */	beq lbl_8024989C
/* 80249894  38 00 00 00 */	li r0, 0
/* 80249898  90 04 00 08 */	stw r0, 8(r4)
lbl_8024989C:
/* 8024989C  80 83 00 08 */	lwz r4, 8(r3)
/* 802498A0  28 04 00 00 */	cmplwi r4, 0
/* 802498A4  41 82 00 0C */	beq lbl_802498B0
/* 802498A8  38 00 00 00 */	li r0, 0
/* 802498AC  90 04 00 08 */	stw r0, 8(r4)
lbl_802498B0:
/* 802498B0  38 00 00 00 */	li r0, 0
/* 802498B4  90 03 00 10 */	stw r0, 0x10(r3)
/* 802498B8  FC 20 F8 90 */	fmr f1, f31
/* 802498BC  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 802498C0  39 61 00 38 */	addi r11, r1, 0x38
/* 802498C4  48 11 89 55 */	bl _restgpr_25
/* 802498C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802498CC  7C 08 03 A6 */	mtlr r0
/* 802498D0  38 21 00 40 */	addi r1, r1, 0x40
/* 802498D4  4E 80 00 20 */	blr 
