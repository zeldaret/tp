lbl_80AB498C:
/* 80AB498C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB4990  7C 08 02 A6 */	mflr r0
/* 80AB4994  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB4998  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB499C  4B 8A D8 39 */	bl _savegpr_27
/* 80AB49A0  7C 7E 1B 78 */	mr r30, r3
/* 80AB49A4  3C 80 80 AB */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AB5984@ha */
/* 80AB49A8  3B E4 59 84 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80AB5984@l */
/* 80AB49AC  A0 03 0E 0C */	lhz r0, 0xe0c(r3)
/* 80AB49B0  2C 00 00 02 */	cmpwi r0, 2
/* 80AB49B4  41 82 00 44 */	beq lbl_80AB49F8
/* 80AB49B8  40 80 01 4C */	bge lbl_80AB4B04
/* 80AB49BC  2C 00 00 00 */	cmpwi r0, 0
/* 80AB49C0  41 82 00 0C */	beq lbl_80AB49CC
/* 80AB49C4  48 00 01 40 */	b lbl_80AB4B04
/* 80AB49C8  48 00 01 3C */	b lbl_80AB4B04
lbl_80AB49CC:
/* 80AB49CC  38 80 00 00 */	li r4, 0
/* 80AB49D0  3C A0 80 AB */	lis r5, lit_4222@ha /* 0x80AB588C@ha */
/* 80AB49D4  C0 25 58 8C */	lfs f1, lit_4222@l(r5)  /* 0x80AB588C@l */
/* 80AB49D8  38 A0 00 00 */	li r5, 0
/* 80AB49DC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AB49E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB49E4  7D 89 03 A6 */	mtctr r12
/* 80AB49E8  4E 80 04 21 */	bctrl 
/* 80AB49EC  38 00 00 02 */	li r0, 2
/* 80AB49F0  B0 1E 0E 0C */	sth r0, 0xe0c(r30)
/* 80AB49F4  48 00 01 10 */	b lbl_80AB4B04
lbl_80AB49F8:
/* 80AB49F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB49FC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB4A00  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80AB4A04  28 00 00 00 */	cmplwi r0, 0
/* 80AB4A08  41 82 00 FC */	beq lbl_80AB4B04
/* 80AB4A0C  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80AB4A10  28 00 00 01 */	cmplwi r0, 1
/* 80AB4A14  41 82 00 F0 */	beq lbl_80AB4B04
/* 80AB4A18  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80AB4A1C  7F 83 E3 78 */	mr r3, r28
/* 80AB4A20  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80AB4A24  38 A0 00 00 */	li r5, 0
/* 80AB4A28  38 C0 00 00 */	li r6, 0
/* 80AB4A2C  4B 59 30 F1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AB4A30  2C 03 FF FF */	cmpwi r3, -1
/* 80AB4A34  41 82 00 40 */	beq lbl_80AB4A74
/* 80AB4A38  7C 7B 1B 78 */	mr r27, r3
/* 80AB4A3C  93 7E 09 2C */	stw r27, 0x92c(r30)
/* 80AB4A40  7F C3 F3 78 */	mr r3, r30
/* 80AB4A44  7F 64 DB 78 */	mr r4, r27
/* 80AB4A48  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AB4A4C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AB4A50  39 9F 00 88 */	addi r12, r31, 0x88
/* 80AB4A54  7D 8C 02 14 */	add r12, r12, r0
/* 80AB4A58  4B 8A D6 2D */	bl __ptmf_scall
/* 80AB4A5C  60 00 00 00 */	nop 
/* 80AB4A60  2C 03 00 00 */	cmpwi r3, 0
/* 80AB4A64  41 82 00 10 */	beq lbl_80AB4A74
/* 80AB4A68  7F 83 E3 78 */	mr r3, r28
/* 80AB4A6C  7F 64 DB 78 */	mr r4, r27
/* 80AB4A70  4B 59 37 0D */	bl cutEnd__16dEvent_manager_cFi
lbl_80AB4A74:
/* 80AB4A74  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80AB4A78  28 00 00 02 */	cmplwi r0, 2
/* 80AB4A7C  40 82 00 88 */	bne lbl_80AB4B04
/* 80AB4A80  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80AB4A84  2C 04 FF FF */	cmpwi r4, -1
/* 80AB4A88  41 82 00 7C */	beq lbl_80AB4B04
/* 80AB4A8C  7F 83 E3 78 */	mr r3, r28
/* 80AB4A90  4B 59 2F E9 */	bl endCheck__16dEvent_manager_cFs
/* 80AB4A94  2C 03 00 00 */	cmpwi r3, 0
/* 80AB4A98  41 82 00 6C */	beq lbl_80AB4B04
/* 80AB4A9C  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AB4AA0  2C 00 00 01 */	cmpwi r0, 1
/* 80AB4AA4  41 82 00 08 */	beq lbl_80AB4AAC
/* 80AB4AA8  48 00 00 20 */	b lbl_80AB4AC8
lbl_80AB4AAC:
/* 80AB4AAC  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AB4AB0  4B 69 BC 3D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4AB4  28 03 00 00 */	cmplwi r3, 0
/* 80AB4AB8  41 82 00 10 */	beq lbl_80AB4AC8
/* 80AB4ABC  4B 56 51 C1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80AB4AC0  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AB4AC4  4B 69 BC 1D */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80AB4AC8:
/* 80AB4AC8  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80AB4ACC  4B 58 D9 9D */	bl reset__14dEvt_control_cFv
/* 80AB4AD0  38 00 00 00 */	li r0, 0
/* 80AB4AD4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80AB4AD8  38 00 FF FF */	li r0, -1
/* 80AB4ADC  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80AB4AE0  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 80AB4AE4  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80AB4AE8  90 61 00 08 */	stw r3, 8(r1)
/* 80AB4AEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB4AF0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80AB4AF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB4AF8  7F C3 F3 78 */	mr r3, r30
/* 80AB4AFC  38 81 00 08 */	addi r4, r1, 8
/* 80AB4B00  4B FF F4 55 */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
lbl_80AB4B04:
/* 80AB4B04  38 60 00 01 */	li r3, 1
/* 80AB4B08  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB4B0C  4B 8A D7 15 */	bl _restgpr_27
/* 80AB4B10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB4B14  7C 08 03 A6 */	mtlr r0
/* 80AB4B18  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB4B1C  4E 80 00 20 */	blr 
