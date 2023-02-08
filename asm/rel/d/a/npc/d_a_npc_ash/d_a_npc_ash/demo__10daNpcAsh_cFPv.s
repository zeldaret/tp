lbl_8095AD28:
/* 8095AD28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8095AD2C  7C 08 02 A6 */	mflr r0
/* 8095AD30  90 01 00 54 */	stw r0, 0x54(r1)
/* 8095AD34  39 61 00 50 */	addi r11, r1, 0x50
/* 8095AD38  4B A0 74 9D */	bl _savegpr_27
/* 8095AD3C  7C 7E 1B 78 */	mr r30, r3
/* 8095AD40  3C 80 80 96 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8095D990@ha */
/* 8095AD44  3B E4 D9 90 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x8095D990@l */
/* 8095AD48  A0 03 0F 5C */	lhz r0, 0xf5c(r3)
/* 8095AD4C  2C 00 00 02 */	cmpwi r0, 2
/* 8095AD50  41 82 00 B8 */	beq lbl_8095AE08
/* 8095AD54  40 80 03 F4 */	bge lbl_8095B148
/* 8095AD58  2C 00 00 00 */	cmpwi r0, 0
/* 8095AD5C  41 82 00 0C */	beq lbl_8095AD68
/* 8095AD60  48 00 03 E8 */	b lbl_8095B148
/* 8095AD64  48 00 03 E4 */	b lbl_8095B148
lbl_8095AD68:
/* 8095AD68  38 80 00 07 */	li r4, 7
/* 8095AD6C  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095AD70  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095AD74  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8095AD78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095AD7C  7D 89 03 A6 */	mtctr r12
/* 8095AD80  4E 80 04 21 */	bctrl 
/* 8095AD84  3B A0 00 00 */	li r29, 0
/* 8095AD88  38 60 01 0C */	li r3, 0x10c
/* 8095AD8C  4B 7F A8 A9 */	bl daNpcF_chkEvtBit__FUl
/* 8095AD90  2C 03 00 00 */	cmpwi r3, 0
/* 8095AD94  40 82 00 14 */	bne lbl_8095ADA8
/* 8095AD98  38 60 01 08 */	li r3, 0x108
/* 8095AD9C  4B 7F A8 99 */	bl daNpcF_chkEvtBit__FUl
/* 8095ADA0  2C 03 00 00 */	cmpwi r3, 0
/* 8095ADA4  40 82 00 08 */	bne lbl_8095ADAC
lbl_8095ADA8:
/* 8095ADA8  3B A0 00 01 */	li r29, 1
lbl_8095ADAC:
/* 8095ADAC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8095ADB0  41 82 00 2C */	beq lbl_8095ADDC
/* 8095ADB4  7F C3 F3 78 */	mr r3, r30
/* 8095ADB8  38 80 00 00 */	li r4, 0
/* 8095ADBC  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095ADC0  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095ADC4  38 A0 00 00 */	li r5, 0
/* 8095ADC8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095ADCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095ADD0  7D 89 03 A6 */	mtctr r12
/* 8095ADD4  4E 80 04 21 */	bctrl 
/* 8095ADD8  48 00 00 28 */	b lbl_8095AE00
lbl_8095ADDC:
/* 8095ADDC  7F C3 F3 78 */	mr r3, r30
/* 8095ADE0  38 80 00 01 */	li r4, 1
/* 8095ADE4  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095ADE8  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095ADEC  38 A0 00 00 */	li r5, 0
/* 8095ADF0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095ADF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095ADF8  7D 89 03 A6 */	mtctr r12
/* 8095ADFC  4E 80 04 21 */	bctrl 
lbl_8095AE00:
/* 8095AE00  38 00 00 02 */	li r0, 2
/* 8095AE04  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
lbl_8095AE08:
/* 8095AE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095AE0C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095AE10  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 8095AE14  28 00 00 00 */	cmplwi r0, 0
/* 8095AE18  41 82 02 00 */	beq lbl_8095B018
/* 8095AE1C  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8095AE20  28 00 00 01 */	cmplwi r0, 1
/* 8095AE24  41 82 01 F4 */	beq lbl_8095B018
/* 8095AE28  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 8095AE2C  7F 83 E3 78 */	mr r3, r28
/* 8095AE30  80 9F 01 54 */	lwz r4, 0x154(r31)
/* 8095AE34  38 A0 00 00 */	li r5, 0
/* 8095AE38  38 C0 00 00 */	li r6, 0
/* 8095AE3C  4B 6E CC E1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8095AE40  2C 03 FF FF */	cmpwi r3, -1
/* 8095AE44  41 82 00 70 */	beq lbl_8095AEB4
/* 8095AE48  7C 7B 1B 78 */	mr r27, r3
/* 8095AE4C  93 7E 09 2C */	stw r27, 0x92c(r30)
/* 8095AE50  7F 83 E3 78 */	mr r3, r28
/* 8095AE54  7F 64 DB 78 */	mr r4, r27
/* 8095AE58  38 BF 01 3C */	addi r5, r31, 0x13c
/* 8095AE5C  38 C0 00 06 */	li r6, 6
/* 8095AE60  38 E0 00 00 */	li r7, 0
/* 8095AE64  39 00 00 00 */	li r8, 0
/* 8095AE68  4B 6E CF A9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8095AE6C  2C 03 00 01 */	cmpwi r3, 1
/* 8095AE70  41 80 00 10 */	blt lbl_8095AE80
/* 8095AE74  2C 03 00 06 */	cmpwi r3, 6
/* 8095AE78  40 80 00 08 */	bge lbl_8095AE80
/* 8095AE7C  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
lbl_8095AE80:
/* 8095AE80  7F C3 F3 78 */	mr r3, r30
/* 8095AE84  7F 64 DB 78 */	mr r4, r27
/* 8095AE88  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 8095AE8C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8095AE90  39 9F 01 94 */	addi r12, r31, 0x194
/* 8095AE94  7D 8C 02 14 */	add r12, r12, r0
/* 8095AE98  4B A0 71 ED */	bl __ptmf_scall
/* 8095AE9C  60 00 00 00 */	nop 
/* 8095AEA0  2C 03 00 00 */	cmpwi r3, 0
/* 8095AEA4  41 82 00 10 */	beq lbl_8095AEB4
/* 8095AEA8  7F 83 E3 78 */	mr r3, r28
/* 8095AEAC  7F 64 DB 78 */	mr r4, r27
/* 8095AEB0  4B 6E D2 CD */	bl cutEnd__16dEvent_manager_cFi
lbl_8095AEB4:
/* 8095AEB4  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8095AEB8  28 00 00 02 */	cmplwi r0, 2
/* 8095AEBC  40 82 02 8C */	bne lbl_8095B148
/* 8095AEC0  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 8095AEC4  2C 04 FF FF */	cmpwi r4, -1
/* 8095AEC8  41 82 02 80 */	beq lbl_8095B148
/* 8095AECC  7F 83 E3 78 */	mr r3, r28
/* 8095AED0  4B 6E CB A9 */	bl endCheck__16dEvent_manager_cFs
/* 8095AED4  2C 03 00 00 */	cmpwi r3, 0
/* 8095AED8  41 82 02 70 */	beq lbl_8095B148
/* 8095AEDC  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 8095AEE0  4B 6E 75 89 */	bl reset__14dEvt_control_cFv
/* 8095AEE4  38 00 00 00 */	li r0, 0
/* 8095AEE8  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8095AEEC  38 00 FF FF */	li r0, -1
/* 8095AEF0  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8095AEF4  88 1E 0F 60 */	lbz r0, 0xf60(r30)
/* 8095AEF8  28 00 00 00 */	cmplwi r0, 0
/* 8095AEFC  40 82 00 90 */	bne lbl_8095AF8C
/* 8095AF00  80 7F 02 44 */	lwz r3, 0x244(r31)
/* 8095AF04  80 1F 02 48 */	lwz r0, 0x248(r31)
/* 8095AF08  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8095AF0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8095AF10  80 1F 02 4C */	lwz r0, 0x24c(r31)
/* 8095AF14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095AF18  38 00 00 03 */	li r0, 3
/* 8095AF1C  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095AF20  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095AF24  4B A0 70 F5 */	bl __ptmf_test
/* 8095AF28  2C 03 00 00 */	cmpwi r3, 0
/* 8095AF2C  41 82 00 18 */	beq lbl_8095AF44
/* 8095AF30  7F C3 F3 78 */	mr r3, r30
/* 8095AF34  38 80 00 00 */	li r4, 0
/* 8095AF38  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095AF3C  4B A0 71 49 */	bl __ptmf_scall
/* 8095AF40  60 00 00 00 */	nop 
lbl_8095AF44:
/* 8095AF44  38 00 00 00 */	li r0, 0
/* 8095AF48  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095AF4C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8095AF50  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8095AF54  90 7E 0F 30 */	stw r3, 0xf30(r30)
/* 8095AF58  90 1E 0F 34 */	stw r0, 0xf34(r30)
/* 8095AF5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095AF60  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8095AF64  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095AF68  4B A0 70 B1 */	bl __ptmf_test
/* 8095AF6C  2C 03 00 00 */	cmpwi r3, 0
/* 8095AF70  41 82 01 D8 */	beq lbl_8095B148
/* 8095AF74  7F C3 F3 78 */	mr r3, r30
/* 8095AF78  38 80 00 00 */	li r4, 0
/* 8095AF7C  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095AF80  4B A0 71 05 */	bl __ptmf_scall
/* 8095AF84  60 00 00 00 */	nop 
/* 8095AF88  48 00 01 C0 */	b lbl_8095B148
lbl_8095AF8C:
/* 8095AF8C  80 7F 02 50 */	lwz r3, 0x250(r31)
/* 8095AF90  80 1F 02 54 */	lwz r0, 0x254(r31)
/* 8095AF94  90 61 00 20 */	stw r3, 0x20(r1)
/* 8095AF98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095AF9C  80 1F 02 58 */	lwz r0, 0x258(r31)
/* 8095AFA0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8095AFA4  38 00 00 03 */	li r0, 3
/* 8095AFA8  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095AFAC  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095AFB0  4B A0 70 69 */	bl __ptmf_test
/* 8095AFB4  2C 03 00 00 */	cmpwi r3, 0
/* 8095AFB8  41 82 00 18 */	beq lbl_8095AFD0
/* 8095AFBC  7F C3 F3 78 */	mr r3, r30
/* 8095AFC0  38 80 00 00 */	li r4, 0
/* 8095AFC4  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095AFC8  4B A0 70 BD */	bl __ptmf_scall
/* 8095AFCC  60 00 00 00 */	nop 
lbl_8095AFD0:
/* 8095AFD0  38 00 00 00 */	li r0, 0
/* 8095AFD4  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095AFD8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8095AFDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095AFE0  90 7E 0F 30 */	stw r3, 0xf30(r30)
/* 8095AFE4  90 1E 0F 34 */	stw r0, 0xf34(r30)
/* 8095AFE8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8095AFEC  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8095AFF0  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095AFF4  4B A0 70 25 */	bl __ptmf_test
/* 8095AFF8  2C 03 00 00 */	cmpwi r3, 0
/* 8095AFFC  41 82 01 4C */	beq lbl_8095B148
/* 8095B000  7F C3 F3 78 */	mr r3, r30
/* 8095B004  38 80 00 00 */	li r4, 0
/* 8095B008  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095B00C  4B A0 70 79 */	bl __ptmf_scall
/* 8095B010  60 00 00 00 */	nop 
/* 8095B014  48 00 01 34 */	b lbl_8095B148
lbl_8095B018:
/* 8095B018  38 00 00 00 */	li r0, 0
/* 8095B01C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8095B020  38 00 FF FF */	li r0, -1
/* 8095B024  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8095B028  88 1E 0F 60 */	lbz r0, 0xf60(r30)
/* 8095B02C  28 00 00 00 */	cmplwi r0, 0
/* 8095B030  40 82 00 90 */	bne lbl_8095B0C0
/* 8095B034  80 7F 02 5C */	lwz r3, 0x25c(r31)
/* 8095B038  80 1F 02 60 */	lwz r0, 0x260(r31)
/* 8095B03C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8095B040  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095B044  80 1F 02 64 */	lwz r0, 0x264(r31)
/* 8095B048  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095B04C  38 00 00 03 */	li r0, 3
/* 8095B050  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095B054  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095B058  4B A0 6F C1 */	bl __ptmf_test
/* 8095B05C  2C 03 00 00 */	cmpwi r3, 0
/* 8095B060  41 82 00 18 */	beq lbl_8095B078
/* 8095B064  7F C3 F3 78 */	mr r3, r30
/* 8095B068  38 80 00 00 */	li r4, 0
/* 8095B06C  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095B070  4B A0 70 15 */	bl __ptmf_scall
/* 8095B074  60 00 00 00 */	nop 
lbl_8095B078:
/* 8095B078  38 00 00 00 */	li r0, 0
/* 8095B07C  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095B080  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8095B084  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8095B088  90 7E 0F 30 */	stw r3, 0xf30(r30)
/* 8095B08C  90 1E 0F 34 */	stw r0, 0xf34(r30)
/* 8095B090  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8095B094  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8095B098  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095B09C  4B A0 6F 7D */	bl __ptmf_test
/* 8095B0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8095B0A4  41 82 00 A4 */	beq lbl_8095B148
/* 8095B0A8  7F C3 F3 78 */	mr r3, r30
/* 8095B0AC  38 80 00 00 */	li r4, 0
/* 8095B0B0  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095B0B4  4B A0 6F D1 */	bl __ptmf_scall
/* 8095B0B8  60 00 00 00 */	nop 
/* 8095B0BC  48 00 00 8C */	b lbl_8095B148
lbl_8095B0C0:
/* 8095B0C0  80 7F 02 68 */	lwz r3, 0x268(r31)
/* 8095B0C4  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 8095B0C8  90 61 00 08 */	stw r3, 8(r1)
/* 8095B0CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095B0D0  80 1F 02 70 */	lwz r0, 0x270(r31)
/* 8095B0D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095B0D8  38 00 00 03 */	li r0, 3
/* 8095B0DC  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095B0E0  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095B0E4  4B A0 6F 35 */	bl __ptmf_test
/* 8095B0E8  2C 03 00 00 */	cmpwi r3, 0
/* 8095B0EC  41 82 00 18 */	beq lbl_8095B104
/* 8095B0F0  7F C3 F3 78 */	mr r3, r30
/* 8095B0F4  38 80 00 00 */	li r4, 0
/* 8095B0F8  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095B0FC  4B A0 6F 89 */	bl __ptmf_scall
/* 8095B100  60 00 00 00 */	nop 
lbl_8095B104:
/* 8095B104  38 00 00 00 */	li r0, 0
/* 8095B108  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095B10C  80 61 00 08 */	lwz r3, 8(r1)
/* 8095B110  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8095B114  90 7E 0F 30 */	stw r3, 0xf30(r30)
/* 8095B118  90 1E 0F 34 */	stw r0, 0xf34(r30)
/* 8095B11C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8095B120  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8095B124  38 7E 0F 30 */	addi r3, r30, 0xf30
/* 8095B128  4B A0 6E F1 */	bl __ptmf_test
/* 8095B12C  2C 03 00 00 */	cmpwi r3, 0
/* 8095B130  41 82 00 18 */	beq lbl_8095B148
/* 8095B134  7F C3 F3 78 */	mr r3, r30
/* 8095B138  38 80 00 00 */	li r4, 0
/* 8095B13C  39 9E 0F 30 */	addi r12, r30, 0xf30
/* 8095B140  4B A0 6F 45 */	bl __ptmf_scall
/* 8095B144  60 00 00 00 */	nop 
lbl_8095B148:
/* 8095B148  38 60 00 01 */	li r3, 1
/* 8095B14C  39 61 00 50 */	addi r11, r1, 0x50
/* 8095B150  4B A0 70 D1 */	bl _restgpr_27
/* 8095B154  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8095B158  7C 08 03 A6 */	mtlr r0
/* 8095B15C  38 21 00 50 */	addi r1, r1, 0x50
/* 8095B160  4E 80 00 20 */	blr 
