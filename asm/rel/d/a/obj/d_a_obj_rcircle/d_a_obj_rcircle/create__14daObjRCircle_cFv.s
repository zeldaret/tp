lbl_80CB8928:
/* 80CB8928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB892C  7C 08 02 A6 */	mflr r0
/* 80CB8930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8938  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB893C  7C 7F 1B 78 */	mr r31, r3
/* 80CB8940  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB8944  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB8948  40 82 00 1C */	bne lbl_80CB8964
/* 80CB894C  28 1F 00 00 */	cmplwi r31, 0
/* 80CB8950  41 82 00 08 */	beq lbl_80CB8958
/* 80CB8954  4B FF FD 25 */	bl __ct__14daObjRCircle_cFv
lbl_80CB8958:
/* 80CB8958  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CB895C  60 00 00 08 */	ori r0, r0, 8
/* 80CB8960  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CB8964:
/* 80CB8964  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB8968  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB896C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8974  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CB8978  7C 05 07 74 */	extsb r5, r0
/* 80CB897C  4B 37 C9 E5 */	bl isSwitch__10dSv_info_cCFii
/* 80CB8980  2C 03 00 00 */	cmpwi r3, 0
/* 80CB8984  41 82 00 0C */	beq lbl_80CB8990
/* 80CB8988  38 60 00 05 */	li r3, 5
/* 80CB898C  48 00 00 84 */	b lbl_80CB8A10
lbl_80CB8990:
/* 80CB8990  7F E3 FB 78 */	mr r3, r31
/* 80CB8994  28 1F 00 00 */	cmplwi r31, 0
/* 80CB8998  41 82 00 08 */	beq lbl_80CB89A0
/* 80CB899C  38 7F 05 68 */	addi r3, r31, 0x568
lbl_80CB89A0:
/* 80CB89A0  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CB8D10@ha */
/* 80CB89A4  38 84 8D 10 */	addi r4, r4, l_arcName@l /* 0x80CB8D10@l */
/* 80CB89A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CB89AC  4B 37 45 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB89B0  7C 7E 1B 78 */	mr r30, r3
/* 80CB89B4  2C 1E 00 04 */	cmpwi r30, 4
/* 80CB89B8  40 82 00 54 */	bne lbl_80CB8A0C
/* 80CB89BC  7F E3 FB 78 */	mr r3, r31
/* 80CB89C0  3C 80 80 CC */	lis r4, daObjRCircle_c_createHeap__FP10fopAc_ac_c@ha /* 0x80CB8658@ha */
/* 80CB89C4  38 84 86 58 */	addi r4, r4, daObjRCircle_c_createHeap__FP10fopAc_ac_c@l /* 0x80CB8658@l */
/* 80CB89C8  38 A0 10 00 */	li r5, 0x1000
/* 80CB89CC  4B 36 1A E5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CB89D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB89D4  40 82 00 0C */	bne lbl_80CB89E0
/* 80CB89D8  38 60 00 05 */	li r3, 5
/* 80CB89DC  48 00 00 34 */	b lbl_80CB8A10
lbl_80CB89E0:
/* 80CB89E0  7F E3 FB 78 */	mr r3, r31
/* 80CB89E4  48 00 02 01 */	bl init__14daObjRCircle_cFv
/* 80CB89E8  7F E3 FB 78 */	mr r3, r31
/* 80CB89EC  48 00 02 05 */	bl setModelMtx__14daObjRCircle_cFv
/* 80CB89F0  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CB89F4  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB89F8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CB89FC  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CB8A00  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB8A04  7F E3 FB 78 */	mr r3, r31
/* 80CB8A08  4B 36 1B 71 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
lbl_80CB8A0C:
/* 80CB8A0C  7F C3 F3 78 */	mr r3, r30
lbl_80CB8A10:
/* 80CB8A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8A14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB8A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8A1C  7C 08 03 A6 */	mtlr r0
/* 80CB8A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8A24  4E 80 00 20 */	blr 
