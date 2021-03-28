lbl_80497C60:
/* 80497C60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80497C64  7C 08 02 A6 */	mflr r0
/* 80497C68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80497C6C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80497C70  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80497C74  39 61 00 40 */	addi r11, r1, 0x40
/* 80497C78  4B EC A5 60 */	b _savegpr_28
/* 80497C7C  7C 7C 1B 78 */	mr r28, r3
/* 80497C80  3C 60 80 4A */	lis r3, l_resInfo@ha
/* 80497C84  3B C3 81 60 */	addi r30, r3, l_resInfo@l
/* 80497C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80497C8C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80497C90  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80497C94  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80497C98  3C 80 80 4A */	lis r4, struct_804981E0+0x0@ha
/* 80497C9C  38 84 81 E0 */	addi r4, r4, struct_804981E0+0x0@l
/* 80497CA0  38 84 00 74 */	addi r4, r4, 0x74
/* 80497CA4  4B ED 0C F0 */	b strcmp
/* 80497CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80497CAC  40 82 00 34 */	bne lbl_80497CE0
/* 80497CB0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80497CB4  2C 00 00 07 */	cmpwi r0, 7
/* 80497CB8  40 82 00 28 */	bne lbl_80497CE0
/* 80497CBC  7F A3 EB 78 */	mr r3, r29
/* 80497CC0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80497CC4  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80497CC8  7D 89 03 A6 */	mtctr r12
/* 80497CCC  4E 80 04 21 */	bctrl 
/* 80497CD0  28 03 00 00 */	cmplwi r3, 0
/* 80497CD4  40 82 00 0C */	bne lbl_80497CE0
/* 80497CD8  38 60 00 00 */	li r3, 0
/* 80497CDC  48 00 00 A4 */	b lbl_80497D80
lbl_80497CE0:
/* 80497CE0  38 61 00 14 */	addi r3, r1, 0x14
/* 80497CE4  38 9D 05 50 */	addi r4, r29, 0x550
/* 80497CE8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80497CEC  4B DC EE 48 */	b __mi__4cXyzCFRC3Vec
/* 80497CF0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80497CF4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80497CF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80497CFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80497D00  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80497D04  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80497D08  D0 41 00 08 */	stfs f2, 8(r1)
/* 80497D0C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80497D10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80497D14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80497D18  38 61 00 08 */	addi r3, r1, 8
/* 80497D1C  4B EA F4 1C */	b PSVECSquareMag
/* 80497D20  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80497D24  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80497D28  EC 02 00 28 */	fsubs f0, f2, f0
/* 80497D2C  FC 00 02 10 */	fabs f0, f0
/* 80497D30  FF E0 00 18 */	frsp f31, f0
/* 80497D34  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80497D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80497D3C  40 80 00 40 */	bge lbl_80497D7C
/* 80497D40  7F 83 E3 78 */	mr r3, r28
/* 80497D44  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80497D48  4B B8 2A 54 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80497D4C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80497D50  40 80 00 2C */	bge lbl_80497D7C
/* 80497D54  7F A3 EB 78 */	mr r3, r29
/* 80497D58  7F 84 E3 78 */	mr r4, r28
/* 80497D5C  4B B8 2A 40 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80497D60  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80497D64  40 80 00 18 */	bge lbl_80497D7C
/* 80497D68  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80497D6C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80497D70  40 80 00 0C */	bge lbl_80497D7C
/* 80497D74  38 60 00 01 */	li r3, 1
/* 80497D78  48 00 00 08 */	b lbl_80497D80
lbl_80497D7C:
/* 80497D7C  38 60 00 00 */	li r3, 0
lbl_80497D80:
/* 80497D80  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80497D84  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80497D88  39 61 00 40 */	addi r11, r1, 0x40
/* 80497D8C  4B EC A4 98 */	b _restgpr_28
/* 80497D90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80497D94  7C 08 03 A6 */	mtlr r0
/* 80497D98  38 21 00 50 */	addi r1, r1, 0x50
/* 80497D9C  4E 80 00 20 */	blr 
