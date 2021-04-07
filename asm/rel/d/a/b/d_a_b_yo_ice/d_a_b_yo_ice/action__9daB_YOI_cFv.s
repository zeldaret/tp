lbl_8063CD90:
/* 8063CD90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8063CD94  7C 08 02 A6 */	mflr r0
/* 8063CD98  90 01 00 74 */	stw r0, 0x74(r1)
/* 8063CD9C  39 61 00 70 */	addi r11, r1, 0x70
/* 8063CDA0  4B D2 54 3D */	bl _savegpr_29
/* 8063CDA4  7C 7E 1B 78 */	mr r30, r3
/* 8063CDA8  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063CDAC  3B E3 DC 84 */	addi r31, r3, lit_3776@l /* 0x8063DC84@l */
/* 8063CDB0  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 8063CDB4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8063CDB8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8063CDBC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8063CDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063CDC4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063CDC8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8063CDCC  38 00 00 FF */	li r0, 0xff
/* 8063CDD0  90 01 00 08 */	stw r0, 8(r1)
/* 8063CDD4  38 80 00 00 */	li r4, 0
/* 8063CDD8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8063CDDC  38 00 FF FF */	li r0, -1
/* 8063CDE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063CDE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063CDE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063CDEC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8063CDF0  80 9E 0B 30 */	lwz r4, 0xb30(r30)
/* 8063CDF4  38 A0 00 00 */	li r5, 0
/* 8063CDF8  3C C0 00 01 */	lis r6, 0x0001 /* 0x000087BE@ha */
/* 8063CDFC  38 C6 87 BE */	addi r6, r6, 0x87BE /* 0x000087BE@l */
/* 8063CE00  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8063CE04  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8063CE08  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8063CE0C  39 41 00 48 */	addi r10, r1, 0x48
/* 8063CE10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8063CE14  4B A1 06 B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8063CE18  90 7E 0B 30 */	stw r3, 0xb30(r30)
/* 8063CE1C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8063CE20  38 63 02 10 */	addi r3, r3, 0x210
/* 8063CE24  80 9E 0B 30 */	lwz r4, 0xb30(r30)
/* 8063CE28  4B A0 EA F1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8063CE2C  28 03 00 00 */	cmplwi r3, 0
/* 8063CE30  41 82 00 30 */	beq lbl_8063CE60
/* 8063CE34  E0 01 00 48 */	psq_l f0, 72(r1), 0, 0 /* qr0 */
/* 8063CE38  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 8063CE3C  F0 01 00 30 */	psq_st f0, 48(r1), 0, 0 /* qr0 */
/* 8063CE40  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8063CE44  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8063CE48  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8063CE4C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8063CE50  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8063CE54  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8063CE58  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8063CE5C  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_8063CE60:
/* 8063CE60  7F C3 F3 78 */	mr r3, r30
/* 8063CE64  4B FF D4 81 */	bl damage_check__9daB_YOI_cFv
/* 8063CE68  38 00 00 00 */	li r0, 0
/* 8063CE6C  98 1E 06 AD */	stb r0, 0x6ad(r30)
/* 8063CE70  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 8063CE74  28 00 00 07 */	cmplwi r0, 7
/* 8063CE78  41 81 00 78 */	bgt lbl_8063CEF0
/* 8063CE7C  3C 60 80 64 */	lis r3, lit_4909@ha /* 0x8063DF30@ha */
/* 8063CE80  38 63 DF 30 */	addi r3, r3, lit_4909@l /* 0x8063DF30@l */
/* 8063CE84  54 00 10 3A */	slwi r0, r0, 2
/* 8063CE88  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063CE8C  7C 09 03 A6 */	mtctr r0
/* 8063CE90  4E 80 04 20 */	bctr 
lbl_8063CE94:
/* 8063CE94  7F C3 F3 78 */	mr r3, r30
/* 8063CE98  4B FF DA D5 */	bl executeFirst__9daB_YOI_cFv
/* 8063CE9C  48 00 00 54 */	b lbl_8063CEF0
lbl_8063CEA0:
/* 8063CEA0  7F C3 F3 78 */	mr r3, r30
/* 8063CEA4  4B FF DE 29 */	bl executeRiseUp__9daB_YOI_cFv
/* 8063CEA8  48 00 00 48 */	b lbl_8063CEF0
lbl_8063CEAC:
/* 8063CEAC  7F C3 F3 78 */	mr r3, r30
/* 8063CEB0  4B FF F8 BD */	bl executeDemoRevival__9daB_YOI_cFv
/* 8063CEB4  48 00 00 3C */	b lbl_8063CEF0
lbl_8063CEB8:
/* 8063CEB8  7F C3 F3 78 */	mr r3, r30
/* 8063CEBC  4B FF E3 7D */	bl executeSingleFall__9daB_YOI_cFv
/* 8063CEC0  48 00 00 30 */	b lbl_8063CEF0
lbl_8063CEC4:
/* 8063CEC4  7F C3 F3 78 */	mr r3, r30
/* 8063CEC8  4B FF EC 79 */	bl executeYose__9daB_YOI_cFv
/* 8063CECC  48 00 00 24 */	b lbl_8063CEF0
lbl_8063CED0:
/* 8063CED0  7F C3 F3 78 */	mr r3, r30
/* 8063CED4  4B FF F5 1D */	bl executeYoseFall__9daB_YOI_cFv
/* 8063CED8  48 00 00 18 */	b lbl_8063CEF0
lbl_8063CEDC:
/* 8063CEDC  7F C3 F3 78 */	mr r3, r30
/* 8063CEE0  4B FF FA 21 */	bl executeDamage__9daB_YOI_cFv
/* 8063CEE4  48 00 00 0C */	b lbl_8063CEF0
lbl_8063CEE8:
/* 8063CEE8  7F C3 F3 78 */	mr r3, r30
/* 8063CEEC  4B FF FD A5 */	bl executeDeath__9daB_YOI_cFv
lbl_8063CEF0:
/* 8063CEF0  88 1E 06 AD */	lbz r0, 0x6ad(r30)
/* 8063CEF4  28 00 00 00 */	cmplwi r0, 0
/* 8063CEF8  40 82 00 0C */	bne lbl_8063CF04
/* 8063CEFC  38 7E 07 1C */	addi r3, r30, 0x71c
/* 8063CF00  4B C2 6A 5D */	bl ClrCcMove__9cCcD_SttsFv
lbl_8063CF04:
/* 8063CF04  7F C3 F3 78 */	mr r3, r30
/* 8063CF08  38 9E 07 1C */	addi r4, r30, 0x71c
/* 8063CF0C  4B 9D D7 C1 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8063CF10  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 8063CF14  2C 00 00 06 */	cmpwi r0, 6
/* 8063CF18  41 82 01 4C */	beq lbl_8063D064
/* 8063CF1C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8063CF20  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8063CF24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8063CF28  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063CF2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063CF30  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8063CF34  38 61 00 24 */	addi r3, r1, 0x24
/* 8063CF38  4B D0 A2 01 */	bl PSVECSquareMag
/* 8063CF3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063CF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063CF44  40 81 00 58 */	ble lbl_8063CF9C
/* 8063CF48  FC 00 08 34 */	frsqrte f0, f1
/* 8063CF4C  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063CF50  FC 44 00 32 */	fmul f2, f4, f0
/* 8063CF54  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063CF58  FC 00 00 32 */	fmul f0, f0, f0
/* 8063CF5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8063CF60  FC 03 00 28 */	fsub f0, f3, f0
/* 8063CF64  FC 02 00 32 */	fmul f0, f2, f0
/* 8063CF68  FC 44 00 32 */	fmul f2, f4, f0
/* 8063CF6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063CF70  FC 01 00 32 */	fmul f0, f1, f0
/* 8063CF74  FC 03 00 28 */	fsub f0, f3, f0
/* 8063CF78  FC 02 00 32 */	fmul f0, f2, f0
/* 8063CF7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063CF80  FC 00 00 32 */	fmul f0, f0, f0
/* 8063CF84  FC 01 00 32 */	fmul f0, f1, f0
/* 8063CF88  FC 03 00 28 */	fsub f0, f3, f0
/* 8063CF8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8063CF90  FC 21 00 32 */	fmul f1, f1, f0
/* 8063CF94  FC 20 08 18 */	frsp f1, f1
/* 8063CF98  48 00 00 88 */	b lbl_8063D020
lbl_8063CF9C:
/* 8063CF9C  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063CFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063CFA4  40 80 00 10 */	bge lbl_8063CFB4
/* 8063CFA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8063CFAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8063CFB0  48 00 00 70 */	b lbl_8063D020
lbl_8063CFB4:
/* 8063CFB4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8063CFB8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8063CFBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063CFC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063CFC4  7C 03 00 00 */	cmpw r3, r0
/* 8063CFC8  41 82 00 14 */	beq lbl_8063CFDC
/* 8063CFCC  40 80 00 40 */	bge lbl_8063D00C
/* 8063CFD0  2C 03 00 00 */	cmpwi r3, 0
/* 8063CFD4  41 82 00 20 */	beq lbl_8063CFF4
/* 8063CFD8  48 00 00 34 */	b lbl_8063D00C
lbl_8063CFDC:
/* 8063CFDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063CFE0  41 82 00 0C */	beq lbl_8063CFEC
/* 8063CFE4  38 00 00 01 */	li r0, 1
/* 8063CFE8  48 00 00 28 */	b lbl_8063D010
lbl_8063CFEC:
/* 8063CFEC  38 00 00 02 */	li r0, 2
/* 8063CFF0  48 00 00 20 */	b lbl_8063D010
lbl_8063CFF4:
/* 8063CFF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063CFF8  41 82 00 0C */	beq lbl_8063D004
/* 8063CFFC  38 00 00 05 */	li r0, 5
/* 8063D000  48 00 00 10 */	b lbl_8063D010
lbl_8063D004:
/* 8063D004  38 00 00 03 */	li r0, 3
/* 8063D008  48 00 00 08 */	b lbl_8063D010
lbl_8063D00C:
/* 8063D00C  38 00 00 04 */	li r0, 4
lbl_8063D010:
/* 8063D010  2C 00 00 01 */	cmpwi r0, 1
/* 8063D014  40 82 00 0C */	bne lbl_8063D020
/* 8063D018  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8063D01C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8063D020:
/* 8063D020  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8063D024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063D028  40 81 00 3C */	ble lbl_8063D064
/* 8063D02C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8063D030  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8063D034  4B C2 A6 41 */	bl cM_atan2s__Fff
/* 8063D038  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8063D03C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8063D040  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063D044  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063D048  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063D04C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063D050  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8063D054  7C 63 02 14 */	add r3, r3, r0
/* 8063D058  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063D05C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063D060  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8063D064:
/* 8063D064  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8063D068  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8063D06C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063D070  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8063D074  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8063D078  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8063D07C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8063D080  EC 01 00 2A */	fadds f0, f1, f0
/* 8063D084  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8063D088  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 8063D08C  38 81 00 3C */	addi r4, r1, 0x3c
/* 8063D090  4B C2 AC 99 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8063D094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063D098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063D09C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8063D0A0  38 9E 06 C8 */	addi r4, r30, 0x6c8
/* 8063D0A4  4B A3 73 FD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8063D0A8  7F C3 F3 78 */	mr r3, r30
/* 8063D0AC  4B FF FC 69 */	bl crack_execute__9daB_YOI_cFv
/* 8063D0B0  39 61 00 70 */	addi r11, r1, 0x70
/* 8063D0B4  4B D2 51 75 */	bl _restgpr_29
/* 8063D0B8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063D0BC  7C 08 03 A6 */	mtlr r0
/* 8063D0C0  38 21 00 70 */	addi r1, r1, 0x70
/* 8063D0C4  4E 80 00 20 */	blr 
