lbl_80469658:
/* 80469658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046965C  7C 08 02 A6 */	mflr r0
/* 80469660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80469664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80469668  93 C1 00 08 */	stw r30, 8(r1)
/* 8046966C  7C 7E 1B 78 */	mr r30, r3
/* 80469670  3B E0 00 00 */	li r31, 0
/* 80469674  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80469678  28 00 00 02 */	cmplwi r0, 2
/* 8046967C  41 82 00 24 */	beq lbl_804696A0
/* 80469680  3C 80 80 47 */	lis r4, struct_8046B0D0+0x0@ha
/* 80469684  38 84 B0 D0 */	addi r4, r4, struct_8046B0D0+0x0@l
/* 80469688  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8046968C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80469690  38 C0 00 01 */	li r6, 1
/* 80469694  38 E0 00 00 */	li r7, 0
/* 80469698  4B BB 1D 34 */	b fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 8046969C  48 00 00 48 */	b lbl_804696E4
lbl_804696A0:
/* 804696A0  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804696A4  60 00 00 02 */	ori r0, r0, 2
/* 804696A8  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804696AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804696B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804696B4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804696B8  3C 80 80 47 */	lis r4, struct_8046B0D0+0x0@ha
/* 804696BC  38 84 B0 D0 */	addi r4, r4, struct_8046B0D0+0x0@l
/* 804696C0  38 84 00 10 */	addi r4, r4, 0x10
/* 804696C4  38 A0 00 00 */	li r5, 0
/* 804696C8  38 C0 00 00 */	li r6, 0
/* 804696CC  4B BD E4 50 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 804696D0  7C 7F 1B 78 */	mr r31, r3
/* 804696D4  2C 03 FF FF */	cmpwi r3, -1
/* 804696D8  40 82 00 0C */	bne lbl_804696E4
/* 804696DC  7F C3 F3 78 */	mr r3, r30
/* 804696E0  4B FF FF 19 */	bl ep_switch_event_end__FP8ep_class
lbl_804696E4:
/* 804696E4  7F E3 FB 78 */	mr r3, r31
/* 804696E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804696EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804696F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804696F4  7C 08 03 A6 */	mtlr r0
/* 804696F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804696FC  4E 80 00 20 */	blr 
