lbl_80A559B4:
/* 80A559B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A559B8  7C 08 02 A6 */	mflr r0
/* 80A559BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A559C0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A559C4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A559C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A559CC  4B 90 C8 10 */	b _savegpr_29
/* 80A559D0  7C 7D 1B 78 */	mr r29, r3
/* 80A559D4  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A559D8  3B E3 DE FC */	addi r31, r3, lit_4030@l
/* 80A559DC  3B C0 00 01 */	li r30, 1
/* 80A559E0  80 9D 05 CC */	lwz r4, 0x5cc(r29)
/* 80A559E4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A559E8  FC 00 00 1E */	fctiwz f0, f0
/* 80A559EC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A559F0  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80A559F4  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 80A559F8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A559FC  2C 00 00 01 */	cmpwi r0, 1
/* 80A55A00  40 82 00 14 */	bne lbl_80A55A14
/* 80A55A04  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55A08  2C 00 00 05 */	cmpwi r0, 5
/* 80A55A0C  41 80 00 08 */	blt lbl_80A55A14
/* 80A55A10  C3 FF 00 14 */	lfs f31, 0x14(r31)
lbl_80A55A14:
/* 80A55A14  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A55A18  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A55A1C  41 82 05 34 */	beq lbl_80A55F50
/* 80A55A20  40 80 00 2C */	bge lbl_80A55A4C
/* 80A55A24  2C 00 00 02 */	cmpwi r0, 2
/* 80A55A28  41 82 02 2C */	beq lbl_80A55C54
/* 80A55A2C  40 80 00 14 */	bge lbl_80A55A40
/* 80A55A30  2C 00 00 00 */	cmpwi r0, 0
/* 80A55A34  41 82 00 40 */	beq lbl_80A55A74
/* 80A55A38  40 80 00 6C */	bge lbl_80A55AA4
/* 80A55A3C  48 00 07 6C */	b lbl_80A561A8
lbl_80A55A40:
/* 80A55A40  2C 00 00 05 */	cmpwi r0, 5
/* 80A55A44  41 82 04 90 */	beq lbl_80A55ED4
/* 80A55A48  48 00 07 60 */	b lbl_80A561A8
lbl_80A55A4C:
/* 80A55A4C  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80A55A50  41 82 06 EC */	beq lbl_80A5613C
/* 80A55A54  40 80 00 14 */	bge lbl_80A55A68
/* 80A55A58  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A55A5C  41 82 05 E8 */	beq lbl_80A56044
/* 80A55A60  40 80 06 28 */	bge lbl_80A56088
/* 80A55A64  48 00 07 44 */	b lbl_80A561A8
lbl_80A55A68:
/* 80A55A68  2C 00 00 65 */	cmpwi r0, 0x65
/* 80A55A6C  41 82 00 38 */	beq lbl_80A55AA4
/* 80A55A70  48 00 07 38 */	b lbl_80A561A8
lbl_80A55A74:
/* 80A55A74  7F A3 EB 78 */	mr r3, r29
/* 80A55A78  38 80 00 1A */	li r4, 0x1a
/* 80A55A7C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A55A80  38 A0 00 02 */	li r5, 2
/* 80A55A84  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55A88  4B FF 37 1D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55A8C  38 00 00 01 */	li r0, 1
/* 80A55A90  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55A94  38 00 00 00 */	li r0, 0
/* 80A55A98  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A55A9C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55AA0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A55AA4:
/* 80A55AA4  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A55AA8  2C 00 00 01 */	cmpwi r0, 1
/* 80A55AAC  40 82 00 9C */	bne lbl_80A55B48
/* 80A55AB0  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A55AB4  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 80A55AB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55ABC  41 81 00 20 */	bgt lbl_80A55ADC
/* 80A55AC0  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55AC4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A55AC8  3C 60 80 A6 */	lis r3, guide_path_01@ha
/* 80A55ACC  38 63 EE D0 */	addi r3, r3, guide_path_01@l
/* 80A55AD0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A55AD4  2C 00 00 00 */	cmpwi r0, 0
/* 80A55AD8  40 80 00 70 */	bge lbl_80A55B48
lbl_80A55ADC:
/* 80A55ADC  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A55AE0  80 03 FE A4 */	lwz r0, call_pt@l(r3)
/* 80A55AE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A55AE8  41 82 00 20 */	beq lbl_80A55B08
/* 80A55AEC  7F A3 EB 78 */	mr r3, r29
/* 80A55AF0  38 80 00 08 */	li r4, 8
/* 80A55AF4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55AF8  38 A0 00 02 */	li r5, 2
/* 80A55AFC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55B00  4B FF 36 A5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55B04  48 00 00 1C */	b lbl_80A55B20
lbl_80A55B08:
/* 80A55B08  7F A3 EB 78 */	mr r3, r29
/* 80A55B0C  38 80 00 07 */	li r4, 7
/* 80A55B10  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55B14  38 A0 00 02 */	li r5, 2
/* 80A55B18  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55B1C  4B FF 36 89 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A55B20:
/* 80A55B20  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A55B24  38 83 FE A4 */	addi r4, r3, call_pt@l
/* 80A55B28  80 64 00 00 */	lwz r3, 0(r4)
/* 80A55B2C  38 03 00 01 */	addi r0, r3, 1
/* 80A55B30  90 04 00 00 */	stw r0, 0(r4)
/* 80A55B34  38 00 00 0A */	li r0, 0xa
/* 80A55B38  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55B3C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55B40  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A55B44  48 00 06 64 */	b lbl_80A561A8
lbl_80A55B48:
/* 80A55B48  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55B4C  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A55B50  3C 60 80 A6 */	lis r3, guide_path_01@ha
/* 80A55B54  38 83 EE D0 */	addi r4, r3, guide_path_01@l
/* 80A55B58  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A55B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80A55B60  41 82 00 94 */	beq lbl_80A55BF4
/* 80A55B64  7C 64 2A 14 */	add r3, r4, r5
/* 80A55B68  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A55B6C  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A55B70  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55B74  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A55B78  7C 64 02 14 */	add r3, r4, r0
/* 80A55B7C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A55B80  D0 1D 08 F4 */	stfs f0, 0x8f4(r29)
/* 80A55B84  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55B88  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A55B8C  7C 64 02 14 */	add r3, r4, r0
/* 80A55B90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A55B94  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A55B98  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A55B9C  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80A55BA0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A55BA4  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A55BA8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A55BAC  D0 1D 09 18 */	stfs f0, 0x918(r29)
/* 80A55BB0  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A55BB4  D0 1D 09 1C */	stfs f0, 0x91c(r29)
/* 80A55BB8  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A55BBC  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80A55BC0  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A55BC4  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80A55BC8  38 00 00 02 */	li r0, 2
/* 80A55BCC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55BD0  7F A3 EB 78 */	mr r3, r29
/* 80A55BD4  38 80 00 20 */	li r4, 0x20
/* 80A55BD8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A55BDC  38 A0 00 00 */	li r5, 0
/* 80A55BE0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55BE4  4B FF 35 C1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55BE8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55BEC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A55BF0  48 00 05 B8 */	b lbl_80A561A8
lbl_80A55BF4:
/* 80A55BF4  7C 64 2A 14 */	add r3, r4, r5
/* 80A55BF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A55BFC  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A55C00  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55C04  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A55C08  7C 64 02 14 */	add r3, r4, r0
/* 80A55C0C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A55C10  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A55C14  38 00 00 05 */	li r0, 5
/* 80A55C18  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55C1C  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A55C20  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A55C24  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A55C28  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A55C2C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A55C30  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A55C34  41 82 05 74 */	beq lbl_80A561A8
/* 80A55C38  7F A3 EB 78 */	mr r3, r29
/* 80A55C3C  38 80 00 1A */	li r4, 0x1a
/* 80A55C40  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A55C44  38 A0 00 02 */	li r5, 2
/* 80A55C48  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55C4C  4B FF 35 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55C50  48 00 05 58 */	b lbl_80A561A8
lbl_80A55C54:
/* 80A55C54  3B C0 00 02 */	li r30, 2
/* 80A55C58  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A55C5C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A55C60  40 82 00 D8 */	bne lbl_80A55D38
/* 80A55C64  38 60 00 01 */	li r3, 1
/* 80A55C68  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A55C6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A55C70  40 82 00 18 */	bne lbl_80A55C88
/* 80A55C74  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A55C78  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A55C7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A55C80  41 82 00 08 */	beq lbl_80A55C88
/* 80A55C84  38 60 00 00 */	li r3, 0
lbl_80A55C88:
/* 80A55C88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A55C8C  41 82 00 AC */	beq lbl_80A55D38
/* 80A55C90  7F A3 EB 78 */	mr r3, r29
/* 80A55C94  38 80 00 21 */	li r4, 0x21
/* 80A55C98  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A55C9C  38 A0 00 00 */	li r5, 0
/* 80A55CA0  FC 40 08 90 */	fmr f2, f1
/* 80A55CA4  4B FF 35 01 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55CA8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A55CAC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A55CB0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A55CB4  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A55CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A55CBC  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A55CC0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A55CC4  38 A0 FF FF */	li r5, -1
/* 80A55CC8  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A55CCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A55CD0  7D 89 03 A6 */	mtctr r12
/* 80A55CD4  4E 80 04 21 */	bctrl 
/* 80A55CD8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A55CDC  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A55CE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A55CE4  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A55CE8  38 81 00 10 */	addi r4, r1, 0x10
/* 80A55CEC  38 A0 00 00 */	li r5, 0
/* 80A55CF0  38 C0 FF FF */	li r6, -1
/* 80A55CF4  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A55CF8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A55CFC  7D 89 03 A6 */	mtctr r12
/* 80A55D00  4E 80 04 21 */	bctrl 
/* 80A55D04  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A55D08  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A55D0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A55D10  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A55D14  38 81 00 0C */	addi r4, r1, 0xc
/* 80A55D18  38 A0 00 00 */	li r5, 0
/* 80A55D1C  38 C0 FF FF */	li r6, -1
/* 80A55D20  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A55D24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A55D28  7D 89 03 A6 */	mtctr r12
/* 80A55D2C  4E 80 04 21 */	bctrl 
/* 80A55D30  38 00 00 01 */	li r0, 1
/* 80A55D34  98 1D 0B E0 */	stb r0, 0xbe0(r29)
lbl_80A55D38:
/* 80A55D38  38 61 00 18 */	addi r3, r1, 0x18
/* 80A55D3C  38 9D 08 F0 */	addi r4, r29, 0x8f0
/* 80A55D40  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A55D44  4B 81 0D F0 */	b __mi__4cXyzCFRC3Vec
/* 80A55D48  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A55D4C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A55D50  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A55D54  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A55D58  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A55D5C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A55D60  4B 81 19 14 */	b cM_atan2s__Fff
/* 80A55D64  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A55D68  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A55D6C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A55D70  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A55D74  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A55D78  EC 41 00 2A */	fadds f2, f1, f0
/* 80A55D7C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55D80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55D84  40 81 00 0C */	ble lbl_80A55D90
/* 80A55D88  FC 00 10 34 */	frsqrte f0, f2
/* 80A55D8C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A55D90:
/* 80A55D90  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A55D94  4B 81 18 E0 */	b cM_atan2s__Fff
/* 80A55D98  7C 03 00 D0 */	neg r0, r3
/* 80A55D9C  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80A55DA0  38 61 00 30 */	addi r3, r1, 0x30
/* 80A55DA4  4B 8F 13 94 */	b PSVECSquareMag
/* 80A55DA8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55DB0  40 81 00 58 */	ble lbl_80A55E08
/* 80A55DB4  FC 00 08 34 */	frsqrte f0, f1
/* 80A55DB8  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A55DBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A55DC0  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A55DC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A55DC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A55DCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A55DD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A55DD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A55DD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A55DDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A55DE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A55DE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A55DE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A55DEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A55DF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A55DF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A55DF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A55DFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A55E00  FC 20 08 18 */	frsp f1, f1
/* 80A55E04  48 00 00 88 */	b lbl_80A55E8C
lbl_80A55E08:
/* 80A55E08  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A55E0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55E10  40 80 00 10 */	bge lbl_80A55E20
/* 80A55E14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A55E18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A55E1C  48 00 00 70 */	b lbl_80A55E8C
lbl_80A55E20:
/* 80A55E20  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A55E24  80 81 00 08 */	lwz r4, 8(r1)
/* 80A55E28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A55E2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A55E30  7C 03 00 00 */	cmpw r3, r0
/* 80A55E34  41 82 00 14 */	beq lbl_80A55E48
/* 80A55E38  40 80 00 40 */	bge lbl_80A55E78
/* 80A55E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A55E40  41 82 00 20 */	beq lbl_80A55E60
/* 80A55E44  48 00 00 34 */	b lbl_80A55E78
lbl_80A55E48:
/* 80A55E48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A55E4C  41 82 00 0C */	beq lbl_80A55E58
/* 80A55E50  38 00 00 01 */	li r0, 1
/* 80A55E54  48 00 00 28 */	b lbl_80A55E7C
lbl_80A55E58:
/* 80A55E58  38 00 00 02 */	li r0, 2
/* 80A55E5C  48 00 00 20 */	b lbl_80A55E7C
lbl_80A55E60:
/* 80A55E60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A55E64  41 82 00 0C */	beq lbl_80A55E70
/* 80A55E68  38 00 00 05 */	li r0, 5
/* 80A55E6C  48 00 00 10 */	b lbl_80A55E7C
lbl_80A55E70:
/* 80A55E70  38 00 00 03 */	li r0, 3
/* 80A55E74  48 00 00 08 */	b lbl_80A55E7C
lbl_80A55E78:
/* 80A55E78  38 00 00 04 */	li r0, 4
lbl_80A55E7C:
/* 80A55E7C  2C 00 00 01 */	cmpwi r0, 1
/* 80A55E80  40 82 00 0C */	bne lbl_80A55E8C
/* 80A55E84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A55E88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A55E8C:
/* 80A55E8C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A55E90  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A55E94  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A55E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55E9C  40 80 03 0C */	bge lbl_80A561A8
/* 80A55EA0  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A55EA4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A55EA8  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A55EAC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A55EB0  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A55EB4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A55EB8  38 00 00 01 */	li r0, 1
/* 80A55EBC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55EC0  98 1D 0B E0 */	stb r0, 0xbe0(r29)
/* 80A55EC4  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A55EC8  38 03 00 01 */	addi r0, r3, 1
/* 80A55ECC  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A55ED0  48 00 02 D8 */	b lbl_80A561A8
lbl_80A55ED4:
/* 80A55ED4  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A55ED8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A55EDC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A55EE0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A55EE4  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A55EE8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A55EEC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A55EF0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A55EF4  4B 81 17 80 */	b cM_atan2s__Fff
/* 80A55EF8  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A55EFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A55F00  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A55F04  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A55F08  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A55F0C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A55F10  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55F14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55F18  40 81 00 0C */	ble lbl_80A55F24
/* 80A55F1C  FC 00 10 34 */	frsqrte f0, f2
/* 80A55F20  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A55F24:
/* 80A55F24  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A55F28  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A55F2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A55F30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55F34  40 80 02 74 */	bge lbl_80A561A8
/* 80A55F38  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A55F3C  38 03 00 01 */	addi r0, r3, 1
/* 80A55F40  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A55F44  38 00 00 01 */	li r0, 1
/* 80A55F48  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55F4C  48 00 02 5C */	b lbl_80A561A8
lbl_80A55F50:
/* 80A55F50  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A55F54  2C 00 00 08 */	cmpwi r0, 8
/* 80A55F58  40 82 00 18 */	bne lbl_80A55F70
/* 80A55F5C  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80A55F60  3C 63 00 01 */	addis r3, r3, 1
/* 80A55F64  38 03 80 00 */	addi r0, r3, -32768
/* 80A55F68  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A55F6C  48 00 00 0C */	b lbl_80A55F78
lbl_80A55F70:
/* 80A55F70  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A55F74  B0 1D 08 FE */	sth r0, 0x8fe(r29)
lbl_80A55F78:
/* 80A55F78  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A55F7C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A55F80  3C 60 80 A6 */	lis r3, guide_path_01@ha
/* 80A55F84  38 63 EE D0 */	addi r3, r3, guide_path_01@l
/* 80A55F88  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A55F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80A55F90  41 80 00 8C */	blt lbl_80A5601C
/* 80A55F94  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A55F98  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A55F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55FA0  40 80 00 0C */	bge lbl_80A55FAC
/* 80A55FA4  38 00 00 01 */	li r0, 1
/* 80A55FA8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A55FAC:
/* 80A55FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A55FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A55FB4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A55FB8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A55FBC  C0 7F 04 28 */	lfs f3, 0x428(r31)
/* 80A55FC0  EC A0 18 28 */	fsubs f5, f0, f3
/* 80A55FC4  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80A55FC8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A55FCC  C0 3F 04 2C */	lfs f1, 0x42c(r31)
/* 80A55FD0  EC 40 08 28 */	fsubs f2, f0, f1
/* 80A55FD4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A55FD8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A55FDC  EC 80 18 28 */	fsubs f4, f0, f3
/* 80A55FE0  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80A55FE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A55FE8  EC 60 08 28 */	fsubs f3, f0, f1
/* 80A55FEC  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80A55FF0  EC 25 01 72 */	fmuls f1, f5, f5
/* 80A55FF4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80A55FF8  EC 41 00 2A */	fadds f2, f1, f0
/* 80A55FFC  EC 24 01 32 */	fmuls f1, f4, f4
/* 80A56000  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80A56004  EC 01 00 2A */	fadds f0, f1, f0
/* 80A56008  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A5600C  40 80 01 9C */	bge lbl_80A561A8
/* 80A56010  38 00 00 65 */	li r0, 0x65
/* 80A56014  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56018  48 00 01 90 */	b lbl_80A561A8
lbl_80A5601C:
/* 80A5601C  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A56020  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A56024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A56028  40 80 01 80 */	bge lbl_80A561A8
/* 80A5602C  38 00 00 64 */	li r0, 0x64
/* 80A56030  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A56034  38 00 00 00 */	li r0, 0
/* 80A56038  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5603C  38 60 00 01 */	li r3, 1
/* 80A56040  48 00 02 8C */	b lbl_80A562CC
lbl_80A56044:
/* 80A56044  7F A3 EB 78 */	mr r3, r29
/* 80A56048  38 80 00 27 */	li r4, 0x27
/* 80A5604C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56050  38 A0 00 02 */	li r5, 2
/* 80A56054  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56058  4B FF 31 4D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5605C  38 00 00 29 */	li r0, 0x29
/* 80A56060  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56064  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A56068  4B 81 18 EC */	b cM_rndF__Ff
/* 80A5606C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A56070  EC 00 08 2A */	fadds f0, f0, f1
/* 80A56074  FC 00 00 1E */	fctiwz f0, f0
/* 80A56078  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A5607C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A56080  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A56084  48 00 01 24 */	b lbl_80A561A8
lbl_80A56088:
/* 80A56088  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A5608C  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A56090  41 82 00 2C */	beq lbl_80A560BC
/* 80A56094  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A56098  40 82 00 0C */	bne lbl_80A560A4
/* 80A5609C  2C 03 00 07 */	cmpwi r3, 7
/* 80A560A0  41 80 00 1C */	blt lbl_80A560BC
lbl_80A560A4:
/* 80A560A4  2C 03 00 28 */	cmpwi r3, 0x28
/* 80A560A8  40 81 00 0C */	ble lbl_80A560B4
/* 80A560AC  2C 03 00 30 */	cmpwi r3, 0x30
/* 80A560B0  41 80 00 0C */	blt lbl_80A560BC
lbl_80A560B4:
/* 80A560B4  2C 03 00 41 */	cmpwi r3, 0x41
/* 80A560B8  40 81 00 0C */	ble lbl_80A560C4
lbl_80A560BC:
/* 80A560BC  38 00 00 04 */	li r0, 4
/* 80A560C0  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
lbl_80A560C4:
/* 80A560C4  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A560C8  2C 00 00 00 */	cmpwi r0, 0
/* 80A560CC  40 82 00 28 */	bne lbl_80A560F4
/* 80A560D0  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A560D4  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A560D8  40 82 00 1C */	bne lbl_80A560F4
/* 80A560DC  7F A3 EB 78 */	mr r3, r29
/* 80A560E0  38 80 00 2B */	li r4, 0x2b
/* 80A560E4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A560E8  38 A0 00 00 */	li r5, 0
/* 80A560EC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A560F0  4B FF 30 B5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A560F4:
/* 80A560F4  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A560F8  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A560FC  40 82 00 AC */	bne lbl_80A561A8
/* 80A56100  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A56104  38 80 00 01 */	li r4, 1
/* 80A56108  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A5610C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A56110  40 82 00 18 */	bne lbl_80A56128
/* 80A56114  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A56118  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A5611C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A56120  41 82 00 08 */	beq lbl_80A56128
/* 80A56124  38 80 00 00 */	li r4, 0
lbl_80A56128:
/* 80A56128  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A5612C  41 82 00 7C */	beq lbl_80A561A8
/* 80A56130  38 00 00 28 */	li r0, 0x28
/* 80A56134  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56138  48 00 00 70 */	b lbl_80A561A8
lbl_80A5613C:
/* 80A5613C  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A56140  2C 00 00 00 */	cmpwi r0, 0
/* 80A56144  40 82 00 64 */	bne lbl_80A561A8
/* 80A56148  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A5614C  80 03 FE A4 */	lwz r0, call_pt@l(r3)
/* 80A56150  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A56154  41 82 00 20 */	beq lbl_80A56174
/* 80A56158  7F A3 EB 78 */	mr r3, r29
/* 80A5615C  38 80 00 08 */	li r4, 8
/* 80A56160  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56164  38 A0 00 02 */	li r5, 2
/* 80A56168  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5616C  4B FF 30 39 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56170  48 00 00 1C */	b lbl_80A5618C
lbl_80A56174:
/* 80A56174  7F A3 EB 78 */	mr r3, r29
/* 80A56178  38 80 00 07 */	li r4, 7
/* 80A5617C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56180  38 A0 00 02 */	li r5, 2
/* 80A56184  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56188  4B FF 30 1D */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A5618C:
/* 80A5618C  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A56190  38 83 FE A4 */	addi r4, r3, call_pt@l
/* 80A56194  80 64 00 00 */	lwz r3, 0(r4)
/* 80A56198  38 03 00 01 */	addi r0, r3, 1
/* 80A5619C  90 04 00 00 */	stw r0, 0(r4)
/* 80A561A0  38 00 00 0A */	li r0, 0xa
/* 80A561A4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A561A8:
/* 80A561A8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A561AC  38 80 00 00 */	li r4, 0
/* 80A561B0  38 A0 00 01 */	li r5, 1
/* 80A561B4  38 C0 08 00 */	li r6, 0x800
/* 80A561B8  4B 81 A4 50 */	b cLib_addCalcAngleS2__FPssss
/* 80A561BC  4B FF 2E 99 */	bl checkDoorDemo__Fv
/* 80A561C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A561C4  41 82 00 14 */	beq lbl_80A561D8
/* 80A561C8  38 00 00 64 */	li r0, 0x64
/* 80A561CC  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A561D0  38 00 00 00 */	li r0, 0
/* 80A561D4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A561D8:
/* 80A561D8  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A561DC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A561E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A561E4  40 81 00 10 */	ble lbl_80A561F4
/* 80A561E8  38 00 00 01 */	li r0, 1
/* 80A561EC  98 1D 09 0C */	stb r0, 0x90c(r29)
/* 80A561F0  48 00 00 28 */	b lbl_80A56218
lbl_80A561F4:
/* 80A561F4  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A561F8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A561FC  7C 03 00 50 */	subf r0, r3, r0
/* 80A56200  7C 00 07 34 */	extsh r0, r0
/* 80A56204  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A56208  41 81 00 0C */	bgt lbl_80A56214
/* 80A5620C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A56210  40 80 00 08 */	bge lbl_80A56218
lbl_80A56214:
/* 80A56214  3B C0 00 00 */	li r30, 0
lbl_80A56218:
/* 80A56218  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A5621C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A56220  41 80 00 6C */	blt lbl_80A5628C
/* 80A56224  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A56228  41 81 00 64 */	bgt lbl_80A5628C
/* 80A5622C  7F A3 EB 78 */	mr r3, r29
/* 80A56230  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 80A56234  EC 20 F8 2A */	fadds f1, f0, f31
/* 80A56238  4B FF 3C 65 */	bl enemy_check__FP12npc_ks_classf
/* 80A5623C  28 03 00 00 */	cmplwi r3, 0
/* 80A56240  40 82 00 18 */	bne lbl_80A56258
/* 80A56244  38 00 00 2A */	li r0, 0x2a
/* 80A56248  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A5624C  38 00 00 1E */	li r0, 0x1e
/* 80A56250  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A56254  48 00 00 60 */	b lbl_80A562B4
lbl_80A56258:
/* 80A56258  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A5625C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A56260  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A56264  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A56268  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A5626C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A56270  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A56274  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A56278  4B 81 13 FC */	b cM_atan2s__Fff
/* 80A5627C  3C 63 00 01 */	addis r3, r3, 1
/* 80A56280  38 03 80 00 */	addi r0, r3, -32768
/* 80A56284  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A56288  48 00 00 2C */	b lbl_80A562B4
lbl_80A5628C:
/* 80A5628C  7F A3 EB 78 */	mr r3, r29
/* 80A56290  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A56294  EC 20 F8 2A */	fadds f1, f0, f31
/* 80A56298  4B FF 3B E1 */	bl enemy_view_check__FP12npc_ks_classf
/* 80A5629C  28 03 00 00 */	cmplwi r3, 0
/* 80A562A0  41 82 00 14 */	beq lbl_80A562B4
/* 80A562A4  38 00 00 28 */	li r0, 0x28
/* 80A562A8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A562AC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A562B0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A562B4:
/* 80A562B4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A562B8  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A562BC  38 A0 00 01 */	li r5, 1
/* 80A562C0  38 C0 10 00 */	li r6, 0x1000
/* 80A562C4  4B 81 A3 44 */	b cLib_addCalcAngleS2__FPssss
/* 80A562C8  7F C3 F3 78 */	mr r3, r30
lbl_80A562CC:
/* 80A562CC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A562D0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A562D4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A562D8  4B 90 BF 50 */	b _restgpr_29
/* 80A562DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A562E0  7C 08 03 A6 */	mtlr r0
/* 80A562E4  38 21 00 70 */	addi r1, r1, 0x70
/* 80A562E8  4E 80 00 20 */	blr 
