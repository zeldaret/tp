lbl_802AA528:
/* 802AA528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA52C  7C 08 02 A6 */	mflr r0
/* 802AA530  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA534  39 61 00 20 */	addi r11, r1, 0x20
/* 802AA538  48 0B 7C 99 */	bl _savegpr_26
/* 802AA53C  7C 7E 1B 78 */	mr r30, r3
/* 802AA540  88 0D 8D C0 */	lbz r0, struct_80451340+0x0(r13)
/* 802AA544  28 00 00 00 */	cmplwi r0, 0
/* 802AA548  41 82 01 04 */	beq lbl_802AA64C
/* 802AA54C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AA550  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802AA554  28 00 00 00 */	cmplwi r0, 0
/* 802AA558  41 82 00 F4 */	beq lbl_802AA64C
/* 802AA55C  3B E0 00 01 */	li r31, 1
/* 802AA560  88 0D 8D C2 */	lbz r0, struct_80451340+0x2(r13)
/* 802AA564  28 00 00 00 */	cmplwi r0, 0
/* 802AA568  41 82 00 08 */	beq lbl_802AA570
/* 802AA56C  3B E0 00 00 */	li r31, 0
lbl_802AA570:
/* 802AA570  1F BF 00 6C */	mulli r29, r31, 0x6c
/* 802AA574  48 00 00 D0 */	b lbl_802AA644
lbl_802AA578:
/* 802AA578  7C 7E EA 14 */	add r3, r30, r29
/* 802AA57C  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802AA580  7C 1B 03 78 */	mr r27, r0
/* 802AA584  2C 00 00 00 */	cmpwi r0, 0
/* 802AA588  40 81 00 64 */	ble lbl_802AA5EC
/* 802AA58C  83 43 00 70 */	lwz r26, 0x70(r3)
/* 802AA590  3C 60 80 3A */	lis r3, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 802AA594  3B 83 AB B8 */	addi r28, r3, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 802AA598  48 00 00 2C */	b lbl_802AA5C4
lbl_802AA59C:
/* 802AA59C  28 04 00 00 */	cmplwi r4, 0
/* 802AA5A0  41 82 00 08 */	beq lbl_802AA5A8
/* 802AA5A4  38 84 00 10 */	addi r4, r4, 0x10
lbl_802AA5A8:
/* 802AA5A8  7F C3 F3 78 */	mr r3, r30
/* 802AA5AC  88 0D 8D C1 */	lbz r0, struct_80451340+0x1(r13)
/* 802AA5B0  54 00 18 38 */	slwi r0, r0, 3
/* 802AA5B4  7C BC 02 14 */	add r5, r28, r0
/* 802AA5B8  4B FF FC B9 */	bl setIIR__10Z2SoundMgrFP8JAISoundPCs
/* 802AA5BC  83 5A 00 0C */	lwz r26, 0xc(r26)
/* 802AA5C0  3B 7B FF FF */	addi r27, r27, -1
lbl_802AA5C4:
/* 802AA5C4  28 1A 00 00 */	cmplwi r26, 0
/* 802AA5C8  41 82 00 74 */	beq lbl_802AA63C
/* 802AA5CC  2C 1B 00 00 */	cmpwi r27, 0
/* 802AA5D0  40 81 00 6C */	ble lbl_802AA63C
/* 802AA5D4  80 9A 00 00 */	lwz r4, 0(r26)
/* 802AA5D8  80 64 00 B0 */	lwz r3, 0xb0(r4)
/* 802AA5DC  3C 03 00 01 */	addis r0, r3, 1
/* 802AA5E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AA5E4  40 82 FF B8 */	bne lbl_802AA59C
/* 802AA5E8  48 00 00 54 */	b lbl_802AA63C
lbl_802AA5EC:
/* 802AA5EC  83 43 00 70 */	lwz r26, 0x70(r3)
/* 802AA5F0  3C 60 80 3A */	lis r3, CUTOFF_TO_IIR_TABLE__7JASCalc@ha /* 0x8039ABB8@ha */
/* 802AA5F4  3B 83 AB B8 */	addi r28, r3, CUTOFF_TO_IIR_TABLE__7JASCalc@l /* 0x8039ABB8@l */
/* 802AA5F8  48 00 00 28 */	b lbl_802AA620
lbl_802AA5FC:
/* 802AA5FC  28 04 00 00 */	cmplwi r4, 0
/* 802AA600  41 82 00 08 */	beq lbl_802AA608
/* 802AA604  38 84 00 10 */	addi r4, r4, 0x10
lbl_802AA608:
/* 802AA608  7F C3 F3 78 */	mr r3, r30
/* 802AA60C  88 0D 8D C1 */	lbz r0, struct_80451340+0x1(r13)
/* 802AA610  54 00 18 38 */	slwi r0, r0, 3
/* 802AA614  7C BC 02 14 */	add r5, r28, r0
/* 802AA618  4B FF FC 59 */	bl setIIR__10Z2SoundMgrFP8JAISoundPCs
/* 802AA61C  83 5A 00 0C */	lwz r26, 0xc(r26)
lbl_802AA620:
/* 802AA620  28 1A 00 00 */	cmplwi r26, 0
/* 802AA624  41 82 00 18 */	beq lbl_802AA63C
/* 802AA628  80 9A 00 00 */	lwz r4, 0(r26)
/* 802AA62C  80 64 00 B0 */	lwz r3, 0xb0(r4)
/* 802AA630  3C 03 00 01 */	addis r0, r3, 1
/* 802AA634  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AA638  40 82 FF C4 */	bne lbl_802AA5FC
lbl_802AA63C:
/* 802AA63C  3B FF 00 01 */	addi r31, r31, 1
/* 802AA640  3B BD 00 6C */	addi r29, r29, 0x6c
lbl_802AA644:
/* 802AA644  2C 1F 00 09 */	cmpwi r31, 9
/* 802AA648  41 80 FF 30 */	blt lbl_802AA578
lbl_802AA64C:
/* 802AA64C  38 7E 00 04 */	addi r3, r30, 4
/* 802AA650  4B FF 60 B5 */	bl mixOut__8JAISeMgrFv
/* 802AA654  38 7E 07 28 */	addi r3, r30, 0x728
/* 802AA658  4B FF 78 A5 */	bl mixOut__9JAISeqMgrFv
/* 802AA65C  38 7E 07 9C */	addi r3, r30, 0x79c
/* 802AA660  4B FF 9A B9 */	bl mixOut__12JAIStreamMgrFv
/* 802AA664  39 61 00 20 */	addi r11, r1, 0x20
/* 802AA668  48 0B 7B B5 */	bl _restgpr_26
/* 802AA66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA670  7C 08 03 A6 */	mtlr r0
/* 802AA674  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA678  4E 80 00 20 */	blr 
