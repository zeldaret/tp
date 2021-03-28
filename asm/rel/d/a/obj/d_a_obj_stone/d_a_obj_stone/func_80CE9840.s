lbl_80CE9840:
/* 80CE9840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE9844  7C 08 02 A6 */	mflr r0
/* 80CE9848  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE984C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE9850  4B 67 89 8C */	b _savegpr_29
/* 80CE9854  7C 7F 1B 78 */	mr r31, r3
/* 80CE9858  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE985C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE9860  40 82 00 E8 */	bne lbl_80CE9948
/* 80CE9864  7F E0 FB 79 */	or. r0, r31, r31
/* 80CE9868  41 82 00 D4 */	beq lbl_80CE993C
/* 80CE986C  7C 1E 03 78 */	mr r30, r0
/* 80CE9870  4B 32 F2 F4 */	b __ct__10fopAc_ac_cFv
/* 80CE9874  3B BE 05 74 */	addi r29, r30, 0x574
/* 80CE9878  7F A3 EB 78 */	mr r3, r29
/* 80CE987C  4B 38 C8 24 */	b __ct__9dBgS_AcchFv
/* 80CE9880  3C 60 80 CF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CE9884  38 63 CD E0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CE9888  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80CE988C  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE9890  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80CE9894  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE9898  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80CE989C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80CE98A0  4B 38 F5 C8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CE98A4  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80CE98A8  4B 38 C6 04 */	b __ct__12dBgS_AcchCirFv
/* 80CE98AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CE98B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CE98B4  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80CE98B8  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80CE98BC  4B 39 9E A4 */	b __ct__10dCcD_GSttsFv
/* 80CE98C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CE98C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CE98C8  90 7E 07 A4 */	stw r3, 0x7a4(r30)
/* 80CE98CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE98D0  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80CE98D4  3B BE 07 C8 */	addi r29, r30, 0x7c8
/* 80CE98D8  7F A3 EB 78 */	mr r3, r29
/* 80CE98DC  4B 39 A1 4C */	b __ct__12dCcD_GObjInfFv
/* 80CE98E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE98E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE98E8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CE98EC  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha
/* 80CE98F0  38 03 CD D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE98F4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CE98F8  3C 60 80 CF */	lis r3, __vt__8cM3dGSph@ha
/* 80CE98FC  38 03 CD C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CE9900  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80CE9904  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CE9908  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CE990C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CE9910  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE9914  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80CE9918  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CE991C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CE9920  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CE9924  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE9928  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CE992C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE9930  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80CE9934  38 7E 09 70 */	addi r3, r30, 0x970
/* 80CE9938  4B 5D 4F 0C */	b __ct__16Z2SoundObjSimpleFv
lbl_80CE993C:
/* 80CE993C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CE9940  60 00 00 08 */	ori r0, r0, 8
/* 80CE9944  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CE9948:
/* 80CE9948  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CE994C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80CE9950  98 1F 09 06 */	stb r0, 0x906(r31)
/* 80CE9954  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CE9958  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CE995C  54 00 10 3A */	slwi r0, r0, 2
/* 80CE9960  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CE9964  38 84 CC 74 */	addi r4, r4, l_arcName@l
/* 80CE9968  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CE996C  4B 34 35 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CE9970  7C 7E 1B 78 */	mr r30, r3
/* 80CE9974  2C 1E 00 04 */	cmpwi r30, 4
/* 80CE9978  40 82 00 40 */	bne lbl_80CE99B8
/* 80CE997C  7F E3 FB 78 */	mr r3, r31
/* 80CE9980  3C 80 80 CF */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80CE9984  38 84 93 A4 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80CE9988  38 A0 08 60 */	li r5, 0x860
/* 80CE998C  4B 33 0B 24 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CE9990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE9994  40 82 00 0C */	bne lbl_80CE99A0
/* 80CE9998  38 60 00 05 */	li r3, 5
/* 80CE999C  48 00 00 20 */	b lbl_80CE99BC
lbl_80CE99A0:
/* 80CE99A0  7F E3 FB 78 */	mr r3, r31
/* 80CE99A4  4B FF FB 9D */	bl Create__12daObjStone_cFv
/* 80CE99A8  2C 03 00 00 */	cmpwi r3, 0
/* 80CE99AC  40 82 00 0C */	bne lbl_80CE99B8
/* 80CE99B0  38 60 00 05 */	li r3, 5
/* 80CE99B4  48 00 00 08 */	b lbl_80CE99BC
lbl_80CE99B8:
/* 80CE99B8  7F C3 F3 78 */	mr r3, r30
lbl_80CE99BC:
/* 80CE99BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE99C0  4B 67 88 68 */	b _restgpr_29
/* 80CE99C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE99C8  7C 08 03 A6 */	mtlr r0
/* 80CE99CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE99D0  4E 80 00 20 */	blr 
