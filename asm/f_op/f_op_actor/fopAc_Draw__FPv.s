lbl_80018D0C:
/* 80018D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018D10  7C 08 02 A6 */	mflr r0
/* 80018D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018D1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80018D20  7C 7F 1B 78 */	mr r31, r3
/* 80018D24  3B C0 00 01 */	li r30, 1
/* 80018D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80018D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80018D30  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 80018D34  28 00 00 00 */	cmplwi r0, 0
/* 80018D38  40 82 00 84 */	bne lbl_80018DBC
/* 80018D3C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80018D40  7F E4 FB 78 */	mr r4, r31
/* 80018D44  48 02 A2 65 */	bl moveApproval__14dEvt_control_cFPv
/* 80018D48  2C 03 00 02 */	cmpwi r3, 2
/* 80018D4C  41 82 00 2C */	beq lbl_80018D78
/* 80018D50  80 7F 04 9C */	lwz r3, 0x49c(r31)
/* 80018D54  80 0D 87 3C */	lwz r0, stopStatus__10fopAc_ac_c(r13)
/* 80018D58  7C 60 00 39 */	and. r0, r3, r0
/* 80018D5C  40 82 00 48 */	bne lbl_80018DA4
/* 80018D60  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80018D64  41 82 00 14 */	beq lbl_80018D78
/* 80018D68  7F E3 FB 78 */	mr r3, r31
/* 80018D6C  48 00 1F 81 */	bl fopAcM_cullingCheck__FPC10fopAc_ac_c
/* 80018D70  2C 03 00 00 */	cmpwi r3, 0
/* 80018D74  40 82 00 30 */	bne lbl_80018DA4
lbl_80018D78:
/* 80018D78  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80018D7C  74 00 21 00 */	andis. r0, r0, 0x2100
/* 80018D80  40 82 00 24 */	bne lbl_80018DA4
/* 80018D84  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80018D88  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80018D8C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
/* 80018D90  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 80018D94  7F E4 FB 78 */	mr r4, r31
/* 80018D98  48 00 8C 8D */	bl fpcLf_DrawMethod__FP21leafdraw_method_classPv
/* 80018D9C  7C 7E 1B 78 */	mr r30, r3
/* 80018DA0  48 00 00 10 */	b lbl_80018DB0
lbl_80018DA4:
/* 80018DA4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80018DA8  60 00 00 04 */	ori r0, r0, 4
/* 80018DAC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80018DB0:
/* 80018DB0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80018DB4  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 80018DB8  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80018DBC:
/* 80018DBC  7F C3 F3 78 */	mr r3, r30
/* 80018DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018DC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018DCC  7C 08 03 A6 */	mtlr r0
/* 80018DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80018DD4  4E 80 00 20 */	blr 
