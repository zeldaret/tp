lbl_80CA3848:
/* 80CA3848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA384C  7C 08 02 A6 */	mflr r0
/* 80CA3850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3858  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA385C  7C 7F 1B 78 */	mr r31, r3
/* 80CA3860  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA3864  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA3868  40 82 00 A8 */	bne lbl_80CA3910
/* 80CA386C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CA3870  41 82 00 94 */	beq lbl_80CA3904
/* 80CA3874  7C 1E 03 78 */	mr r30, r0
/* 80CA3878  4B 37 52 EC */	b __ct__10fopAc_ac_cFv
/* 80CA387C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA3880  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA3884  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80CA3888  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80CA388C  4B 3D FE D4 */	b __ct__10dCcD_GSttsFv
/* 80CA3890  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA3894  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA3898  90 7E 05 98 */	stw r3, 0x598(r30)
/* 80CA389C  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA38A0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CA38A4  3B DE 05 BC */	addi r30, r30, 0x5bc
/* 80CA38A8  7F C3 F3 78 */	mr r3, r30
/* 80CA38AC  4B 3E 01 7C */	b __ct__12dCcD_GObjInfFv
/* 80CA38B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA38B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA38B8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CA38BC  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA38C0  38 03 3B 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA38C4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CA38C8  3C 60 80 CA */	lis r3, __vt__8cM3dGSph@ha
/* 80CA38CC  38 03 3B 08 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CA38D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CA38D4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CA38D8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CA38DC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CA38E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA38E4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CA38E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CA38EC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CA38F0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CA38F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA38F8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CA38FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA3900  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CA3904:
/* 80CA3904  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CA3908  60 00 00 08 */	ori r0, r0, 8
/* 80CA390C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CA3910:
/* 80CA3910  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CA3914  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80CA3918  38 84 3A 6C */	addi r4, r4, stringBase0@l
/* 80CA391C  4B 38 95 A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA3920  7C 7E 1B 78 */	mr r30, r3
/* 80CA3924  2C 1E 00 04 */	cmpwi r30, 4
/* 80CA3928  40 82 00 68 */	bne lbl_80CA3990
/* 80CA392C  7F E3 FB 78 */	mr r3, r31
/* 80CA3930  3C 80 80 CA */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80CA3934  38 84 37 DC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80CA3938  38 A0 08 20 */	li r5, 0x820
/* 80CA393C  4B 37 6B 74 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CA3940  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA3944  40 82 00 0C */	bne lbl_80CA3950
/* 80CA3948  38 60 00 05 */	li r3, 5
/* 80CA394C  48 00 00 48 */	b lbl_80CA3994
lbl_80CA3950:
/* 80CA3950  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CA3954  38 80 00 FF */	li r4, 0xff
/* 80CA3958  38 A0 00 00 */	li r5, 0
/* 80CA395C  7F E6 FB 78 */	mr r6, r31
/* 80CA3960  4B 3D FF 00 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CA3964  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80CA3968  3C 80 80 CA */	lis r4, cc_sph_src@ha
/* 80CA396C  38 84 3A 78 */	addi r4, r4, cc_sph_src@l
/* 80CA3970  4B 3E 10 C4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CA3974  38 1F 05 80 */	addi r0, r31, 0x580
/* 80CA3978  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80CA397C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CA3980  38 03 00 24 */	addi r0, r3, 0x24
/* 80CA3984  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CA3988  7F E3 FB 78 */	mr r3, r31
/* 80CA398C  4B FF FC 11 */	bl daObj_Ndoor_Execute__FP15obj_ndoor_class
lbl_80CA3990:
/* 80CA3990  7F C3 F3 78 */	mr r3, r30
lbl_80CA3994:
/* 80CA3994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3998  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA399C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA39A0  7C 08 03 A6 */	mtlr r0
/* 80CA39A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA39A8  4E 80 00 20 */	blr 
