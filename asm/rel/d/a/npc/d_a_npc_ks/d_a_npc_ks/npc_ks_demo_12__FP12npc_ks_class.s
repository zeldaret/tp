lbl_80A57998:
/* 80A57998  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A5799C  7C 08 02 A6 */	mflr r0
/* 80A579A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A579A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A579A8  4B 90 A8 34 */	b _savegpr_29
/* 80A579AC  7C 7D 1B 78 */	mr r29, r3
/* 80A579B0  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A579B4  3B E4 DE FC */	addi r31, r4, lit_4030@l
/* 80A579B8  3B C0 00 01 */	li r30, 1
/* 80A579BC  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 80A579C0  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A579C4  2C 00 00 02 */	cmpwi r0, 2
/* 80A579C8  41 82 01 64 */	beq lbl_80A57B2C
/* 80A579CC  40 80 00 14 */	bge lbl_80A579E0
/* 80A579D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A579D4  41 82 00 18 */	beq lbl_80A579EC
/* 80A579D8  40 80 00 50 */	bge lbl_80A57A28
/* 80A579DC  48 00 04 48 */	b lbl_80A57E24
lbl_80A579E0:
/* 80A579E0  2C 00 00 05 */	cmpwi r0, 5
/* 80A579E4  41 82 03 C8 */	beq lbl_80A57DAC
/* 80A579E8  48 00 04 3C */	b lbl_80A57E24
lbl_80A579EC:
/* 80A579EC  A8 1D 0B 42 */	lha r0, 0xb42(r29)
/* 80A579F0  2C 00 00 4F */	cmpwi r0, 0x4f
/* 80A579F4  41 80 00 28 */	blt lbl_80A57A1C
/* 80A579F8  38 80 00 1A */	li r4, 0x1a
/* 80A579FC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A57A00  38 A0 00 02 */	li r5, 2
/* 80A57A04  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57A08  4B FF 17 9D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57A0C  38 00 00 01 */	li r0, 1
/* 80A57A10  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57A14  38 00 00 00 */	li r0, 0
/* 80A57A18  90 1D 09 04 */	stw r0, 0x904(r29)
lbl_80A57A1C:
/* 80A57A1C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57A20  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A57A24  48 00 04 00 */	b lbl_80A57E24
lbl_80A57A28:
/* 80A57A28  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57A2C  1C C0 00 34 */	mulli r6, r0, 0x34
/* 80A57A30  3C 80 80 A6 */	lis r4, guide_path_12@ha
/* 80A57A34  38 A4 F8 90 */	addi r5, r4, guide_path_12@l
/* 80A57A38  7C 05 30 2E */	lwzx r0, r5, r6
/* 80A57A3C  2C 00 00 00 */	cmpwi r0, 0
/* 80A57A40  41 82 00 90 */	beq lbl_80A57AD0
/* 80A57A44  7C 85 32 14 */	add r4, r5, r6
/* 80A57A48  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A57A4C  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A57A50  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57A54  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57A58  7C 85 02 14 */	add r4, r5, r0
/* 80A57A5C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A57A60  D0 1D 08 F4 */	stfs f0, 0x8f4(r29)
/* 80A57A64  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57A68  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57A6C  7C 85 02 14 */	add r4, r5, r0
/* 80A57A70  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80A57A74  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A57A78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A57A7C  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80A57A80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A57A84  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80A57A88  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A57A8C  D0 1D 09 18 */	stfs f0, 0x918(r29)
/* 80A57A90  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A57A94  D0 1D 09 1C */	stfs f0, 0x91c(r29)
/* 80A57A98  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A57A9C  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80A57AA0  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A57AA4  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80A57AA8  38 00 00 02 */	li r0, 2
/* 80A57AAC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57AB0  38 80 00 20 */	li r4, 0x20
/* 80A57AB4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A57AB8  38 A0 00 00 */	li r5, 0
/* 80A57ABC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57AC0  4B FF 16 E5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57AC4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57AC8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A57ACC  48 00 03 58 */	b lbl_80A57E24
lbl_80A57AD0:
/* 80A57AD0  7C 85 32 14 */	add r4, r5, r6
/* 80A57AD4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A57AD8  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A57ADC  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57AE0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57AE4  7C 85 02 14 */	add r4, r5, r0
/* 80A57AE8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80A57AEC  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A57AF0  38 00 00 05 */	li r0, 5
/* 80A57AF4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57AF8  3C 80 80 A6 */	lis r4, l_HIO@ha
/* 80A57AFC  38 84 FE B8 */	addi r4, r4, l_HIO@l
/* 80A57B00  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A57B04  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A57B08  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A57B0C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A57B10  41 82 03 14 */	beq lbl_80A57E24
/* 80A57B14  38 80 00 1A */	li r4, 0x1a
/* 80A57B18  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A57B1C  38 A0 00 02 */	li r5, 2
/* 80A57B20  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57B24  4B FF 16 81 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57B28  48 00 02 FC */	b lbl_80A57E24
lbl_80A57B2C:
/* 80A57B2C  3B C0 00 02 */	li r30, 2
/* 80A57B30  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A57B34  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A57B38  40 82 00 D8 */	bne lbl_80A57C10
/* 80A57B3C  38 60 00 01 */	li r3, 1
/* 80A57B40  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A57B44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A57B48  40 82 00 18 */	bne lbl_80A57B60
/* 80A57B4C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A57B50  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A57B54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A57B58  41 82 00 08 */	beq lbl_80A57B60
/* 80A57B5C  38 60 00 00 */	li r3, 0
lbl_80A57B60:
/* 80A57B60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A57B64  41 82 00 AC */	beq lbl_80A57C10
/* 80A57B68  7F A3 EB 78 */	mr r3, r29
/* 80A57B6C  38 80 00 21 */	li r4, 0x21
/* 80A57B70  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A57B74  38 A0 00 00 */	li r5, 0
/* 80A57B78  FC 40 08 90 */	fmr f2, f1
/* 80A57B7C  4B FF 16 29 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57B80  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A57B84  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A57B88  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A57B8C  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A57B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A57B94  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A57B98  38 81 00 14 */	addi r4, r1, 0x14
/* 80A57B9C  38 A0 FF FF */	li r5, -1
/* 80A57BA0  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A57BA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A57BA8  7D 89 03 A6 */	mtctr r12
/* 80A57BAC  4E 80 04 21 */	bctrl 
/* 80A57BB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A57BB4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A57BB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A57BBC  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A57BC0  38 81 00 10 */	addi r4, r1, 0x10
/* 80A57BC4  38 A0 00 00 */	li r5, 0
/* 80A57BC8  38 C0 FF FF */	li r6, -1
/* 80A57BCC  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A57BD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A57BD4  7D 89 03 A6 */	mtctr r12
/* 80A57BD8  4E 80 04 21 */	bctrl 
/* 80A57BDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A57BE0  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A57BE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A57BE8  38 7D 08 60 */	addi r3, r29, 0x860
/* 80A57BEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80A57BF0  38 A0 00 00 */	li r5, 0
/* 80A57BF4  38 C0 FF FF */	li r6, -1
/* 80A57BF8  81 9D 08 60 */	lwz r12, 0x860(r29)
/* 80A57BFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A57C00  7D 89 03 A6 */	mtctr r12
/* 80A57C04  4E 80 04 21 */	bctrl 
/* 80A57C08  38 00 00 01 */	li r0, 1
/* 80A57C0C  98 1D 0B E0 */	stb r0, 0xbe0(r29)
lbl_80A57C10:
/* 80A57C10  38 61 00 18 */	addi r3, r1, 0x18
/* 80A57C14  38 9D 08 F0 */	addi r4, r29, 0x8f0
/* 80A57C18  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A57C1C  4B 80 EF 18 */	b __mi__4cXyzCFRC3Vec
/* 80A57C20  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A57C24  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A57C28  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A57C2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A57C30  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A57C34  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A57C38  4B 80 FA 3C */	b cM_atan2s__Fff
/* 80A57C3C  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A57C40  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A57C44  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A57C48  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A57C4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A57C50  EC 41 00 2A */	fadds f2, f1, f0
/* 80A57C54  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57C58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A57C5C  40 81 00 0C */	ble lbl_80A57C68
/* 80A57C60  FC 00 10 34 */	frsqrte f0, f2
/* 80A57C64  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A57C68:
/* 80A57C68  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A57C6C  4B 80 FA 08 */	b cM_atan2s__Fff
/* 80A57C70  7C 03 00 D0 */	neg r0, r3
/* 80A57C74  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80A57C78  38 61 00 24 */	addi r3, r1, 0x24
/* 80A57C7C  4B 8E F4 BC */	b PSVECSquareMag
/* 80A57C80  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57C88  40 81 00 58 */	ble lbl_80A57CE0
/* 80A57C8C  FC 00 08 34 */	frsqrte f0, f1
/* 80A57C90  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A57C94  FC 44 00 32 */	fmul f2, f4, f0
/* 80A57C98  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A57C9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A57CA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A57CA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A57CA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A57CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A57CB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A57CB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A57CB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A57CBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A57CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A57CC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A57CC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A57CCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A57CD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A57CD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A57CD8  FC 20 08 18 */	frsp f1, f1
/* 80A57CDC  48 00 00 88 */	b lbl_80A57D64
lbl_80A57CE0:
/* 80A57CE0  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A57CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57CE8  40 80 00 10 */	bge lbl_80A57CF8
/* 80A57CEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A57CF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A57CF4  48 00 00 70 */	b lbl_80A57D64
lbl_80A57CF8:
/* 80A57CF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A57CFC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A57D00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A57D04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A57D08  7C 03 00 00 */	cmpw r3, r0
/* 80A57D0C  41 82 00 14 */	beq lbl_80A57D20
/* 80A57D10  40 80 00 40 */	bge lbl_80A57D50
/* 80A57D14  2C 03 00 00 */	cmpwi r3, 0
/* 80A57D18  41 82 00 20 */	beq lbl_80A57D38
/* 80A57D1C  48 00 00 34 */	b lbl_80A57D50
lbl_80A57D20:
/* 80A57D20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A57D24  41 82 00 0C */	beq lbl_80A57D30
/* 80A57D28  38 00 00 01 */	li r0, 1
/* 80A57D2C  48 00 00 28 */	b lbl_80A57D54
lbl_80A57D30:
/* 80A57D30  38 00 00 02 */	li r0, 2
/* 80A57D34  48 00 00 20 */	b lbl_80A57D54
lbl_80A57D38:
/* 80A57D38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A57D3C  41 82 00 0C */	beq lbl_80A57D48
/* 80A57D40  38 00 00 05 */	li r0, 5
/* 80A57D44  48 00 00 10 */	b lbl_80A57D54
lbl_80A57D48:
/* 80A57D48  38 00 00 03 */	li r0, 3
/* 80A57D4C  48 00 00 08 */	b lbl_80A57D54
lbl_80A57D50:
/* 80A57D50  38 00 00 04 */	li r0, 4
lbl_80A57D54:
/* 80A57D54  2C 00 00 01 */	cmpwi r0, 1
/* 80A57D58  40 82 00 0C */	bne lbl_80A57D64
/* 80A57D5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A57D60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A57D64:
/* 80A57D64  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A57D68  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A57D6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A57D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57D74  40 80 00 B0 */	bge lbl_80A57E24
/* 80A57D78  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A57D7C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A57D80  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A57D84  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A57D88  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A57D8C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A57D90  38 00 00 01 */	li r0, 1
/* 80A57D94  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57D98  98 1D 0B E0 */	stb r0, 0xbe0(r29)
/* 80A57D9C  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A57DA0  38 03 00 01 */	addi r0, r3, 1
/* 80A57DA4  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A57DA8  48 00 00 7C */	b lbl_80A57E24
lbl_80A57DAC:
/* 80A57DAC  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A57DB0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A57DB4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A57DB8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A57DBC  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A57DC0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A57DC4  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A57DC8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A57DCC  4B 80 F8 A8 */	b cM_atan2s__Fff
/* 80A57DD0  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A57DD4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A57DD8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A57DDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A57DE0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A57DE4  EC 41 00 2A */	fadds f2, f1, f0
/* 80A57DE8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57DEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A57DF0  40 81 00 0C */	ble lbl_80A57DFC
/* 80A57DF4  FC 00 10 34 */	frsqrte f0, f2
/* 80A57DF8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A57DFC:
/* 80A57DFC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A57E00  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A57E04  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A57E08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A57E0C  40 80 00 18 */	bge lbl_80A57E24
/* 80A57E10  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A57E14  38 03 00 01 */	addi r0, r3, 1
/* 80A57E18  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A57E1C  38 00 00 01 */	li r0, 1
/* 80A57E20  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A57E24:
/* 80A57E24  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A57E28  38 80 00 00 */	li r4, 0
/* 80A57E2C  38 A0 00 01 */	li r5, 1
/* 80A57E30  38 C0 08 00 */	li r6, 0x800
/* 80A57E34  4B 81 87 D4 */	b cLib_addCalcAngleS2__FPssss
/* 80A57E38  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A57E3C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A57E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57E44  40 81 00 10 */	ble lbl_80A57E54
/* 80A57E48  38 00 00 01 */	li r0, 1
/* 80A57E4C  98 1D 09 0C */	stb r0, 0x90c(r29)
/* 80A57E50  48 00 00 28 */	b lbl_80A57E78
lbl_80A57E54:
/* 80A57E54  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A57E58  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A57E5C  7C 03 00 50 */	subf r0, r3, r0
/* 80A57E60  7C 00 07 34 */	extsh r0, r0
/* 80A57E64  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A57E68  41 81 00 0C */	bgt lbl_80A57E74
/* 80A57E6C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A57E70  40 80 00 08 */	bge lbl_80A57E78
lbl_80A57E74:
/* 80A57E74  3B C0 00 00 */	li r30, 0
lbl_80A57E78:
/* 80A57E78  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A57E7C  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A57E80  38 A0 00 01 */	li r5, 1
/* 80A57E84  38 C0 10 00 */	li r6, 0x1000
/* 80A57E88  4B 81 87 80 */	b cLib_addCalcAngleS2__FPssss
/* 80A57E8C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A57E90  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57E94  3C 60 80 A6 */	lis r3, guide_path_12@ha
/* 80A57E98  38 63 F8 90 */	addi r3, r3, guide_path_12@l
/* 80A57E9C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A57EA0  2C 00 00 00 */	cmpwi r0, 0
/* 80A57EA4  40 80 00 14 */	bge lbl_80A57EB8
/* 80A57EA8  38 00 00 08 */	li r0, 8
/* 80A57EAC  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A57EB0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57EB4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A57EB8:
/* 80A57EB8  7F C3 F3 78 */	mr r3, r30
/* 80A57EBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A57EC0  4B 90 A3 68 */	b _restgpr_29
/* 80A57EC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A57EC8  7C 08 03 A6 */	mtlr r0
/* 80A57ECC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A57ED0  4E 80 00 20 */	blr 
