lbl_80786DC0:
/* 80786DC0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80786DC4  7C 08 02 A6 */	mflr r0
/* 80786DC8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80786DCC  39 61 00 60 */	addi r11, r1, 0x60
/* 80786DD0  4B BD B4 00 */	b _savegpr_26
/* 80786DD4  7C 7D 1B 78 */	mr r29, r3
/* 80786DD8  3C 80 80 79 */	lis r4, lit_3908@ha
/* 80786DDC  3B E4 9C 38 */	addi r31, r4, lit_3908@l
/* 80786DE0  38 00 00 05 */	li r0, 5
/* 80786DE4  B0 03 06 A4 */	sth r0, 0x6a4(r3)
/* 80786DE8  3B C0 00 00 */	li r30, 0
/* 80786DEC  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80786DF0  2C 00 00 02 */	cmpwi r0, 2
/* 80786DF4  41 82 01 4C */	beq lbl_80786F40
/* 80786DF8  40 80 00 14 */	bge lbl_80786E0C
/* 80786DFC  2C 00 00 00 */	cmpwi r0, 0
/* 80786E00  41 82 00 18 */	beq lbl_80786E18
/* 80786E04  40 80 00 E4 */	bge lbl_80786EE8
/* 80786E08  48 00 01 F4 */	b lbl_80786FFC
lbl_80786E0C:
/* 80786E0C  2C 00 00 04 */	cmpwi r0, 4
/* 80786E10  40 80 01 EC */	bge lbl_80786FFC
/* 80786E14  48 00 01 B0 */	b lbl_80786FC4
lbl_80786E18:
/* 80786E18  38 00 00 28 */	li r0, 0x28
/* 80786E1C  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80786E20  80 1D 04 E4 */	lwz r0, 0x4e4(r29)
/* 80786E24  90 01 00 28 */	stw r0, 0x28(r1)
/* 80786E28  A0 1D 04 E8 */	lhz r0, 0x4e8(r29)
/* 80786E2C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80786E30  3C 60 80 79 */	lis r3, l_HIO@ha
/* 80786E34  38 63 A0 7C */	addi r3, r3, l_HIO@l
/* 80786E38  C0 03 00 08 */	lfs f0, 8(r3)
/* 80786E3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80786E40  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80786E44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80786E48  3B 40 00 00 */	li r26, 0
/* 80786E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80786E50  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80786E54  3F 80 00 01 */	lis r28, 0x0001 /* 0x000081CA@ha */
lbl_80786E58:
/* 80786E58  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80786E5C  38 80 00 00 */	li r4, 0
/* 80786E60  90 81 00 08 */	stw r4, 8(r1)
/* 80786E64  38 00 FF FF */	li r0, -1
/* 80786E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80786E6C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80786E70  90 81 00 14 */	stw r4, 0x14(r1)
/* 80786E74  90 81 00 18 */	stw r4, 0x18(r1)
/* 80786E78  38 80 00 00 */	li r4, 0
/* 80786E7C  38 BC 81 CA */	addi r5, r28, 0x81CA /* 0x000081CA@l */
/* 80786E80  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80786E84  38 E0 00 00 */	li r7, 0
/* 80786E88  39 01 00 28 */	addi r8, r1, 0x28
/* 80786E8C  39 21 00 30 */	addi r9, r1, 0x30
/* 80786E90  39 40 00 FF */	li r10, 0xff
/* 80786E94  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80786E98  4B 8C 5B F8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80786E9C  A8 61 00 2A */	lha r3, 0x2a(r1)
/* 80786EA0  38 03 55 55 */	addi r0, r3, 0x5555
/* 80786EA4  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 80786EA8  3B 5A 00 01 */	addi r26, r26, 1
/* 80786EAC  2C 1A 00 02 */	cmpwi r26, 2
/* 80786EB0  40 81 FF A8 */	ble lbl_80786E58
/* 80786EB4  38 00 00 01 */	li r0, 1
/* 80786EB8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80786EBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070094@ha */
/* 80786EC0  38 03 00 94 */	addi r0, r3, 0x0094 /* 0x00070094@l */
/* 80786EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80786EC8  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80786ECC  38 81 00 24 */	addi r4, r1, 0x24
/* 80786ED0  38 A0 FF FF */	li r5, -1
/* 80786ED4  81 9D 05 E4 */	lwz r12, 0x5e4(r29)
/* 80786ED8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80786EDC  7D 89 03 A6 */	mtctr r12
/* 80786EE0  4E 80 04 21 */	bctrl 
/* 80786EE4  48 00 01 18 */	b lbl_80786FFC
lbl_80786EE8:
/* 80786EE8  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80786EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80786EF0  40 82 01 0C */	bne lbl_80786FFC
/* 80786EF4  38 00 00 02 */	li r0, 2
/* 80786EF8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80786EFC  38 80 00 09 */	li r4, 9
/* 80786F00  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80786F04  38 A0 00 00 */	li r5, 0
/* 80786F08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80786F0C  4B FF E2 7D */	bl anm_init__FP10e_sf_classifUcf
/* 80786F10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070095@ha */
/* 80786F14  38 03 00 95 */	addi r0, r3, 0x0095 /* 0x00070095@l */
/* 80786F18  90 01 00 20 */	stw r0, 0x20(r1)
/* 80786F1C  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 80786F20  38 81 00 20 */	addi r4, r1, 0x20
/* 80786F24  38 A0 00 00 */	li r5, 0
/* 80786F28  38 C0 FF FF */	li r6, -1
/* 80786F2C  81 9D 05 E4 */	lwz r12, 0x5e4(r29)
/* 80786F30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80786F34  7D 89 03 A6 */	mtctr r12
/* 80786F38  4E 80 04 21 */	bctrl 
/* 80786F3C  48 00 00 C0 */	b lbl_80786FFC
lbl_80786F40:
/* 80786F40  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80786F44  38 80 00 01 */	li r4, 1
/* 80786F48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80786F4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80786F50  40 82 00 18 */	bne lbl_80786F68
/* 80786F54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80786F58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80786F5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80786F60  41 82 00 08 */	beq lbl_80786F68
/* 80786F64  38 80 00 00 */	li r4, 0
lbl_80786F68:
/* 80786F68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80786F6C  41 82 00 90 */	beq lbl_80786FFC
/* 80786F70  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80786F74  28 00 00 00 */	cmplwi r0, 0
/* 80786F78  40 82 00 20 */	bne lbl_80786F98
/* 80786F7C  7F A3 EB 78 */	mr r3, r29
/* 80786F80  38 80 00 0C */	li r4, 0xc
/* 80786F84  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80786F88  38 A0 00 02 */	li r5, 2
/* 80786F8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80786F90  4B FF E1 F9 */	bl anm_init__FP10e_sf_classifUcf
/* 80786F94  48 00 00 1C */	b lbl_80786FB0
lbl_80786F98:
/* 80786F98  7F A3 EB 78 */	mr r3, r29
/* 80786F9C  38 80 00 0D */	li r4, 0xd
/* 80786FA0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80786FA4  38 A0 00 02 */	li r5, 2
/* 80786FA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80786FAC  4B FF E1 DD */	bl anm_init__FP10e_sf_classifUcf
lbl_80786FB0:
/* 80786FB0  38 00 00 28 */	li r0, 0x28
/* 80786FB4  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80786FB8  38 00 00 03 */	li r0, 3
/* 80786FBC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80786FC0  48 00 00 3C */	b lbl_80786FFC
lbl_80786FC4:
/* 80786FC4  3B C0 00 FF */	li r30, 0xff
/* 80786FC8  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80786FCC  2C 00 00 00 */	cmpwi r0, 0
/* 80786FD0  40 82 00 2C */	bne lbl_80786FFC
/* 80786FD4  38 00 00 03 */	li r0, 3
/* 80786FD8  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80786FDC  38 00 FF F6 */	li r0, -10
/* 80786FE0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80786FE4  38 00 00 3C */	li r0, 0x3c
/* 80786FE8  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80786FEC  38 00 00 C8 */	li r0, 0xc8
/* 80786FF0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80786FF4  38 00 00 04 */	li r0, 4
/* 80786FF8  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80786FFC:
/* 80786FFC  7F C3 F3 78 */	mr r3, r30
/* 80787000  39 61 00 60 */	addi r11, r1, 0x60
/* 80787004  4B BD B2 18 */	b _restgpr_26
/* 80787008  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8078700C  7C 08 03 A6 */	mtlr r0
/* 80787010  38 21 00 60 */	addi r1, r1, 0x60
/* 80787014  4E 80 00 20 */	blr 
