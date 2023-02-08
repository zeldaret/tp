lbl_80985A84:
/* 80985A84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80985A88  7C 08 02 A6 */	mflr r0
/* 80985A8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80985A90  39 61 00 30 */	addi r11, r1, 0x30
/* 80985A94  4B 9D C7 41 */	bl _savegpr_27
/* 80985A98  7C 7F 1B 78 */	mr r31, r3
/* 80985A9C  3C 60 80 98 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8098795C@ha */
/* 80985AA0  3B A3 79 5C */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x8098795C@l */
/* 80985AA4  A0 1F 0E 1E */	lhz r0, 0xe1e(r31)
/* 80985AA8  2C 00 00 02 */	cmpwi r0, 2
/* 80985AAC  41 82 00 24 */	beq lbl_80985AD0
/* 80985AB0  40 80 01 00 */	bge lbl_80985BB0
/* 80985AB4  2C 00 00 00 */	cmpwi r0, 0
/* 80985AB8  41 82 00 0C */	beq lbl_80985AC4
/* 80985ABC  48 00 00 F4 */	b lbl_80985BB0
/* 80985AC0  48 00 00 F0 */	b lbl_80985BB0
lbl_80985AC4:
/* 80985AC4  38 00 00 02 */	li r0, 2
/* 80985AC8  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80985ACC  48 00 00 E4 */	b lbl_80985BB0
lbl_80985AD0:
/* 80985AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80985AD4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80985AD8  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80985ADC  28 00 00 00 */	cmplwi r0, 0
/* 80985AE0  41 82 00 D0 */	beq lbl_80985BB0
/* 80985AE4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80985AE8  28 00 00 01 */	cmplwi r0, 1
/* 80985AEC  41 82 00 C4 */	beq lbl_80985BB0
/* 80985AF0  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80985AF4  7F 83 E3 78 */	mr r3, r28
/* 80985AF8  80 9D 3D F4 */	lwz r4, 0x3df4(r29)
/* 80985AFC  38 A0 00 00 */	li r5, 0
/* 80985B00  38 C0 00 00 */	li r6, 0
/* 80985B04  4B 6C 20 19 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80985B08  2C 03 FF FF */	cmpwi r3, -1
/* 80985B0C  41 82 00 40 */	beq lbl_80985B4C
/* 80985B10  7C 7B 1B 78 */	mr r27, r3
/* 80985B14  93 7F 09 2C */	stw r27, 0x92c(r31)
/* 80985B18  7F E3 FB 78 */	mr r3, r31
/* 80985B1C  7F 64 DB 78 */	mr r4, r27
/* 80985B20  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80985B24  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80985B28  39 9D 3D F8 */	addi r12, r29, 0x3df8
/* 80985B2C  7D 8C 02 14 */	add r12, r12, r0
/* 80985B30  4B 9D C5 55 */	bl __ptmf_scall
/* 80985B34  60 00 00 00 */	nop 
/* 80985B38  2C 03 00 00 */	cmpwi r3, 0
/* 80985B3C  41 82 00 10 */	beq lbl_80985B4C
/* 80985B40  7F 83 E3 78 */	mr r3, r28
/* 80985B44  7F 64 DB 78 */	mr r4, r27
/* 80985B48  4B 6C 26 35 */	bl cutEnd__16dEvent_manager_cFi
lbl_80985B4C:
/* 80985B4C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80985B50  28 00 00 02 */	cmplwi r0, 2
/* 80985B54  40 82 00 5C */	bne lbl_80985BB0
/* 80985B58  A8 9F 09 D4 */	lha r4, 0x9d4(r31)
/* 80985B5C  2C 04 FF FF */	cmpwi r4, -1
/* 80985B60  41 82 00 50 */	beq lbl_80985BB0
/* 80985B64  7F 83 E3 78 */	mr r3, r28
/* 80985B68  4B 6C 1F 11 */	bl endCheck__16dEvent_manager_cFs
/* 80985B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80985B70  41 82 00 40 */	beq lbl_80985BB0
/* 80985B74  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80985B78  4B 6B C8 F1 */	bl reset__14dEvt_control_cFv
/* 80985B7C  38 00 00 00 */	li r0, 0
/* 80985B80  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80985B84  38 00 FF FF */	li r0, -1
/* 80985B88  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 80985B8C  80 7D 3F E4 */	lwz r3, 0x3fe4(r29)
/* 80985B90  80 1D 3F E8 */	lwz r0, 0x3fe8(r29)
/* 80985B94  90 61 00 08 */	stw r3, 8(r1)
/* 80985B98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80985B9C  80 1D 3F EC */	lwz r0, 0x3fec(r29)
/* 80985BA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80985BA4  7F E3 FB 78 */	mr r3, r31
/* 80985BA8  38 81 00 08 */	addi r4, r1, 8
/* 80985BAC  4B FF F3 89 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
lbl_80985BB0:
/* 80985BB0  38 60 00 01 */	li r3, 1
/* 80985BB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80985BB8  4B 9D C6 69 */	bl _restgpr_27
/* 80985BBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80985BC0  7C 08 03 A6 */	mtlr r0
/* 80985BC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80985BC8  4E 80 00 20 */	blr 
