lbl_800F1D18:
/* 800F1D18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F1D1C  7C 08 02 A6 */	mflr r0
/* 800F1D20  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F1D24  39 61 00 30 */	addi r11, r1, 0x30
/* 800F1D28  48 27 04 B5 */	bl _savegpr_29
/* 800F1D2C  7C 7F 1B 78 */	mr r31, r3
/* 800F1D30  7C 9D 23 78 */	mr r29, r4
/* 800F1D34  38 80 00 44 */	li r4, 0x44
/* 800F1D38  4B FD 02 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F1D3C  7F E3 FB 78 */	mr r3, r31
/* 800F1D40  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F1D44  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F1D48  7D 89 03 A6 */	mtctr r12
/* 800F1D4C  4E 80 04 21 */	bctrl 
/* 800F1D50  28 03 00 00 */	cmplwi r3, 0
/* 800F1D54  41 82 00 14 */	beq lbl_800F1D68
/* 800F1D58  7F E3 FB 78 */	mr r3, r31
/* 800F1D5C  38 80 00 02 */	li r4, 2
/* 800F1D60  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F1D64  4B FB BD 89 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F1D68:
/* 800F1D68  7F E3 FB 78 */	mr r3, r31
/* 800F1D6C  38 80 00 00 */	li r4, 0
/* 800F1D70  4B FF CB A9 */	bl setSyncRide__9daAlink_cFi
/* 800F1D74  7F E3 FB 78 */	mr r3, r31
/* 800F1D78  38 80 00 42 */	li r4, 0x42
/* 800F1D7C  4B FB A7 DD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F1D80  2C 03 00 00 */	cmpwi r3, 0
/* 800F1D84  40 82 00 68 */	bne lbl_800F1DEC
/* 800F1D88  7F E3 FB 78 */	mr r3, r31
/* 800F1D8C  38 80 00 43 */	li r4, 0x43
/* 800F1D90  4B FB A7 C9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F1D94  2C 03 00 00 */	cmpwi r3, 0
/* 800F1D98  40 82 00 54 */	bne lbl_800F1DEC
/* 800F1D9C  7F E3 FB 78 */	mr r3, r31
/* 800F1DA0  38 80 00 44 */	li r4, 0x44
/* 800F1DA4  4B FB A7 B5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F1DA8  2C 03 00 00 */	cmpwi r3, 0
/* 800F1DAC  40 82 00 40 */	bne lbl_800F1DEC
/* 800F1DB0  7F E3 FB 78 */	mr r3, r31
/* 800F1DB4  38 80 00 4C */	li r4, 0x4c
/* 800F1DB8  4B FB A7 A1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F1DBC  2C 03 00 00 */	cmpwi r3, 0
/* 800F1DC0  40 82 00 2C */	bne lbl_800F1DEC
/* 800F1DC4  7F E3 FB 78 */	mr r3, r31
/* 800F1DC8  38 80 00 4B */	li r4, 0x4b
/* 800F1DCC  4B FB A7 8D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F1DD0  2C 03 00 00 */	cmpwi r3, 0
/* 800F1DD4  40 82 00 18 */	bne lbl_800F1DEC
/* 800F1DD8  7F E3 FB 78 */	mr r3, r31
/* 800F1DDC  38 80 00 4E */	li r4, 0x4e
/* 800F1DE0  4B FB A7 79 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F1DE4  2C 03 00 00 */	cmpwi r3, 0
/* 800F1DE8  41 82 00 34 */	beq lbl_800F1E1C
lbl_800F1DEC:
/* 800F1DEC  38 00 00 00 */	li r0, 0
/* 800F1DF0  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800F1DF4  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800F1DF8  7F E3 FB 78 */	mr r3, r31
/* 800F1DFC  3C 80 80 39 */	lis r4, anmIdx@ha
/* 800F1E00  38 84 19 D8 */	addi r4, r4, anmIdx@l
/* 800F1E04  A0 84 00 08 */	lhz r4, 8(r4)
/* 800F1E08  38 A0 00 02 */	li r5, 2
/* 800F1E0C  3C C0 80 39 */	lis r6, m__22daAlinkHIO_damHorse_c0@ha
/* 800F1E10  38 C6 E4 28 */	addi r6, r6, m__22daAlinkHIO_damHorse_c0@l
/* 800F1E14  4B FB B8 DD */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F1E18  48 00 01 54 */	b lbl_800F1F6C
lbl_800F1E1C:
/* 800F1E1C  7F E3 FB 78 */	mr r3, r31
/* 800F1E20  7F A4 EB 78 */	mr r4, r29
/* 800F1E24  4B FE 56 D1 */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800F1E28  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F1E2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F1E30  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 800F1E34  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 800F1E38  7C 64 04 2E */	lfsx f3, r4, r0
/* 800F1E3C  7C 84 02 14 */	add r4, r4, r0
/* 800F1E40  C0 84 00 04 */	lfs f4, 4(r4)
/* 800F1E44  C0 C3 00 08 */	lfs f6, 8(r3)
/* 800F1E48  EC 26 01 32 */	fmuls f1, f6, f4
/* 800F1E4C  C0 A3 00 00 */	lfs f5, 0(r3)
/* 800F1E50  EC 05 00 F2 */	fmuls f0, f5, f3
/* 800F1E54  EC 21 00 2A */	fadds f1, f1, f0
/* 800F1E58  C0 43 00 04 */	lfs f2, 4(r3)
/* 800F1E5C  FC 00 18 50 */	fneg f0, f3
/* 800F1E60  EC 66 00 32 */	fmuls f3, f6, f0
/* 800F1E64  EC 05 01 32 */	fmuls f0, f5, f4
/* 800F1E68  EC 03 00 2A */	fadds f0, f3, f0
/* 800F1E6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800F1E70  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800F1E74  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800F1E78  3C 60 80 39 */	lis r3, m__22daAlinkHIO_damHorse_c0@ha
/* 800F1E7C  38 63 E4 28 */	addi r3, r3, m__22daAlinkHIO_damHorse_c0@l
/* 800F1E80  AB A3 00 28 */	lha r29, 0x28(r3)
/* 800F1E84  7C 1D 00 D0 */	neg r0, r29
/* 800F1E88  7C 1E 07 34 */	extsh r30, r0
/* 800F1E8C  48 17 57 E9 */	bl cM_atan2s__Fff
/* 800F1E90  7C 64 07 34 */	extsh r4, r3
/* 800F1E94  7C 04 F0 00 */	cmpw r4, r30
/* 800F1E98  40 80 00 08 */	bge lbl_800F1EA0
/* 800F1E9C  48 00 00 18 */	b lbl_800F1EB4
lbl_800F1EA0:
/* 800F1EA0  7F A0 07 34 */	extsh r0, r29
/* 800F1EA4  7C 04 00 00 */	cmpw r4, r0
/* 800F1EA8  40 81 00 08 */	ble lbl_800F1EB0
/* 800F1EAC  7F A3 EB 78 */	mr r3, r29
lbl_800F1EB0:
/* 800F1EB0  7C 7E 1B 78 */	mr r30, r3
lbl_800F1EB4:
/* 800F1EB4  B3 DF 30 10 */	sth r30, 0x3010(r31)
/* 800F1EB8  3C 60 80 39 */	lis r3, m__22daAlinkHIO_damHorse_c0@ha
/* 800F1EBC  38 63 E4 28 */	addi r3, r3, m__22daAlinkHIO_damHorse_c0@l
/* 800F1EC0  AB A3 00 2A */	lha r29, 0x2a(r3)
/* 800F1EC4  7C 1D 00 D0 */	neg r0, r29
/* 800F1EC8  7C 1E 07 34 */	extsh r30, r0
/* 800F1ECC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F1ED0  EC 20 00 32 */	fmuls f1, f0, f0
/* 800F1ED4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F1ED8  EC 00 00 32 */	fmuls f0, f0, f0
/* 800F1EDC  EC 41 00 2A */	fadds f2, f1, f0
/* 800F1EE0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F1EE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800F1EE8  40 81 00 0C */	ble lbl_800F1EF4
/* 800F1EEC  FC 00 10 34 */	frsqrte f0, f2
/* 800F1EF0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_800F1EF4:
/* 800F1EF4  C0 21 00 08 */	lfs f1, 8(r1)
/* 800F1EF8  FC 40 10 50 */	fneg f2, f2
/* 800F1EFC  48 17 57 79 */	bl cM_atan2s__Fff
/* 800F1F00  7C 64 07 34 */	extsh r4, r3
/* 800F1F04  7C 04 F0 00 */	cmpw r4, r30
/* 800F1F08  40 80 00 08 */	bge lbl_800F1F10
/* 800F1F0C  48 00 00 18 */	b lbl_800F1F24
lbl_800F1F10:
/* 800F1F10  7F A0 07 34 */	extsh r0, r29
/* 800F1F14  7C 04 00 00 */	cmpw r4, r0
/* 800F1F18  40 81 00 08 */	ble lbl_800F1F20
/* 800F1F1C  7F A3 EB 78 */	mr r3, r29
lbl_800F1F20:
/* 800F1F20  7C 7E 1B 78 */	mr r30, r3
lbl_800F1F24:
/* 800F1F24  B3 DF 30 12 */	sth r30, 0x3012(r31)
/* 800F1F28  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F1F2C  FC 20 00 50 */	fneg f1, f0
/* 800F1F30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F1F34  FC 40 00 50 */	fneg f2, f0
/* 800F1F38  48 17 57 3D */	bl cM_atan2s__Fff
/* 800F1F3C  4B FC 15 59 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800F1F40  7C 60 1B 78 */	mr r0, r3
/* 800F1F44  7F E3 FB 78 */	mr r3, r31
/* 800F1F48  54 00 08 3C */	slwi r0, r0, 1
/* 800F1F4C  3C 80 80 39 */	lis r4, anmIdx@ha
/* 800F1F50  38 84 19 D8 */	addi r4, r4, anmIdx@l
/* 800F1F54  7C 84 02 2E */	lhzx r4, r4, r0
/* 800F1F58  38 A0 00 02 */	li r5, 2
/* 800F1F5C  3C C0 80 39 */	lis r6, m__22daAlinkHIO_damHorse_c0@ha
/* 800F1F60  38 C6 E4 28 */	addi r6, r6, m__22daAlinkHIO_damHorse_c0@l
/* 800F1F64  38 C6 00 14 */	addi r6, r6, 0x14
/* 800F1F68  4B FB B7 89 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
lbl_800F1F6C:
/* 800F1F6C  7F E3 FB 78 */	mr r3, r31
/* 800F1F70  38 80 00 EA */	li r4, 0xea
/* 800F1F74  38 A0 00 01 */	li r5, 1
/* 800F1F78  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F1F7C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F1F80  4B FB D5 31 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F1F84  7F E3 FB 78 */	mr r3, r31
/* 800F1F88  38 80 00 27 */	li r4, 0x27
/* 800F1F8C  4B FB DB 1D */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800F1F90  7F E3 FB 78 */	mr r3, r31
/* 800F1F94  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800F1F98  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800F1F9C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F1FA0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F1FA4  7D 89 03 A6 */	mtctr r12
/* 800F1FA8  4E 80 04 21 */	bctrl 
/* 800F1FAC  7F E3 FB 78 */	mr r3, r31
/* 800F1FB0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800F1FB4  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800F1FB8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F1FBC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800F1FC0  7D 89 03 A6 */	mtctr r12
/* 800F1FC4  4E 80 04 21 */	bctrl 
/* 800F1FC8  C0 42 93 AC */	lfs f2, lit_9828(r2)
/* 800F1FCC  A8 7F 20 4E */	lha r3, 0x204e(r31)
/* 800F1FD0  A8 1F 20 50 */	lha r0, 0x2050(r31)
/* 800F1FD4  7C 03 00 50 */	subf r0, r3, r0
/* 800F1FD8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F1FDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F1FE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800F1FE4  3C 00 43 30 */	lis r0, 0x4330
/* 800F1FE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 800F1FEC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800F1FF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F1FF4  EC 02 00 24 */	fdivs f0, f2, f0
/* 800F1FF8  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800F1FFC  4B FF A7 B5 */	bl setHorseZeldaDamage__9daAlink_cFv
/* 800F2000  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800F2004  64 00 10 00 */	oris r0, r0, 0x1000
/* 800F2008  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800F200C  38 60 00 01 */	li r3, 1
/* 800F2010  39 61 00 30 */	addi r11, r1, 0x30
/* 800F2014  48 27 02 15 */	bl _restgpr_29
/* 800F2018  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F201C  7C 08 03 A6 */	mtlr r0
/* 800F2020  38 21 00 30 */	addi r1, r1, 0x30
/* 800F2024  4E 80 00 20 */	blr 
