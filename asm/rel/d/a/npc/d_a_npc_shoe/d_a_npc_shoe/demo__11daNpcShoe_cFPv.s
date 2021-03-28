lbl_80AE9094:
/* 80AE9094  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE9098  7C 08 02 A6 */	mflr r0
/* 80AE909C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE90A0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE90A4  4B 87 91 30 */	b _savegpr_27
/* 80AE90A8  7C 7F 1B 78 */	mr r31, r3
/* 80AE90AC  3C 80 80 AF */	lis r4, cNullVec__6Z2Calc@ha
/* 80AE90B0  3B A4 A5 38 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 80AE90B4  A0 03 0E 18 */	lhz r0, 0xe18(r3)
/* 80AE90B8  2C 00 00 02 */	cmpwi r0, 2
/* 80AE90BC  41 82 00 44 */	beq lbl_80AE9100
/* 80AE90C0  40 80 01 84 */	bge lbl_80AE9244
/* 80AE90C4  2C 00 00 00 */	cmpwi r0, 0
/* 80AE90C8  41 82 00 0C */	beq lbl_80AE90D4
/* 80AE90CC  48 00 01 78 */	b lbl_80AE9244
/* 80AE90D0  48 00 01 74 */	b lbl_80AE9244
lbl_80AE90D4:
/* 80AE90D4  38 80 00 00 */	li r4, 0
/* 80AE90D8  3C A0 80 AF */	lis r5, lit_4237@ha
/* 80AE90DC  C0 25 A4 34 */	lfs f1, lit_4237@l(r5)
/* 80AE90E0  38 A0 00 00 */	li r5, 0
/* 80AE90E4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AE90E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AE90EC  7D 89 03 A6 */	mtctr r12
/* 80AE90F0  4E 80 04 21 */	bctrl 
/* 80AE90F4  38 00 00 02 */	li r0, 2
/* 80AE90F8  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AE90FC  48 00 01 48 */	b lbl_80AE9244
lbl_80AE9100:
/* 80AE9100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE9104  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80AE9108  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80AE910C  28 00 00 00 */	cmplwi r0, 0
/* 80AE9110  41 82 01 34 */	beq lbl_80AE9244
/* 80AE9114  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80AE9118  28 00 00 01 */	cmplwi r0, 1
/* 80AE911C  41 82 01 28 */	beq lbl_80AE9244
/* 80AE9120  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80AE9124  7F 83 E3 78 */	mr r3, r28
/* 80AE9128  80 9D 00 78 */	lwz r4, 0x78(r29)
/* 80AE912C  38 A0 00 00 */	li r5, 0
/* 80AE9130  38 C0 00 00 */	li r6, 0
/* 80AE9134  4B 55 E9 E8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AE9138  2C 03 FF FF */	cmpwi r3, -1
/* 80AE913C  41 82 00 40 */	beq lbl_80AE917C
/* 80AE9140  7C 7B 1B 78 */	mr r27, r3
/* 80AE9144  93 7F 09 2C */	stw r27, 0x92c(r31)
/* 80AE9148  7F E3 FB 78 */	mr r3, r31
/* 80AE914C  7F 64 DB 78 */	mr r4, r27
/* 80AE9150  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80AE9154  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AE9158  39 9D 00 7C */	addi r12, r29, 0x7c
/* 80AE915C  7D 8C 02 14 */	add r12, r12, r0
/* 80AE9160  4B 87 8F 24 */	b __ptmf_scall
/* 80AE9164  60 00 00 00 */	nop 
/* 80AE9168  2C 03 00 00 */	cmpwi r3, 0
/* 80AE916C  41 82 00 10 */	beq lbl_80AE917C
/* 80AE9170  7F 83 E3 78 */	mr r3, r28
/* 80AE9174  7F 64 DB 78 */	mr r4, r27
/* 80AE9178  4B 55 F0 04 */	b cutEnd__16dEvent_manager_cFi
lbl_80AE917C:
/* 80AE917C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80AE9180  28 00 00 02 */	cmplwi r0, 2
/* 80AE9184  40 82 00 C0 */	bne lbl_80AE9244
/* 80AE9188  A8 9F 09 D4 */	lha r4, 0x9d4(r31)
/* 80AE918C  2C 04 FF FF */	cmpwi r4, -1
/* 80AE9190  41 82 00 B4 */	beq lbl_80AE9244
/* 80AE9194  7F 83 E3 78 */	mr r3, r28
/* 80AE9198  4B 55 E8 E0 */	b endCheck__16dEvent_manager_cFs
/* 80AE919C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE91A0  41 82 00 A4 */	beq lbl_80AE9244
/* 80AE91A4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80AE91A8  4B 55 92 C0 */	b reset__14dEvt_control_cFv
/* 80AE91AC  38 00 00 00 */	li r0, 0
/* 80AE91B0  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AE91B4  38 00 FF FF */	li r0, -1
/* 80AE91B8  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 80AE91BC  80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 80AE91C0  80 1D 00 C8 */	lwz r0, 0xc8(r29)
/* 80AE91C4  90 61 00 08 */	stw r3, 8(r1)
/* 80AE91C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE91CC  80 1D 00 CC */	lwz r0, 0xcc(r29)
/* 80AE91D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE91D4  38 00 00 03 */	li r0, 3
/* 80AE91D8  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AE91DC  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AE91E0  4B 87 8E 38 */	b __ptmf_test
/* 80AE91E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AE91E8  41 82 00 18 */	beq lbl_80AE9200
/* 80AE91EC  7F E3 FB 78 */	mr r3, r31
/* 80AE91F0  38 80 00 00 */	li r4, 0
/* 80AE91F4  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AE91F8  4B 87 8E 8C */	b __ptmf_scall
/* 80AE91FC  60 00 00 00 */	nop 
lbl_80AE9200:
/* 80AE9200  38 00 00 00 */	li r0, 0
/* 80AE9204  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AE9208  80 61 00 08 */	lwz r3, 8(r1)
/* 80AE920C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AE9210  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80AE9214  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AE9218  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AE921C  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AE9220  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AE9224  4B 87 8D F4 */	b __ptmf_test
/* 80AE9228  2C 03 00 00 */	cmpwi r3, 0
/* 80AE922C  41 82 00 18 */	beq lbl_80AE9244
/* 80AE9230  7F E3 FB 78 */	mr r3, r31
/* 80AE9234  38 80 00 00 */	li r4, 0
/* 80AE9238  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AE923C  4B 87 8E 48 */	b __ptmf_scall
/* 80AE9240  60 00 00 00 */	nop 
lbl_80AE9244:
/* 80AE9244  38 60 00 01 */	li r3, 1
/* 80AE9248  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE924C  4B 87 8F D4 */	b _restgpr_27
/* 80AE9250  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE9254  7C 08 03 A6 */	mtlr r0
/* 80AE9258  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE925C  4E 80 00 20 */	blr 
