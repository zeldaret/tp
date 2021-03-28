lbl_80C57C40:
/* 80C57C40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C57C44  7C 08 02 A6 */	mflr r0
/* 80C57C48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C57C4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C57C50  4B 70 A5 88 */	b _savegpr_28
/* 80C57C54  7C 7D 1B 78 */	mr r29, r3
/* 80C57C58  3C 80 80 C6 */	lis r4, mCcDObjInfo__13daLv3Candle_c@ha
/* 80C57C5C  3B E4 85 64 */	addi r31, r4, mCcDObjInfo__13daLv3Candle_c@l
/* 80C57C60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C57C64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C57C68  40 82 00 B0 */	bne lbl_80C57D18
/* 80C57C6C  7F A0 EB 79 */	or. r0, r29, r29
/* 80C57C70  41 82 00 9C */	beq lbl_80C57D0C
/* 80C57C74  7C 1E 03 78 */	mr r30, r0
/* 80C57C78  4B 3C 0E EC */	b __ct__10fopAc_ac_cFv
/* 80C57C7C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C57C80  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C57C84  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80C57C88  38 7E 05 94 */	addi r3, r30, 0x594
/* 80C57C8C  4B 42 BA D4 */	b __ct__10dCcD_GSttsFv
/* 80C57C90  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C57C94  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C57C98  90 7E 05 90 */	stw r3, 0x590(r30)
/* 80C57C9C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C57CA0  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80C57CA4  3B 9E 05 B4 */	addi r28, r30, 0x5b4
/* 80C57CA8  7F 83 E3 78 */	mr r3, r28
/* 80C57CAC  4B 42 BD 7C */	b __ct__12dCcD_GObjInfFv
/* 80C57CB0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C57CB4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C57CB8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C57CBC  3C 60 80 C6 */	lis r3, __vt__8cM3dGAab@ha
/* 80C57CC0  38 03 86 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C57CC4  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80C57CC8  3C 60 80 C6 */	lis r3, __vt__8cM3dGSph@ha
/* 80C57CCC  38 03 86 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C57CD0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C57CD4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C57CD8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C57CDC  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80C57CE0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C57CE4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C57CE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C57CEC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C57CF0  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80C57CF4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C57CF8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C57CFC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C57D00  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C57D04  38 7E 07 34 */	addi r3, r30, 0x734
/* 80C57D08  4B 66 6B 3C */	b __ct__16Z2SoundObjSimpleFv
lbl_80C57D0C:
/* 80C57D0C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C57D10  60 00 00 08 */	ori r0, r0, 8
/* 80C57D14  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C57D18:
/* 80C57D18  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C57D1C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C57D20  98 1D 05 74 */	stb r0, 0x574(r29)
/* 80C57D24  88 1D 05 74 */	lbz r0, 0x574(r29)
/* 80C57D28  28 00 00 FF */	cmplwi r0, 0xff
/* 80C57D2C  40 82 00 0C */	bne lbl_80C57D38
/* 80C57D30  38 00 00 00 */	li r0, 0
/* 80C57D34  98 1D 05 74 */	stb r0, 0x574(r29)
lbl_80C57D38:
/* 80C57D38  38 7D 05 68 */	addi r3, r29, 0x568
/* 80C57D3C  88 1D 05 74 */	lbz r0, 0x574(r29)
/* 80C57D40  54 00 10 3A */	slwi r0, r0, 2
/* 80C57D44  3C 80 80 C6 */	lis r4, l_resNameIdx@ha
/* 80C57D48  38 84 86 30 */	addi r4, r4, l_resNameIdx@l
/* 80C57D4C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C57D50  4B 3D 51 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C57D54  7C 7E 1B 78 */	mr r30, r3
/* 80C57D58  2C 1E 00 04 */	cmpwi r30, 4
/* 80C57D5C  40 82 01 64 */	bne lbl_80C57EC0
/* 80C57D60  7F A3 EB 78 */	mr r3, r29
/* 80C57D64  3C 80 80 C5 */	lis r4, createHeapCallBack__13daLv3Candle_cFP10fopAc_ac_c@ha
/* 80C57D68  38 84 7F 6C */	addi r4, r4, createHeapCallBack__13daLv3Candle_cFP10fopAc_ac_c@l
/* 80C57D6C  38 A0 09 00 */	li r5, 0x900
/* 80C57D70  4B 3C 27 40 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C57D74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C57D78  40 82 00 0C */	bne lbl_80C57D84
/* 80C57D7C  38 60 00 05 */	li r3, 5
/* 80C57D80  48 00 01 44 */	b lbl_80C57EC4
lbl_80C57D84:
/* 80C57D84  7F A3 EB 78 */	mr r3, r29
/* 80C57D88  4B FF FD B1 */	bl setBaseMtx__13daLv3Candle_cFv
/* 80C57D8C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80C57D90  38 03 00 24 */	addi r0, r3, 0x24
/* 80C57D94  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C57D98  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80C57D9C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C57DA0  7F A3 EB 78 */	mr r3, r29
/* 80C57DA4  4B 3C 27 D4 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C57DA8  38 7D 05 78 */	addi r3, r29, 0x578
/* 80C57DAC  38 80 00 FF */	li r4, 0xff
/* 80C57DB0  38 A0 00 FF */	li r5, 0xff
/* 80C57DB4  7F A6 EB 78 */	mr r6, r29
/* 80C57DB8  4B 42 BA A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C57DBC  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 80C57DC0  3C 80 80 C6 */	lis r4, mCcDSph__13daLv3Candle_c@ha
/* 80C57DC4  38 84 85 F0 */	addi r4, r4, mCcDSph__13daLv3Candle_c@l
/* 80C57DC8  4B 42 CC 6C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C57DCC  38 1D 05 78 */	addi r0, r29, 0x578
/* 80C57DD0  90 1D 05 F8 */	stw r0, 0x5f8(r29)
/* 80C57DD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C57DD8  D0 1D 06 EC */	stfs f0, 0x6ec(r29)
/* 80C57DDC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C57DE0  D0 1D 06 F0 */	stfs f0, 0x6f0(r29)
/* 80C57DE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C57DE8  D0 1D 06 F4 */	stfs f0, 0x6f4(r29)
/* 80C57DEC  88 1D 05 74 */	lbz r0, 0x574(r29)
/* 80C57DF0  28 00 00 00 */	cmplwi r0, 0
/* 80C57DF4  40 82 00 5C */	bne lbl_80C57E50
/* 80C57DF8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C57DFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C57E00  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C57E04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C57E08  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C57E0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C57E10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C57E14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C57E18  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80C57E1C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80C57E20  A8 DD 04 E8 */	lha r6, 0x4e8(r29)
/* 80C57E24  4B 3B 43 E4 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C57E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C57E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C57E30  38 81 00 08 */	addi r4, r1, 8
/* 80C57E34  7C 85 23 78 */	mr r5, r4
/* 80C57E38  4B 6E EF 34 */	b PSMTXMultVec
/* 80C57E3C  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80C57E40  38 81 00 08 */	addi r4, r1, 8
/* 80C57E44  7C 65 1B 78 */	mr r5, r3
/* 80C57E48  4B 6E F2 48 */	b PSVECAdd
/* 80C57E4C  48 00 00 14 */	b lbl_80C57E60
lbl_80C57E50:
/* 80C57E50  C0 3D 06 F0 */	lfs f1, 0x6f0(r29)
/* 80C57E54  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C57E58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C57E5C  D0 1D 06 F0 */	stfs f0, 0x6f0(r29)
lbl_80C57E60:
/* 80C57E60  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C57E64  98 1D 07 08 */	stb r0, 0x708(r29)
/* 80C57E68  88 1D 07 08 */	lbz r0, 0x708(r29)
/* 80C57E6C  28 00 00 FF */	cmplwi r0, 0xff
/* 80C57E70  40 82 00 0C */	bne lbl_80C57E7C
/* 80C57E74  38 00 00 00 */	li r0, 0
/* 80C57E78  98 1D 07 08 */	stb r0, 0x708(r29)
lbl_80C57E7C:
/* 80C57E7C  7F A3 EB 78 */	mr r3, r29
/* 80C57E80  48 00 01 0D */	bl lightInit__13daLv3Candle_cFv
/* 80C57E84  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 80C57E88  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80C57E8C  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80C57E90  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C57E94  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80C57E98  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80C57E9C  38 7D 07 34 */	addi r3, r29, 0x734
/* 80C57EA0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C57EA4  38 A0 00 01 */	li r5, 1
/* 80C57EA8  81 9D 07 44 */	lwz r12, 0x744(r29)
/* 80C57EAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C57EB0  7D 89 03 A6 */	mtctr r12
/* 80C57EB4  4E 80 04 21 */	bctrl 
/* 80C57EB8  38 00 00 00 */	li r0, 0
/* 80C57EBC  98 1D 07 30 */	stb r0, 0x730(r29)
lbl_80C57EC0:
/* 80C57EC0  7F C3 F3 78 */	mr r3, r30
lbl_80C57EC4:
/* 80C57EC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C57EC8  4B 70 A3 5C */	b _restgpr_28
/* 80C57ECC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C57ED0  7C 08 03 A6 */	mtlr r0
/* 80C57ED4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C57ED8  4E 80 00 20 */	blr 
