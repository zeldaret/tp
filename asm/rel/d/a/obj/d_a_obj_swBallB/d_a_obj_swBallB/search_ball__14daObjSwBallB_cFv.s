lbl_80CF47BC:
/* 80CF47BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CF47C0  7C 08 02 A6 */	mflr r0
/* 80CF47C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CF47C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CF47CC  4B 66 DA 05 */	bl _savegpr_26
/* 80CF47D0  7C 7F 1B 78 */	mr r31, r3
/* 80CF47D4  38 A0 00 00 */	li r5, 0
/* 80CF47D8  3C 60 80 CF */	lis r3, l_target_info_count@ha /* 0x80CF5B18@ha */
/* 80CF47DC  90 A3 5B 18 */	stw r5, l_target_info_count@l(r3)  /* 0x80CF5B18@l */
/* 80CF47E0  7C A3 2B 78 */	mr r3, r5
/* 80CF47E4  3C 80 80 CF */	lis r4, l_target_info@ha /* 0x80CF5B10@ha */
/* 80CF47E8  38 84 5B 10 */	addi r4, r4, l_target_info@l /* 0x80CF5B10@l */
/* 80CF47EC  38 00 00 02 */	li r0, 2
/* 80CF47F0  7C 09 03 A6 */	mtctr r0
lbl_80CF47F4:
/* 80CF47F4  7C A4 19 2E */	stwx r5, r4, r3
/* 80CF47F8  38 63 00 04 */	addi r3, r3, 4
/* 80CF47FC  42 00 FF F8 */	bdnz lbl_80CF47F4
/* 80CF4800  3C 60 80 CF */	lis r3, s_ball_sub__FPvPv@ha /* 0x80CF45B8@ha */
/* 80CF4804  38 63 45 B8 */	addi r3, r3, s_ball_sub__FPvPv@l /* 0x80CF45B8@l */
/* 80CF4808  7F E4 FB 78 */	mr r4, r31
/* 80CF480C  4B 32 CB 2D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80CF4810  39 40 00 00 */	li r10, 0
/* 80CF4814  38 60 00 00 */	li r3, 0
/* 80CF4818  3C 80 80 CF */	lis r4, l_target_info@ha /* 0x80CF5B10@ha */
/* 80CF481C  38 E4 5B 10 */	addi r7, r4, l_target_info@l /* 0x80CF5B10@l */
/* 80CF4820  3C 80 80 CF */	lis r4, l_target_info_count@ha /* 0x80CF5B18@ha */
/* 80CF4824  38 A4 5B 18 */	addi r5, r4, l_target_info_count@l /* 0x80CF5B18@l */
/* 80CF4828  48 00 00 A4 */	b lbl_80CF48CC
lbl_80CF482C:
/* 80CF482C  7C 87 18 2E */	lwzx r4, r7, r3
/* 80CF4830  28 04 00 00 */	cmplwi r4, 0
/* 80CF4834  41 82 00 90 */	beq lbl_80CF48C4
/* 80CF4838  41 82 00 0C */	beq lbl_80CF4844
/* 80CF483C  81 04 00 04 */	lwz r8, 4(r4)
/* 80CF4840  48 00 00 08 */	b lbl_80CF4848
lbl_80CF4844:
/* 80CF4844  39 00 FF FF */	li r8, -1
lbl_80CF4848:
/* 80CF4848  3C 08 00 01 */	addis r0, r8, 1
/* 80CF484C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF4850  41 82 00 74 */	beq lbl_80CF48C4
/* 80CF4854  38 C0 FF FF */	li r6, -1
/* 80CF4858  39 20 00 00 */	li r9, 0
/* 80CF485C  38 80 00 00 */	li r4, 0
/* 80CF4860  38 00 00 02 */	li r0, 2
/* 80CF4864  7C 09 03 A6 */	mtctr r0
lbl_80CF4868:
/* 80CF4868  38 04 05 8C */	addi r0, r4, 0x58c
/* 80CF486C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80CF4870  7C 08 00 40 */	cmplw r8, r0
/* 80CF4874  40 82 00 0C */	bne lbl_80CF4880
/* 80CF4878  7D 26 4B 78 */	mr r6, r9
/* 80CF487C  48 00 00 10 */	b lbl_80CF488C
lbl_80CF4880:
/* 80CF4880  39 29 00 01 */	addi r9, r9, 1
/* 80CF4884  38 84 00 04 */	addi r4, r4, 4
/* 80CF4888  42 00 FF E0 */	bdnz lbl_80CF4868
lbl_80CF488C:
/* 80CF488C  2C 06 00 00 */	cmpwi r6, 0
/* 80CF4890  40 80 00 34 */	bge lbl_80CF48C4
/* 80CF4894  38 80 00 00 */	li r4, 0
/* 80CF4898  38 00 00 02 */	li r0, 2
/* 80CF489C  7C 09 03 A6 */	mtctr r0
lbl_80CF48A0:
/* 80CF48A0  39 24 05 8C */	addi r9, r4, 0x58c
/* 80CF48A4  7C DF 48 2E */	lwzx r6, r31, r9
/* 80CF48A8  3C 06 00 01 */	addis r0, r6, 1
/* 80CF48AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF48B0  40 82 00 0C */	bne lbl_80CF48BC
/* 80CF48B4  7D 1F 49 2E */	stwx r8, r31, r9
/* 80CF48B8  48 00 00 0C */	b lbl_80CF48C4
lbl_80CF48BC:
/* 80CF48BC  38 84 00 04 */	addi r4, r4, 4
/* 80CF48C0  42 00 FF E0 */	bdnz lbl_80CF48A0
lbl_80CF48C4:
/* 80CF48C4  39 4A 00 01 */	addi r10, r10, 1
/* 80CF48C8  38 63 00 04 */	addi r3, r3, 4
lbl_80CF48CC:
/* 80CF48CC  80 05 00 00 */	lwz r0, 0(r5)
/* 80CF48D0  7C 0A 00 00 */	cmpw r10, r0
/* 80CF48D4  41 80 FF 58 */	blt lbl_80CF482C
/* 80CF48D8  3B 40 00 00 */	li r26, 0
/* 80CF48DC  3B C0 00 00 */	li r30, 0
/* 80CF48E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80CF48E4  3B 83 35 90 */	addi r28, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80CF48E8  3B A0 FF FF */	li r29, -1
lbl_80CF48EC:
/* 80CF48EC  3B 7E 05 8C */	addi r27, r30, 0x58c
/* 80CF48F0  7C 1F D8 2E */	lwzx r0, r31, r27
/* 80CF48F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF48F8  7F 83 E3 78 */	mr r3, r28
/* 80CF48FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF4900  4B 32 4E F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF4904  28 03 00 00 */	cmplwi r3, 0
/* 80CF4908  40 82 00 08 */	bne lbl_80CF4910
/* 80CF490C  7F BF D9 2E */	stwx r29, r31, r27
lbl_80CF4910:
/* 80CF4910  3B 5A 00 01 */	addi r26, r26, 1
/* 80CF4914  2C 1A 00 02 */	cmpwi r26, 2
/* 80CF4918  3B DE 00 04 */	addi r30, r30, 4
/* 80CF491C  41 80 FF D0 */	blt lbl_80CF48EC
/* 80CF4920  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80CF4924  3C 03 00 01 */	addis r0, r3, 1
/* 80CF4928  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF492C  41 82 00 28 */	beq lbl_80CF4954
/* 80CF4930  90 61 00 08 */	stw r3, 8(r1)
/* 80CF4934  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80CF4938  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80CF493C  38 81 00 08 */	addi r4, r1, 8
/* 80CF4940  4B 32 4E B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF4944  28 03 00 00 */	cmplwi r3, 0
/* 80CF4948  40 82 00 0C */	bne lbl_80CF4954
/* 80CF494C  38 00 FF FF */	li r0, -1
/* 80CF4950  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CF4954:
/* 80CF4954  39 61 00 30 */	addi r11, r1, 0x30
/* 80CF4958  4B 66 D8 C5 */	bl _restgpr_26
/* 80CF495C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CF4960  7C 08 03 A6 */	mtlr r0
/* 80CF4964  38 21 00 30 */	addi r1, r1, 0x30
/* 80CF4968  4E 80 00 20 */	blr 
