lbl_80C179B0:
/* 80C179B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C179B4  7C 08 02 A6 */	mflr r0
/* 80C179B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C179BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C179C0  4B 74 A8 1D */	bl _savegpr_29
/* 80C179C4  7C 7F 1B 78 */	mr r31, r3
/* 80C179C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C179CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C179D0  40 82 00 1C */	bne lbl_80C179EC
/* 80C179D4  28 1F 00 00 */	cmplwi r31, 0
/* 80C179D8  41 82 00 08 */	beq lbl_80C179E0
/* 80C179DC  4B FF FA DD */	bl __ct__11daObjHFtr_cFv
lbl_80C179E0:
/* 80C179E0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C179E4  60 00 00 08 */	ori r0, r0, 8
/* 80C179E8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C179EC:
/* 80C179EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C179F0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C179F4  7F E3 FB 78 */	mr r3, r31
/* 80C179F8  28 1F 00 00 */	cmplwi r31, 0
/* 80C179FC  41 82 00 08 */	beq lbl_80C17A04
/* 80C17A00  38 7F 05 68 */	addi r3, r31, 0x568
lbl_80C17A04:
/* 80C17A04  54 1E 10 3A */	slwi r30, r0, 2
/* 80C17A08  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C1817C@ha */
/* 80C17A0C  38 84 81 7C */	addi r4, r4, l_arcName@l /* 0x80C1817C@l */
/* 80C17A10  7C 84 F0 2E */	lwzx r4, r4, r30
/* 80C17A14  4B 41 54 A9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C17A18  7C 7D 1B 78 */	mr r29, r3
/* 80C17A1C  2C 1D 00 04 */	cmpwi r29, 4
/* 80C17A20  40 82 00 84 */	bne lbl_80C17AA4
/* 80C17A24  7F E3 FB 78 */	mr r3, r31
/* 80C17A28  3C 80 80 C1 */	lis r4, daObjHFtr_c_createHeap__FP10fopAc_ac_c@ha /* 0x80C17498@ha */
/* 80C17A2C  38 84 74 98 */	addi r4, r4, daObjHFtr_c_createHeap__FP10fopAc_ac_c@l /* 0x80C17498@l */
/* 80C17A30  3C A0 80 C2 */	lis r5, l_heapSize@ha /* 0x80C180D0@ha */
/* 80C17A34  38 A5 80 D0 */	addi r5, r5, l_heapSize@l /* 0x80C180D0@l */
/* 80C17A38  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80C17A3C  4B 40 2A 75 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C17A40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C17A44  40 82 00 0C */	bne lbl_80C17A50
/* 80C17A48  38 60 00 05 */	li r3, 5
/* 80C17A4C  48 00 00 5C */	b lbl_80C17AA8
lbl_80C17A50:
/* 80C17A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C17A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C17A58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C17A5C  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80C17A60  7F E5 FB 78 */	mr r5, r31
/* 80C17A64  4B 45 CF A5 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C17A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C17A6C  41 82 00 0C */	beq lbl_80C17A78
/* 80C17A70  38 60 00 05 */	li r3, 5
/* 80C17A74  48 00 00 34 */	b lbl_80C17AA8
lbl_80C17A78:
/* 80C17A78  7F E3 FB 78 */	mr r3, r31
/* 80C17A7C  48 00 02 55 */	bl init__11daObjHFtr_cFv
/* 80C17A80  7F E3 FB 78 */	mr r3, r31
/* 80C17A84  48 00 03 8D */	bl setModelMtx__11daObjHFtr_cFv
/* 80C17A88  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C17A8C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C17A90  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C17A94  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C17A98  80 83 00 04 */	lwz r4, 4(r3)
/* 80C17A9C  7F E3 FB 78 */	mr r3, r31
/* 80C17AA0  4B 40 2A D9 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
lbl_80C17AA4:
/* 80C17AA4  7F A3 EB 78 */	mr r3, r29
lbl_80C17AA8:
/* 80C17AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C17AAC  4B 74 A7 7D */	bl _restgpr_29
/* 80C17AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C17AB4  7C 08 03 A6 */	mtlr r0
/* 80C17AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C17ABC  4E 80 00 20 */	blr 
