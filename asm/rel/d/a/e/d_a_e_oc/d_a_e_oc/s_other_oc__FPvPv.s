lbl_8072C938:
/* 8072C938  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8072C93C  7C 08 02 A6 */	mflr r0
/* 8072C940  90 01 00 44 */	stw r0, 0x44(r1)
/* 8072C944  39 61 00 40 */	addi r11, r1, 0x40
/* 8072C948  4B C3 58 90 */	b _savegpr_28
/* 8072C94C  7C 7C 1B 78 */	mr r28, r3
/* 8072C950  7C 9D 23 78 */	mr r29, r4
/* 8072C954  3C 80 80 73 */	lis r4, lit_1109@ha
/* 8072C958  3B C4 60 00 */	addi r30, r4, lit_1109@l
/* 8072C95C  3C 80 80 73 */	lis r4, lit_3911@ha
/* 8072C960  3B E4 5B 28 */	addi r31, r4, lit_3911@l
/* 8072C964  7C 1C E8 40 */	cmplw r28, r29
/* 8072C968  41 82 02 50 */	beq lbl_8072CBB8
/* 8072C96C  4B 8E C3 74 */	b fopAc_IsActor__FPv
/* 8072C970  2C 03 00 00 */	cmpwi r3, 0
/* 8072C974  41 82 02 44 */	beq lbl_8072CBB8
/* 8072C978  28 1C 00 00 */	cmplwi r28, 0
/* 8072C97C  41 82 00 0C */	beq lbl_8072C988
/* 8072C980  80 7C 00 04 */	lwz r3, 4(r28)
/* 8072C984  48 00 00 08 */	b lbl_8072C98C
lbl_8072C988:
/* 8072C988  38 60 FF FF */	li r3, -1
lbl_8072C98C:
/* 8072C98C  4B 8F 57 AC */	b fpcM_IsCreating__FUi
/* 8072C990  2C 03 00 00 */	cmpwi r3, 0
/* 8072C994  40 82 02 24 */	bne lbl_8072CBB8
/* 8072C998  A8 1C 00 08 */	lha r0, 8(r28)
/* 8072C99C  2C 00 01 FE */	cmpwi r0, 0x1fe
/* 8072C9A0  40 82 02 18 */	bne lbl_8072CBB8
/* 8072C9A4  88 1C 06 EA */	lbz r0, 0x6ea(r28)
/* 8072C9A8  28 00 00 00 */	cmplwi r0, 0
/* 8072C9AC  41 82 01 6C */	beq lbl_8072CB18
/* 8072C9B0  7F 83 E3 78 */	mr r3, r28
/* 8072C9B4  7F A4 EB 78 */	mr r4, r29
/* 8072C9B8  4B 8E DE 28 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072C9BC  38 7E 00 60 */	addi r3, r30, 0x60
/* 8072C9C0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8072C9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072C9C8  40 80 01 50 */	bge lbl_8072CB18
/* 8072C9CC  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8072C9D0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8072C9D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072C9D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072C9DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8072C9E0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8072C9E4  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 8072C9E8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 8072C9EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072C9F0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8072C9F4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8072C9F8  38 61 00 0C */	addi r3, r1, 0xc
/* 8072C9FC  38 81 00 18 */	addi r4, r1, 0x18
/* 8072CA00  4B C1 A9 9C */	b PSVECSquareDistance
/* 8072CA04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072CA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CA0C  40 81 00 58 */	ble lbl_8072CA64
/* 8072CA10  FC 00 08 34 */	frsqrte f0, f1
/* 8072CA14  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072CA18  FC 44 00 32 */	fmul f2, f4, f0
/* 8072CA1C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072CA20  FC 00 00 32 */	fmul f0, f0, f0
/* 8072CA24  FC 01 00 32 */	fmul f0, f1, f0
/* 8072CA28  FC 03 00 28 */	fsub f0, f3, f0
/* 8072CA2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8072CA30  FC 44 00 32 */	fmul f2, f4, f0
/* 8072CA34  FC 00 00 32 */	fmul f0, f0, f0
/* 8072CA38  FC 01 00 32 */	fmul f0, f1, f0
/* 8072CA3C  FC 03 00 28 */	fsub f0, f3, f0
/* 8072CA40  FC 02 00 32 */	fmul f0, f2, f0
/* 8072CA44  FC 44 00 32 */	fmul f2, f4, f0
/* 8072CA48  FC 00 00 32 */	fmul f0, f0, f0
/* 8072CA4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8072CA50  FC 03 00 28 */	fsub f0, f3, f0
/* 8072CA54  FC 02 00 32 */	fmul f0, f2, f0
/* 8072CA58  FC 21 00 32 */	fmul f1, f1, f0
/* 8072CA5C  FC 20 08 18 */	frsp f1, f1
/* 8072CA60  48 00 00 88 */	b lbl_8072CAE8
lbl_8072CA64:
/* 8072CA64  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072CA68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CA6C  40 80 00 10 */	bge lbl_8072CA7C
/* 8072CA70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072CA74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072CA78  48 00 00 70 */	b lbl_8072CAE8
lbl_8072CA7C:
/* 8072CA7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8072CA80  80 81 00 08 */	lwz r4, 8(r1)
/* 8072CA84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072CA88  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072CA8C  7C 03 00 00 */	cmpw r3, r0
/* 8072CA90  41 82 00 14 */	beq lbl_8072CAA4
/* 8072CA94  40 80 00 40 */	bge lbl_8072CAD4
/* 8072CA98  2C 03 00 00 */	cmpwi r3, 0
/* 8072CA9C  41 82 00 20 */	beq lbl_8072CABC
/* 8072CAA0  48 00 00 34 */	b lbl_8072CAD4
lbl_8072CAA4:
/* 8072CAA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072CAA8  41 82 00 0C */	beq lbl_8072CAB4
/* 8072CAAC  38 00 00 01 */	li r0, 1
/* 8072CAB0  48 00 00 28 */	b lbl_8072CAD8
lbl_8072CAB4:
/* 8072CAB4  38 00 00 02 */	li r0, 2
/* 8072CAB8  48 00 00 20 */	b lbl_8072CAD8
lbl_8072CABC:
/* 8072CABC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072CAC0  41 82 00 0C */	beq lbl_8072CACC
/* 8072CAC4  38 00 00 05 */	li r0, 5
/* 8072CAC8  48 00 00 10 */	b lbl_8072CAD8
lbl_8072CACC:
/* 8072CACC  38 00 00 03 */	li r0, 3
/* 8072CAD0  48 00 00 08 */	b lbl_8072CAD8
lbl_8072CAD4:
/* 8072CAD4  38 00 00 04 */	li r0, 4
lbl_8072CAD8:
/* 8072CAD8  2C 00 00 01 */	cmpwi r0, 1
/* 8072CADC  40 82 00 0C */	bne lbl_8072CAE8
/* 8072CAE0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072CAE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072CAE8:
/* 8072CAE8  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8072CAEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CAF0  40 80 00 28 */	bge lbl_8072CB18
/* 8072CAF4  7F 83 E3 78 */	mr r3, r28
/* 8072CAF8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8072CAFC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8072CB00  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8072CB04  4B 8E DC DC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CB08  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8072CB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CB10  40 80 00 08 */	bge lbl_8072CB18
/* 8072CB14  93 9E 00 40 */	stw r28, 0x40(r30)
lbl_8072CB18:
/* 8072CB18  80 1C 06 A8 */	lwz r0, 0x6a8(r28)
/* 8072CB1C  2C 00 00 06 */	cmpwi r0, 6
/* 8072CB20  41 82 00 28 */	beq lbl_8072CB48
/* 8072CB24  40 80 00 18 */	bge lbl_8072CB3C
/* 8072CB28  2C 00 00 02 */	cmpwi r0, 2
/* 8072CB2C  40 80 00 8C */	bge lbl_8072CBB8
/* 8072CB30  2C 00 00 00 */	cmpwi r0, 0
/* 8072CB34  40 80 00 5C */	bge lbl_8072CB90
/* 8072CB38  48 00 00 80 */	b lbl_8072CBB8
lbl_8072CB3C:
/* 8072CB3C  2C 00 00 09 */	cmpwi r0, 9
/* 8072CB40  41 82 00 2C */	beq lbl_8072CB6C
/* 8072CB44  48 00 00 74 */	b lbl_8072CBB8
lbl_8072CB48:
/* 8072CB48  7F 83 E3 78 */	mr r3, r28
/* 8072CB4C  7F A4 EB 78 */	mr r4, r29
/* 8072CB50  4B 8E DC 90 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CB54  38 7E 00 60 */	addi r3, r30, 0x60
/* 8072CB58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8072CB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CB60  40 80 00 58 */	bge lbl_8072CBB8
/* 8072CB64  93 9E 00 44 */	stw r28, 0x44(r30)
/* 8072CB68  48 00 00 50 */	b lbl_8072CBB8
lbl_8072CB6C:
/* 8072CB6C  7F 83 E3 78 */	mr r3, r28
/* 8072CB70  7F A4 EB 78 */	mr r4, r29
/* 8072CB74  4B 8E DC 6C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CB78  38 7E 00 60 */	addi r3, r30, 0x60
/* 8072CB7C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8072CB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CB84  40 80 00 34 */	bge lbl_8072CBB8
/* 8072CB88  93 9E 00 48 */	stw r28, 0x48(r30)
/* 8072CB8C  48 00 00 2C */	b lbl_8072CBB8
lbl_8072CB90:
/* 8072CB90  7F 83 E3 78 */	mr r3, r28
/* 8072CB94  7F A4 EB 78 */	mr r4, r29
/* 8072CB98  4B 8E DC 48 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CB9C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8072CBA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CBA4  40 80 00 14 */	bge lbl_8072CBB8
/* 8072CBA8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8072CBAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CBB0  40 81 00 08 */	ble lbl_8072CBB8
/* 8072CBB4  93 9E 00 4C */	stw r28, 0x4c(r30)
lbl_8072CBB8:
/* 8072CBB8  38 60 00 00 */	li r3, 0
/* 8072CBBC  39 61 00 40 */	addi r11, r1, 0x40
/* 8072CBC0  4B C3 56 64 */	b _restgpr_28
/* 8072CBC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072CBC8  7C 08 03 A6 */	mtlr r0
/* 8072CBCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8072CBD0  4E 80 00 20 */	blr 
