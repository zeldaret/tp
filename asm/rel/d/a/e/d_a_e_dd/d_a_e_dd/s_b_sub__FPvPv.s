lbl_806A3D64:
/* 806A3D64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806A3D68  7C 08 02 A6 */	mflr r0
/* 806A3D6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 806A3D70  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806A3D74  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806A3D78  39 61 00 40 */	addi r11, r1, 0x40
/* 806A3D7C  4B CB E4 5C */	b _savegpr_28
/* 806A3D80  7C 7F 1B 78 */	mr r31, r3
/* 806A3D84  7C 9C 23 78 */	mr r28, r4
/* 806A3D88  3C 80 80 6A */	lis r4, lit_3903@ha
/* 806A3D8C  3B C4 71 C4 */	addi r30, r4, lit_3903@l
/* 806A3D90  4B 97 4F 50 */	b fopAc_IsActor__FPv
/* 806A3D94  2C 03 00 00 */	cmpwi r3, 0
/* 806A3D98  41 82 01 DC */	beq lbl_806A3F74
/* 806A3D9C  A8 1F 00 08 */	lha r0, 8(r31)
/* 806A3DA0  2C 00 02 21 */	cmpwi r0, 0x221
/* 806A3DA4  40 82 01 D0 */	bne lbl_806A3F74
/* 806A3DA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A3DAC  28 00 00 00 */	cmplwi r0, 0
/* 806A3DB0  41 82 01 C4 */	beq lbl_806A3F74
/* 806A3DB4  C0 1C 0E 40 */	lfs f0, 0xe40(r28)
/* 806A3DB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A3DBC  C0 3C 0E 44 */	lfs f1, 0xe44(r28)
/* 806A3DC0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806A3DC4  C0 1C 0E 48 */	lfs f0, 0xe48(r28)
/* 806A3DC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806A3DCC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 806A3DD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806A3DD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A3DD8  38 61 00 0C */	addi r3, r1, 0xc
/* 806A3DDC  38 81 00 18 */	addi r4, r1, 0x18
/* 806A3DE0  3B BF 04 D0 */	addi r29, r31, 0x4d0
/* 806A3DE4  7F A5 EB 78 */	mr r5, r29
/* 806A3DE8  4B BC 2D 4C */	b __mi__4cXyzCFRC3Vec
/* 806A3DEC  38 61 00 0C */	addi r3, r1, 0xc
/* 806A3DF0  4B CA 33 48 */	b PSVECSquareMag
/* 806A3DF4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806A3DF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3DFC  40 81 00 58 */	ble lbl_806A3E54
/* 806A3E00  FC 00 08 34 */	frsqrte f0, f1
/* 806A3E04  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806A3E08  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3E0C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806A3E10  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3E14  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3E18  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3E20  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3E24  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3E28  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3E2C  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3E30  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3E34  FC 44 00 32 */	fmul f2, f4, f0
/* 806A3E38  FC 00 00 32 */	fmul f0, f0, f0
/* 806A3E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 806A3E40  FC 03 00 28 */	fsub f0, f3, f0
/* 806A3E44  FC 02 00 32 */	fmul f0, f2, f0
/* 806A3E48  FF E1 00 32 */	fmul f31, f1, f0
/* 806A3E4C  FF E0 F8 18 */	frsp f31, f31
/* 806A3E50  48 00 00 90 */	b lbl_806A3EE0
lbl_806A3E54:
/* 806A3E54  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806A3E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3E5C  40 80 00 10 */	bge lbl_806A3E6C
/* 806A3E60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806A3E64  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806A3E68  48 00 00 78 */	b lbl_806A3EE0
lbl_806A3E6C:
/* 806A3E6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806A3E70  80 81 00 08 */	lwz r4, 8(r1)
/* 806A3E74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A3E78  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A3E7C  7C 03 00 00 */	cmpw r3, r0
/* 806A3E80  41 82 00 14 */	beq lbl_806A3E94
/* 806A3E84  40 80 00 40 */	bge lbl_806A3EC4
/* 806A3E88  2C 03 00 00 */	cmpwi r3, 0
/* 806A3E8C  41 82 00 20 */	beq lbl_806A3EAC
/* 806A3E90  48 00 00 34 */	b lbl_806A3EC4
lbl_806A3E94:
/* 806A3E94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A3E98  41 82 00 0C */	beq lbl_806A3EA4
/* 806A3E9C  38 00 00 01 */	li r0, 1
/* 806A3EA0  48 00 00 28 */	b lbl_806A3EC8
lbl_806A3EA4:
/* 806A3EA4  38 00 00 02 */	li r0, 2
/* 806A3EA8  48 00 00 20 */	b lbl_806A3EC8
lbl_806A3EAC:
/* 806A3EAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A3EB0  41 82 00 0C */	beq lbl_806A3EBC
/* 806A3EB4  38 00 00 05 */	li r0, 5
/* 806A3EB8  48 00 00 10 */	b lbl_806A3EC8
lbl_806A3EBC:
/* 806A3EBC  38 00 00 03 */	li r0, 3
/* 806A3EC0  48 00 00 08 */	b lbl_806A3EC8
lbl_806A3EC4:
/* 806A3EC4  38 00 00 04 */	li r0, 4
lbl_806A3EC8:
/* 806A3EC8  2C 00 00 01 */	cmpwi r0, 1
/* 806A3ECC  40 82 00 10 */	bne lbl_806A3EDC
/* 806A3ED0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806A3ED4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806A3ED8  48 00 00 08 */	b lbl_806A3EE0
lbl_806A3EDC:
/* 806A3EDC  FF E0 08 90 */	fmr f31, f1
lbl_806A3EE0:
/* 806A3EE0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806A3EE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806A3EE8  40 80 00 8C */	bge lbl_806A3F74
/* 806A3EEC  7F A3 EB 78 */	mr r3, r29
/* 806A3EF0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 806A3EF4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806A3EF8  3B BC 06 C4 */	addi r29, r28, 0x6c4
/* 806A3EFC  C0 7C 06 C4 */	lfs f3, 0x6c4(r28)
/* 806A3F00  4B BC BB 3C */	b cLib_addCalc2__FPffff
/* 806A3F04  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 806A3F08  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806A3F0C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806A3F10  C0 7D 00 00 */	lfs f3, 0(r29)
/* 806A3F14  4B BC BB 28 */	b cLib_addCalc2__FPffff
/* 806A3F18  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 806A3F1C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806A3F20  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806A3F24  C0 7D 00 00 */	lfs f3, 0(r29)
/* 806A3F28  4B BC BB 14 */	b cLib_addCalc2__FPffff
/* 806A3F2C  7F A3 EB 78 */	mr r3, r29
/* 806A3F30  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806A3F34  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806A3F38  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 806A3F3C  4B BC BB 00 */	b cLib_addCalc2__FPffff
/* 806A3F40  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806A3F44  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806A3F48  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 806A3F4C  4B BC BB 34 */	b cLib_addCalc0__FPfff
/* 806A3F50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806A3F54  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 806A3F58  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 806A3F5C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806A3F60  40 80 00 14 */	bge lbl_806A3F74
/* 806A3F64  7F E3 FB 78 */	mr r3, r31
/* 806A3F68  4B 97 5D 14 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806A3F6C  7F E3 FB 78 */	mr r3, r31
/* 806A3F70  48 00 00 08 */	b lbl_806A3F78
lbl_806A3F74:
/* 806A3F74  38 60 00 00 */	li r3, 0
lbl_806A3F78:
/* 806A3F78  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806A3F7C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 806A3F80  39 61 00 40 */	addi r11, r1, 0x40
/* 806A3F84  4B CB E2 A0 */	b _restgpr_28
/* 806A3F88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806A3F8C  7C 08 03 A6 */	mtlr r0
/* 806A3F90  38 21 00 50 */	addi r1, r1, 0x50
/* 806A3F94  4E 80 00 20 */	blr 
