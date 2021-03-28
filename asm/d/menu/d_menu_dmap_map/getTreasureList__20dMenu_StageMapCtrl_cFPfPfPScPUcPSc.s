lbl_801C0FF8:
/* 801C0FF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C0FFC  7C 08 02 A6 */	mflr r0
/* 801C1000  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C1004  39 61 00 40 */	addi r11, r1, 0x40
/* 801C1008  48 1A 11 C5 */	bl _savegpr_25
/* 801C100C  7C 7A 1B 78 */	mr r26, r3
/* 801C1010  7C 9B 23 78 */	mr r27, r4
/* 801C1014  7C BC 2B 78 */	mr r28, r5
/* 801C1018  7C DD 33 78 */	mr r29, r6
/* 801C101C  7C FE 3B 78 */	mr r30, r7
/* 801C1020  7D 1F 43 78 */	mr r31, r8
/* 801C1024  3B 20 00 00 */	li r25, 0
/* 801C1028  48 00 00 D0 */	b lbl_801C10F8
lbl_801C102C:
/* 801C102C  80 9A 00 8C */	lwz r4, 0x8c(r26)
/* 801C1030  C0 04 00 04 */	lfs f0, 4(r4)
/* 801C1034  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C1038  C0 04 00 08 */	lfs f0, 8(r4)
/* 801C103C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C1040  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801C1044  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C1048  38 7A 00 04 */	addi r3, r26, 4
/* 801C104C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801C1050  7C 05 07 74 */	extsb r5, r0
/* 801C1054  88 DA 00 F7 */	lbz r6, 0xf7(r26)
/* 801C1058  7C C6 07 74 */	extsb r6, r6
/* 801C105C  38 E0 00 01 */	li r7, 1
/* 801C1060  39 00 00 01 */	li r8, 1
/* 801C1064  39 21 00 08 */	addi r9, r1, 8
/* 801C1068  81 9A 00 04 */	lwz r12, 4(r26)
/* 801C106C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 801C1070  7D 89 03 A6 */	mtctr r12
/* 801C1074  4E 80 04 21 */	bctrl 
/* 801C1078  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C107C  41 82 00 64 */	beq lbl_801C10E0
/* 801C1080  7F 43 D3 78 */	mr r3, r26
/* 801C1084  C0 21 00 08 */	lfs f1, 8(r1)
/* 801C1088  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801C108C  7F 64 DB 78 */	mr r4, r27
/* 801C1090  7F 85 E3 78 */	mr r5, r28
/* 801C1094  48 00 00 95 */	bl cnvPosTo2Dpos__20dMenu_StageMapCtrl_cCFffPfPf
/* 801C1098  28 1D 00 00 */	cmplwi r29, 0
/* 801C109C  41 82 00 18 */	beq lbl_801C10B4
/* 801C10A0  80 7A 00 8C */	lwz r3, 0x8c(r26)
/* 801C10A4  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801C10A8  7C 00 07 74 */	extsb r0, r0
/* 801C10AC  7C 00 46 70 */	srawi r0, r0, 8
/* 801C10B0  98 1D 00 00 */	stb r0, 0(r29)
lbl_801C10B4:
/* 801C10B4  28 1E 00 00 */	cmplwi r30, 0
/* 801C10B8  41 82 00 10 */	beq lbl_801C10C8
/* 801C10BC  80 7A 00 8C */	lwz r3, 0x8c(r26)
/* 801C10C0  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801C10C4  98 1E 00 00 */	stb r0, 0(r30)
lbl_801C10C8:
/* 801C10C8  28 1F 00 00 */	cmplwi r31, 0
/* 801C10CC  41 82 00 10 */	beq lbl_801C10DC
/* 801C10D0  80 7A 00 8C */	lwz r3, 0x8c(r26)
/* 801C10D4  88 03 00 01 */	lbz r0, 1(r3)
/* 801C10D8  98 1F 00 00 */	stb r0, 0(r31)
lbl_801C10DC:
/* 801C10DC  3B 20 00 01 */	li r25, 1
lbl_801C10E0:
/* 801C10E0  80 7A 00 8C */	lwz r3, 0x8c(r26)
/* 801C10E4  4B ED B2 B9 */	bl getNextData__7dTres_cFPQ27dTres_c15typeGroupData_c
/* 801C10E8  90 7A 00 8C */	stw r3, 0x8c(r26)
/* 801C10EC  A0 7A 00 E4 */	lhz r3, 0xe4(r26)
/* 801C10F0  38 03 FF FF */	addi r0, r3, -1
/* 801C10F4  B0 1A 00 E4 */	sth r0, 0xe4(r26)
lbl_801C10F8:
/* 801C10F8  A0 1A 00 E4 */	lhz r0, 0xe4(r26)
/* 801C10FC  28 00 00 00 */	cmplwi r0, 0
/* 801C1100  41 82 00 0C */	beq lbl_801C110C
/* 801C1104  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 801C1108  41 82 FF 24 */	beq lbl_801C102C
lbl_801C110C:
/* 801C110C  7F 23 CB 78 */	mr r3, r25
/* 801C1110  39 61 00 40 */	addi r11, r1, 0x40
/* 801C1114  48 1A 11 05 */	bl _restgpr_25
/* 801C1118  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C111C  7C 08 03 A6 */	mtlr r0
/* 801C1120  38 21 00 40 */	addi r1, r1, 0x40
/* 801C1124  4E 80 00 20 */	blr 
