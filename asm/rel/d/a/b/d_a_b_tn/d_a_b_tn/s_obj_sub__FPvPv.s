lbl_80622DF4:
/* 80622DF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80622DF8  7C 08 02 A6 */	mflr r0
/* 80622DFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80622E00  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80622E04  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80622E08  39 61 00 20 */	addi r11, r1, 0x20
/* 80622E0C  4B D3 F3 D0 */	b _savegpr_29
/* 80622E10  7C 7D 1B 78 */	mr r29, r3
/* 80622E14  7C 9E 23 78 */	mr r30, r4
/* 80622E18  3C 80 80 63 */	lis r4, lit_3920@ha
/* 80622E1C  3B E4 E6 34 */	addi r31, r4, lit_3920@l
/* 80622E20  4B 9F 5E C0 */	b fopAc_IsActor__FPv
/* 80622E24  2C 03 00 00 */	cmpwi r3, 0
/* 80622E28  41 82 01 18 */	beq lbl_80622F40
/* 80622E2C  28 1D 00 00 */	cmplwi r29, 0
/* 80622E30  41 82 00 0C */	beq lbl_80622E3C
/* 80622E34  80 7D 00 04 */	lwz r3, 4(r29)
/* 80622E38  48 00 00 08 */	b lbl_80622E40
lbl_80622E3C:
/* 80622E3C  38 60 FF FF */	li r3, -1
lbl_80622E40:
/* 80622E40  4B 9F F2 F8 */	b fpcM_IsCreating__FUi
/* 80622E44  2C 03 00 00 */	cmpwi r3, 0
/* 80622E48  40 82 00 F8 */	bne lbl_80622F40
/* 80622E4C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80622E50  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80622E54  40 82 00 EC */	bne lbl_80622F40
/* 80622E58  7F A3 EB 78 */	mr r3, r29
/* 80622E5C  7F C4 F3 78 */	mr r4, r30
/* 80622E60  4B 9F 7B 04 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80622E64  FF E0 08 90 */	fmr f31, f1
/* 80622E68  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80622E6C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80622E70  40 80 00 38 */	bge lbl_80622EA8
/* 80622E74  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80622E78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80622E7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80622E80  41 82 00 28 */	beq lbl_80622EA8
/* 80622E84  A8 1D 00 08 */	lha r0, 8(r29)
/* 80622E88  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80622E8C  40 82 00 0C */	bne lbl_80622E98
/* 80622E90  7F A3 EB 78 */	mr r3, r29
/* 80622E94  48 00 00 B0 */	b lbl_80622F44
lbl_80622E98:
/* 80622E98  2C 00 02 21 */	cmpwi r0, 0x221
/* 80622E9C  40 82 00 0C */	bne lbl_80622EA8
/* 80622EA0  7F A3 EB 78 */	mr r3, r29
/* 80622EA4  48 00 00 A0 */	b lbl_80622F44
lbl_80622EA8:
/* 80622EA8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80622EAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80622EB0  40 80 00 3C */	bge lbl_80622EEC
/* 80622EB4  A8 1D 00 08 */	lha r0, 8(r29)
/* 80622EB8  2C 00 02 21 */	cmpwi r0, 0x221
/* 80622EBC  40 82 00 30 */	bne lbl_80622EEC
/* 80622EC0  7F A3 EB 78 */	mr r3, r29
/* 80622EC4  4B A0 F1 58 */	b checkInsectBombMove__7dBomb_cFP10fopAc_ac_c
/* 80622EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80622ECC  41 82 00 0C */	beq lbl_80622ED8
/* 80622ED0  7F A3 EB 78 */	mr r3, r29
/* 80622ED4  48 00 00 70 */	b lbl_80622F44
lbl_80622ED8:
/* 80622ED8  A8 1D 0B 58 */	lha r0, 0xb58(r29)
/* 80622EDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80622EE0  40 80 00 0C */	bge lbl_80622EEC
/* 80622EE4  7F A3 EB 78 */	mr r3, r29
/* 80622EE8  48 00 00 5C */	b lbl_80622F44
lbl_80622EEC:
/* 80622EEC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80622EF0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80622EF4  40 80 00 4C */	bge lbl_80622F40
/* 80622EF8  A8 1D 00 08 */	lha r0, 8(r29)
/* 80622EFC  2C 00 03 08 */	cmpwi r0, 0x308
/* 80622F00  40 82 00 40 */	bne lbl_80622F40
/* 80622F04  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80622F08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80622F0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80622F10  41 82 00 30 */	beq lbl_80622F40
/* 80622F14  AB FD 04 DE */	lha r31, 0x4de(r29)
/* 80622F18  7F A3 EB 78 */	mr r3, r29
/* 80622F1C  7F C4 F3 78 */	mr r4, r30
/* 80622F20  4B 9F 77 F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80622F24  7C 03 F8 50 */	subf r0, r3, r31
/* 80622F28  7C 03 07 34 */	extsh r3, r0
/* 80622F2C  4B D4 21 A4 */	b abs
/* 80622F30  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80622F34  40 80 00 0C */	bge lbl_80622F40
/* 80622F38  7F A3 EB 78 */	mr r3, r29
/* 80622F3C  48 00 00 08 */	b lbl_80622F44
lbl_80622F40:
/* 80622F40  38 60 00 00 */	li r3, 0
lbl_80622F44:
/* 80622F44  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80622F48  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80622F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80622F50  4B D3 F2 D8 */	b _restgpr_29
/* 80622F54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80622F58  7C 08 03 A6 */	mtlr r0
/* 80622F5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80622F60  4E 80 00 20 */	blr 
