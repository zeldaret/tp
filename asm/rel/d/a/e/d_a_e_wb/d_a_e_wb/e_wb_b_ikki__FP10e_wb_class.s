lbl_807D6CE0:
/* 807D6CE0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807D6CE4  7C 08 02 A6 */	mflr r0
/* 807D6CE8  90 01 01 14 */	stw r0, 0x114(r1)
/* 807D6CEC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807D6CF0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807D6CF4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807D6CF8  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807D6CFC  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807D6D00  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807D6D04  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807D6D08  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807D6D0C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807D6D10  4B B8 B4 A8 */	b _savegpr_20
/* 807D6D14  7C 7F 1B 78 */	mr r31, r3
/* 807D6D18  3C 60 80 7E */	lis r3, lit_1109@ha
/* 807D6D1C  3B 83 35 78 */	addi r28, r3, lit_1109@l
/* 807D6D20  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807D6D24  3B A3 29 8C */	addi r29, r3, lit_3882@l
/* 807D6D28  88 1C 01 DC */	lbz r0, 0x1dc(r28)
/* 807D6D2C  7C 00 07 75 */	extsb. r0, r0
/* 807D6D30  40 82 00 80 */	bne lbl_807D6DB0
/* 807D6D34  C0 5D 01 5C */	lfs f2, 0x15c(r29)
/* 807D6D38  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 807D6D3C  C0 3D 01 60 */	lfs f1, 0x160(r29)
/* 807D6D40  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807D6D44  C0 1D 01 64 */	lfs f0, 0x164(r29)
/* 807D6D48  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D6D4C  D0 5C 01 EC */	stfs f2, 0x1ec(r28)
/* 807D6D50  38 7C 01 EC */	addi r3, r28, 0x1ec
/* 807D6D54  D0 23 00 04 */	stfs f1, 4(r3)
/* 807D6D58  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D6D5C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807D6D60  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807D6D64  38 BC 01 D0 */	addi r5, r28, 0x1d0
/* 807D6D68  4B FF B6 B1 */	bl __register_global_object
/* 807D6D6C  C0 5D 01 5C */	lfs f2, 0x15c(r29)
/* 807D6D70  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 807D6D74  C0 3D 01 60 */	lfs f1, 0x160(r29)
/* 807D6D78  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 807D6D7C  C0 1D 01 68 */	lfs f0, 0x168(r29)
/* 807D6D80  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807D6D84  38 7C 01 EC */	addi r3, r28, 0x1ec
/* 807D6D88  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807D6D8C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807D6D90  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807D6D94  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6D98  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807D6D9C  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807D6DA0  38 BC 01 E0 */	addi r5, r28, 0x1e0
/* 807D6DA4  4B FF B6 75 */	bl __register_global_object
/* 807D6DA8  38 00 00 01 */	li r0, 1
/* 807D6DAC  98 1C 01 DC */	stb r0, 0x1dc(r28)
lbl_807D6DB0:
/* 807D6DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D6DB4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 807D6DB8  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 807D6DBC  7F E3 FB 78 */	mr r3, r31
/* 807D6DC0  7F 64 DB 78 */	mr r4, r27
/* 807D6DC4  4B 84 3B A0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D6DC8  FF A0 08 90 */	fmr f29, f1
/* 807D6DCC  7F E3 FB 78 */	mr r3, r31
/* 807D6DD0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807D6DD4  4B 84 39 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D6DD8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807D6DDC  7C 04 18 50 */	subf r0, r4, r3
/* 807D6DE0  7C 1A 07 34 */	extsh r26, r0
/* 807D6DE4  C3 FD 00 48 */	lfs f31, 0x48(r29)
/* 807D6DE8  C3 DD 00 60 */	lfs f30, 0x60(r29)
/* 807D6DEC  3B 20 04 00 */	li r25, 0x400
/* 807D6DF0  3B 00 00 00 */	li r24, 0
/* 807D6DF4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6DF8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807D6DFC  FC 00 00 1E */	fctiwz f0, f0
/* 807D6E00  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 807D6E04  82 E1 00 9C */	lwz r23, 0x9c(r1)
/* 807D6E08  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 807D6E0C  2C 00 00 01 */	cmpwi r0, 1
/* 807D6E10  41 82 03 14 */	beq lbl_807D7124
/* 807D6E14  40 80 00 34 */	bge lbl_807D6E48
/* 807D6E18  2C 00 FF 9E */	cmpwi r0, -98
/* 807D6E1C  41 82 00 C8 */	beq lbl_807D6EE4
/* 807D6E20  40 80 00 14 */	bge lbl_807D6E34
/* 807D6E24  2C 00 FF 9C */	cmpwi r0, -100
/* 807D6E28  41 82 00 48 */	beq lbl_807D6E70
/* 807D6E2C  40 80 00 74 */	bge lbl_807D6EA0
/* 807D6E30  48 00 08 30 */	b lbl_807D7660
lbl_807D6E34:
/* 807D6E34  2C 00 00 00 */	cmpwi r0, 0
/* 807D6E38  40 80 02 C0 */	bge lbl_807D70F8
/* 807D6E3C  2C 00 FF A0 */	cmpwi r0, -96
/* 807D6E40  40 80 08 20 */	bge lbl_807D7660
/* 807D6E44  48 00 00 D0 */	b lbl_807D6F14
lbl_807D6E48:
/* 807D6E48  2C 00 00 05 */	cmpwi r0, 5
/* 807D6E4C  41 82 07 34 */	beq lbl_807D7580
/* 807D6E50  40 80 00 14 */	bge lbl_807D6E64
/* 807D6E54  2C 00 00 03 */	cmpwi r0, 3
/* 807D6E58  41 82 03 6C */	beq lbl_807D71C4
/* 807D6E5C  40 80 04 4C */	bge lbl_807D72A8
/* 807D6E60  48 00 02 F8 */	b lbl_807D7158
lbl_807D6E64:
/* 807D6E64  2C 00 00 07 */	cmpwi r0, 7
/* 807D6E68  40 80 07 F8 */	bge lbl_807D7660
/* 807D6E6C  48 00 07 94 */	b lbl_807D7600
lbl_807D6E70:
/* 807D6E70  7F E3 FB 78 */	mr r3, r31
/* 807D6E74  38 80 00 27 */	li r4, 0x27
/* 807D6E78  C0 3D 00 F8 */	lfs f1, 0xf8(r29)
/* 807D6E7C  38 A0 00 02 */	li r5, 2
/* 807D6E80  FC 40 F0 90 */	fmr f2, f30
/* 807D6E84  4B FF B6 C5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D6E88  38 00 FF 9D */	li r0, -99
/* 807D6E8C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D6E90  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D6E94  60 00 04 00 */	ori r0, r0, 0x400
/* 807D6E98  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D6E9C  48 00 07 C4 */	b lbl_807D7660
lbl_807D6EA0:
/* 807D6EA0  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6EA4  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 807D6EA8  4B B5 15 84 */	b checkPass__12J3DFrameCtrlFf
/* 807D6EAC  2C 03 00 00 */	cmpwi r3, 0
/* 807D6EB0  40 82 00 1C */	bne lbl_807D6ECC
/* 807D6EB4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6EB8  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6EBC  C0 3D 01 6C */	lfs f1, 0x16c(r29)
/* 807D6EC0  4B B5 15 6C */	b checkPass__12J3DFrameCtrlFf
/* 807D6EC4  2C 03 00 00 */	cmpwi r3, 0
/* 807D6EC8  41 82 07 98 */	beq lbl_807D7660
lbl_807D6ECC:
/* 807D6ECC  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D6ED0  60 00 00 01 */	ori r0, r0, 1
/* 807D6ED4  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D6ED8  38 00 00 0A */	li r0, 0xa
/* 807D6EDC  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D6EE0  48 00 07 80 */	b lbl_807D7660
lbl_807D6EE4:
/* 807D6EE4  7F E3 FB 78 */	mr r3, r31
/* 807D6EE8  38 80 00 26 */	li r4, 0x26
/* 807D6EEC  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 807D6EF0  38 A0 00 00 */	li r5, 0
/* 807D6EF4  FC 40 F0 90 */	fmr f2, f30
/* 807D6EF8  4B FF B6 51 */	bl anm_init__FP10e_wb_classifUcf
/* 807D6EFC  38 00 FF 9F */	li r0, -97
/* 807D6F00  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D6F04  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D6F08  60 00 08 00 */	ori r0, r0, 0x800
/* 807D6F0C  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D6F10  48 00 07 50 */	b lbl_807D7660
lbl_807D6F14:
/* 807D6F14  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6F18  C0 3D 01 70 */	lfs f1, 0x170(r29)
/* 807D6F1C  4B B5 15 10 */	b checkPass__12J3DFrameCtrlFf
/* 807D6F20  2C 03 00 00 */	cmpwi r3, 0
/* 807D6F24  40 82 00 4C */	bne lbl_807D6F70
/* 807D6F28  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6F2C  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6F30  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 807D6F34  4B B5 14 F8 */	b checkPass__12J3DFrameCtrlFf
/* 807D6F38  2C 03 00 00 */	cmpwi r3, 0
/* 807D6F3C  40 82 00 34 */	bne lbl_807D6F70
/* 807D6F40  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6F44  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6F48  C0 3D 01 74 */	lfs f1, 0x174(r29)
/* 807D6F4C  4B B5 14 E0 */	b checkPass__12J3DFrameCtrlFf
/* 807D6F50  2C 03 00 00 */	cmpwi r3, 0
/* 807D6F54  40 82 00 1C */	bne lbl_807D6F70
/* 807D6F58  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6F5C  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6F60  C0 3D 01 78 */	lfs f1, 0x178(r29)
/* 807D6F64  4B B5 14 C8 */	b checkPass__12J3DFrameCtrlFf
/* 807D6F68  2C 03 00 00 */	cmpwi r3, 0
/* 807D6F6C  41 82 00 1C */	beq lbl_807D6F88
lbl_807D6F70:
/* 807D6F70  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D6F74  60 00 00 01 */	ori r0, r0, 1
/* 807D6F78  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D6F7C  38 00 00 0A */	li r0, 0xa
/* 807D6F80  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D6F84  48 00 00 58 */	b lbl_807D6FDC
lbl_807D6F88:
/* 807D6F88  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6F8C  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6F90  C0 3D 01 7C */	lfs f1, 0x17c(r29)
/* 807D6F94  4B B5 14 98 */	b checkPass__12J3DFrameCtrlFf
/* 807D6F98  2C 03 00 00 */	cmpwi r3, 0
/* 807D6F9C  41 82 00 14 */	beq lbl_807D6FB0
/* 807D6FA0  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D6FA4  60 00 00 03 */	ori r0, r0, 3
/* 807D6FA8  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D6FAC  48 00 00 30 */	b lbl_807D6FDC
lbl_807D6FB0:
/* 807D6FB0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D6FB4  38 63 00 0C */	addi r3, r3, 0xc
/* 807D6FB8  C0 3D 01 80 */	lfs f1, 0x180(r29)
/* 807D6FBC  4B B5 14 70 */	b checkPass__12J3DFrameCtrlFf
/* 807D6FC0  2C 03 00 00 */	cmpwi r3, 0
/* 807D6FC4  41 82 00 18 */	beq lbl_807D6FDC
/* 807D6FC8  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D6FCC  60 00 00 02 */	ori r0, r0, 2
/* 807D6FD0  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D6FD4  38 00 00 0A */	li r0, 0xa
/* 807D6FD8  98 1F 14 2C */	stb r0, 0x142c(r31)
lbl_807D6FDC:
/* 807D6FDC  2C 17 00 70 */	cmpwi r23, 0x70
/* 807D6FE0  41 80 00 8C */	blt lbl_807D706C
/* 807D6FE4  40 82 00 6C */	bne lbl_807D7050
/* 807D6FE8  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D6FEC  60 00 00 10 */	ori r0, r0, 0x10
/* 807D6FF0  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D6FF4  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807D6FF8  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807D6FFC  90 01 00 38 */	stw r0, 0x38(r1)
/* 807D7000  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D7004  38 81 00 38 */	addi r4, r1, 0x38
/* 807D7008  38 A0 00 00 */	li r5, 0
/* 807D700C  38 C0 FF FF */	li r6, -1
/* 807D7010  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807D7014  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D7018  7D 89 03 A6 */	mtctr r12
/* 807D701C  4E 80 04 21 */	bctrl 
/* 807D7020  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F8@ha */
/* 807D7024  38 03 00 F8 */	addi r0, r3, 0x00F8 /* 0x000700F8@l */
/* 807D7028  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D702C  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D7030  38 81 00 34 */	addi r4, r1, 0x34
/* 807D7034  38 A0 FF FF */	li r5, -1
/* 807D7038  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807D703C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D7040  7D 89 03 A6 */	mtctr r12
/* 807D7044  4E 80 04 21 */	bctrl 
/* 807D7048  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 807D704C  D0 1F 16 84 */	stfs f0, 0x1684(r31)
lbl_807D7050:
/* 807D7050  38 7C 00 50 */	addi r3, r28, 0x50
/* 807D7054  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 807D7058  FF E0 08 90 */	fmr f31, f1
/* 807D705C  C0 1D 01 84 */	lfs f0, 0x184(r29)
/* 807D7060  EF C0 00 72 */	fmuls f30, f0, f1
/* 807D7064  38 00 00 01 */	li r0, 1
/* 807D7068  98 1F 14 2C */	stb r0, 0x142c(r31)
lbl_807D706C:
/* 807D706C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D7070  38 80 00 01 */	li r4, 1
/* 807D7074  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D7078  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D707C  40 82 00 18 */	bne lbl_807D7094
/* 807D7080  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807D7084  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D7088  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D708C  41 82 00 08 */	beq lbl_807D7094
/* 807D7090  38 80 00 00 */	li r4, 0
lbl_807D7094:
/* 807D7094  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D7098  41 82 05 C8 */	beq lbl_807D7660
/* 807D709C  7F E3 FB 78 */	mr r3, r31
/* 807D70A0  38 80 00 20 */	li r4, 0x20
/* 807D70A4  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 807D70A8  38 A0 00 02 */	li r5, 2
/* 807D70AC  FC 40 08 90 */	fmr f2, f1
/* 807D70B0  4B FF B4 99 */	bl anm_init__FP10e_wb_classifUcf
/* 807D70B4  38 00 00 04 */	li r0, 4
/* 807D70B8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D70BC  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D70C0  D0 1F 16 90 */	stfs f0, 0x1690(r31)
/* 807D70C4  38 00 00 01 */	li r0, 1
/* 807D70C8  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 807D70CC  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D70D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807D70D4  38 7C 01 EC */	addi r3, r28, 0x1ec
/* 807D70D8  7C 63 02 14 */	add r3, r3, r0
/* 807D70DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 807D70E0  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D70E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 807D70E8  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D70EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 807D70F0  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 807D70F4  48 00 05 6C */	b lbl_807D7660
lbl_807D70F8:
/* 807D70F8  7F E3 FB 78 */	mr r3, r31
/* 807D70FC  38 80 00 2A */	li r4, 0x2a
/* 807D7100  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 807D7104  38 A0 00 02 */	li r5, 2
/* 807D7108  FC 40 F0 90 */	fmr f2, f30
/* 807D710C  4B FF B4 3D */	bl anm_init__FP10e_wb_classifUcf
/* 807D7110  38 00 00 01 */	li r0, 1
/* 807D7114  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7118  38 00 00 0A */	li r0, 0xa
/* 807D711C  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 807D7120  48 00 05 40 */	b lbl_807D7660
lbl_807D7124:
/* 807D7124  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 807D7128  2C 00 00 00 */	cmpwi r0, 0
/* 807D712C  40 82 05 34 */	bne lbl_807D7660
/* 807D7130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D7134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D7138  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807D713C  28 00 00 00 */	cmplwi r0, 0
/* 807D7140  40 82 05 20 */	bne lbl_807D7660
/* 807D7144  38 00 00 02 */	li r0, 2
/* 807D7148  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D714C  38 00 00 01 */	li r0, 1
/* 807D7150  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 807D7154  48 00 05 0C */	b lbl_807D7660
lbl_807D7158:
/* 807D7158  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 807D715C  28 00 00 00 */	cmplwi r0, 0
/* 807D7160  40 82 05 00 */	bne lbl_807D7660
/* 807D7164  7F E3 FB 78 */	mr r3, r31
/* 807D7168  38 80 00 1B */	li r4, 0x1b
/* 807D716C  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D7170  38 A0 00 00 */	li r5, 0
/* 807D7174  FC 40 F0 90 */	fmr f2, f30
/* 807D7178  4B FF B3 D1 */	bl anm_init__FP10e_wb_classifUcf
/* 807D717C  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D7180  60 00 00 08 */	ori r0, r0, 8
/* 807D7184  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D7188  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 807D718C  D0 1F 16 84 */	stfs f0, 0x1684(r31)
/* 807D7190  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D7194  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807D7198  38 7C 01 EC */	addi r3, r28, 0x1ec
/* 807D719C  7C 63 02 14 */	add r3, r3, r0
/* 807D71A0  C0 03 00 00 */	lfs f0, 0(r3)
/* 807D71A4  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D71A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 807D71AC  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D71B0  C0 03 00 08 */	lfs f0, 8(r3)
/* 807D71B4  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 807D71B8  38 00 00 03 */	li r0, 3
/* 807D71BC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D71C0  48 00 04 A0 */	b lbl_807D7660
lbl_807D71C4:
/* 807D71C4  38 63 00 0C */	addi r3, r3, 0xc
/* 807D71C8  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D71CC  4B B5 12 60 */	b checkPass__12J3DFrameCtrlFf
/* 807D71D0  2C 03 00 00 */	cmpwi r3, 0
/* 807D71D4  41 82 00 1C */	beq lbl_807D71F0
/* 807D71D8  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D71DC  60 00 00 02 */	ori r0, r0, 2
/* 807D71E0  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D71E4  38 00 00 0A */	li r0, 0xa
/* 807D71E8  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D71EC  48 00 00 28 */	b lbl_807D7214
lbl_807D71F0:
/* 807D71F0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D71F4  38 63 00 0C */	addi r3, r3, 0xc
/* 807D71F8  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 807D71FC  4B B5 12 30 */	b checkPass__12J3DFrameCtrlFf
/* 807D7200  2C 03 00 00 */	cmpwi r3, 0
/* 807D7204  41 82 00 10 */	beq lbl_807D7214
/* 807D7208  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D720C  60 00 00 03 */	ori r0, r0, 3
/* 807D7210  98 1F 14 2D */	stb r0, 0x142d(r31)
lbl_807D7214:
/* 807D7214  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D7218  38 80 00 01 */	li r4, 1
/* 807D721C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D7220  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D7224  40 82 00 18 */	bne lbl_807D723C
/* 807D7228  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807D722C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D7230  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D7234  41 82 00 08 */	beq lbl_807D723C
/* 807D7238  38 80 00 00 */	li r4, 0
lbl_807D723C:
/* 807D723C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D7240  41 82 04 20 */	beq lbl_807D7660
/* 807D7244  7F E3 FB 78 */	mr r3, r31
/* 807D7248  38 80 00 20 */	li r4, 0x20
/* 807D724C  C0 3D 00 F8 */	lfs f1, 0xf8(r29)
/* 807D7250  38 A0 00 02 */	li r5, 2
/* 807D7254  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D7258  4B FF B2 F1 */	bl anm_init__FP10e_wb_classifUcf
/* 807D725C  38 00 00 04 */	li r0, 4
/* 807D7260  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7264  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D7268  60 00 00 10 */	ori r0, r0, 0x10
/* 807D726C  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D7270  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807D7274  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807D7278  90 01 00 30 */	stw r0, 0x30(r1)
/* 807D727C  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D7280  38 81 00 30 */	addi r4, r1, 0x30
/* 807D7284  38 A0 00 00 */	li r5, 0
/* 807D7288  38 C0 FF FF */	li r6, -1
/* 807D728C  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807D7290  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D7294  7D 89 03 A6 */	mtctr r12
/* 807D7298  4E 80 04 21 */	bctrl 
/* 807D729C  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D72A0  D0 1F 16 90 */	stfs f0, 0x1690(r31)
/* 807D72A4  48 00 03 BC */	b lbl_807D7660
lbl_807D72A8:
/* 807D72A8  38 7C 00 50 */	addi r3, r28, 0x50
/* 807D72AC  C3 E3 00 34 */	lfs f31, 0x34(r3)
/* 807D72B0  C3 DD 00 F8 */	lfs f30, 0xf8(r29)
/* 807D72B4  38 00 00 01 */	li r0, 1
/* 807D72B8  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D72BC  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 807D72C0  40 80 00 30 */	bge lbl_807D72F0
/* 807D72C4  2C 1A D0 00 */	cmpwi r26, -12288
/* 807D72C8  40 81 00 28 */	ble lbl_807D72F0
/* 807D72CC  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 807D72D0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D72D4  40 80 00 1C */	bge lbl_807D72F0
/* 807D72D8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 807D72DC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D72E0  40 81 00 10 */	ble lbl_807D72F0
/* 807D72E4  38 00 00 0D */	li r0, 0xd
/* 807D72E8  B0 1F 06 DC */	sth r0, 0x6dc(r31)
/* 807D72EC  48 00 00 3C */	b lbl_807D7328
lbl_807D72F0:
/* 807D72F0  2C 1A 08 00 */	cmpwi r26, 0x800
/* 807D72F4  40 80 00 18 */	bge lbl_807D730C
/* 807D72F8  2C 1A F8 00 */	cmpwi r26, -2048
/* 807D72FC  40 81 00 10 */	ble lbl_807D730C
/* 807D7300  38 00 00 01 */	li r0, 1
/* 807D7304  B0 1F 06 DA */	sth r0, 0x6da(r31)
/* 807D7308  48 00 00 20 */	b lbl_807D7328
lbl_807D730C:
/* 807D730C  7F 40 07 35 */	extsh. r0, r26
/* 807D7310  40 81 00 10 */	ble lbl_807D7320
/* 807D7314  38 00 00 03 */	li r0, 3
/* 807D7318  B0 1F 06 DA */	sth r0, 0x6da(r31)
/* 807D731C  48 00 00 0C */	b lbl_807D7328
lbl_807D7320:
/* 807D7320  38 00 00 02 */	li r0, 2
/* 807D7324  B0 1F 06 DA */	sth r0, 0x6da(r31)
lbl_807D7328:
/* 807D7328  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 807D732C  7C 00 07 75 */	extsb. r0, r0
/* 807D7330  40 82 00 14 */	bne lbl_807D7344
/* 807D7334  38 7C 00 50 */	addi r3, r28, 0x50
/* 807D7338  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 807D733C  C3 83 00 54 */	lfs f28, 0x54(r3)
/* 807D7340  48 00 00 10 */	b lbl_807D7350
lbl_807D7344:
/* 807D7344  38 7C 00 50 */	addi r3, r28, 0x50
/* 807D7348  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 807D734C  C3 83 00 50 */	lfs f28, 0x50(r3)
lbl_807D7350:
/* 807D7350  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 807D7354  40 80 00 D0 */	bge lbl_807D7424
/* 807D7358  2C 1A D0 00 */	cmpwi r26, -12288
/* 807D735C  40 81 00 C8 */	ble lbl_807D7424
/* 807D7360  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D7364  40 81 00 A8 */	ble lbl_807D740C
/* 807D7368  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807D736C  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807D7370  C0 5D 01 08 */	lfs f2, 0x108(r29)
/* 807D7374  C0 7F 05 2C */	lfs f3, 0x52c(r31)
/* 807D7378  C0 1F 16 90 */	lfs f0, 0x1690(r31)
/* 807D737C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D7380  4B A9 86 BC */	b cLib_addCalc2__FPffff
/* 807D7384  38 7F 16 90 */	addi r3, r31, 0x1690
/* 807D7388  C0 3D 01 88 */	lfs f1, 0x188(r29)
/* 807D738C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D7390  C0 7D 01 8C */	lfs f3, 0x18c(r29)
/* 807D7394  4B A9 86 A8 */	b cLib_addCalc2__FPffff
/* 807D7398  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D739C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D73A0  80 63 00 00 */	lwz r3, 0(r3)
/* 807D73A4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807D73A8  4B 83 50 34 */	b mDoMtx_YrotS__FPA4_fs
/* 807D73AC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807D73B0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807D73B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D73B8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807D73BC  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D73C0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807D73C4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807D73C8  38 61 00 8C */	addi r3, r1, 0x8c
/* 807D73CC  38 81 00 80 */	addi r4, r1, 0x80
/* 807D73D0  4B A9 9B 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 807D73D4  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 807D73D8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807D73DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D73E0  FC 00 00 1E */	fctiwz f0, f0
/* 807D73E4  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 807D73E8  83 01 00 9C */	lwz r24, 0x9c(r1)
/* 807D73EC  7F 00 07 34 */	extsh r0, r24
/* 807D73F0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 807D73F4  40 81 00 0C */	ble lbl_807D7400
/* 807D73F8  3B 00 10 00 */	li r24, 0x1000
/* 807D73FC  48 00 00 10 */	b lbl_807D740C
lbl_807D7400:
/* 807D7400  2C 00 F0 00 */	cmpwi r0, -4096
/* 807D7404  40 80 00 08 */	bge lbl_807D740C
/* 807D7408  3B 00 F0 00 */	li r24, -4096
lbl_807D740C:
/* 807D740C  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 807D7410  40 80 00 14 */	bge lbl_807D7424
/* 807D7414  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 807D7418  80 03 05 88 */	lwz r0, 0x588(r3)
/* 807D741C  64 00 00 08 */	oris r0, r0, 8
/* 807D7420  90 03 05 88 */	stw r0, 0x588(r3)
lbl_807D7424:
/* 807D7424  38 61 00 5C */	addi r3, r1, 0x5c
/* 807D7428  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 807D742C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807D7430  4B A8 F7 04 */	b __mi__4cXyzCFRC3Vec
/* 807D7434  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 807D7438  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 807D743C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807D7440  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807D7444  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 807D7448  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 807D744C  4B A9 02 28 */	b cM_atan2s__Fff
/* 807D7450  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 807D7454  38 61 00 8C */	addi r3, r1, 0x8c
/* 807D7458  4B B6 FC E0 */	b PSVECSquareMag
/* 807D745C  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D7460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7464  40 81 00 58 */	ble lbl_807D74BC
/* 807D7468  FC 00 08 34 */	frsqrte f0, f1
/* 807D746C  C8 9D 00 90 */	lfd f4, 0x90(r29)
/* 807D7470  FC 44 00 32 */	fmul f2, f4, f0
/* 807D7474  C8 7D 00 98 */	lfd f3, 0x98(r29)
/* 807D7478  FC 00 00 32 */	fmul f0, f0, f0
/* 807D747C  FC 01 00 32 */	fmul f0, f1, f0
/* 807D7480  FC 03 00 28 */	fsub f0, f3, f0
/* 807D7484  FC 02 00 32 */	fmul f0, f2, f0
/* 807D7488  FC 44 00 32 */	fmul f2, f4, f0
/* 807D748C  FC 00 00 32 */	fmul f0, f0, f0
/* 807D7490  FC 01 00 32 */	fmul f0, f1, f0
/* 807D7494  FC 03 00 28 */	fsub f0, f3, f0
/* 807D7498  FC 02 00 32 */	fmul f0, f2, f0
/* 807D749C  FC 44 00 32 */	fmul f2, f4, f0
/* 807D74A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807D74A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807D74A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807D74AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807D74B0  FC 21 00 32 */	fmul f1, f1, f0
/* 807D74B4  FC 20 08 18 */	frsp f1, f1
/* 807D74B8  48 00 00 88 */	b lbl_807D7540
lbl_807D74BC:
/* 807D74BC  C8 1D 00 A0 */	lfd f0, 0xa0(r29)
/* 807D74C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D74C4  40 80 00 10 */	bge lbl_807D74D4
/* 807D74C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807D74CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807D74D0  48 00 00 70 */	b lbl_807D7540
lbl_807D74D4:
/* 807D74D4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807D74D8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807D74DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D74E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D74E4  7C 03 00 00 */	cmpw r3, r0
/* 807D74E8  41 82 00 14 */	beq lbl_807D74FC
/* 807D74EC  40 80 00 40 */	bge lbl_807D752C
/* 807D74F0  2C 03 00 00 */	cmpwi r3, 0
/* 807D74F4  41 82 00 20 */	beq lbl_807D7514
/* 807D74F8  48 00 00 34 */	b lbl_807D752C
lbl_807D74FC:
/* 807D74FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D7500  41 82 00 0C */	beq lbl_807D750C
/* 807D7504  38 00 00 01 */	li r0, 1
/* 807D7508  48 00 00 28 */	b lbl_807D7530
lbl_807D750C:
/* 807D750C  38 00 00 02 */	li r0, 2
/* 807D7510  48 00 00 20 */	b lbl_807D7530
lbl_807D7514:
/* 807D7514  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D7518  41 82 00 0C */	beq lbl_807D7524
/* 807D751C  38 00 00 05 */	li r0, 5
/* 807D7520  48 00 00 10 */	b lbl_807D7530
lbl_807D7524:
/* 807D7524  38 00 00 03 */	li r0, 3
/* 807D7528  48 00 00 08 */	b lbl_807D7530
lbl_807D752C:
/* 807D752C  38 00 00 04 */	li r0, 4
lbl_807D7530:
/* 807D7530  2C 00 00 01 */	cmpwi r0, 1
/* 807D7534  40 82 00 0C */	bne lbl_807D7540
/* 807D7538  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807D753C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807D7540:
/* 807D7540  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 807D7544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7548  40 80 00 30 */	bge lbl_807D7578
/* 807D754C  7F E3 FB 78 */	mr r3, r31
/* 807D7550  38 80 00 25 */	li r4, 0x25
/* 807D7554  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D7558  38 A0 00 02 */	li r5, 2
/* 807D755C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D7560  4B FF AF E9 */	bl anm_init__FP10e_wb_classifUcf
/* 807D7564  38 00 00 05 */	li r0, 5
/* 807D7568  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D756C  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D7570  60 00 00 20 */	ori r0, r0, 0x20
/* 807D7574  B0 1F 06 BE */	sth r0, 0x6be(r31)
lbl_807D7578:
/* 807D7578  3B 20 08 00 */	li r25, 0x800
/* 807D757C  48 00 00 E4 */	b lbl_807D7660
lbl_807D7580:
/* 807D7580  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807D7584  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 807D7588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D758C  40 81 00 3C */	ble lbl_807D75C8
/* 807D7590  38 00 00 02 */	li r0, 2
/* 807D7594  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D7598  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030029@ha */
/* 807D759C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00030029@l */
/* 807D75A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807D75A4  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D75A8  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D75AC  38 A0 00 00 */	li r5, 0
/* 807D75B0  38 C0 FF FF */	li r6, -1
/* 807D75B4  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807D75B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807D75BC  7D 89 03 A6 */	mtctr r12
/* 807D75C0  4E 80 04 21 */	bctrl 
/* 807D75C4  48 00 00 9C */	b lbl_807D7660
lbl_807D75C8:
/* 807D75C8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 807D75CC  40 80 00 94 */	bge lbl_807D7660
/* 807D75D0  7F E3 FB 78 */	mr r3, r31
/* 807D75D4  38 80 00 2A */	li r4, 0x2a
/* 807D75D8  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 807D75DC  38 A0 00 02 */	li r5, 2
/* 807D75E0  FC 40 F0 90 */	fmr f2, f30
/* 807D75E4  4B FF AF 65 */	bl anm_init__FP10e_wb_classifUcf
/* 807D75E8  38 00 00 06 */	li r0, 6
/* 807D75EC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D75F0  A8 7F 05 DC */	lha r3, 0x5dc(r31)
/* 807D75F4  38 03 80 00 */	addi r0, r3, -32768
/* 807D75F8  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 807D75FC  48 00 00 64 */	b lbl_807D7660
lbl_807D7600:
/* 807D7600  3B 20 02 00 */	li r25, 0x200
/* 807D7604  A8 1F 05 DC */	lha r0, 0x5dc(r31)
/* 807D7608  7C 04 00 50 */	subf r0, r4, r0
/* 807D760C  B0 1F 06 D0 */	sth r0, 0x6d0(r31)
/* 807D7610  A8 1F 06 D0 */	lha r0, 0x6d0(r31)
/* 807D7614  2C 00 08 00 */	cmpwi r0, 0x800
/* 807D7618  40 80 00 24 */	bge lbl_807D763C
/* 807D761C  2C 00 F8 00 */	cmpwi r0, -2048
/* 807D7620  40 81 00 1C */	ble lbl_807D763C
/* 807D7624  38 00 00 02 */	li r0, 2
/* 807D7628  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D762C  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D7630  20 00 00 01 */	subfic r0, r0, 1
/* 807D7634  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 807D7638  48 00 00 28 */	b lbl_807D7660
lbl_807D763C:
/* 807D763C  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 807D7640  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D7644  41 82 00 1C */	beq lbl_807D7660
/* 807D7648  7F E3 FB 78 */	mr r3, r31
/* 807D764C  38 80 00 28 */	li r4, 0x28
/* 807D7650  C0 3D 00 F8 */	lfs f1, 0xf8(r29)
/* 807D7654  38 A0 00 02 */	li r5, 2
/* 807D7658  C0 5D 00 E8 */	lfs f2, 0xe8(r29)
/* 807D765C  4B FF AE ED */	bl anm_init__FP10e_wb_classifUcf
lbl_807D7660:
/* 807D7660  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807D7664  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 807D7668  38 A0 00 02 */	li r5, 2
/* 807D766C  7F 26 CB 78 */	mr r6, r25
/* 807D7670  4B A9 8F 98 */	b cLib_addCalcAngleS2__FPssss
/* 807D7674  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 807D7678  7F 04 C3 78 */	mr r4, r24
/* 807D767C  38 A0 00 08 */	li r5, 8
/* 807D7680  C0 3D 01 90 */	lfs f1, 0x190(r29)
/* 807D7684  C0 1F 16 90 */	lfs f0, 0x1690(r31)
/* 807D7688  EC 01 00 2A */	fadds f0, f1, f0
/* 807D768C  FC 00 00 1E */	fctiwz f0, f0
/* 807D7690  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 807D7694  80 C1 00 9C */	lwz r6, 0x9c(r1)
/* 807D7698  4B A9 8F 70 */	b cLib_addCalcAngleS2__FPssss
/* 807D769C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807D76A0  FC 20 F8 90 */	fmr f1, f31
/* 807D76A4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D76A8  FC 60 F0 90 */	fmr f3, f30
/* 807D76AC  4B A9 83 90 */	b cLib_addCalc2__FPffff
/* 807D76B0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807D76B4  C0 1D 01 94 */	lfs f0, 0x194(r29)
/* 807D76B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D76BC  40 81 00 0C */	ble lbl_807D76C8
/* 807D76C0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807D76C4  48 00 00 14 */	b lbl_807D76D8
lbl_807D76C8:
/* 807D76C8  C0 1D 01 98 */	lfs f0, 0x198(r29)
/* 807D76CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D76D0  40 80 00 08 */	bge lbl_807D76D8
/* 807D76D4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
lbl_807D76D8:
/* 807D76D8  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 807D76DC  2C 00 00 04 */	cmpwi r0, 4
/* 807D76E0  40 82 00 C0 */	bne lbl_807D77A0
/* 807D76E4  2C 1A 40 00 */	cmpwi r26, 0x4000
/* 807D76E8  41 81 00 0C */	bgt lbl_807D76F4
/* 807D76EC  2C 1A C0 00 */	cmpwi r26, -16384
/* 807D76F0  40 80 00 B0 */	bge lbl_807D77A0
lbl_807D76F4:
/* 807D76F4  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 807D76F8  28 00 00 00 */	cmplwi r0, 0
/* 807D76FC  41 82 00 A4 */	beq lbl_807D77A0
/* 807D7700  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D7704  2C 00 00 01 */	cmpwi r0, 1
/* 807D7708  40 82 00 4C */	bne lbl_807D7754
/* 807D770C  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807D7710  C0 5D 01 38 */	lfs f2, 0x138(r29)
/* 807D7714  38 7C 01 EC */	addi r3, r28, 0x1ec
/* 807D7718  C0 03 00 08 */	lfs f0, 8(r3)
/* 807D771C  EC 02 00 2A */	fadds f0, f2, f0
/* 807D7720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7724  40 80 00 30 */	bge lbl_807D7754
/* 807D7728  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807D772C  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 807D7730  EC 03 10 28 */	fsubs f0, f3, f2
/* 807D7734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7738  40 81 00 1C */	ble lbl_807D7754
/* 807D773C  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 807D7740  38 00 00 05 */	li r0, 5
/* 807D7744  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7748  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D774C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807D7750  48 00 00 50 */	b lbl_807D77A0
lbl_807D7754:
/* 807D7754  2C 00 00 00 */	cmpwi r0, 0
/* 807D7758  40 82 00 48 */	bne lbl_807D77A0
/* 807D775C  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807D7760  38 7C 01 EC */	addi r3, r28, 0x1ec
/* 807D7764  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807D7768  C0 5D 01 38 */	lfs f2, 0x138(r29)
/* 807D776C  EC 00 10 28 */	fsubs f0, f0, f2
/* 807D7770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7774  40 81 00 2C */	ble lbl_807D77A0
/* 807D7778  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807D777C  C0 63 00 08 */	lfs f3, 8(r3)
/* 807D7780  EC 02 18 2A */	fadds f0, f2, f3
/* 807D7784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7788  40 80 00 18 */	bge lbl_807D77A0
/* 807D778C  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 807D7790  38 00 00 05 */	li r0, 5
/* 807D7794  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7798  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D779C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_807D77A0:
/* 807D77A0  88 7F 17 22 */	lbz r3, 0x1722(r31)
/* 807D77A4  7C 60 07 75 */	extsb. r0, r3
/* 807D77A8  41 82 01 D0 */	beq lbl_807D7978
/* 807D77AC  7C 60 07 74 */	extsb r0, r3
/* 807D77B0  2C 00 00 01 */	cmpwi r0, 1
/* 807D77B4  40 82 01 44 */	bne lbl_807D78F8
/* 807D77B8  88 1C 02 10 */	lbz r0, 0x210(r28)
/* 807D77BC  7C 00 07 75 */	extsb. r0, r0
/* 807D77C0  40 82 00 80 */	bne lbl_807D7840
/* 807D77C4  C0 5D 01 9C */	lfs f2, 0x19c(r29)
/* 807D77C8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 807D77CC  C0 3D 01 A0 */	lfs f1, 0x1a0(r29)
/* 807D77D0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807D77D4  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 807D77D8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807D77DC  D0 5C 02 20 */	stfs f2, 0x220(r28)
/* 807D77E0  38 7C 02 20 */	addi r3, r28, 0x220
/* 807D77E4  D0 23 00 04 */	stfs f1, 4(r3)
/* 807D77E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D77EC  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807D77F0  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807D77F4  38 BC 02 04 */	addi r5, r28, 0x204
/* 807D77F8  4B FF AC 21 */	bl __register_global_object
/* 807D77FC  C0 5D 01 9C */	lfs f2, 0x19c(r29)
/* 807D7800  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 807D7804  C0 3D 01 A0 */	lfs f1, 0x1a0(r29)
/* 807D7808  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807D780C  C0 1D 01 A8 */	lfs f0, 0x1a8(r29)
/* 807D7810  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D7814  38 7C 02 20 */	addi r3, r28, 0x220
/* 807D7818  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807D781C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807D7820  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807D7824  38 63 00 0C */	addi r3, r3, 0xc
/* 807D7828  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807D782C  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807D7830  38 BC 02 14 */	addi r5, r28, 0x214
/* 807D7834  4B FF AB E5 */	bl __register_global_object
/* 807D7838  38 00 00 01 */	li r0, 1
/* 807D783C  98 1C 02 10 */	stb r0, 0x210(r28)
lbl_807D7840:
/* 807D7840  3A E0 00 00 */	li r23, 0
/* 807D7844  3B 00 00 00 */	li r24, 0
/* 807D7848  3B 20 00 00 */	li r25, 0
/* 807D784C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D7850  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l
/* 807D7854  3C 60 80 7E */	lis r3, f_id@ha
/* 807D7858  3B 43 2F E0 */	addi r26, r3, f_id@l
/* 807D785C  3C 60 80 7E */	lis r3, f_ya@ha
/* 807D7860  3B 63 2F DC */	addi r27, r3, f_ya@l
lbl_807D7864:
/* 807D7864  3B C0 00 00 */	li r30, 0
/* 807D7868  B3 C1 00 3C */	sth r30, 0x3c(r1)
/* 807D786C  7C 1B CA AE */	lhax r0, r27, r25
/* 807D7870  B0 01 00 3E */	sth r0, 0x3e(r1)
/* 807D7874  B3 C1 00 40 */	sth r30, 0x40(r1)
/* 807D7878  3A 80 00 00 */	li r20, 0
/* 807D787C  3A BC 02 20 */	addi r21, r28, 0x220
/* 807D7880  7E B5 C2 14 */	add r21, r21, r24
lbl_807D7884:
/* 807D7884  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 807D7888  38 80 00 00 */	li r4, 0
/* 807D788C  90 81 00 08 */	stw r4, 8(r1)
/* 807D7890  38 00 FF FF */	li r0, -1
/* 807D7894  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D7898  90 81 00 10 */	stw r4, 0x10(r1)
/* 807D789C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807D78A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807D78A4  38 80 00 00 */	li r4, 0
/* 807D78A8  7C BA F2 2E */	lhzx r5, r26, r30
/* 807D78AC  7E A6 AB 78 */	mr r6, r21
/* 807D78B0  38 E0 00 00 */	li r7, 0
/* 807D78B4  39 01 00 3C */	addi r8, r1, 0x3c
/* 807D78B8  39 20 00 00 */	li r9, 0
/* 807D78BC  39 40 00 FF */	li r10, 0xff
/* 807D78C0  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 807D78C4  4B 87 51 CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807D78C8  3A 94 00 01 */	addi r20, r20, 1
/* 807D78CC  2C 14 00 02 */	cmpwi r20, 2
/* 807D78D0  3B DE 00 02 */	addi r30, r30, 2
/* 807D78D4  41 80 FF B0 */	blt lbl_807D7884
/* 807D78D8  3A F7 00 01 */	addi r23, r23, 1
/* 807D78DC  2C 17 00 02 */	cmpwi r23, 2
/* 807D78E0  3B 18 00 0C */	addi r24, r24, 0xc
/* 807D78E4  3B 39 00 02 */	addi r25, r25, 2
/* 807D78E8  41 80 FF 7C */	blt lbl_807D7864
/* 807D78EC  88 7F 17 22 */	lbz r3, 0x1722(r31)
/* 807D78F0  38 03 00 01 */	addi r0, r3, 1
/* 807D78F4  98 1F 17 22 */	stb r0, 0x1722(r31)
lbl_807D78F8:
/* 807D78F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D3@ha */
/* 807D78FC  38 03 00 D3 */	addi r0, r3, 0x00D3 /* 0x000800D3@l */
/* 807D7900  90 01 00 28 */	stw r0, 0x28(r1)
/* 807D7904  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807D7908  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807D790C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D7910  38 81 00 28 */	addi r4, r1, 0x28
/* 807D7914  38 BC 01 AC */	addi r5, r28, 0x1ac
/* 807D7918  38 C0 00 00 */	li r6, 0
/* 807D791C  38 E0 00 00 */	li r7, 0
/* 807D7920  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 807D7924  FC 40 08 90 */	fmr f2, f1
/* 807D7928  C0 7D 00 4C */	lfs f3, 0x4c(r29)
/* 807D792C  FC 80 18 90 */	fmr f4, f3
/* 807D7930  39 00 00 00 */	li r8, 0
/* 807D7934  4B AD 4B D8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807D7938  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D3@ha */
/* 807D793C  38 03 00 D3 */	addi r0, r3, 0x00D3 /* 0x000800D3@l */
/* 807D7940  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D7944  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807D7948  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807D794C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D7950  38 81 00 24 */	addi r4, r1, 0x24
/* 807D7954  38 BC 01 C4 */	addi r5, r28, 0x1c4
/* 807D7958  38 C0 00 00 */	li r6, 0
/* 807D795C  38 E0 00 00 */	li r7, 0
/* 807D7960  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 807D7964  FC 40 08 90 */	fmr f2, f1
/* 807D7968  C0 7D 00 4C */	lfs f3, 0x4c(r29)
/* 807D796C  FC 80 18 90 */	fmr f4, f3
/* 807D7970  39 00 00 00 */	li r8, 0
/* 807D7974  4B AD 4B 98 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807D7978:
/* 807D7978  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807D797C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807D7980  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807D7984  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807D7988  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807D798C  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807D7990  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807D7994  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807D7998  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807D799C  4B B8 A8 68 */	b _restgpr_20
/* 807D79A0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807D79A4  7C 08 03 A6 */	mtlr r0
/* 807D79A8  38 21 01 10 */	addi r1, r1, 0x110
/* 807D79AC  4E 80 00 20 */	blr 
