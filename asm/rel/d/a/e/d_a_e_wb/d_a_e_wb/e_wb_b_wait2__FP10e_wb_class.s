lbl_807D5EBC:
/* 807D5EBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D5EC0  7C 08 02 A6 */	mflr r0
/* 807D5EC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D5EC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807D5ECC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807D5ED0  39 61 00 20 */	addi r11, r1, 0x20
/* 807D5ED4  4B B8 C3 08 */	b _savegpr_29
/* 807D5ED8  7C 7E 1B 78 */	mr r30, r3
/* 807D5EDC  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D5EE0  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D5EE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807D5EE8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 807D5EEC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807D5EF0  4B 84 4A 74 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D5EF4  FF E0 08 90 */	fmr f31, f1
/* 807D5EF8  7F C3 F3 78 */	mr r3, r30
/* 807D5EFC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807D5F00  4B 84 48 10 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D5F04  7C 7D 1B 78 */	mr r29, r3
/* 807D5F08  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807D5F0C  2C 00 00 01 */	cmpwi r0, 1
/* 807D5F10  41 82 00 50 */	beq lbl_807D5F60
/* 807D5F14  40 80 00 10 */	bge lbl_807D5F24
/* 807D5F18  2C 00 00 00 */	cmpwi r0, 0
/* 807D5F1C  40 80 00 14 */	bge lbl_807D5F30
/* 807D5F20  48 00 01 08 */	b lbl_807D6028
lbl_807D5F24:
/* 807D5F24  2C 00 00 03 */	cmpwi r0, 3
/* 807D5F28  40 80 01 00 */	bge lbl_807D6028
/* 807D5F2C  48 00 00 B8 */	b lbl_807D5FE4
lbl_807D5F30:
/* 807D5F30  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D5F34  4B A9 1A 20 */	b cM_rndF__Ff
/* 807D5F38  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807D5F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5F40  40 80 00 10 */	bge lbl_807D5F50
/* 807D5F44  38 1D 40 00 */	addi r0, r29, 0x4000
/* 807D5F48  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 807D5F4C  48 00 00 0C */	b lbl_807D5F58
lbl_807D5F50:
/* 807D5F50  38 1D C0 00 */	addi r0, r29, -16384
/* 807D5F54  B0 1E 05 DC */	sth r0, 0x5dc(r30)
lbl_807D5F58:
/* 807D5F58  38 00 00 01 */	li r0, 1
/* 807D5F5C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807D5F60:
/* 807D5F60  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807D5F64  A8 9E 05 DC */	lha r4, 0x5dc(r30)
/* 807D5F68  38 A0 00 08 */	li r5, 8
/* 807D5F6C  38 C0 02 00 */	li r6, 0x200
/* 807D5F70  4B A9 A6 98 */	b cLib_addCalcAngleS2__FPssss
/* 807D5F74  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807D5F78  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 807D5F7C  7C 03 00 50 */	subf r0, r3, r0
/* 807D5F80  B0 1E 06 D0 */	sth r0, 0x6d0(r30)
/* 807D5F84  A8 1E 06 D0 */	lha r0, 0x6d0(r30)
/* 807D5F88  2C 00 08 00 */	cmpwi r0, 0x800
/* 807D5F8C  40 80 00 30 */	bge lbl_807D5FBC
/* 807D5F90  2C 00 F8 00 */	cmpwi r0, -2048
/* 807D5F94  40 81 00 28 */	ble lbl_807D5FBC
/* 807D5F98  7F C3 F3 78 */	mr r3, r30
/* 807D5F9C  38 80 00 2A */	li r4, 0x2a
/* 807D5FA0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D5FA4  38 A0 00 02 */	li r5, 2
/* 807D5FA8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D5FAC  4B FF C5 9D */	bl anm_init__FP10e_wb_classifUcf
/* 807D5FB0  38 00 00 02 */	li r0, 2
/* 807D5FB4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D5FB8  48 00 00 70 */	b lbl_807D6028
lbl_807D5FBC:
/* 807D5FBC  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 807D5FC0  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D5FC4  41 82 00 64 */	beq lbl_807D6028
/* 807D5FC8  7F C3 F3 78 */	mr r3, r30
/* 807D5FCC  38 80 00 28 */	li r4, 0x28
/* 807D5FD0  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D5FD4  38 A0 00 02 */	li r5, 2
/* 807D5FD8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D5FDC  4B FF C5 6D */	bl anm_init__FP10e_wb_classifUcf
/* 807D5FE0  48 00 00 48 */	b lbl_807D6028
lbl_807D5FE4:
/* 807D5FE4  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 807D5FE8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807D5FEC  40 80 00 3C */	bge lbl_807D6028
/* 807D5FF0  38 00 00 0A */	li r0, 0xa
/* 807D5FF4  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D5FF8  38 00 00 00 */	li r0, 0
/* 807D5FFC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D6000  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F8@ha */
/* 807D6004  38 03 00 F8 */	addi r0, r3, 0x00F8 /* 0x000700F8@l */
/* 807D6008  90 01 00 08 */	stw r0, 8(r1)
/* 807D600C  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807D6010  38 81 00 08 */	addi r4, r1, 8
/* 807D6014  38 A0 FF FF */	li r5, -1
/* 807D6018  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807D601C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D6020  7D 89 03 A6 */	mtctr r12
/* 807D6024  4E 80 04 21 */	bctrl 
lbl_807D6028:
/* 807D6028  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807D602C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D6030  FC 40 08 90 */	fmr f2, f1
/* 807D6034  4B A9 9A 4C */	b cLib_addCalc0__FPfff
/* 807D6038  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807D603C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807D6040  39 61 00 20 */	addi r11, r1, 0x20
/* 807D6044  4B B8 C1 E4 */	b _restgpr_29
/* 807D6048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D604C  7C 08 03 A6 */	mtlr r0
/* 807D6050  38 21 00 30 */	addi r1, r1, 0x30
/* 807D6054  4E 80 00 20 */	blr 
