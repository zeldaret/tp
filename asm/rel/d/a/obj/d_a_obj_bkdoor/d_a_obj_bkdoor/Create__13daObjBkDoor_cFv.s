lbl_80578E14:
/* 80578E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578E18  7C 08 02 A6 */	mflr r0
/* 80578E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80578E24  7C 7F 1B 78 */	mr r31, r3
/* 80578E28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80578E2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80578E30  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80578E34  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80578E38  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80578E3C  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 80578E40  4B AB BB 7C */	b isEventBit__11dSv_event_cCFUs
/* 80578E44  2C 03 00 00 */	cmpwi r3, 0
/* 80578E48  41 82 00 10 */	beq lbl_80578E58
/* 80578E4C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80578E50  38 03 80 00 */	addi r0, r3, -32768
/* 80578E54  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80578E58:
/* 80578E58  7F E3 FB 78 */	mr r3, r31
/* 80578E5C  4B FF FE F1 */	bl initBaseMtx__13daObjBkDoor_cFv
/* 80578E60  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80578E64  38 03 00 24 */	addi r0, r3, 0x24
/* 80578E68  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80578E6C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80578E70  80 83 00 04 */	lwz r4, 4(r3)
/* 80578E74  7F E3 FB 78 */	mr r3, r31
/* 80578E78  4B AA 17 00 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80578E7C  3C 60 80 58 */	lis r3, lit_3702@ha
/* 80578E80  C0 03 95 14 */	lfs f0, lit_3702@l(r3)
/* 80578E84  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 80578E88  38 60 00 01 */	li r3, 1
/* 80578E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80578E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578E94  7C 08 03 A6 */	mtlr r0
/* 80578E98  38 21 00 10 */	addi r1, r1, 0x10
/* 80578E9C  4E 80 00 20 */	blr 
