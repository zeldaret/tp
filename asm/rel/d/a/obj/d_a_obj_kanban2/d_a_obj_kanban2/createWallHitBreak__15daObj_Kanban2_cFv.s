lbl_805819FC:
/* 805819FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80581A00  7C 08 02 A6 */	mflr r0
/* 80581A04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80581A08  39 61 00 40 */	addi r11, r1, 0x40
/* 80581A0C  4B DE 07 C8 */	b _savegpr_27
/* 80581A10  7C 7C 1B 78 */	mr r28, r3
/* 80581A14  3B E0 00 00 */	li r31, 0
/* 80581A18  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80581A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581A20  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80581A24  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80581A28  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80581A2C  3C 63 00 01 */	addis r3, r3, 1
/* 80581A30  38 03 80 00 */	addi r0, r3, -32768
/* 80581A34  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80581A38  3B C0 00 00 */	li r30, 0
/* 80581A3C  3B A0 00 00 */	li r29, 0
/* 80581A40  3B 60 00 00 */	li r27, 0
lbl_80581A44:
/* 80581A44  80 7C 06 1C */	lwz r3, 0x61c(r28)
/* 80581A48  38 00 00 01 */	li r0, 1
/* 80581A4C  7C 04 E8 30 */	slw r4, r0, r29
/* 80581A50  7C 60 20 39 */	and. r0, r3, r4
/* 80581A54  41 82 00 84 */	beq lbl_80581AD8
/* 80581A58  28 1E 00 00 */	cmplwi r30, 0
/* 80581A5C  41 82 00 4C */	beq lbl_80581AA8
/* 80581A60  3B E0 00 01 */	li r31, 1
/* 80581A64  80 1C 06 20 */	lwz r0, 0x620(r28)
/* 80581A68  28 00 00 03 */	cmplwi r0, 3
/* 80581A6C  41 80 00 10 */	blt lbl_80581A7C
/* 80581A70  3C 60 80 58 */	lis r3, data_8058597C@ha
/* 80581A74  38 63 59 7C */	addi r3, r3, data_8058597C@l
/* 80581A78  7C 83 D8 2E */	lwzx r4, r3, r27
lbl_80581A7C:
/* 80581A7C  28 04 00 00 */	cmplwi r4, 0
/* 80581A80  41 82 00 58 */	beq lbl_80581AD8
/* 80581A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581A88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80581A8C  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 80581A90  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80581A94  7F 83 E3 78 */	mr r3, r28
/* 80581A98  64 84 20 00 */	oris r4, r4, 0x2000
/* 80581A9C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80581AA0  4B FF FF 1D */	bl createBreakParts__15daObj_Kanban2_cFUl5csXyz
/* 80581AA4  48 00 00 34 */	b lbl_80581AD8
lbl_80581AA8:
/* 80581AA8  80 1C 06 20 */	lwz r0, 0x620(r28)
/* 80581AAC  28 00 00 03 */	cmplwi r0, 3
/* 80581AB0  41 80 00 14 */	blt lbl_80581AC4
/* 80581AB4  3C 60 80 58 */	lis r3, data_8058597C@ha
/* 80581AB8  38 63 59 7C */	addi r3, r3, data_8058597C@l
/* 80581ABC  7F C3 D8 2E */	lwzx r30, r3, r27
/* 80581AC0  48 00 00 08 */	b lbl_80581AC8
lbl_80581AC4:
/* 80581AC4  7C 9E 23 78 */	mr r30, r4
lbl_80581AC8:
/* 80581AC8  38 1B 05 74 */	addi r0, r27, 0x574
/* 80581ACC  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80581AD0  38 03 00 24 */	addi r0, r3, 0x24
/* 80581AD4  90 1C 05 04 */	stw r0, 0x504(r28)
lbl_80581AD8:
/* 80581AD8  3B BD 00 01 */	addi r29, r29, 1
/* 80581ADC  2C 1D 00 12 */	cmpwi r29, 0x12
/* 80581AE0  3B 7B 00 04 */	addi r27, r27, 4
/* 80581AE4  41 80 FF 60 */	blt lbl_80581A44
/* 80581AE8  2C 1F 00 00 */	cmpwi r31, 0
/* 80581AEC  41 82 00 4C */	beq lbl_80581B38
/* 80581AF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E4@ha */
/* 80581AF4  38 03 00 E4 */	addi r0, r3, 0x00E4 /* 0x000800E4@l */
/* 80581AF8  90 01 00 08 */	stw r0, 8(r1)
/* 80581AFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80581B00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80581B04  80 63 00 00 */	lwz r3, 0(r3)
/* 80581B08  38 81 00 08 */	addi r4, r1, 8
/* 80581B0C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80581B10  38 C0 00 00 */	li r6, 0
/* 80581B14  38 E0 00 00 */	li r7, 0
/* 80581B18  3D 00 80 58 */	lis r8, lit_3970@ha
/* 80581B1C  C0 28 56 20 */	lfs f1, lit_3970@l(r8)
/* 80581B20  FC 40 08 90 */	fmr f2, f1
/* 80581B24  3D 00 80 58 */	lis r8, lit_4036@ha
/* 80581B28  C0 68 56 30 */	lfs f3, lit_4036@l(r8)
/* 80581B2C  FC 80 18 90 */	fmr f4, f3
/* 80581B30  39 00 00 00 */	li r8, 0
/* 80581B34  4B D2 9E 50 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80581B38:
/* 80581B38  93 DC 06 1C */	stw r30, 0x61c(r28)
/* 80581B3C  7F 83 E3 78 */	mr r3, r28
/* 80581B40  48 00 11 01 */	bl setCenterPos__15daObj_Kanban2_cFv
/* 80581B44  39 61 00 40 */	addi r11, r1, 0x40
/* 80581B48  4B DE 06 D8 */	b _restgpr_27
/* 80581B4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80581B50  7C 08 03 A6 */	mtlr r0
/* 80581B54  38 21 00 40 */	addi r1, r1, 0x40
/* 80581B58  4E 80 00 20 */	blr 
