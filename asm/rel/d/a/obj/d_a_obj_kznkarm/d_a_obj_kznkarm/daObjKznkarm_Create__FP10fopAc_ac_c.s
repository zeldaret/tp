lbl_80C50A5C:
/* 80C50A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50A60  7C 08 02 A6 */	mflr r0
/* 80C50A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C50A70  7C 7E 1B 78 */	mr r30, r3
/* 80C50A74  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C50A78  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C50A7C  40 82 00 58 */	bne lbl_80C50AD4
/* 80C50A80  7F C0 F3 79 */	or. r0, r30, r30
/* 80C50A84  41 82 00 44 */	beq lbl_80C50AC8
/* 80C50A88  7C 1F 03 78 */	mr r31, r0
/* 80C50A8C  4B 3C 80 D8 */	b __ct__10fopAc_ac_cFv
/* 80C50A90  38 7F 05 74 */	addi r3, r31, 0x574
/* 80C50A94  4B 42 54 18 */	b __ct__12dBgS_AcchCirFv
/* 80C50A98  3B FF 05 B4 */	addi r31, r31, 0x5b4
/* 80C50A9C  7F E3 FB 78 */	mr r3, r31
/* 80C50AA0  4B 42 56 00 */	b __ct__9dBgS_AcchFv
/* 80C50AA4  3C 60 80 C5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C50AA8  38 63 0E EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C50AAC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80C50AB0  38 03 00 0C */	addi r0, r3, 0xc
/* 80C50AB4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C50AB8  38 03 00 18 */	addi r0, r3, 0x18
/* 80C50ABC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80C50AC0  38 7F 00 14 */	addi r3, r31, 0x14
/* 80C50AC4  4B 42 83 A4 */	b SetObj__16dBgS_PolyPassChkFv
lbl_80C50AC8:
/* 80C50AC8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C50ACC  60 00 00 08 */	ori r0, r0, 8
/* 80C50AD0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C50AD4:
/* 80C50AD4  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80C50AD8  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C50ADC  38 84 0D C4 */	addi r4, r4, l_arcName@l
/* 80C50AE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C50AE4  4B 3D C3 D8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C50AE8  7C 7F 1B 78 */	mr r31, r3
/* 80C50AEC  2C 1F 00 04 */	cmpwi r31, 4
/* 80C50AF0  40 82 00 30 */	bne lbl_80C50B20
/* 80C50AF4  7F C3 F3 78 */	mr r3, r30
/* 80C50AF8  3C 80 80 C5 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80C50AFC  38 84 07 F8 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80C50B00  38 A0 40 00 */	li r5, 0x4000
/* 80C50B04  4B 3C 99 AC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C50B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C50B0C  40 82 00 0C */	bne lbl_80C50B18
/* 80C50B10  3B E0 00 05 */	li r31, 5
/* 80C50B14  48 00 00 0C */	b lbl_80C50B20
lbl_80C50B18:
/* 80C50B18  7F C3 F3 78 */	mr r3, r30
/* 80C50B1C  4B FF FA DD */	bl create_init__14daObjKznkarm_cFv
lbl_80C50B20:
/* 80C50B20  7F E3 FB 78 */	mr r3, r31
/* 80C50B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C50B28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C50B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50B30  7C 08 03 A6 */	mtlr r0
/* 80C50B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50B38  4E 80 00 20 */	blr 
