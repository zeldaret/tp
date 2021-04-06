lbl_8065A8A4:
/* 8065A8A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8065A8A8  7C 08 02 A6 */	mflr r0
/* 8065A8AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8065A8B0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8065A8B4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8065A8B8  39 61 00 80 */	addi r11, r1, 0x80
/* 8065A8BC  4B D0 79 21 */	bl _savegpr_29
/* 8065A8C0  7C 7D 1B 78 */	mr r29, r3
/* 8065A8C4  3C 80 80 66 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80662F58@ha */
/* 8065A8C8  3B C4 2F 58 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80662F58@l */
/* 8065A8CC  3C 80 80 66 */	lis r4, lit_3987@ha /* 0x80662DB0@ha */
/* 8065A8D0  3B E4 2D B0 */	addi r31, r4, lit_3987@l /* 0x80662DB0@l */
/* 8065A8D4  A0 03 0C 5C */	lhz r0, 0xc5c(r3)
/* 8065A8D8  2C 00 00 02 */	cmpwi r0, 2
/* 8065A8DC  41 82 00 B8 */	beq lbl_8065A994
/* 8065A8E0  40 80 03 C8 */	bge lbl_8065ACA8
/* 8065A8E4  2C 00 00 00 */	cmpwi r0, 0
/* 8065A8E8  41 82 00 10 */	beq lbl_8065A8F8
/* 8065A8EC  40 80 00 58 */	bge lbl_8065A944
/* 8065A8F0  48 00 03 B8 */	b lbl_8065ACA8
/* 8065A8F4  48 00 03 B4 */	b lbl_8065ACA8
lbl_8065A8F8:
/* 8065A8F8  88 1D 0C AA */	lbz r0, 0xcaa(r29)
/* 8065A8FC  28 00 00 00 */	cmplwi r0, 0
/* 8065A900  40 82 00 24 */	bne lbl_8065A924
/* 8065A904  38 80 00 15 */	li r4, 0x15
/* 8065A908  38 A0 00 02 */	li r5, 2
/* 8065A90C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065A910  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A914  4B FF DE 1D */	bl setBck__7daCow_cFiUcff
/* 8065A918  38 00 00 02 */	li r0, 2
/* 8065A91C  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065A920  48 00 03 88 */	b lbl_8065ACA8
lbl_8065A924:
/* 8065A924  38 80 00 06 */	li r4, 6
/* 8065A928  38 A0 00 00 */	li r5, 0
/* 8065A92C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065A930  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A934  4B FF DD FD */	bl setBck__7daCow_cFiUcff
/* 8065A938  38 00 00 01 */	li r0, 1
/* 8065A93C  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065A940  48 00 03 68 */	b lbl_8065ACA8
lbl_8065A944:
/* 8065A944  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A948  38 80 00 01 */	li r4, 1
/* 8065A94C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065A950  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065A954  40 82 00 18 */	bne lbl_8065A96C
/* 8065A958  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A95C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065A960  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065A964  41 82 00 08 */	beq lbl_8065A96C
/* 8065A968  38 80 00 00 */	li r4, 0
lbl_8065A96C:
/* 8065A96C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065A970  41 82 00 24 */	beq lbl_8065A994
/* 8065A974  7F A3 EB 78 */	mr r3, r29
/* 8065A978  38 80 00 15 */	li r4, 0x15
/* 8065A97C  38 A0 00 02 */	li r5, 2
/* 8065A980  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A984  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A988  4B FF DD A9 */	bl setBck__7daCow_cFiUcff
/* 8065A98C  38 00 00 02 */	li r0, 2
/* 8065A990  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
lbl_8065A994:
/* 8065A994  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A998  38 63 00 0C */	addi r3, r3, 0xc
/* 8065A99C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8065A9A0  4B CC DA 8D */	bl checkPass__12J3DFrameCtrlFf
/* 8065A9A4  2C 03 00 00 */	cmpwi r3, 0
/* 8065A9A8  41 82 00 2C */	beq lbl_8065A9D4
/* 8065A9AC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050021@ha */
/* 8065A9B0  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00050021@l */
/* 8065A9B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065A9B8  38 7D 05 7C */	addi r3, r29, 0x57c
/* 8065A9BC  38 81 00 0C */	addi r4, r1, 0xc
/* 8065A9C0  38 A0 FF FF */	li r5, -1
/* 8065A9C4  81 9D 05 7C */	lwz r12, 0x57c(r29)
/* 8065A9C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065A9CC  7D 89 03 A6 */	mtctr r12
/* 8065A9D0  4E 80 04 21 */	bctrl 
lbl_8065A9D4:
/* 8065A9D4  88 1D 0C A5 */	lbz r0, 0xca5(r29)
/* 8065A9D8  28 00 00 00 */	cmplwi r0, 0
/* 8065A9DC  40 82 00 AC */	bne lbl_8065AA88
/* 8065A9E0  7F A3 EB 78 */	mr r3, r29
/* 8065A9E4  4B FF EF DD */	bl checkNearCowRun__7daCow_cFv
/* 8065A9E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A9EC  40 82 00 14 */	bne lbl_8065AA00
/* 8065A9F0  7F A3 EB 78 */	mr r3, r29
/* 8065A9F4  48 00 03 39 */	bl checkPlayerWait__7daCow_cFv
/* 8065A9F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A9FC  41 82 00 30 */	beq lbl_8065AA2C
lbl_8065AA00:
/* 8065AA00  80 7E 02 38 */	lwz r3, 0x238(r30)
/* 8065AA04  80 1E 02 3C */	lwz r0, 0x23c(r30)
/* 8065AA08  90 61 00 64 */	stw r3, 0x64(r1)
/* 8065AA0C  90 01 00 68 */	stw r0, 0x68(r1)
/* 8065AA10  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 8065AA14  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8065AA18  7F A3 EB 78 */	mr r3, r29
/* 8065AA1C  38 81 00 64 */	addi r4, r1, 0x64
/* 8065AA20  38 A0 00 00 */	li r5, 0
/* 8065AA24  4B FF E6 F1 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065AA28  48 00 02 80 */	b lbl_8065ACA8
lbl_8065AA2C:
/* 8065AA2C  7F A3 EB 78 */	mr r3, r29
/* 8065AA30  4B FF E0 E1 */	bl setCarryStatus__7daCow_cFv
/* 8065AA34  7F A3 EB 78 */	mr r3, r29
/* 8065AA38  4B FF E3 81 */	bl checkThrow__7daCow_cFv
/* 8065AA3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065AA40  40 82 02 68 */	bne lbl_8065ACA8
/* 8065AA44  7F A3 EB 78 */	mr r3, r29
/* 8065AA48  4B FF E1 D1 */	bl setActetcStatus__7daCow_cFv
/* 8065AA4C  7F A3 EB 78 */	mr r3, r29
/* 8065AA50  4B FF E2 55 */	bl checkNadeNade__7daCow_cFv
/* 8065AA54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065AA58  41 82 00 30 */	beq lbl_8065AA88
/* 8065AA5C  80 7E 02 44 */	lwz r3, 0x244(r30)
/* 8065AA60  80 1E 02 48 */	lwz r0, 0x248(r30)
/* 8065AA64  90 61 00 58 */	stw r3, 0x58(r1)
/* 8065AA68  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8065AA6C  80 1E 02 4C */	lwz r0, 0x24c(r30)
/* 8065AA70  90 01 00 60 */	stw r0, 0x60(r1)
/* 8065AA74  7F A3 EB 78 */	mr r3, r29
/* 8065AA78  38 81 00 58 */	addi r4, r1, 0x58
/* 8065AA7C  38 A0 00 01 */	li r5, 1
/* 8065AA80  4B FF E6 95 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065AA84  48 00 02 24 */	b lbl_8065ACA8
lbl_8065AA88:
/* 8065AA88  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065AA8C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065AA90  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8065AA94  41 82 02 14 */	beq lbl_8065ACA8
/* 8065AA98  7F A3 EB 78 */	mr r3, r29
/* 8065AA9C  48 00 02 2D */	bl checkNearWolf__7daCow_cFv
/* 8065AAA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065AAA4  41 82 00 30 */	beq lbl_8065AAD4
/* 8065AAA8  80 7E 02 50 */	lwz r3, 0x250(r30)
/* 8065AAAC  80 1E 02 54 */	lwz r0, 0x254(r30)
/* 8065AAB0  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8065AAB4  90 01 00 50 */	stw r0, 0x50(r1)
/* 8065AAB8  80 1E 02 58 */	lwz r0, 0x258(r30)
/* 8065AABC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8065AAC0  7F A3 EB 78 */	mr r3, r29
/* 8065AAC4  38 81 00 4C */	addi r4, r1, 0x4c
/* 8065AAC8  38 A0 00 01 */	li r5, 1
/* 8065AACC  4B FF E6 49 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065AAD0  48 00 01 D8 */	b lbl_8065ACA8
lbl_8065AAD4:
/* 8065AAD4  4B C0 CD 99 */	bl cM_rnd__Fv
/* 8065AAD8  FF E0 08 90 */	fmr f31, f1
/* 8065AADC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065AAE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065AAE4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8065AAE8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8065AAEC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8065AAF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065AAF4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065AAF8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8065AAFC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8065AB00  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8065AB04  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8065AB08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8065AB0C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8065AB10  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8065AB14  38 61 00 10 */	addi r3, r1, 0x10
/* 8065AB18  38 81 00 1C */	addi r4, r1, 0x1c
/* 8065AB1C  4B CE C8 81 */	bl PSVECSquareDistance
/* 8065AB20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065AB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AB28  40 81 00 58 */	ble lbl_8065AB80
/* 8065AB2C  FC 00 08 34 */	frsqrte f0, f1
/* 8065AB30  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065AB34  FC 44 00 32 */	fmul f2, f4, f0
/* 8065AB38  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065AB3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065AB40  FC 01 00 32 */	fmul f0, f1, f0
/* 8065AB44  FC 03 00 28 */	fsub f0, f3, f0
/* 8065AB48  FC 02 00 32 */	fmul f0, f2, f0
/* 8065AB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065AB50  FC 00 00 32 */	fmul f0, f0, f0
/* 8065AB54  FC 01 00 32 */	fmul f0, f1, f0
/* 8065AB58  FC 03 00 28 */	fsub f0, f3, f0
/* 8065AB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065AB60  FC 44 00 32 */	fmul f2, f4, f0
/* 8065AB64  FC 00 00 32 */	fmul f0, f0, f0
/* 8065AB68  FC 01 00 32 */	fmul f0, f1, f0
/* 8065AB6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065AB70  FC 02 00 32 */	fmul f0, f2, f0
/* 8065AB74  FC 21 00 32 */	fmul f1, f1, f0
/* 8065AB78  FC 20 08 18 */	frsp f1, f1
/* 8065AB7C  48 00 00 88 */	b lbl_8065AC04
lbl_8065AB80:
/* 8065AB80  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065AB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AB88  40 80 00 10 */	bge lbl_8065AB98
/* 8065AB8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065AB90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065AB94  48 00 00 70 */	b lbl_8065AC04
lbl_8065AB98:
/* 8065AB98  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065AB9C  80 81 00 08 */	lwz r4, 8(r1)
/* 8065ABA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065ABA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065ABA8  7C 03 00 00 */	cmpw r3, r0
/* 8065ABAC  41 82 00 14 */	beq lbl_8065ABC0
/* 8065ABB0  40 80 00 40 */	bge lbl_8065ABF0
/* 8065ABB4  2C 03 00 00 */	cmpwi r3, 0
/* 8065ABB8  41 82 00 20 */	beq lbl_8065ABD8
/* 8065ABBC  48 00 00 34 */	b lbl_8065ABF0
lbl_8065ABC0:
/* 8065ABC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065ABC4  41 82 00 0C */	beq lbl_8065ABD0
/* 8065ABC8  38 00 00 01 */	li r0, 1
/* 8065ABCC  48 00 00 28 */	b lbl_8065ABF4
lbl_8065ABD0:
/* 8065ABD0  38 00 00 02 */	li r0, 2
/* 8065ABD4  48 00 00 20 */	b lbl_8065ABF4
lbl_8065ABD8:
/* 8065ABD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065ABDC  41 82 00 0C */	beq lbl_8065ABE8
/* 8065ABE0  38 00 00 05 */	li r0, 5
/* 8065ABE4  48 00 00 10 */	b lbl_8065ABF4
lbl_8065ABE8:
/* 8065ABE8  38 00 00 03 */	li r0, 3
/* 8065ABEC  48 00 00 08 */	b lbl_8065ABF4
lbl_8065ABF0:
/* 8065ABF0  38 00 00 04 */	li r0, 4
lbl_8065ABF4:
/* 8065ABF4  2C 00 00 01 */	cmpwi r0, 1
/* 8065ABF8  40 82 00 0C */	bne lbl_8065AC04
/* 8065ABFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065AC00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065AC04:
/* 8065AC04  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8065AC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AC0C  40 81 00 3C */	ble lbl_8065AC48
/* 8065AC10  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8065AC14  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065AC18  40 80 00 30 */	bge lbl_8065AC48
/* 8065AC1C  80 7E 02 5C */	lwz r3, 0x25c(r30)
/* 8065AC20  80 1E 02 60 */	lwz r0, 0x260(r30)
/* 8065AC24  90 61 00 40 */	stw r3, 0x40(r1)
/* 8065AC28  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065AC2C  80 1E 02 64 */	lwz r0, 0x264(r30)
/* 8065AC30  90 01 00 48 */	stw r0, 0x48(r1)
/* 8065AC34  7F A3 EB 78 */	mr r3, r29
/* 8065AC38  38 81 00 40 */	addi r4, r1, 0x40
/* 8065AC3C  38 A0 00 01 */	li r5, 1
/* 8065AC40  4B FF E4 D5 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065AC44  48 00 00 64 */	b lbl_8065ACA8
lbl_8065AC48:
/* 8065AC48  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8065AC4C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065AC50  40 80 00 30 */	bge lbl_8065AC80
/* 8065AC54  80 7E 02 68 */	lwz r3, 0x268(r30)
/* 8065AC58  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 8065AC5C  90 61 00 34 */	stw r3, 0x34(r1)
/* 8065AC60  90 01 00 38 */	stw r0, 0x38(r1)
/* 8065AC64  80 1E 02 70 */	lwz r0, 0x270(r30)
/* 8065AC68  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8065AC6C  7F A3 EB 78 */	mr r3, r29
/* 8065AC70  38 81 00 34 */	addi r4, r1, 0x34
/* 8065AC74  38 A0 00 00 */	li r5, 0
/* 8065AC78  4B FF E4 9D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065AC7C  48 00 00 2C */	b lbl_8065ACA8
lbl_8065AC80:
/* 8065AC80  80 7E 02 74 */	lwz r3, 0x274(r30)
/* 8065AC84  80 1E 02 78 */	lwz r0, 0x278(r30)
/* 8065AC88  90 61 00 28 */	stw r3, 0x28(r1)
/* 8065AC8C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8065AC90  80 1E 02 7C */	lwz r0, 0x27c(r30)
/* 8065AC94  90 01 00 30 */	stw r0, 0x30(r1)
/* 8065AC98  7F A3 EB 78 */	mr r3, r29
/* 8065AC9C  38 81 00 28 */	addi r4, r1, 0x28
/* 8065ACA0  38 A0 00 01 */	li r5, 1
/* 8065ACA4  4B FF E4 71 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
lbl_8065ACA8:
/* 8065ACA8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8065ACAC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8065ACB0  39 61 00 80 */	addi r11, r1, 0x80
/* 8065ACB4  4B D0 75 75 */	bl _restgpr_29
/* 8065ACB8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8065ACBC  7C 08 03 A6 */	mtlr r0
/* 8065ACC0  38 21 00 90 */	addi r1, r1, 0x90
/* 8065ACC4  4E 80 00 20 */	blr 
