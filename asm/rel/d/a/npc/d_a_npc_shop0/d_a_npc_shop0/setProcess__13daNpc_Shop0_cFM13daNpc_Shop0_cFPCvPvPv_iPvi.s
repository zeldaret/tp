lbl_80AEB824:
/* 80AEB824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AEB828  7C 08 02 A6 */	mflr r0
/* 80AEB82C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AEB830  39 61 00 30 */	addi r11, r1, 0x30
/* 80AEB834  4B 87 69 A1 */	bl _savegpr_27
/* 80AEB838  7C 7B 1B 78 */	mr r27, r3
/* 80AEB83C  7C 9C 23 78 */	mr r28, r4
/* 80AEB840  7C BD 2B 78 */	mr r29, r5
/* 80AEB844  7C DE 33 78 */	mr r30, r6
/* 80AEB848  3B E0 00 00 */	li r31, 0
/* 80AEB84C  80 84 00 00 */	lwz r4, 0(r4)
/* 80AEB850  80 1C 00 04 */	lwz r0, 4(r28)
/* 80AEB854  90 81 00 08 */	stw r4, 8(r1)
/* 80AEB858  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AEB85C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80AEB860  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AEB864  38 81 00 08 */	addi r4, r1, 8
/* 80AEB868  4B FF FF 89 */	bl chkProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_i
/* 80AEB86C  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB870  41 82 00 14 */	beq lbl_80AEB884
/* 80AEB874  2C 1E 00 00 */	cmpwi r30, 0
/* 80AEB878  40 82 00 0C */	bne lbl_80AEB884
/* 80AEB87C  38 60 00 00 */	li r3, 0
/* 80AEB880  48 00 00 88 */	b lbl_80AEB908
lbl_80AEB884:
/* 80AEB884  38 00 00 02 */	li r0, 2
/* 80AEB888  90 1B 09 D8 */	stw r0, 0x9d8(r27)
/* 80AEB88C  38 7B 09 DC */	addi r3, r27, 0x9dc
/* 80AEB890  4B 87 67 89 */	bl __ptmf_test
/* 80AEB894  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB898  41 82 00 1C */	beq lbl_80AEB8B4
/* 80AEB89C  7F 63 DB 78 */	mr r3, r27
/* 80AEB8A0  38 80 00 00 */	li r4, 0
/* 80AEB8A4  39 9B 09 DC */	addi r12, r27, 0x9dc
/* 80AEB8A8  4B 87 67 DD */	bl __ptmf_scall
/* 80AEB8AC  60 00 00 00 */	nop 
/* 80AEB8B0  7C 7F 1B 78 */	mr r31, r3
lbl_80AEB8B4:
/* 80AEB8B4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80AEB8B8  80 1C 00 04 */	lwz r0, 4(r28)
/* 80AEB8BC  90 7B 09 DC */	stw r3, 0x9dc(r27)
/* 80AEB8C0  90 1B 09 E0 */	stw r0, 0x9e0(r27)
/* 80AEB8C4  80 1C 00 08 */	lwz r0, 8(r28)
/* 80AEB8C8  90 1B 09 E4 */	stw r0, 0x9e4(r27)
/* 80AEB8CC  38 00 00 00 */	li r0, 0
/* 80AEB8D0  90 1B 09 D8 */	stw r0, 0x9d8(r27)
/* 80AEB8D4  38 7B 09 DC */	addi r3, r27, 0x9dc
/* 80AEB8D8  4B 87 67 41 */	bl __ptmf_test
/* 80AEB8DC  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB8E0  41 82 00 1C */	beq lbl_80AEB8FC
/* 80AEB8E4  7F 63 DB 78 */	mr r3, r27
/* 80AEB8E8  7F A4 EB 78 */	mr r4, r29
/* 80AEB8EC  39 9B 09 DC */	addi r12, r27, 0x9dc
/* 80AEB8F0  4B 87 67 95 */	bl __ptmf_scall
/* 80AEB8F4  60 00 00 00 */	nop 
/* 80AEB8F8  7C 7F 1B 78 */	mr r31, r3
lbl_80AEB8FC:
/* 80AEB8FC  38 00 00 01 */	li r0, 1
/* 80AEB900  90 1B 09 D8 */	stw r0, 0x9d8(r27)
/* 80AEB904  7F E3 FB 78 */	mr r3, r31
lbl_80AEB908:
/* 80AEB908  39 61 00 30 */	addi r11, r1, 0x30
/* 80AEB90C  4B 87 69 15 */	bl _restgpr_27
/* 80AEB910  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AEB914  7C 08 03 A6 */	mtlr r0
/* 80AEB918  38 21 00 30 */	addi r1, r1, 0x30
/* 80AEB91C  4E 80 00 20 */	blr 
