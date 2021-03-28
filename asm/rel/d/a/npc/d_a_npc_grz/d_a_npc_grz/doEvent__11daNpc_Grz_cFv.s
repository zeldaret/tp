lbl_809EBD18:
/* 809EBD18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809EBD1C  7C 08 02 A6 */	mflr r0
/* 809EBD20  90 01 00 44 */	stw r0, 0x44(r1)
/* 809EBD24  39 61 00 40 */	addi r11, r1, 0x40
/* 809EBD28  4B 97 64 A8 */	b _savegpr_26
/* 809EBD2C  7C 7C 1B 78 */	mr r28, r3
/* 809EBD30  3C 60 80 9F */	lis r3, cNullVec__6Z2Calc@ha
/* 809EBD34  3B E3 F6 A0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 809EBD38  3B A0 00 00 */	li r29, 0
/* 809EBD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EBD40  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 809EBD44  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 809EBD48  28 00 00 00 */	cmplwi r0, 0
/* 809EBD4C  41 82 03 28 */	beq lbl_809EC074
/* 809EBD50  3B DB 4F F8 */	addi r30, r27, 0x4ff8
/* 809EBD54  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809EBD58  28 00 00 01 */	cmplwi r0, 1
/* 809EBD5C  41 82 00 0C */	beq lbl_809EBD68
/* 809EBD60  28 00 00 02 */	cmplwi r0, 2
/* 809EBD64  40 82 00 0C */	bne lbl_809EBD70
lbl_809EBD68:
/* 809EBD68  38 00 00 00 */	li r0, 0
/* 809EBD6C  98 1C 09 ED */	stb r0, 0x9ed(r28)
lbl_809EBD70:
/* 809EBD70  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809EBD74  28 00 00 01 */	cmplwi r0, 1
/* 809EBD78  40 82 01 0C */	bne lbl_809EBE84
/* 809EBD7C  80 1C 1A 84 */	lwz r0, 0x1a84(r28)
/* 809EBD80  2C 00 00 00 */	cmpwi r0, 0
/* 809EBD84  40 81 00 54 */	ble lbl_809EBDD8
/* 809EBD88  38 00 00 01 */	li r0, 1
/* 809EBD8C  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809EBD90  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809EBD94  54 06 18 38 */	slwi r6, r0, 3
/* 809EBD98  7F 83 E3 78 */	mr r3, r28
/* 809EBD9C  38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 809EBDA0  7C 85 32 14 */	add r4, r5, r6
/* 809EBDA4  80 04 00 04 */	lwz r0, 4(r4)
/* 809EBDA8  54 00 10 3A */	slwi r0, r0, 2
/* 809EBDAC  38 9F 02 48 */	addi r4, r31, 0x248
/* 809EBDB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809EBDB4  7C 05 30 2E */	lwzx r0, r5, r6
/* 809EBDB8  54 00 10 3A */	slwi r0, r0, 2
/* 809EBDBC  38 BF 01 C0 */	addi r5, r31, 0x1c0
/* 809EBDC0  7C A5 00 2E */	lwzx r5, r5, r0
/* 809EBDC4  38 C0 00 01 */	li r6, 1
/* 809EBDC8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 809EBDCC  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 809EBDD0  4B 76 7B 84 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 809EBDD4  48 00 00 A8 */	b lbl_809EBE7C
lbl_809EBDD8:
/* 809EBDD8  80 7F 03 F0 */	lwz r3, 0x3f0(r31)
/* 809EBDDC  80 1F 03 F4 */	lwz r0, 0x3f4(r31)
/* 809EBDE0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809EBDE4  90 01 00 20 */	stw r0, 0x20(r1)
/* 809EBDE8  80 1F 03 F8 */	lwz r0, 0x3f8(r31)
/* 809EBDEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EBDF0  7F 83 E3 78 */	mr r3, r28
/* 809EBDF4  38 81 00 1C */	addi r4, r1, 0x1c
/* 809EBDF8  4B FF FC 45 */	bl chkAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i
/* 809EBDFC  2C 03 00 00 */	cmpwi r3, 0
/* 809EBE00  41 82 00 1C */	beq lbl_809EBE1C
/* 809EBE04  7F 83 E3 78 */	mr r3, r28
/* 809EBE08  38 80 00 00 */	li r4, 0
/* 809EBE0C  39 9C 1A 30 */	addi r12, r28, 0x1a30
/* 809EBE10  4B 97 62 74 */	b __ptmf_scall
/* 809EBE14  60 00 00 00 */	nop 
/* 809EBE18  48 00 00 64 */	b lbl_809EBE7C
lbl_809EBE1C:
/* 809EBE1C  38 00 00 00 */	li r0, 0
/* 809EBE20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EBE24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EBE28  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809EBE2C  28 03 00 01 */	cmplwi r3, 1
/* 809EBE30  41 82 00 0C */	beq lbl_809EBE3C
/* 809EBE34  28 03 00 02 */	cmplwi r3, 2
/* 809EBE38  40 82 00 08 */	bne lbl_809EBE40
lbl_809EBE3C:
/* 809EBE3C  38 00 00 01 */	li r0, 1
lbl_809EBE40:
/* 809EBE40  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809EBE44  41 82 00 14 */	beq lbl_809EBE58
/* 809EBE48  7F C3 F3 78 */	mr r3, r30
/* 809EBE4C  4B 65 C9 A4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809EBE50  2C 03 00 00 */	cmpwi r3, 0
/* 809EBE54  41 82 00 28 */	beq lbl_809EBE7C
lbl_809EBE58:
/* 809EBE58  80 7F 03 FC */	lwz r3, 0x3fc(r31)
/* 809EBE5C  80 1F 04 00 */	lwz r0, 0x400(r31)
/* 809EBE60  90 61 00 10 */	stw r3, 0x10(r1)
/* 809EBE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EBE68  80 1F 04 04 */	lwz r0, 0x404(r31)
/* 809EBE6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809EBE70  7F 83 E3 78 */	mr r3, r28
/* 809EBE74  38 81 00 10 */	addi r4, r1, 0x10
/* 809EBE78  4B FF FB F1 */	bl setAction__11daNpc_Grz_cFM11daNpc_Grz_cFPCvPvPv_i
lbl_809EBE7C:
/* 809EBE7C  3B A0 00 01 */	li r29, 1
/* 809EBE80  48 00 01 2C */	b lbl_809EBFAC
lbl_809EBE84:
/* 809EBE84  7F C3 F3 78 */	mr r3, r30
/* 809EBE88  80 9F 02 60 */	lwz r4, 0x260(r31)
/* 809EBE8C  38 A0 00 00 */	li r5, 0
/* 809EBE90  38 C0 00 00 */	li r6, 0
/* 809EBE94  4B 65 BC 88 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809EBE98  7C 7A 1B 78 */	mr r26, r3
/* 809EBE9C  2C 1A FF FF */	cmpwi r26, -1
/* 809EBEA0  41 82 00 5C */	beq lbl_809EBEFC
/* 809EBEA4  93 5C 09 2C */	stw r26, 0x92c(r28)
/* 809EBEA8  7F C3 F3 78 */	mr r3, r30
/* 809EBEAC  7F 44 D3 78 */	mr r4, r26
/* 809EBEB0  38 BF 02 64 */	addi r5, r31, 0x264
/* 809EBEB4  38 C0 00 07 */	li r6, 7
/* 809EBEB8  38 E0 00 00 */	li r7, 0
/* 809EBEBC  39 00 00 00 */	li r8, 0
/* 809EBEC0  4B 65 BF 50 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809EBEC4  7C 60 1B 78 */	mr r0, r3
/* 809EBEC8  7F 83 E3 78 */	mr r3, r28
/* 809EBECC  7F 44 D3 78 */	mr r4, r26
/* 809EBED0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809EBED4  39 9F 02 C8 */	addi r12, r31, 0x2c8
/* 809EBED8  7D 8C 02 14 */	add r12, r12, r0
/* 809EBEDC  4B 97 61 A8 */	b __ptmf_scall
/* 809EBEE0  60 00 00 00 */	nop 
/* 809EBEE4  2C 03 00 00 */	cmpwi r3, 0
/* 809EBEE8  41 82 00 10 */	beq lbl_809EBEF8
/* 809EBEEC  7F C3 F3 78 */	mr r3, r30
/* 809EBEF0  7F 44 D3 78 */	mr r4, r26
/* 809EBEF4  4B 65 C2 88 */	b cutEnd__16dEvent_manager_cFi
lbl_809EBEF8:
/* 809EBEF8  3B A0 00 01 */	li r29, 1
lbl_809EBEFC:
/* 809EBEFC  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809EBF00  28 00 00 02 */	cmplwi r0, 2
/* 809EBF04  40 82 00 A8 */	bne lbl_809EBFAC
/* 809EBF08  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 809EBF0C  2C 04 FF FF */	cmpwi r4, -1
/* 809EBF10  41 82 00 7C */	beq lbl_809EBF8C
/* 809EBF14  7F C3 F3 78 */	mr r3, r30
/* 809EBF18  4B 65 BB 60 */	b endCheck__16dEvent_manager_cFs
/* 809EBF1C  2C 03 00 00 */	cmpwi r3, 0
/* 809EBF20  41 82 00 6C */	beq lbl_809EBF8C
/* 809EBF24  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809EBF28  2C 00 00 02 */	cmpwi r0, 2
/* 809EBF2C  41 82 00 08 */	beq lbl_809EBF34
/* 809EBF30  48 00 00 40 */	b lbl_809EBF70
lbl_809EBF34:
/* 809EBF34  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809EBF38  4B 65 65 30 */	b reset__14dEvt_control_cFv
/* 809EBF3C  38 00 00 00 */	li r0, 0
/* 809EBF40  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809EBF44  38 00 FF FF */	li r0, -1
/* 809EBF48  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
/* 809EBF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EBF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EBF54  88 9C 1A 98 */	lbz r4, 0x1a98(r28)
/* 809EBF58  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 809EBF5C  7C 05 07 74 */	extsb r5, r0
/* 809EBF60  4B 64 92 A0 */	b onSwitch__10dSv_info_cFii
/* 809EBF64  7F 83 E3 78 */	mr r3, r28
/* 809EBF68  4B 62 DD 14 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809EBF6C  48 00 00 40 */	b lbl_809EBFAC
lbl_809EBF70:
/* 809EBF70  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809EBF74  4B 65 64 F4 */	b reset__14dEvt_control_cFv
/* 809EBF78  38 00 00 00 */	li r0, 0
/* 809EBF7C  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809EBF80  38 00 FF FF */	li r0, -1
/* 809EBF84  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
/* 809EBF88  48 00 00 24 */	b lbl_809EBFAC
lbl_809EBF8C:
/* 809EBF8C  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809EBF90  2C 00 00 02 */	cmpwi r0, 2
/* 809EBF94  41 82 00 08 */	beq lbl_809EBF9C
/* 809EBF98  48 00 00 14 */	b lbl_809EBFAC
lbl_809EBF9C:
/* 809EBF9C  7F 83 E3 78 */	mr r3, r28
/* 809EBFA0  38 80 00 02 */	li r4, 2
/* 809EBFA4  38 A0 00 03 */	li r5, 3
/* 809EBFA8  48 00 01 25 */	bl setSkipZev__11daNpc_Grz_cFii
lbl_809EBFAC:
/* 809EBFAC  83 5C 09 50 */	lwz r26, 0x950(r28)
/* 809EBFB0  7F 83 E3 78 */	mr r3, r28
/* 809EBFB4  38 81 00 0C */	addi r4, r1, 0xc
/* 809EBFB8  38 A1 00 08 */	addi r5, r1, 8
/* 809EBFBC  7F 86 E3 78 */	mr r6, r28
/* 809EBFC0  38 E0 00 00 */	li r7, 0
/* 809EBFC4  4B 76 77 54 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809EBFC8  2C 03 00 00 */	cmpwi r3, 0
/* 809EBFCC  41 82 00 58 */	beq lbl_809EC024
/* 809EBFD0  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 809EBFD4  28 00 00 00 */	cmplwi r0, 0
/* 809EBFD8  40 82 00 68 */	bne lbl_809EC040
/* 809EBFDC  7F 83 E3 78 */	mr r3, r28
/* 809EBFE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809EBFE4  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809EBFE8  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809EBFEC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809EBFF0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EBFF4  7D 89 03 A6 */	mtctr r12
/* 809EBFF8  4E 80 04 21 */	bctrl 
/* 809EBFFC  7F 83 E3 78 */	mr r3, r28
/* 809EC000  80 81 00 08 */	lwz r4, 8(r1)
/* 809EC004  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809EC008  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809EC00C  38 A0 00 00 */	li r5, 0
/* 809EC010  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809EC014  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EC018  7D 89 03 A6 */	mtctr r12
/* 809EC01C  4E 80 04 21 */	bctrl 
/* 809EC020  48 00 00 20 */	b lbl_809EC040
lbl_809EC024:
/* 809EC024  2C 1A 00 00 */	cmpwi r26, 0
/* 809EC028  41 82 00 18 */	beq lbl_809EC040
/* 809EC02C  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 809EC030  28 00 00 00 */	cmplwi r0, 0
/* 809EC034  40 82 00 0C */	bne lbl_809EC040
/* 809EC038  7F 83 E3 78 */	mr r3, r28
/* 809EC03C  48 00 03 E9 */	bl setExpressionTalkAfter__11daNpc_Grz_cFv
lbl_809EC040:
/* 809EC040  A8 1C 09 DE */	lha r0, 0x9de(r28)
/* 809EC044  2C 00 00 04 */	cmpwi r0, 4
/* 809EC048  40 80 00 68 */	bge lbl_809EC0B0
/* 809EC04C  2C 00 00 02 */	cmpwi r0, 2
/* 809EC050  40 80 00 08 */	bge lbl_809EC058
/* 809EC054  48 00 00 5C */	b lbl_809EC0B0
lbl_809EC058:
/* 809EC058  A8 1C 09 D6 */	lha r0, 0x9d6(r28)
/* 809EC05C  2C 00 00 00 */	cmpwi r0, 0
/* 809EC060  41 82 00 50 */	beq lbl_809EC0B0
/* 809EC064  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809EC068  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 809EC06C  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 809EC070  48 00 00 40 */	b lbl_809EC0B0
lbl_809EC074:
/* 809EC074  38 00 00 00 */	li r0, 0
/* 809EC078  90 1C 09 50 */	stw r0, 0x950(r28)
/* 809EC07C  80 1C 09 2C */	lwz r0, 0x92c(r28)
/* 809EC080  2C 00 FF FF */	cmpwi r0, -1
/* 809EC084  41 82 00 2C */	beq lbl_809EC0B0
/* 809EC088  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809EC08C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809EC090  80 64 00 00 */	lwz r3, 0(r4)
/* 809EC094  80 04 00 04 */	lwz r0, 4(r4)
/* 809EC098  90 7C 1A 30 */	stw r3, 0x1a30(r28)
/* 809EC09C  90 1C 1A 34 */	stw r0, 0x1a34(r28)
/* 809EC0A0  80 04 00 08 */	lwz r0, 8(r4)
/* 809EC0A4  90 1C 1A 38 */	stw r0, 0x1a38(r28)
/* 809EC0A8  38 00 FF FF */	li r0, -1
/* 809EC0AC  90 1C 09 2C */	stw r0, 0x92c(r28)
lbl_809EC0B0:
/* 809EC0B0  7F A3 EB 78 */	mr r3, r29
/* 809EC0B4  39 61 00 40 */	addi r11, r1, 0x40
/* 809EC0B8  4B 97 61 64 */	b _restgpr_26
/* 809EC0BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809EC0C0  7C 08 03 A6 */	mtlr r0
/* 809EC0C4  38 21 00 40 */	addi r1, r1, 0x40
/* 809EC0C8  4E 80 00 20 */	blr 
