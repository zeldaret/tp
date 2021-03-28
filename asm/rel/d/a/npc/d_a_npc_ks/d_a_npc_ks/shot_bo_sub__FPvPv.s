lbl_80A4AAC8:
/* 80A4AAC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A4AACC  7C 08 02 A6 */	mflr r0
/* 80A4AAD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A4AAD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4AAD8  4B 91 77 04 */	b _savegpr_29
/* 80A4AADC  7C 7F 1B 78 */	mr r31, r3
/* 80A4AAE0  7C 9D 23 78 */	mr r29, r4
/* 80A4AAE4  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A4AAE8  3B C4 DE FC */	addi r30, r4, lit_4030@l
/* 80A4AAEC  4B 5C E1 F4 */	b fopAc_IsActor__FPv
/* 80A4AAF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A4AAF4  41 82 01 58 */	beq lbl_80A4AC4C
/* 80A4AAF8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A4AAFC  2C 00 00 FE */	cmpwi r0, 0xfe
/* 80A4AB00  40 82 01 4C */	bne lbl_80A4AC4C
/* 80A4AB04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4AB08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4AB0C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80A4AB10  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 80A4AB14  40 82 01 38 */	bne lbl_80A4AC4C
/* 80A4AB18  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A4AB1C  28 00 00 01 */	cmplwi r0, 1
/* 80A4AB20  40 82 01 2C */	bne lbl_80A4AC4C
/* 80A4AB24  38 61 00 0C */	addi r3, r1, 0xc
/* 80A4AB28  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A4AB2C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A4AB30  4B 81 C0 04 */	b __mi__4cXyzCFRC3Vec
/* 80A4AB34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A4AB38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A4AB3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A4AB40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A4AB44  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A4AB48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A4AB4C  38 61 00 18 */	addi r3, r1, 0x18
/* 80A4AB50  4B 8F C5 E8 */	b PSVECSquareMag
/* 80A4AB54  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A4AB58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4AB5C  40 81 00 58 */	ble lbl_80A4ABB4
/* 80A4AB60  FC 00 08 34 */	frsqrte f0, f1
/* 80A4AB64  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A4AB68  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4AB6C  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A4AB70  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4AB74  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4AB78  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4AB7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4AB80  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4AB84  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4AB88  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4AB8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4AB90  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4AB94  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4AB98  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4AB9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4ABA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4ABA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4ABA8  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4ABAC  FC 20 08 18 */	frsp f1, f1
/* 80A4ABB0  48 00 00 88 */	b lbl_80A4AC38
lbl_80A4ABB4:
/* 80A4ABB4  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A4ABB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4ABBC  40 80 00 10 */	bge lbl_80A4ABCC
/* 80A4ABC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4ABC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A4ABC8  48 00 00 70 */	b lbl_80A4AC38
lbl_80A4ABCC:
/* 80A4ABCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A4ABD0  80 81 00 08 */	lwz r4, 8(r1)
/* 80A4ABD4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4ABD8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4ABDC  7C 03 00 00 */	cmpw r3, r0
/* 80A4ABE0  41 82 00 14 */	beq lbl_80A4ABF4
/* 80A4ABE4  40 80 00 40 */	bge lbl_80A4AC24
/* 80A4ABE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A4ABEC  41 82 00 20 */	beq lbl_80A4AC0C
/* 80A4ABF0  48 00 00 34 */	b lbl_80A4AC24
lbl_80A4ABF4:
/* 80A4ABF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4ABF8  41 82 00 0C */	beq lbl_80A4AC04
/* 80A4ABFC  38 00 00 01 */	li r0, 1
/* 80A4AC00  48 00 00 28 */	b lbl_80A4AC28
lbl_80A4AC04:
/* 80A4AC04  38 00 00 02 */	li r0, 2
/* 80A4AC08  48 00 00 20 */	b lbl_80A4AC28
lbl_80A4AC0C:
/* 80A4AC0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4AC10  41 82 00 0C */	beq lbl_80A4AC1C
/* 80A4AC14  38 00 00 05 */	li r0, 5
/* 80A4AC18  48 00 00 10 */	b lbl_80A4AC28
lbl_80A4AC1C:
/* 80A4AC1C  38 00 00 03 */	li r0, 3
/* 80A4AC20  48 00 00 08 */	b lbl_80A4AC28
lbl_80A4AC24:
/* 80A4AC24  38 00 00 04 */	li r0, 4
lbl_80A4AC28:
/* 80A4AC28  2C 00 00 01 */	cmpwi r0, 1
/* 80A4AC2C  40 82 00 0C */	bne lbl_80A4AC38
/* 80A4AC30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4AC34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A4AC38:
/* 80A4AC38  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A4AC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4AC40  40 80 00 0C */	bge lbl_80A4AC4C
/* 80A4AC44  7F E3 FB 78 */	mr r3, r31
/* 80A4AC48  48 00 00 08 */	b lbl_80A4AC50
lbl_80A4AC4C:
/* 80A4AC4C  38 60 00 00 */	li r3, 0
lbl_80A4AC50:
/* 80A4AC50  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4AC54  4B 91 75 D4 */	b _restgpr_29
/* 80A4AC58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A4AC5C  7C 08 03 A6 */	mtlr r0
/* 80A4AC60  38 21 00 40 */	addi r1, r1, 0x40
/* 80A4AC64  4E 80 00 20 */	blr 
