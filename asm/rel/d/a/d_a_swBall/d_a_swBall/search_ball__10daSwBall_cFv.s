lbl_80D4E248:
/* 80D4E248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E24C  7C 08 02 A6 */	mflr r0
/* 80D4E250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4E258  7C 7F 1B 78 */	mr r31, r3
/* 80D4E25C  38 A0 00 00 */	li r5, 0
/* 80D4E260  3C 60 80 D5 */	lis r3, l_target_info_count@ha /* 0x80D4EA70@ha */
/* 80D4E264  90 A3 EA 70 */	stw r5, l_target_info_count@l(r3)  /* 0x80D4EA70@l */
/* 80D4E268  7C A3 2B 78 */	mr r3, r5
/* 80D4E26C  3C 80 80 D5 */	lis r4, l_target_info@ha /* 0x80D4EA50@ha */
/* 80D4E270  38 84 EA 50 */	addi r4, r4, l_target_info@l /* 0x80D4EA50@l */
/* 80D4E274  38 00 00 08 */	li r0, 8
/* 80D4E278  7C 09 03 A6 */	mtctr r0
lbl_80D4E27C:
/* 80D4E27C  7C A4 19 2E */	stwx r5, r4, r3
/* 80D4E280  38 63 00 04 */	addi r3, r3, 4
/* 80D4E284  42 00 FF F8 */	bdnz lbl_80D4E27C
/* 80D4E288  3C 60 80 D5 */	lis r3, s_ball_sub__FPvPv@ha /* 0x80D4DFD8@ha */
/* 80D4E28C  38 63 DF D8 */	addi r3, r3, s_ball_sub__FPvPv@l /* 0x80D4DFD8@l */
/* 80D4E290  7F E4 FB 78 */	mr r4, r31
/* 80D4E294  4B 2D 30 A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80D4E298  39 40 00 00 */	li r10, 0
/* 80D4E29C  38 60 00 00 */	li r3, 0
/* 80D4E2A0  3C 80 80 D5 */	lis r4, l_target_info@ha /* 0x80D4EA50@ha */
/* 80D4E2A4  38 E4 EA 50 */	addi r7, r4, l_target_info@l /* 0x80D4EA50@l */
/* 80D4E2A8  3C 80 80 D5 */	lis r4, l_target_info_count@ha /* 0x80D4EA70@ha */
/* 80D4E2AC  38 A4 EA 70 */	addi r5, r4, l_target_info_count@l /* 0x80D4EA70@l */
/* 80D4E2B0  48 00 00 A4 */	b lbl_80D4E354
lbl_80D4E2B4:
/* 80D4E2B4  7C 87 18 2E */	lwzx r4, r7, r3
/* 80D4E2B8  28 04 00 00 */	cmplwi r4, 0
/* 80D4E2BC  41 82 00 90 */	beq lbl_80D4E34C
/* 80D4E2C0  41 82 00 0C */	beq lbl_80D4E2CC
/* 80D4E2C4  81 04 00 04 */	lwz r8, 4(r4)
/* 80D4E2C8  48 00 00 08 */	b lbl_80D4E2D0
lbl_80D4E2CC:
/* 80D4E2CC  39 00 FF FF */	li r8, -1
lbl_80D4E2D0:
/* 80D4E2D0  3C 08 00 01 */	addis r0, r8, 1
/* 80D4E2D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4E2D8  41 82 00 74 */	beq lbl_80D4E34C
/* 80D4E2DC  38 C0 FF FF */	li r6, -1
/* 80D4E2E0  39 20 00 00 */	li r9, 0
/* 80D4E2E4  38 80 00 00 */	li r4, 0
/* 80D4E2E8  38 00 00 08 */	li r0, 8
/* 80D4E2EC  7C 09 03 A6 */	mtctr r0
lbl_80D4E2F0:
/* 80D4E2F0  38 04 05 68 */	addi r0, r4, 0x568
/* 80D4E2F4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80D4E2F8  7C 08 00 40 */	cmplw r8, r0
/* 80D4E2FC  40 82 00 0C */	bne lbl_80D4E308
/* 80D4E300  7D 26 4B 78 */	mr r6, r9
/* 80D4E304  48 00 00 10 */	b lbl_80D4E314
lbl_80D4E308:
/* 80D4E308  39 29 00 01 */	addi r9, r9, 1
/* 80D4E30C  38 84 00 04 */	addi r4, r4, 4
/* 80D4E310  42 00 FF E0 */	bdnz lbl_80D4E2F0
lbl_80D4E314:
/* 80D4E314  2C 06 00 00 */	cmpwi r6, 0
/* 80D4E318  40 80 00 34 */	bge lbl_80D4E34C
/* 80D4E31C  38 80 00 00 */	li r4, 0
/* 80D4E320  38 00 00 08 */	li r0, 8
/* 80D4E324  7C 09 03 A6 */	mtctr r0
lbl_80D4E328:
/* 80D4E328  39 24 05 68 */	addi r9, r4, 0x568
/* 80D4E32C  7C DF 48 2E */	lwzx r6, r31, r9
/* 80D4E330  3C 06 00 01 */	addis r0, r6, 1
/* 80D4E334  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4E338  40 82 00 0C */	bne lbl_80D4E344
/* 80D4E33C  7D 1F 49 2E */	stwx r8, r31, r9
/* 80D4E340  48 00 00 0C */	b lbl_80D4E34C
lbl_80D4E344:
/* 80D4E344  38 84 00 04 */	addi r4, r4, 4
/* 80D4E348  42 00 FF E0 */	bdnz lbl_80D4E328
lbl_80D4E34C:
/* 80D4E34C  39 4A 00 01 */	addi r10, r10, 1
/* 80D4E350  38 63 00 04 */	addi r3, r3, 4
lbl_80D4E354:
/* 80D4E354  80 05 00 00 */	lwz r0, 0(r5)
/* 80D4E358  7C 0A 00 00 */	cmpw r10, r0
/* 80D4E35C  41 80 FF 58 */	blt lbl_80D4E2B4
/* 80D4E360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4E364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E368  7C 08 03 A6 */	mtlr r0
/* 80D4E36C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E370  4E 80 00 20 */	blr 
