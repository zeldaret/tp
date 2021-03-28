lbl_80720B50:
/* 80720B50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80720B54  7C 08 02 A6 */	mflr r0
/* 80720B58  90 01 00 74 */	stw r0, 0x74(r1)
/* 80720B5C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80720B60  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80720B64  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80720B68  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80720B6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80720B70  4B C4 16 68 */	b _savegpr_28
/* 80720B74  7C 7C 1B 78 */	mr r28, r3
/* 80720B78  3C 80 80 72 */	lis r4, lit_3789@ha
/* 80720B7C  3B E4 2C 3C */	addi r31, r4, lit_3789@l
/* 80720B80  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80720B84  C3 DF 00 50 */	lfs f30, 0x50(r31)
/* 80720B88  3B C0 00 00 */	li r30, 0
/* 80720B8C  3B A0 00 01 */	li r29, 1
/* 80720B90  A8 03 06 70 */	lha r0, 0x670(r3)
/* 80720B94  2C 00 00 04 */	cmpwi r0, 4
/* 80720B98  41 82 00 3C */	beq lbl_80720BD4
/* 80720B9C  4B FF F9 F5 */	bl way_gake_check__FP10e_mm_class
/* 80720BA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80720BA4  41 82 00 30 */	beq lbl_80720BD4
/* 80720BA8  38 00 00 04 */	li r0, 4
/* 80720BAC  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80720BB0  7F 83 E3 78 */	mr r3, r28
/* 80720BB4  38 80 00 0A */	li r4, 0xa
/* 80720BB8  FC 20 F0 90 */	fmr f1, f30
/* 80720BBC  38 A0 00 00 */	li r5, 0
/* 80720BC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80720BC4  4B FF EE 81 */	bl anm_init__FP10e_mm_classifUcf
/* 80720BC8  7F 83 E3 78 */	mr r3, r28
/* 80720BCC  38 80 00 01 */	li r4, 1
/* 80720BD0  4B FF F8 11 */	bl mWaterEffSet__FP10e_mm_classb
lbl_80720BD4:
/* 80720BD4  A8 1C 06 70 */	lha r0, 0x670(r28)
/* 80720BD8  2C 00 00 03 */	cmpwi r0, 3
/* 80720BDC  41 82 02 18 */	beq lbl_80720DF4
/* 80720BE0  40 80 00 1C */	bge lbl_80720BFC
/* 80720BE4  2C 00 00 01 */	cmpwi r0, 1
/* 80720BE8  41 82 00 50 */	beq lbl_80720C38
/* 80720BEC  40 80 00 E4 */	bge lbl_80720CD0
/* 80720BF0  2C 00 00 00 */	cmpwi r0, 0
/* 80720BF4  40 80 00 18 */	bge lbl_80720C0C
/* 80720BF8  48 00 05 6C */	b lbl_80721164
lbl_80720BFC:
/* 80720BFC  2C 00 00 05 */	cmpwi r0, 5
/* 80720C00  41 82 05 18 */	beq lbl_80721118
/* 80720C04  40 80 05 60 */	bge lbl_80721164
/* 80720C08  48 00 04 94 */	b lbl_8072109C
lbl_80720C0C:
/* 80720C0C  38 00 00 00 */	li r0, 0
/* 80720C10  98 1C 0C 01 */	stb r0, 0xc01(r28)
/* 80720C14  7F 83 E3 78 */	mr r3, r28
/* 80720C18  38 80 00 07 */	li r4, 7
/* 80720C1C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80720C20  38 A0 00 00 */	li r5, 0
/* 80720C24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80720C28  4B FF EE 1D */	bl anm_init__FP10e_mm_classifUcf
/* 80720C2C  38 00 00 01 */	li r0, 1
/* 80720C30  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80720C34  48 00 05 30 */	b lbl_80721164
lbl_80720C38:
/* 80720C38  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80720C3C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80720C40  FC 00 00 1E */	fctiwz f0, f0
/* 80720C44  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80720C48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80720C4C  2C 00 00 03 */	cmpwi r0, 3
/* 80720C50  40 82 00 2C */	bne lbl_80720C7C
/* 80720C54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E1@ha */
/* 80720C58  38 03 02 E1 */	addi r0, r3, 0x02E1 /* 0x000702E1@l */
/* 80720C5C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80720C60  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720C64  38 81 00 2C */	addi r4, r1, 0x2c
/* 80720C68  38 A0 FF FF */	li r5, -1
/* 80720C6C  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720C70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80720C74  7D 89 03 A6 */	mtctr r12
/* 80720C78  4E 80 04 21 */	bctrl 
lbl_80720C7C:
/* 80720C7C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80720C80  38 80 00 01 */	li r4, 1
/* 80720C84  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80720C88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80720C8C  40 82 00 18 */	bne lbl_80720CA4
/* 80720C90  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80720C94  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80720C98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80720C9C  41 82 00 08 */	beq lbl_80720CA4
/* 80720CA0  38 80 00 00 */	li r4, 0
lbl_80720CA4:
/* 80720CA4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80720CA8  41 82 04 BC */	beq lbl_80721164
/* 80720CAC  7F 83 E3 78 */	mr r3, r28
/* 80720CB0  38 80 00 0C */	li r4, 0xc
/* 80720CB4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80720CB8  38 A0 00 02 */	li r5, 2
/* 80720CBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80720CC0  4B FF ED 85 */	bl anm_init__FP10e_mm_classifUcf
/* 80720CC4  38 00 00 02 */	li r0, 2
/* 80720CC8  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80720CCC  48 00 04 98 */	b lbl_80721164
lbl_80720CD0:
/* 80720CD0  88 1C 06 72 */	lbz r0, 0x672(r28)
/* 80720CD4  7C 00 07 75 */	extsb. r0, r0
/* 80720CD8  40 82 00 08 */	bne lbl_80720CE0
/* 80720CDC  3B A0 00 02 */	li r29, 2
lbl_80720CE0:
/* 80720CE0  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80720CE4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80720CE8  FC 00 00 1E */	fctiwz f0, f0
/* 80720CEC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80720CF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80720CF4  2C 00 00 09 */	cmpwi r0, 9
/* 80720CF8  41 82 00 14 */	beq lbl_80720D0C
/* 80720CFC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80720D00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80720D04  2C 00 00 13 */	cmpwi r0, 0x13
/* 80720D08  40 82 00 6C */	bne lbl_80720D74
lbl_80720D0C:
/* 80720D0C  80 1C 07 1C */	lwz r0, 0x71c(r28)
/* 80720D10  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80720D14  40 82 00 34 */	bne lbl_80720D48
/* 80720D18  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702ED@ha */
/* 80720D1C  38 03 02 ED */	addi r0, r3, 0x02ED /* 0x000702ED@l */
/* 80720D20  90 01 00 28 */	stw r0, 0x28(r1)
/* 80720D24  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720D28  38 81 00 28 */	addi r4, r1, 0x28
/* 80720D2C  7F A5 EB 78 */	mr r5, r29
/* 80720D30  38 C0 FF FF */	li r6, -1
/* 80720D34  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720D38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80720D3C  7D 89 03 A6 */	mtctr r12
/* 80720D40  4E 80 04 21 */	bctrl 
/* 80720D44  48 00 00 30 */	b lbl_80720D74
lbl_80720D48:
/* 80720D48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EE@ha */
/* 80720D4C  38 03 02 EE */	addi r0, r3, 0x02EE /* 0x000702EE@l */
/* 80720D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80720D54  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720D58  38 81 00 24 */	addi r4, r1, 0x24
/* 80720D5C  7F A5 EB 78 */	mr r5, r29
/* 80720D60  38 C0 FF FF */	li r6, -1
/* 80720D64  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720D68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80720D6C  7D 89 03 A6 */	mtctr r12
/* 80720D70  4E 80 04 21 */	bctrl 
lbl_80720D74:
/* 80720D74  A8 1C 06 90 */	lha r0, 0x690(r28)
/* 80720D78  B0 1C 06 8C */	sth r0, 0x68c(r28)
/* 80720D7C  3B C0 03 00 */	li r30, 0x300
/* 80720D80  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80720D84  A8 1C 06 8C */	lha r0, 0x68c(r28)
/* 80720D88  7C 03 00 50 */	subf r0, r3, r0
/* 80720D8C  7C 00 07 34 */	extsh r0, r0
/* 80720D90  2C 00 02 00 */	cmpwi r0, 0x200
/* 80720D94  40 80 03 D0 */	bge lbl_80721164
/* 80720D98  2C 00 FE 00 */	cmpwi r0, -512
/* 80720D9C  40 81 03 C8 */	ble lbl_80721164
/* 80720DA0  7F 83 E3 78 */	mr r3, r28
/* 80720DA4  38 80 00 09 */	li r4, 9
/* 80720DA8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80720DAC  38 A0 00 02 */	li r5, 2
/* 80720DB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80720DB4  4B FF EC 91 */	bl anm_init__FP10e_mm_classifUcf
/* 80720DB8  38 00 00 03 */	li r0, 3
/* 80720DBC  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80720DC0  38 00 00 46 */	li r0, 0x46
/* 80720DC4  B0 1C 06 9C */	sth r0, 0x69c(r28)
/* 80720DC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702DF@ha */
/* 80720DCC  38 03 02 DF */	addi r0, r3, 0x02DF /* 0x000702DF@l */
/* 80720DD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80720DD4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720DD8  38 81 00 20 */	addi r4, r1, 0x20
/* 80720DDC  38 A0 FF FF */	li r5, -1
/* 80720DE0  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720DE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80720DE8  7D 89 03 A6 */	mtctr r12
/* 80720DEC  4E 80 04 21 */	bctrl 
/* 80720DF0  48 00 03 74 */	b lbl_80721164
lbl_80720DF4:
/* 80720DF4  3B C0 03 00 */	li r30, 0x300
/* 80720DF8  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80720DFC  2C 00 00 01 */	cmpwi r0, 1
/* 80720E00  40 82 00 14 */	bne lbl_80720E14
/* 80720E04  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80720E08  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 80720E0C  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 80720E10  48 00 00 10 */	b lbl_80720E20
lbl_80720E14:
/* 80720E14  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80720E18  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 80720E1C  C3 E3 00 10 */	lfs f31, 0x10(r3)
lbl_80720E20:
/* 80720E20  38 00 00 01 */	li r0, 1
/* 80720E24  98 1C 0B 98 */	stb r0, 0xb98(r28)
/* 80720E28  A8 1C 06 9C */	lha r0, 0x69c(r28)
/* 80720E2C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80720E30  40 82 00 2C */	bne lbl_80720E5C
/* 80720E34  38 7C 0C 04 */	addi r3, r28, 0xc04
/* 80720E38  38 9C 0C 08 */	addi r4, r28, 0xc08
/* 80720E3C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80720E40  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 80720E44  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80720E48  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80720E4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80720E50  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80720E54  39 00 00 00 */	li r8, 0
/* 80720E58  4B 8F C1 C8 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80720E5C:
/* 80720E5C  88 1C 06 72 */	lbz r0, 0x672(r28)
/* 80720E60  7C 00 07 75 */	extsb. r0, r0
/* 80720E64  40 82 00 08 */	bne lbl_80720E6C
/* 80720E68  3B A0 00 02 */	li r29, 2
lbl_80720E6C:
/* 80720E6C  7F 83 E3 78 */	mr r3, r28
/* 80720E70  38 80 00 00 */	li r4, 0
/* 80720E74  4B FF F5 6D */	bl mWaterEffSet__FP10e_mm_classb
/* 80720E78  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80720E7C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80720E80  FC 00 00 1E */	fctiwz f0, f0
/* 80720E84  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80720E88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80720E8C  2C 00 00 05 */	cmpwi r0, 5
/* 80720E90  41 82 00 14 */	beq lbl_80720EA4
/* 80720E94  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80720E98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80720E9C  2C 00 00 08 */	cmpwi r0, 8
/* 80720EA0  40 82 00 6C */	bne lbl_80720F0C
lbl_80720EA4:
/* 80720EA4  80 1C 07 1C */	lwz r0, 0x71c(r28)
/* 80720EA8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80720EAC  40 82 00 34 */	bne lbl_80720EE0
/* 80720EB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EF@ha */
/* 80720EB4  38 03 02 EF */	addi r0, r3, 0x02EF /* 0x000702EF@l */
/* 80720EB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80720EBC  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720EC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80720EC4  7F A5 EB 78 */	mr r5, r29
/* 80720EC8  38 C0 FF FF */	li r6, -1
/* 80720ECC  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720ED0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80720ED4  7D 89 03 A6 */	mtctr r12
/* 80720ED8  4E 80 04 21 */	bctrl 
/* 80720EDC  48 00 00 30 */	b lbl_80720F0C
lbl_80720EE0:
/* 80720EE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F0@ha */
/* 80720EE4  38 03 02 F0 */	addi r0, r3, 0x02F0 /* 0x000702F0@l */
/* 80720EE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80720EEC  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720EF0  38 81 00 18 */	addi r4, r1, 0x18
/* 80720EF4  7F A5 EB 78 */	mr r5, r29
/* 80720EF8  38 C0 FF FF */	li r6, -1
/* 80720EFC  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720F00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80720F04  7D 89 03 A6 */	mtctr r12
/* 80720F08  4E 80 04 21 */	bctrl 
lbl_80720F0C:
/* 80720F0C  7F 83 E3 78 */	mr r3, r28
/* 80720F10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80720F14  4B FF F2 8D */	bl wall_check__FP10e_mm_classf
/* 80720F18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80720F1C  41 82 00 E8 */	beq lbl_80721004
/* 80720F20  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80720F24  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80720F28  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80720F2C  2C 00 00 01 */	cmpwi r0, 1
/* 80720F30  40 82 00 1C */	bne lbl_80720F4C
/* 80720F34  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80720F38  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80720F3C  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 80720F40  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80720F44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80720F48  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80720F4C:
/* 80720F4C  38 00 00 05 */	li r0, 5
/* 80720F50  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80720F54  7F 83 E3 78 */	mr r3, r28
/* 80720F58  38 80 00 0D */	li r4, 0xd
/* 80720F5C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80720F60  38 A0 00 02 */	li r5, 2
/* 80720F64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80720F68  4B FF EA DD */	bl anm_init__FP10e_mm_classifUcf
/* 80720F6C  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80720F70  2C 00 00 01 */	cmpwi r0, 1
/* 80720F74  40 82 00 18 */	bne lbl_80720F8C
/* 80720F78  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80720F7C  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 80720F80  A8 03 00 30 */	lha r0, 0x30(r3)
/* 80720F84  B0 1C 06 9C */	sth r0, 0x69c(r28)
/* 80720F88  48 00 00 14 */	b lbl_80720F9C
lbl_80720F8C:
/* 80720F8C  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80720F90  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 80720F94  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80720F98  B0 1C 06 9C */	sth r0, 0x69c(r28)
lbl_80720F9C:
/* 80720F9C  88 1C 06 72 */	lbz r0, 0x672(r28)
/* 80720FA0  7C 00 07 75 */	extsb. r0, r0
/* 80720FA4  41 82 00 34 */	beq lbl_80720FD8
/* 80720FA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E7@ha */
/* 80720FAC  38 03 02 E7 */	addi r0, r3, 0x02E7 /* 0x000702E7@l */
/* 80720FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80720FB4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720FB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80720FBC  38 A0 00 00 */	li r5, 0
/* 80720FC0  38 C0 FF FF */	li r6, -1
/* 80720FC4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720FC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80720FCC  7D 89 03 A6 */	mtctr r12
/* 80720FD0  4E 80 04 21 */	bctrl 
/* 80720FD4  48 00 00 30 */	b lbl_80721004
lbl_80720FD8:
/* 80720FD8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E8@ha */
/* 80720FDC  38 03 02 E8 */	addi r0, r3, 0x02E8 /* 0x000702E8@l */
/* 80720FE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80720FE4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80720FE8  38 81 00 10 */	addi r4, r1, 0x10
/* 80720FEC  38 A0 00 00 */	li r5, 0
/* 80720FF0  38 C0 FF FF */	li r6, -1
/* 80720FF4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 80720FF8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80720FFC  7D 89 03 A6 */	mtctr r12
/* 80721000  4E 80 04 21 */	bctrl 
lbl_80721004:
/* 80721004  A8 1C 06 9C */	lha r0, 0x69c(r28)
/* 80721008  2C 00 00 00 */	cmpwi r0, 0
/* 8072100C  40 82 01 58 */	bne lbl_80721164
/* 80721010  80 1C 07 1C */	lwz r0, 0x71c(r28)
/* 80721014  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80721018  40 82 00 34 */	bne lbl_8072104C
/* 8072101C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E9@ha */
/* 80721020  38 03 02 E9 */	addi r0, r3, 0x02E9 /* 0x000702E9@l */
/* 80721024  90 01 00 0C */	stw r0, 0xc(r1)
/* 80721028  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8072102C  38 81 00 0C */	addi r4, r1, 0xc
/* 80721030  38 A0 00 00 */	li r5, 0
/* 80721034  38 C0 FF FF */	li r6, -1
/* 80721038  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8072103C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721040  7D 89 03 A6 */	mtctr r12
/* 80721044  4E 80 04 21 */	bctrl 
/* 80721048  48 00 00 30 */	b lbl_80721078
lbl_8072104C:
/* 8072104C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702EA@ha */
/* 80721050  38 03 02 EA */	addi r0, r3, 0x02EA /* 0x000702EA@l */
/* 80721054  90 01 00 08 */	stw r0, 8(r1)
/* 80721058  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8072105C  38 81 00 08 */	addi r4, r1, 8
/* 80721060  38 A0 00 00 */	li r5, 0
/* 80721064  38 C0 FF FF */	li r6, -1
/* 80721068  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8072106C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80721070  7D 89 03 A6 */	mtctr r12
/* 80721074  4E 80 04 21 */	bctrl 
lbl_80721078:
/* 80721078  38 00 00 04 */	li r0, 4
/* 8072107C  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 80721080  7F 83 E3 78 */	mr r3, r28
/* 80721084  38 80 00 0A */	li r4, 0xa
/* 80721088  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8072108C  38 A0 00 00 */	li r5, 0
/* 80721090  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80721094  4B FF E9 B1 */	bl anm_init__FP10e_mm_classifUcf
/* 80721098  48 00 00 CC */	b lbl_80721164
lbl_8072109C:
/* 8072109C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807210A0  C3 DF 00 08 */	lfs f30, 8(r31)
/* 807210A4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807210A8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807210AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807210B0  40 80 00 2C */	bge lbl_807210DC
/* 807210B4  38 00 00 00 */	li r0, 0
/* 807210B8  B0 1C 06 6E */	sth r0, 0x66e(r28)
/* 807210BC  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 807210C0  B0 1C 06 9C */	sth r0, 0x69c(r28)
/* 807210C4  7F 83 E3 78 */	mr r3, r28
/* 807210C8  38 80 00 0E */	li r4, 0xe
/* 807210CC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807210D0  38 A0 00 02 */	li r5, 2
/* 807210D4  FC 40 F0 90 */	fmr f2, f30
/* 807210D8  4B FF E9 6D */	bl anm_init__FP10e_mm_classifUcf
lbl_807210DC:
/* 807210DC  7F 83 E3 78 */	mr r3, r28
/* 807210E0  38 80 00 01 */	li r4, 1
/* 807210E4  4B FF F2 FD */	bl mWaterEffSet__FP10e_mm_classb
/* 807210E8  A8 1C 06 9C */	lha r0, 0x69c(r28)
/* 807210EC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807210F0  40 82 00 74 */	bne lbl_80721164
/* 807210F4  38 7C 0C 04 */	addi r3, r28, 0xc04
/* 807210F8  38 9C 0C 08 */	addi r4, r28, 0xc08
/* 807210FC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80721100  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 80721104  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80721108  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8072110C  39 00 00 00 */	li r8, 0
/* 80721110  4B 8F BF 10 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80721114  48 00 00 50 */	b lbl_80721164
lbl_80721118:
/* 80721118  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8072111C  C3 DF 00 08 */	lfs f30, 8(r31)
/* 80721120  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80721124  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80721128  4C 41 13 82 */	cror 2, 1, 2
/* 8072112C  40 82 00 10 */	bne lbl_8072113C
/* 80721130  7F 83 E3 78 */	mr r3, r28
/* 80721134  38 80 00 01 */	li r4, 1
/* 80721138  4B FF F2 A9 */	bl mWaterEffSet__FP10e_mm_classb
lbl_8072113C:
/* 8072113C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80721140  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80721144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80721148  40 80 00 1C */	bge lbl_80721164
/* 8072114C  A8 1C 06 9C */	lha r0, 0x69c(r28)
/* 80721150  2C 00 00 00 */	cmpwi r0, 0
/* 80721154  40 82 00 10 */	bne lbl_80721164
/* 80721158  38 00 00 00 */	li r0, 0
/* 8072115C  B0 1C 06 6E */	sth r0, 0x66e(r28)
/* 80721160  B0 1C 06 70 */	sth r0, 0x670(r28)
lbl_80721164:
/* 80721164  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80721168  2C 00 00 01 */	cmpwi r0, 1
/* 8072116C  40 82 00 10 */	bne lbl_8072117C
/* 80721170  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80721174  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 80721178  AB C3 00 32 */	lha r30, 0x32(r3)
lbl_8072117C:
/* 8072117C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80721180  A8 9C 06 8C */	lha r4, 0x68c(r28)
/* 80721184  38 A0 00 01 */	li r5, 1
/* 80721188  7F C6 F3 78 */	mr r6, r30
/* 8072118C  4B B4 F4 7C */	b cLib_addCalcAngleS2__FPssss
/* 80721190  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80721194  FC 20 F8 90 */	fmr f1, f31
/* 80721198  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072119C  FC 60 F0 90 */	fmr f3, f30
/* 807211A0  4B B4 E8 9C */	b cLib_addCalc2__FPffff
/* 807211A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807211A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807211AC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 807211B0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 807211B4  39 61 00 50 */	addi r11, r1, 0x50
/* 807211B8  4B C4 10 6C */	b _restgpr_28
/* 807211BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807211C0  7C 08 03 A6 */	mtlr r0
/* 807211C4  38 21 00 70 */	addi r1, r1, 0x70
/* 807211C8  4E 80 00 20 */	blr 
