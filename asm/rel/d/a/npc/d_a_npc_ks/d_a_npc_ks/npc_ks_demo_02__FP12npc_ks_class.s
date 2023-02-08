lbl_80A4BB34:
/* 80A4BB34  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80A4BB38  7C 08 02 A6 */	mflr r0
/* 80A4BB3C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A4BB40  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80A4BB44  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80A4BB48  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80A4BB4C  4B 91 66 85 */	bl _savegpr_26
/* 80A4BB50  7C 7A 1B 78 */	mr r26, r3
/* 80A4BB54  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4BB58  3B A3 DE FC */	addi r29, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4BB5C  C3 FD 00 30 */	lfs f31, 0x30(r29)
/* 80A4BB60  3B 80 00 01 */	li r28, 1
/* 80A4BB64  3B 60 00 00 */	li r27, 0
/* 80A4BB68  38 00 00 1C */	li r0, 0x1c
/* 80A4BB6C  B0 01 00 08 */	sth r0, 8(r1)
/* 80A4BB70  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A4BB74  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A4BB78  38 81 00 08 */	addi r4, r1, 8
/* 80A4BB7C  4B 5C DC 7D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4BB80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A4BB84  40 82 00 0C */	bne lbl_80A4BB90
/* 80A4BB88  38 60 00 00 */	li r3, 0
/* 80A4BB8C  48 00 0E C4 */	b lbl_80A4CA50
lbl_80A4BB90:
/* 80A4BB90  A8 1E 0D AE */	lha r0, 0xdae(r30)
/* 80A4BB94  2C 00 00 00 */	cmpwi r0, 0
/* 80A4BB98  41 82 00 28 */	beq lbl_80A4BBC0
/* 80A4BB9C  A8 1A 05 EA */	lha r0, 0x5ea(r26)
/* 80A4BBA0  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A4BBA4  40 80 00 1C */	bge lbl_80A4BBC0
/* 80A4BBA8  38 00 00 C9 */	li r0, 0xc9
/* 80A4BBAC  B0 1A 05 E8 */	sth r0, 0x5e8(r26)
/* 80A4BBB0  38 00 00 00 */	li r0, 0
/* 80A4BBB4  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4BBB8  38 60 00 00 */	li r3, 0
/* 80A4BBBC  48 00 0E 94 */	b lbl_80A4CA50
lbl_80A4BBC0:
/* 80A4BBC0  3C 60 80 A5 */	lis r3, s_ha_sub__FPvPv@ha /* 0x80A4BA90@ha */
/* 80A4BBC4  38 63 BA 90 */	addi r3, r3, s_ha_sub__FPvPv@l /* 0x80A4BA90@l */
/* 80A4BBC8  7F 44 D3 78 */	mr r4, r26
/* 80A4BBCC  4B 5D 57 6D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A4BBD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A4BBD4  40 82 00 0C */	bne lbl_80A4BBE0
/* 80A4BBD8  38 60 00 00 */	li r3, 0
/* 80A4BBDC  48 00 0E 74 */	b lbl_80A4CA50
lbl_80A4BBE0:
/* 80A4BBE0  A8 1A 05 EA */	lha r0, 0x5ea(r26)
/* 80A4BBE4  28 00 00 14 */	cmplwi r0, 0x14
/* 80A4BBE8  41 81 0D C4 */	bgt lbl_80A4C9AC
/* 80A4BBEC  3C 60 80 A6 */	lis r3, lit_5572@ha /* 0x80A5E780@ha */
/* 80A4BBF0  38 63 E7 80 */	addi r3, r3, lit_5572@l /* 0x80A5E780@l */
/* 80A4BBF4  54 00 10 3A */	slwi r0, r0, 2
/* 80A4BBF8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A4BBFC  7C 09 03 A6 */	mtctr r0
/* 80A4BC00  4E 80 04 20 */	bctr 
lbl_80A4BC04:
/* 80A4BC04  7F 43 D3 78 */	mr r3, r26
/* 80A4BC08  38 80 00 1A */	li r4, 0x1a
/* 80A4BC0C  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80A4BC10  38 A0 00 02 */	li r5, 2
/* 80A4BC14  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4BC18  4B FF D5 8D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4BC1C  38 00 00 01 */	li r0, 1
/* 80A4BC20  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4BC24  38 00 00 00 */	li r0, 0
/* 80A4BC28  90 1A 09 04 */	stw r0, 0x904(r26)
lbl_80A4BC2C:
/* 80A4BC2C  3C 60 80 A6 */	lis r3, move_path_02@ha /* 0x80A5E67C@ha */
/* 80A4BC30  38 83 E6 7C */	addi r4, r3, move_path_02@l /* 0x80A5E67C@l */
/* 80A4BC34  80 1A 09 04 */	lwz r0, 0x904(r26)
/* 80A4BC38  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4BC3C  7C 64 02 14 */	add r3, r4, r0
/* 80A4BC40  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4BC44  D0 1A 08 F0 */	stfs f0, 0x8f0(r26)
/* 80A4BC48  80 1A 09 04 */	lwz r0, 0x904(r26)
/* 80A4BC4C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4BC50  7C 64 02 14 */	add r3, r4, r0
/* 80A4BC54  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A4BC58  D0 1A 08 F4 */	stfs f0, 0x8f4(r26)
/* 80A4BC5C  80 1A 09 04 */	lwz r0, 0x904(r26)
/* 80A4BC60  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A4BC64  7C 64 02 14 */	add r3, r4, r0
/* 80A4BC68  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A4BC6C  D0 1A 08 F8 */	stfs f0, 0x8f8(r26)
/* 80A4BC70  38 00 00 02 */	li r0, 2
/* 80A4BC74  B0 1A 05 EA */	sth r0, 0x5ea(r26)
lbl_80A4BC78:
/* 80A4BC78  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4BC7C  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4BC80  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80A4BC84  38 61 00 50 */	addi r3, r1, 0x50
/* 80A4BC88  38 9A 08 F0 */	addi r4, r26, 0x8f0
/* 80A4BC8C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80A4BC90  4B 81 AE A5 */	bl __mi__4cXyzCFRC3Vec
/* 80A4BC94  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80A4BC98  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80A4BC9C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A4BCA0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4BCA4  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80A4BCA8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80A4BCAC  4B 81 B9 C9 */	bl cM_atan2s__Fff
/* 80A4BCB0  B0 7A 08 FE */	sth r3, 0x8fe(r26)
/* 80A4BCB4  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80A4BCB8  A8 9A 08 FE */	lha r4, 0x8fe(r26)
/* 80A4BCBC  38 A0 00 02 */	li r5, 2
/* 80A4BCC0  38 C0 10 00 */	li r6, 0x1000
/* 80A4BCC4  4B 82 49 45 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4BCC8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4BCCC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4BCD0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4BCD4  4B 8F B4 65 */	bl PSVECSquareMag
/* 80A4BCD8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4BCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4BCE0  40 81 00 58 */	ble lbl_80A4BD38
/* 80A4BCE4  FC 00 08 34 */	frsqrte f0, f1
/* 80A4BCE8  C8 9D 00 50 */	lfd f4, 0x50(r29)
/* 80A4BCEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4BCF0  C8 7D 00 58 */	lfd f3, 0x58(r29)
/* 80A4BCF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4BCF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4BCFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4BD00  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4BD04  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4BD08  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4BD0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4BD10  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4BD14  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4BD18  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4BD1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4BD20  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4BD24  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4BD28  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4BD2C  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4BD30  FC 20 08 18 */	frsp f1, f1
/* 80A4BD34  48 00 00 88 */	b lbl_80A4BDBC
lbl_80A4BD38:
/* 80A4BD38  C8 1D 00 60 */	lfd f0, 0x60(r29)
/* 80A4BD3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4BD40  40 80 00 10 */	bge lbl_80A4BD50
/* 80A4BD44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4BD48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4BD4C  48 00 00 70 */	b lbl_80A4BDBC
lbl_80A4BD50:
/* 80A4BD50  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A4BD54  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A4BD58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4BD5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4BD60  7C 03 00 00 */	cmpw r3, r0
/* 80A4BD64  41 82 00 14 */	beq lbl_80A4BD78
/* 80A4BD68  40 80 00 40 */	bge lbl_80A4BDA8
/* 80A4BD6C  2C 03 00 00 */	cmpwi r3, 0
/* 80A4BD70  41 82 00 20 */	beq lbl_80A4BD90
/* 80A4BD74  48 00 00 34 */	b lbl_80A4BDA8
lbl_80A4BD78:
/* 80A4BD78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4BD7C  41 82 00 0C */	beq lbl_80A4BD88
/* 80A4BD80  38 00 00 01 */	li r0, 1
/* 80A4BD84  48 00 00 28 */	b lbl_80A4BDAC
lbl_80A4BD88:
/* 80A4BD88  38 00 00 02 */	li r0, 2
/* 80A4BD8C  48 00 00 20 */	b lbl_80A4BDAC
lbl_80A4BD90:
/* 80A4BD90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4BD94  41 82 00 0C */	beq lbl_80A4BDA0
/* 80A4BD98  38 00 00 05 */	li r0, 5
/* 80A4BD9C  48 00 00 10 */	b lbl_80A4BDAC
lbl_80A4BDA0:
/* 80A4BDA0  38 00 00 03 */	li r0, 3
/* 80A4BDA4  48 00 00 08 */	b lbl_80A4BDAC
lbl_80A4BDA8:
/* 80A4BDA8  38 00 00 04 */	li r0, 4
lbl_80A4BDAC:
/* 80A4BDAC  2C 00 00 01 */	cmpwi r0, 1
/* 80A4BDB0  40 82 00 0C */	bne lbl_80A4BDBC
/* 80A4BDB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4BDB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4BDBC:
/* 80A4BDBC  C0 5D 00 94 */	lfs f2, 0x94(r29)
/* 80A4BDC0  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80A4BDC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4BDC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4BDCC  4C 40 13 82 */	cror 2, 0, 2
/* 80A4BDD0  40 82 0B DC */	bne lbl_80A4C9AC
/* 80A4BDD4  80 7A 09 04 */	lwz r3, 0x904(r26)
/* 80A4BDD8  38 03 00 01 */	addi r0, r3, 1
/* 80A4BDDC  90 1A 09 04 */	stw r0, 0x904(r26)
/* 80A4BDE0  80 1A 09 04 */	lwz r0, 0x904(r26)
/* 80A4BDE4  2C 00 00 05 */	cmpwi r0, 5
/* 80A4BDE8  40 80 00 10 */	bge lbl_80A4BDF8
/* 80A4BDEC  38 00 00 01 */	li r0, 1
/* 80A4BDF0  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4BDF4  48 00 0B B8 */	b lbl_80A4C9AC
lbl_80A4BDF8:
/* 80A4BDF8  38 00 00 0A */	li r0, 0xa
/* 80A4BDFC  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4BE00  7F 43 D3 78 */	mr r3, r26
/* 80A4BE04  38 80 00 19 */	li r4, 0x19
/* 80A4BE08  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4BE0C  38 A0 00 02 */	li r5, 2
/* 80A4BE10  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4BE14  4B FF D3 91 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4BE18  38 00 00 23 */	li r0, 0x23
/* 80A4BE1C  B0 1A 05 F0 */	sth r0, 0x5f0(r26)
/* 80A4BE20  48 00 0B 8C */	b lbl_80A4C9AC
lbl_80A4BE24:
/* 80A4BE24  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80A4BE28  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4BE2C  3C 84 00 01 */	addis r4, r4, 1
/* 80A4BE30  38 04 80 00 */	addi r0, r4, -32768
/* 80A4BE34  7C 04 07 34 */	extsh r4, r0
/* 80A4BE38  38 A0 00 02 */	li r5, 2
/* 80A4BE3C  38 C0 10 00 */	li r6, 0x1000
/* 80A4BE40  4B 82 47 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4BE44  A8 1A 05 F0 */	lha r0, 0x5f0(r26)
/* 80A4BE48  2C 00 00 00 */	cmpwi r0, 0
/* 80A4BE4C  40 82 0B 60 */	bne lbl_80A4C9AC
/* 80A4BE50  38 00 00 0B */	li r0, 0xb
/* 80A4BE54  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4BE58  7F 43 D3 78 */	mr r3, r26
/* 80A4BE5C  38 80 00 1A */	li r4, 0x1a
/* 80A4BE60  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4BE64  38 A0 00 02 */	li r5, 2
/* 80A4BE68  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4BE6C  4B FF D3 39 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4BE70  48 00 0B 3C */	b lbl_80A4C9AC
lbl_80A4BE74:
/* 80A4BE74  3B 80 00 00 */	li r28, 0
/* 80A4BE78  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4BE7C  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4BE80  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80A4BE84  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4BE88  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4BE8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4BE90  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4BE94  4B 5C 05 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4BE98  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4BE9C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A4BEA0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4BEA4  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80A4BEA8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80A4BEAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A4BEB0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4BEB4  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4BEB8  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4BEBC  4B 82 50 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4BEC0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A4BEC4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A4BEC8  7C 65 1B 78 */	mr r5, r3
/* 80A4BECC  4B 8F B1 C5 */	bl PSVECAdd
/* 80A4BED0  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80A4BED4  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4BED8  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4BEDC  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80A4BEE0  4B 82 3B 5D */	bl cLib_addCalc2__FPffff
/* 80A4BEE4  38 7A 04 D8 */	addi r3, r26, 0x4d8
/* 80A4BEE8  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A4BEEC  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4BEF0  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80A4BEF4  4B 82 3B 49 */	bl cLib_addCalc2__FPffff
/* 80A4BEF8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4BEFC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80A4BF00  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A4BF04  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80A4BF08  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A4BF0C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80A4BF10  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A4BF14  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4BF18  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A4BF1C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4BF20  EC 21 00 2A */	fadds f1, f1, f0
/* 80A4BF24  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4BF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4BF2C  40 81 00 0C */	ble lbl_80A4BF38
/* 80A4BF30  FC 00 08 34 */	frsqrte f0, f1
/* 80A4BF34  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A4BF38:
/* 80A4BF38  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80A4BF3C  FC 20 08 18 */	frsp f1, f1
/* 80A4BF40  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80A4BF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4BF48  40 80 00 28 */	bge lbl_80A4BF70
/* 80A4BF4C  80 1A 05 D0 */	lwz r0, 0x5d0(r26)
/* 80A4BF50  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A4BF54  41 82 00 1C */	beq lbl_80A4BF70
/* 80A4BF58  7F 43 D3 78 */	mr r3, r26
/* 80A4BF5C  38 80 00 0C */	li r4, 0xc
/* 80A4BF60  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80A4BF64  38 A0 00 02 */	li r5, 2
/* 80A4BF68  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4BF6C  4B FF D2 39 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4BF70:
/* 80A4BF70  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80A4BF74  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80A4BF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4BF7C  40 80 0A 30 */	bge lbl_80A4C9AC
/* 80A4BF80  38 00 00 0C */	li r0, 0xc
/* 80A4BF84  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4BF88  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80A4BF8C  3C 63 00 01 */	addis r3, r3, 1
/* 80A4BF90  38 03 80 00 */	addi r0, r3, -32768
/* 80A4BF94  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80A4BF98  48 00 0A 14 */	b lbl_80A4C9AC
lbl_80A4BF9C:
/* 80A4BF9C  3B 80 00 00 */	li r28, 0
/* 80A4BFA0  3B 60 00 01 */	li r27, 1
/* 80A4BFA4  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4BFA8  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4BFAC  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80A4BFB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4BFB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4BFB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4BFBC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4BFC0  4B 5C 04 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4BFC4  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4BFC8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A4BFCC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4BFD0  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80A4BFD4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4BFD8  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4BFDC  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4BFE0  4B 82 4F 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4BFE4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A4BFE8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A4BFEC  7C 65 1B 78 */	mr r5, r3
/* 80A4BFF0  4B 8F B0 A1 */	bl PSVECAdd
/* 80A4BFF4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80A4BFF8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4BFFC  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C000  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80A4C004  4B 82 3A 39 */	bl cLib_addCalc2__FPffff
/* 80A4C008  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 80A4C00C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A4C010  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C014  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80A4C018  4B 82 3A 25 */	bl cLib_addCalc2__FPffff
/* 80A4C01C  38 7A 04 D8 */	addi r3, r26, 0x4d8
/* 80A4C020  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A4C024  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C028  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80A4C02C  4B 82 3A 11 */	bl cLib_addCalc2__FPffff
/* 80A4C030  38 61 00 44 */	addi r3, r1, 0x44
/* 80A4C034  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4C038  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80A4C03C  4B 81 AA F9 */	bl __mi__4cXyzCFRC3Vec
/* 80A4C040  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A4C044  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A4C048  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A4C04C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4C050  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A4C054  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4C058  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4C05C  4B 8F B0 DD */	bl PSVECSquareMag
/* 80A4C060  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4C068  40 81 00 58 */	ble lbl_80A4C0C0
/* 80A4C06C  FC 00 08 34 */	frsqrte f0, f1
/* 80A4C070  C8 9D 00 50 */	lfd f4, 0x50(r29)
/* 80A4C074  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4C078  C8 7D 00 58 */	lfd f3, 0x58(r29)
/* 80A4C07C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4C080  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4C084  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4C088  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4C08C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4C090  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4C094  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4C098  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4C09C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4C0A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4C0A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4C0A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4C0AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4C0B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4C0B4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4C0B8  FC 20 08 18 */	frsp f1, f1
/* 80A4C0BC  48 00 00 88 */	b lbl_80A4C144
lbl_80A4C0C0:
/* 80A4C0C0  C8 1D 00 60 */	lfd f0, 0x60(r29)
/* 80A4C0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4C0C8  40 80 00 10 */	bge lbl_80A4C0D8
/* 80A4C0CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4C0D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4C0D4  48 00 00 70 */	b lbl_80A4C144
lbl_80A4C0D8:
/* 80A4C0D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A4C0DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A4C0E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4C0E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4C0E8  7C 03 00 00 */	cmpw r3, r0
/* 80A4C0EC  41 82 00 14 */	beq lbl_80A4C100
/* 80A4C0F0  40 80 00 40 */	bge lbl_80A4C130
/* 80A4C0F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4C0F8  41 82 00 20 */	beq lbl_80A4C118
/* 80A4C0FC  48 00 00 34 */	b lbl_80A4C130
lbl_80A4C100:
/* 80A4C100  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4C104  41 82 00 0C */	beq lbl_80A4C110
/* 80A4C108  38 00 00 01 */	li r0, 1
/* 80A4C10C  48 00 00 28 */	b lbl_80A4C134
lbl_80A4C110:
/* 80A4C110  38 00 00 02 */	li r0, 2
/* 80A4C114  48 00 00 20 */	b lbl_80A4C134
lbl_80A4C118:
/* 80A4C118  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4C11C  41 82 00 0C */	beq lbl_80A4C128
/* 80A4C120  38 00 00 05 */	li r0, 5
/* 80A4C124  48 00 00 10 */	b lbl_80A4C134
lbl_80A4C128:
/* 80A4C128  38 00 00 03 */	li r0, 3
/* 80A4C12C  48 00 00 08 */	b lbl_80A4C134
lbl_80A4C130:
/* 80A4C130  38 00 00 04 */	li r0, 4
lbl_80A4C134:
/* 80A4C134  2C 00 00 01 */	cmpwi r0, 1
/* 80A4C138  40 82 00 0C */	bne lbl_80A4C144
/* 80A4C13C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4C140  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4C144:
/* 80A4C144  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C148  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80A4C14C  40 80 08 60 */	bge lbl_80A4C9AC
/* 80A4C150  38 00 00 0D */	li r0, 0xd
/* 80A4C154  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C158  7F 43 D3 78 */	mr r3, r26
/* 80A4C15C  38 80 00 17 */	li r4, 0x17
/* 80A4C160  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80A4C164  38 A0 00 02 */	li r5, 2
/* 80A4C168  4B FF D0 3D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C16C  38 00 00 3C */	li r0, 0x3c
/* 80A4C170  B0 1A 05 F0 */	sth r0, 0x5f0(r26)
/* 80A4C174  48 00 08 38 */	b lbl_80A4C9AC
lbl_80A4C178:
/* 80A4C178  3B 80 00 00 */	li r28, 0
/* 80A4C17C  3B 60 00 01 */	li r27, 1
/* 80A4C180  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4C184  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4C188  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4C18C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4C190  4B 5C 02 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4C194  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C198  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A4C19C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4C1A0  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80A4C1A4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80A4C1A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A4C1AC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4C1B0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4C1B4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4C1B8  4B 82 4D 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4C1BC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A4C1C0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A4C1C4  7C 65 1B 78 */	mr r5, r3
/* 80A4C1C8  4B 8F AE C9 */	bl PSVECAdd
/* 80A4C1CC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80A4C1D0  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4C1D4  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C1D8  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80A4C1DC  4B 82 38 61 */	bl cLib_addCalc2__FPffff
/* 80A4C1E0  38 7A 04 D8 */	addi r3, r26, 0x4d8
/* 80A4C1E4  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A4C1E8  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C1EC  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80A4C1F0  4B 82 38 4D */	bl cLib_addCalc2__FPffff
/* 80A4C1F4  80 7A 05 CC */	lwz r3, 0x5cc(r26)
/* 80A4C1F8  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4C1FC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80A4C200  4B 8D C2 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80A4C204  2C 03 00 00 */	cmpwi r3, 0
/* 80A4C208  40 82 00 1C */	bne lbl_80A4C224
/* 80A4C20C  80 7A 05 CC */	lwz r3, 0x5cc(r26)
/* 80A4C210  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4C214  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80A4C218  4B 8D C2 15 */	bl checkPass__12J3DFrameCtrlFf
/* 80A4C21C  2C 03 00 00 */	cmpwi r3, 0
/* 80A4C220  41 82 00 68 */	beq lbl_80A4C288
lbl_80A4C224:
/* 80A4C224  C0 3E 0D C8 */	lfs f1, 0xdc8(r30)
/* 80A4C228  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80A4C22C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4C230  D0 1E 0D C8 */	stfs f0, 0xdc8(r30)
/* 80A4C234  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B0@ha */
/* 80A4C238  38 03 00 B0 */	addi r0, r3, 0x00B0 /* 0x000800B0@l */
/* 80A4C23C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A4C240  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C244  38 81 00 34 */	addi r4, r1, 0x34
/* 80A4C248  38 A0 00 00 */	li r5, 0
/* 80A4C24C  38 C0 FF FF */	li r6, -1
/* 80A4C250  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C254  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4C258  7D 89 03 A6 */	mtctr r12
/* 80A4C25C  4E 80 04 21 */	bctrl 
/* 80A4C260  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001B@ha */
/* 80A4C264  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0005001B@l */
/* 80A4C268  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A4C26C  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C270  38 81 00 30 */	addi r4, r1, 0x30
/* 80A4C274  38 A0 FF FF */	li r5, -1
/* 80A4C278  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C27C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4C280  7D 89 03 A6 */	mtctr r12
/* 80A4C284  4E 80 04 21 */	bctrl 
lbl_80A4C288:
/* 80A4C288  A8 1A 05 F0 */	lha r0, 0x5f0(r26)
/* 80A4C28C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C290  40 82 07 1C */	bne lbl_80A4C9AC
/* 80A4C294  38 00 00 0E */	li r0, 0xe
/* 80A4C298  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C29C  7F 43 D3 78 */	mr r3, r26
/* 80A4C2A0  38 80 00 0F */	li r4, 0xf
/* 80A4C2A4  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80A4C2A8  38 A0 00 02 */	li r5, 2
/* 80A4C2AC  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C2B0  4B FF CE F5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C2B4  48 00 06 F8 */	b lbl_80A4C9AC
lbl_80A4C2B8:
/* 80A4C2B8  3B 80 00 00 */	li r28, 0
/* 80A4C2BC  3B 60 00 01 */	li r27, 1
/* 80A4C2C0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4C2C4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4C2C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4C2CC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4C2D0  4B 5C 01 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4C2D4  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C2D8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A4C2DC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4C2E0  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80A4C2E4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4C2E8  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4C2EC  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4C2F0  4B 82 4B FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4C2F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A4C2F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A4C2FC  7C 65 1B 78 */	mr r5, r3
/* 80A4C300  4B 8F AD 91 */	bl PSVECAdd
/* 80A4C304  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80A4C308  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4C30C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C310  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80A4C314  4B 82 37 29 */	bl cLib_addCalc2__FPffff
/* 80A4C318  38 7A 04 D8 */	addi r3, r26, 0x4d8
/* 80A4C31C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A4C320  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C324  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80A4C328  4B 82 37 15 */	bl cLib_addCalc2__FPffff
/* 80A4C32C  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 80A4C330  C0 3A 07 18 */	lfs f1, 0x718(r26)
/* 80A4C334  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C338  3C 80 80 A6 */	lis r4, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4C33C  38 84 FE B8 */	addi r4, r4, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4C340  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 80A4C344  4B 82 36 F9 */	bl cLib_addCalc2__FPffff
/* 80A4C348  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80A4C34C  C0 1A 07 18 */	lfs f0, 0x718(r26)
/* 80A4C350  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A4C354  FC 00 02 10 */	fabs f0, f0
/* 80A4C358  FC 00 00 18 */	frsp f0, f0
/* 80A4C35C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C360  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80A4C364  40 80 06 48 */	bge lbl_80A4C9AC
/* 80A4C368  7F 43 D3 78 */	mr r3, r26
/* 80A4C36C  38 80 00 1A */	li r4, 0x1a
/* 80A4C370  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4C374  38 A0 00 02 */	li r5, 2
/* 80A4C378  4B FF CE 2D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C37C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C380  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A4C384  38 00 00 14 */	li r0, 0x14
/* 80A4C388  B0 1A 05 F0 */	sth r0, 0x5f0(r26)
/* 80A4C38C  38 00 00 0F */	li r0, 0xf
/* 80A4C390  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C394  48 00 06 18 */	b lbl_80A4C9AC
lbl_80A4C398:
/* 80A4C398  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A4C39C  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A4C3A0  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80A4C3A4  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80A4C3A8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4C3AC  38 A0 00 02 */	li r5, 2
/* 80A4C3B0  38 C0 20 00 */	li r6, 0x2000
/* 80A4C3B4  4B 82 42 55 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4C3B8  A8 1A 05 F0 */	lha r0, 0x5f0(r26)
/* 80A4C3BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C3C0  40 82 05 EC */	bne lbl_80A4C9AC
/* 80A4C3C4  38 00 00 10 */	li r0, 0x10
/* 80A4C3C8  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C3CC  7F 43 D3 78 */	mr r3, r26
/* 80A4C3D0  38 80 00 19 */	li r4, 0x19
/* 80A4C3D4  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4C3D8  38 A0 00 02 */	li r5, 2
/* 80A4C3DC  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C3E0  4B FF CD C5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C3E4  48 00 05 C8 */	b lbl_80A4C9AC
lbl_80A4C3E8:
/* 80A4C3E8  38 00 00 02 */	li r0, 2
/* 80A4C3EC  98 1A 0A EC */	stb r0, 0xaec(r26)
/* 80A4C3F0  38 00 00 01 */	li r0, 1
/* 80A4C3F4  98 1A 05 FC */	stb r0, 0x5fc(r26)
/* 80A4C3F8  A8 1A 05 F0 */	lha r0, 0x5f0(r26)
/* 80A4C3FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C400  40 82 00 6C */	bne lbl_80A4C46C
/* 80A4C404  80 1A 05 D0 */	lwz r0, 0x5d0(r26)
/* 80A4C408  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A4C40C  41 82 00 28 */	beq lbl_80A4C434
/* 80A4C410  7F 43 D3 78 */	mr r3, r26
/* 80A4C414  38 80 00 19 */	li r4, 0x19
/* 80A4C418  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4C41C  38 A0 00 02 */	li r5, 2
/* 80A4C420  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C424  4B FF CD 81 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C428  38 00 00 19 */	li r0, 0x19
/* 80A4C42C  B0 1A 05 F0 */	sth r0, 0x5f0(r26)
/* 80A4C430  48 00 00 3C */	b lbl_80A4C46C
lbl_80A4C434:
/* 80A4C434  7F 43 D3 78 */	mr r3, r26
/* 80A4C438  38 80 00 32 */	li r4, 0x32
/* 80A4C43C  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4C440  38 A0 00 02 */	li r5, 2
/* 80A4C444  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C448  4B FF CD 5D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C44C  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 80A4C450  4B 81 B5 05 */	bl cM_rndF__Ff
/* 80A4C454  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A4C458  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4C45C  FC 00 00 1E */	fctiwz f0, f0
/* 80A4C460  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80A4C464  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80A4C468  B0 1A 05 F0 */	sth r0, 0x5f0(r26)
lbl_80A4C46C:
/* 80A4C46C  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80A4C470  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A4C474  3C 84 00 01 */	addis r4, r4, 1
/* 80A4C478  38 04 80 00 */	addi r0, r4, -32768
/* 80A4C47C  7C 04 07 34 */	extsh r4, r0
/* 80A4C480  38 A0 00 02 */	li r5, 2
/* 80A4C484  38 C0 10 00 */	li r6, 0x1000
/* 80A4C488  4B 82 41 81 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4C48C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4C490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4C494  80 63 5F 18 */	lwz r3, 0x5f18(r3)
/* 80A4C498  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80A4C49C  40 82 00 0C */	bne lbl_80A4C4A8
/* 80A4C4A0  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80A4C4A4  41 82 00 0C */	beq lbl_80A4C4B0
lbl_80A4C4A8:
/* 80A4C4A8  38 00 00 14 */	li r0, 0x14
/* 80A4C4AC  B0 1A 05 F4 */	sth r0, 0x5f4(r26)
lbl_80A4C4B0:
/* 80A4C4B0  A8 1A 05 F4 */	lha r0, 0x5f4(r26)
/* 80A4C4B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C4B8  40 82 00 38 */	bne lbl_80A4C4F0
/* 80A4C4BC  88 1E 0D C4 */	lbz r0, 0xdc4(r30)
/* 80A4C4C0  7C 00 07 75 */	extsb. r0, r0
/* 80A4C4C4  40 82 00 2C */	bne lbl_80A4C4F0
/* 80A4C4C8  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80A4C4CC  64 00 20 00 */	oris r0, r0, 0x2000
/* 80A4C4D0  60 00 00 0A */	ori r0, r0, 0xa
/* 80A4C4D4  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80A4C4D8  A0 1A 00 FA */	lhz r0, 0xfa(r26)
/* 80A4C4DC  60 00 00 01 */	ori r0, r0, 1
/* 80A4C4E0  B0 1A 00 FA */	sth r0, 0xfa(r26)
/* 80A4C4E4  38 00 00 02 */	li r0, 2
/* 80A4C4E8  98 1A 05 45 */	stb r0, 0x545(r26)
/* 80A4C4EC  98 1A 05 47 */	stb r0, 0x547(r26)
lbl_80A4C4F0:
/* 80A4C4F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4C4F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4C4F8  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A4C4FC  38 80 00 00 */	li r4, 0
/* 80A4C500  4B 62 70 3D */	bl LockonTarget__12dAttention_cFl
/* 80A4C504  7C 1A 18 40 */	cmplw r26, r3
/* 80A4C508  40 82 04 A4 */	bne lbl_80A4C9AC
/* 80A4C50C  A8 1A 05 F4 */	lha r0, 0x5f4(r26)
/* 80A4C510  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C514  40 82 04 98 */	bne lbl_80A4C9AC
/* 80A4C518  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80A4C51C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80A4C520  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80A4C524  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A4C528  41 82 04 84 */	beq lbl_80A4C9AC
/* 80A4C52C  38 00 00 11 */	li r0, 0x11
/* 80A4C530  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C534  7F 43 D3 78 */	mr r3, r26
/* 80A4C538  38 80 00 19 */	li r4, 0x19
/* 80A4C53C  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80A4C540  38 A0 00 00 */	li r5, 0
/* 80A4C544  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C548  4B FF CC 5D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C54C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A4C550  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A4C554  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A4C558  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C55C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A4C560  38 A0 FF FF */	li r5, -1
/* 80A4C564  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C568  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4C56C  7D 89 03 A6 */	mtctr r12
/* 80A4C570  4E 80 04 21 */	bctrl 
/* 80A4C574  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C578  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A4C57C  38 00 00 3C */	li r0, 0x3c
/* 80A4C580  3C 60 80 A6 */	lis r3, leader@ha /* 0x80A5FEA0@ha */
/* 80A4C584  38 63 FE A0 */	addi r3, r3, leader@l /* 0x80A5FEA0@l */
/* 80A4C588  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4C58C  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4C590  48 00 04 1C */	b lbl_80A4C9AC
lbl_80A4C594:
/* 80A4C594  3B 80 00 00 */	li r28, 0
/* 80A4C598  80 1A 05 D0 */	lwz r0, 0x5d0(r26)
/* 80A4C59C  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A4C5A0  40 82 00 50 */	bne lbl_80A4C5F0
/* 80A4C5A4  80 7A 05 CC */	lwz r3, 0x5cc(r26)
/* 80A4C5A8  38 80 00 01 */	li r4, 1
/* 80A4C5AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4C5B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4C5B4  40 82 00 18 */	bne lbl_80A4C5CC
/* 80A4C5B8  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80A4C5BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4C5C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4C5C4  41 82 00 08 */	beq lbl_80A4C5CC
/* 80A4C5C8  38 80 00 00 */	li r4, 0
lbl_80A4C5CC:
/* 80A4C5CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4C5D0  41 82 00 24 */	beq lbl_80A4C5F4
/* 80A4C5D4  7F 43 D3 78 */	mr r3, r26
/* 80A4C5D8  38 80 00 31 */	li r4, 0x31
/* 80A4C5DC  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80A4C5E0  38 A0 00 00 */	li r5, 0
/* 80A4C5E4  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C5E8  4B FF CB BD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C5EC  48 00 00 08 */	b lbl_80A4C5F4
lbl_80A4C5F0:
/* 80A4C5F0  C3 FD 00 C0 */	lfs f31, 0xc0(r29)
lbl_80A4C5F4:
/* 80A4C5F4  80 1A 05 D0 */	lwz r0, 0x5d0(r26)
/* 80A4C5F8  2C 00 00 31 */	cmpwi r0, 0x31
/* 80A4C5FC  40 82 00 78 */	bne lbl_80A4C674
/* 80A4C600  80 7A 05 CC */	lwz r3, 0x5cc(r26)
/* 80A4C604  38 80 00 01 */	li r4, 1
/* 80A4C608  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4C60C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4C610  40 82 00 18 */	bne lbl_80A4C628
/* 80A4C614  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80A4C618  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4C61C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4C620  41 82 00 08 */	beq lbl_80A4C628
/* 80A4C624  38 80 00 00 */	li r4, 0
lbl_80A4C628:
/* 80A4C628  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4C62C  41 82 00 48 */	beq lbl_80A4C674
/* 80A4C630  7F 43 D3 78 */	mr r3, r26
/* 80A4C634  38 80 00 26 */	li r4, 0x26
/* 80A4C638  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80A4C63C  38 A0 00 02 */	li r5, 2
/* 80A4C640  FC 40 08 90 */	fmr f2, f1
/* 80A4C644  4B FF CB 61 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C648  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060026@ha */
/* 80A4C64C  38 03 00 26 */	addi r0, r3, 0x0026 /* 0x00060026@l */
/* 80A4C650  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A4C654  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C658  38 81 00 28 */	addi r4, r1, 0x28
/* 80A4C65C  38 A0 00 00 */	li r5, 0
/* 80A4C660  38 C0 FF FF */	li r6, -1
/* 80A4C664  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C668  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4C66C  7D 89 03 A6 */	mtctr r12
/* 80A4C670  4E 80 04 21 */	bctrl 
lbl_80A4C674:
/* 80A4C674  38 61 00 38 */	addi r3, r1, 0x38
/* 80A4C678  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A4C67C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80A4C680  4B 81 A4 B5 */	bl __mi__4cXyzCFRC3Vec
/* 80A4C684  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80A4C688  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80A4C68C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A4C690  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4C694  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80A4C698  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80A4C69C  4B 81 AF D9 */	bl cM_atan2s__Fff
/* 80A4C6A0  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 80A4C6A4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4C6A8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4C6AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4C6B0  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80A4C6B4  4B 5B FD 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4C6B8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C6BC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A4C6C0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A4C6C4  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80A4C6C8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4C6CC  38 61 00 68 */	addi r3, r1, 0x68
/* 80A4C6D0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4C6D4  4B 82 48 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4C6D8  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80A4C6DC  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A4C6E0  7C 65 1B 78 */	mr r5, r3
/* 80A4C6E4  4B 8F A9 AD */	bl PSVECAdd
/* 80A4C6E8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A4C6EC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80A4C6F0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A4C6F4  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80A4C6F8  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A4C6FC  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80A4C700  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A4C704  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A4C708  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A4C70C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4C710  EC 21 00 2A */	fadds f1, f1, f0
/* 80A4C714  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4C71C  40 81 00 0C */	ble lbl_80A4C728
/* 80A4C720  FC 00 08 34 */	frsqrte f0, f1
/* 80A4C724  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A4C728:
/* 80A4C728  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80A4C72C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4C730  40 80 02 7C */	bge lbl_80A4C9AC
/* 80A4C734  38 00 00 01 */	li r0, 1
/* 80A4C738  90 1F 07 38 */	stw r0, 0x738(r31)
/* 80A4C73C  7F 43 D3 78 */	mr r3, r26
/* 80A4C740  38 80 00 06 */	li r4, 6
/* 80A4C744  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4C748  38 A0 00 00 */	li r5, 0
/* 80A4C74C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C750  4B FF CA 55 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C754  38 00 00 12 */	li r0, 0x12
/* 80A4C758  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C75C  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 80A4C760  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A4C764  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80A4C768  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A4C76C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060025@ha */
/* 80A4C770  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00060025@l */
/* 80A4C774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4C778  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C77C  38 81 00 24 */	addi r4, r1, 0x24
/* 80A4C780  38 A0 00 00 */	li r5, 0
/* 80A4C784  38 C0 FF FF */	li r6, -1
/* 80A4C788  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C78C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4C790  7D 89 03 A6 */	mtctr r12
/* 80A4C794  4E 80 04 21 */	bctrl 
/* 80A4C798  28 1E 00 00 */	cmplwi r30, 0
/* 80A4C79C  41 82 02 10 */	beq lbl_80A4C9AC
/* 80A4C7A0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 80A4C7A4  D0 1E 0D C8 */	stfs f0, 0xdc8(r30)
/* 80A4C7A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B1@ha */
/* 80A4C7AC  38 03 00 B1 */	addi r0, r3, 0x00B1 /* 0x000800B1@l */
/* 80A4C7B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A4C7B4  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C7B8  38 81 00 20 */	addi r4, r1, 0x20
/* 80A4C7BC  38 A0 00 00 */	li r5, 0
/* 80A4C7C0  38 C0 FF FF */	li r6, -1
/* 80A4C7C4  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C7C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4C7CC  7D 89 03 A6 */	mtctr r12
/* 80A4C7D0  4E 80 04 21 */	bctrl 
/* 80A4C7D4  48 00 01 D8 */	b lbl_80A4C9AC
lbl_80A4C7D8:
/* 80A4C7D8  C3 FD 00 8C */	lfs f31, 0x8c(r29)
/* 80A4C7DC  38 7A 04 DC */	addi r3, r26, 0x4dc
/* 80A4C7E0  38 80 C7 D0 */	li r4, -14384
/* 80A4C7E4  38 A0 00 01 */	li r5, 1
/* 80A4C7E8  38 C0 06 00 */	li r6, 0x600
/* 80A4C7EC  4B 82 3E 1D */	bl cLib_addCalcAngleS2__FPssss
/* 80A4C7F0  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 80A4C7F4  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4C7FC  4C 40 13 82 */	cror 2, 0, 2
/* 80A4C800  40 82 01 AC */	bne lbl_80A4C9AC
/* 80A4C804  80 1A 06 AC */	lwz r0, 0x6ac(r26)
/* 80A4C808  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A4C80C  41 82 01 A0 */	beq lbl_80A4C9AC
/* 80A4C810  38 00 00 13 */	li r0, 0x13
/* 80A4C814  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C818  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80A4C81C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A4C820  38 00 C7 D0 */	li r0, -14384
/* 80A4C824  B0 1A 04 DC */	sth r0, 0x4dc(r26)
/* 80A4C828  38 00 00 28 */	li r0, 0x28
/* 80A4C82C  B0 1A 05 F0 */	sth r0, 0x5f0(r26)
/* 80A4C830  38 00 00 0A */	li r0, 0xa
/* 80A4C834  B0 1A 05 F2 */	sth r0, 0x5f2(r26)
/* 80A4C838  38 7A 08 58 */	addi r3, r26, 0x858
/* 80A4C83C  38 9A 08 5C */	addi r4, r26, 0x85c
/* 80A4C840  38 BA 05 38 */	addi r5, r26, 0x538
/* 80A4C844  38 C0 00 00 */	li r6, 0
/* 80A4C848  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80A4C84C  38 FA 01 0C */	addi r7, r26, 0x10c
/* 80A4C850  39 00 00 01 */	li r8, 1
/* 80A4C854  4B 5D 07 CD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80A4C858  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001C@ha */
/* 80A4C85C  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0005001C@l */
/* 80A4C860  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A4C864  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C868  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A4C86C  38 A0 FF FF */	li r5, -1
/* 80A4C870  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C874  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4C878  7D 89 03 A6 */	mtctr r12
/* 80A4C87C  4E 80 04 21 */	bctrl 
/* 80A4C880  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060023@ha */
/* 80A4C884  38 03 00 23 */	addi r0, r3, 0x0023 /* 0x00060023@l */
/* 80A4C888  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A4C88C  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4C890  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4C894  38 A0 00 00 */	li r5, 0
/* 80A4C898  38 C0 FF FF */	li r6, -1
/* 80A4C89C  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4C8A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4C8A4  7D 89 03 A6 */	mtctr r12
/* 80A4C8A8  4E 80 04 21 */	bctrl 
/* 80A4C8AC  7F 43 D3 78 */	mr r3, r26
/* 80A4C8B0  38 80 00 0D */	li r4, 0xd
/* 80A4C8B4  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80A4C8B8  38 A0 00 02 */	li r5, 2
/* 80A4C8BC  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C8C0  4B FF C8 E5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C8C4  48 00 00 E8 */	b lbl_80A4C9AC
lbl_80A4C8C8:
/* 80A4C8C8  A8 1A 05 F2 */	lha r0, 0x5f2(r26)
/* 80A4C8CC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C8D0  41 82 00 14 */	beq lbl_80A4C8E4
/* 80A4C8D4  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80A4C8D8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A4C8DC  FF E0 00 90 */	fmr f31, f0
/* 80A4C8E0  48 00 00 10 */	b lbl_80A4C8F0
lbl_80A4C8E4:
/* 80A4C8E4  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A4C8E8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A4C8EC  FF E0 00 90 */	fmr f31, f0
lbl_80A4C8F0:
/* 80A4C8F0  A8 1A 05 F0 */	lha r0, 0x5f0(r26)
/* 80A4C8F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C8F8  40 82 00 B4 */	bne lbl_80A4C9AC
/* 80A4C8FC  7F 43 D3 78 */	mr r3, r26
/* 80A4C900  38 80 00 23 */	li r4, 0x23
/* 80A4C904  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80A4C908  38 A0 00 00 */	li r5, 0
/* 80A4C90C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C910  4B FF C8 95 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C914  38 00 00 14 */	li r0, 0x14
/* 80A4C918  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C91C  48 00 00 90 */	b lbl_80A4C9AC
lbl_80A4C920:
/* 80A4C920  38 7A 04 DC */	addi r3, r26, 0x4dc
/* 80A4C924  38 80 00 00 */	li r4, 0
/* 80A4C928  38 A0 00 01 */	li r5, 1
/* 80A4C92C  38 C0 08 00 */	li r6, 0x800
/* 80A4C930  4B 82 3C D9 */	bl cLib_addCalcAngleS2__FPssss
/* 80A4C934  80 7A 05 CC */	lwz r3, 0x5cc(r26)
/* 80A4C938  38 80 00 01 */	li r4, 1
/* 80A4C93C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4C940  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4C944  40 82 00 18 */	bne lbl_80A4C95C
/* 80A4C948  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80A4C94C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4C950  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4C954  41 82 00 08 */	beq lbl_80A4C95C
/* 80A4C958  38 80 00 00 */	li r4, 0
lbl_80A4C95C:
/* 80A4C95C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4C960  41 82 00 4C */	beq lbl_80A4C9AC
/* 80A4C964  38 00 00 10 */	li r0, 0x10
/* 80A4C968  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C96C  7F 43 D3 78 */	mr r3, r26
/* 80A4C970  38 80 00 19 */	li r4, 0x19
/* 80A4C974  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4C978  38 A0 00 02 */	li r5, 2
/* 80A4C97C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C980  4B FF C8 25 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4C984  3C 60 80 A6 */	lis r3, leader@ha /* 0x80A5FEA0@ha */
/* 80A4C988  38 63 FE A0 */	addi r3, r3, leader@l /* 0x80A5FEA0@l */
/* 80A4C98C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4C990  A8 03 0B 42 */	lha r0, 0xb42(r3)
/* 80A4C994  2C 00 00 00 */	cmpwi r0, 0
/* 80A4C998  41 82 00 0C */	beq lbl_80A4C9A4
/* 80A4C99C  38 00 00 64 */	li r0, 0x64
/* 80A4C9A0  B0 03 0B 42 */	sth r0, 0xb42(r3)
lbl_80A4C9A4:
/* 80A4C9A4  38 00 00 1E */	li r0, 0x1e
/* 80A4C9A8  B0 1A 05 F4 */	sth r0, 0x5f4(r26)
lbl_80A4C9AC:
/* 80A4C9AC  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80A4C9B0  FC 20 F8 90 */	fmr f1, f31
/* 80A4C9B4  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4C9B8  C0 7D 00 CC */	lfs f3, 0xcc(r29)
/* 80A4C9BC  4B 82 30 81 */	bl cLib_addCalc2__FPffff
/* 80A4C9C0  4B FF C6 95 */	bl checkDoorDemo__Fv
/* 80A4C9C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4C9C8  41 82 00 18 */	beq lbl_80A4C9E0
/* 80A4C9CC  38 00 00 64 */	li r0, 0x64
/* 80A4C9D0  B0 1A 05 E8 */	sth r0, 0x5e8(r26)
/* 80A4C9D4  38 00 00 00 */	li r0, 0
/* 80A4C9D8  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4C9DC  48 00 00 70 */	b lbl_80A4CA4C
lbl_80A4C9E0:
/* 80A4C9E0  2C 1B 00 00 */	cmpwi r27, 0
/* 80A4C9E4  41 82 00 68 */	beq lbl_80A4CA4C
/* 80A4C9E8  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80A4C9EC  2C 00 02 00 */	cmpwi r0, 0x200
/* 80A4C9F0  40 81 00 5C */	ble lbl_80A4CA4C
/* 80A4C9F4  7F 43 D3 78 */	mr r3, r26
/* 80A4C9F8  38 80 00 06 */	li r4, 6
/* 80A4C9FC  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80A4CA00  38 A0 00 00 */	li r5, 0
/* 80A4CA04  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80A4CA08  4B FF C7 9D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CA0C  38 00 00 12 */	li r0, 0x12
/* 80A4CA10  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80A4CA14  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 80A4CA18  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A4CA1C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80A4CA20  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A4CA24  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80A4CA28  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0005001A@l */
/* 80A4CA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4CA30  38 7A 08 60 */	addi r3, r26, 0x860
/* 80A4CA34  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4CA38  38 A0 FF FF */	li r5, -1
/* 80A4CA3C  81 9A 08 60 */	lwz r12, 0x860(r26)
/* 80A4CA40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4CA44  7D 89 03 A6 */	mtctr r12
/* 80A4CA48  4E 80 04 21 */	bctrl 
lbl_80A4CA4C:
/* 80A4CA4C  7F 83 E3 78 */	mr r3, r28
lbl_80A4CA50:
/* 80A4CA50  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80A4CA54  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80A4CA58  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80A4CA5C  4B 91 57 C1 */	bl _restgpr_26
/* 80A4CA60  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80A4CA64  7C 08 03 A6 */	mtlr r0
/* 80A4CA68  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80A4CA6C  4E 80 00 20 */	blr 
