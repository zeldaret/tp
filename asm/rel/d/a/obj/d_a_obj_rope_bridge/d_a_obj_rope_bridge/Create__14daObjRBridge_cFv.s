lbl_805969FC:
/* 805969FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80596A00  7C 08 02 A6 */	mflr r0
/* 80596A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80596A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80596A0C  4B DC B7 C4 */	b _savegpr_26
/* 80596A10  7C 7E 1B 78 */	mr r30, r3
/* 80596A14  3C 60 80 59 */	lis r3, cNullVec__6Z2Calc@ha
/* 80596A18  3B E3 7E 64 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80596A1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80596A20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80596A24  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80596A28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80596A2C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80596A30  7C 05 07 74 */	extsb r5, r0
/* 80596A34  4B A9 E9 2C */	b isSwitch__10dSv_info_cCFii
/* 80596A38  2C 03 00 00 */	cmpwi r3, 0
/* 80596A3C  40 82 00 28 */	bne lbl_80596A64
/* 80596A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80596A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80596A48  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80596A4C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80596A50  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80596A54  7C 05 07 74 */	extsb r5, r0
/* 80596A58  4B A9 E9 08 */	b isSwitch__10dSv_info_cCFii
/* 80596A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80596A60  41 82 00 18 */	beq lbl_80596A78
lbl_80596A64:
/* 80596A64  38 00 40 00 */	li r0, 0x4000
/* 80596A68  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80596A6C  7F C3 F3 78 */	mr r3, r30
/* 80596A70  48 00 0B 79 */	bl init_end__14daObjRBridge_cFv
/* 80596A74  48 00 00 0C */	b lbl_80596A80
lbl_80596A78:
/* 80596A78  7F C3 F3 78 */	mr r3, r30
/* 80596A7C  48 00 06 E1 */	bl init_wait__14daObjRBridge_cFv
lbl_80596A80:
/* 80596A80  7F C3 F3 78 */	mr r3, r30
/* 80596A84  4B FF F5 5D */	bl setStPos__14daObjRBridge_cFv
/* 80596A88  7F C3 F3 78 */	mr r3, r30
/* 80596A8C  4B FF F3 AD */	bl initBaseMtx__14daObjRBridge_cFv
/* 80596A90  38 1E 0B 1C */	addi r0, r30, 0xb1c
/* 80596A94  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80596A98  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80596A9C  38 80 00 FF */	li r4, 0xff
/* 80596AA0  38 A0 00 FF */	li r5, 0xff
/* 80596AA4  7F C6 F3 78 */	mr r6, r30
/* 80596AA8  4B AE CD B8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80596AAC  38 7E 08 7C */	addi r3, r30, 0x87c
/* 80596AB0  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80596AB4  4B AE DF 80 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80596AB8  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80596ABC  90 1E 08 C0 */	stw r0, 0x8c0(r30)
/* 80596AC0  38 7E 09 B4 */	addi r3, r30, 0x9b4
/* 80596AC4  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 80596AC8  4B AE DF 6C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80596ACC  3B 9E 05 B8 */	addi r28, r30, 0x5b8
/* 80596AD0  93 9E 09 F8 */	stw r28, 0x9f8(r30)
/* 80596AD4  3B 40 00 00 */	li r26, 0
/* 80596AD8  3B A0 00 00 */	li r29, 0
lbl_80596ADC:
/* 80596ADC  7F 7E EA 14 */	add r27, r30, r29
/* 80596AE0  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 80596AE4  38 9F 01 34 */	addi r4, r31, 0x134
/* 80596AE8  4B AE DC E8 */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80596AEC  93 9B 06 38 */	stw r28, 0x638(r27)
/* 80596AF0  3B 5A 00 01 */	addi r26, r26, 1
/* 80596AF4  2C 1A 00 02 */	cmpwi r26, 2
/* 80596AF8  3B BD 01 44 */	addi r29, r29, 0x144
/* 80596AFC  41 80 FF E0 */	blt lbl_80596ADC
/* 80596B00  88 1E 0A F0 */	lbz r0, 0xaf0(r30)
/* 80596B04  28 00 00 00 */	cmplwi r0, 0
/* 80596B08  40 82 00 10 */	bne lbl_80596B18
/* 80596B0C  38 9F 00 68 */	addi r4, r31, 0x68
/* 80596B10  38 A4 00 0C */	addi r5, r4, 0xc
/* 80596B14  48 00 00 0C */	b lbl_80596B20
lbl_80596B18:
/* 80596B18  38 9F 00 80 */	addi r4, r31, 0x80
/* 80596B1C  38 A4 00 0C */	addi r5, r4, 0xc
lbl_80596B20:
/* 80596B20  7F C3 F3 78 */	mr r3, r30
/* 80596B24  C0 24 00 00 */	lfs f1, 0(r4)
/* 80596B28  C0 44 00 04 */	lfs f2, 4(r4)
/* 80596B2C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80596B30  C0 85 00 00 */	lfs f4, 0(r5)
/* 80596B34  C0 A5 00 04 */	lfs f5, 4(r5)
/* 80596B38  C0 C5 00 08 */	lfs f6, 8(r5)
/* 80596B3C  4B A8 3A 0C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80596B40  38 00 00 32 */	li r0, 0x32
/* 80596B44  B0 1E 0B 18 */	sth r0, 0xb18(r30)
/* 80596B48  7F C3 F3 78 */	mr r3, r30
/* 80596B4C  4B FF F6 21 */	bl initLinePos__14daObjRBridge_cFv
/* 80596B50  38 7E 0B 4C */	addi r3, r30, 0xb4c
/* 80596B54  38 9E 0B 0C */	addi r4, r30, 0xb0c
/* 80596B58  38 A0 00 01 */	li r5, 1
/* 80596B5C  81 9E 0B 5C */	lwz r12, 0xb5c(r30)
/* 80596B60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80596B64  7D 89 03 A6 */	mtctr r12
/* 80596B68  4E 80 04 21 */	bctrl 
/* 80596B6C  38 60 00 01 */	li r3, 1
/* 80596B70  39 61 00 20 */	addi r11, r1, 0x20
/* 80596B74  4B DC B6 A8 */	b _restgpr_26
/* 80596B78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80596B7C  7C 08 03 A6 */	mtlr r0
/* 80596B80  38 21 00 20 */	addi r1, r1, 0x20
/* 80596B84  4E 80 00 20 */	blr 
