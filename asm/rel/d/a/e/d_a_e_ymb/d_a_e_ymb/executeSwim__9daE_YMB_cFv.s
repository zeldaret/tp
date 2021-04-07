lbl_8081A88C:
/* 8081A88C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8081A890  7C 08 02 A6 */	mflr r0
/* 8081A894  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8081A898  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8081A89C  4B B4 79 3D */	bl _savegpr_28
/* 8081A8A0  7C 7C 1B 78 */	mr r28, r3
/* 8081A8A4  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 8081A8A8  3B C4 18 AC */	addi r30, r4, lit_3791@l /* 0x808218AC@l */
/* 8081A8AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081A8B0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081A8B4  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 8081A8B8  7C 00 07 74 */	extsb r0, r0
/* 8081A8BC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8081A8C0  7C 9F 02 14 */	add r4, r31, r0
/* 8081A8C4  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 8081A8C8  AB A4 02 32 */	lha r29, 0x232(r4)
/* 8081A8CC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081A8D0  4B 7F FE 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081A8D4  7C 03 E8 50 */	subf r0, r3, r29
/* 8081A8D8  7C 1D 07 34 */	extsh r29, r0
/* 8081A8DC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8081A8E0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8081A8E4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8081A8E8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8081A8EC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8081A8F0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8081A8F4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8081A8F8  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081A8FC  28 00 00 09 */	cmplwi r0, 9
/* 8081A900  41 81 0E 74 */	bgt lbl_8081B774
/* 8081A904  3C 60 80 82 */	lis r3, lit_6089@ha /* 0x80821CD0@ha */
/* 8081A908  38 63 1C D0 */	addi r3, r3, lit_6089@l /* 0x80821CD0@l */
/* 8081A90C  54 00 10 3A */	slwi r0, r0, 2
/* 8081A910  7C 03 00 2E */	lwzx r0, r3, r0
/* 8081A914  7C 09 03 A6 */	mtctr r0
/* 8081A918  4E 80 04 20 */	bctr 
lbl_8081A91C:
/* 8081A91C  7F 83 E3 78 */	mr r3, r28
/* 8081A920  38 80 00 14 */	li r4, 0x14
/* 8081A924  38 A0 00 02 */	li r5, 2
/* 8081A928  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8081A92C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081A930  4B FF C0 4D */	bl setBck__9daE_YMB_cFiUcff
/* 8081A934  38 00 00 01 */	li r0, 1
/* 8081A938  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081A93C  38 00 00 3C */	li r0, 0x3c
/* 8081A940  90 1C 06 FC */	stw r0, 0x6fc(r28)
lbl_8081A944:
/* 8081A944  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C2@ha */
/* 8081A948  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000702C2@l */
/* 8081A94C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8081A950  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081A954  38 81 00 3C */	addi r4, r1, 0x3c
/* 8081A958  38 A0 00 00 */	li r5, 0
/* 8081A95C  38 C0 FF FF */	li r6, -1
/* 8081A960  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081A964  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081A968  7D 89 03 A6 */	mtctr r12
/* 8081A96C  4E 80 04 21 */	bctrl 
/* 8081A970  38 7C 06 EA */	addi r3, r28, 0x6ea
/* 8081A974  38 80 00 00 */	li r4, 0
/* 8081A978  38 A0 00 08 */	li r5, 8
/* 8081A97C  38 C0 08 00 */	li r6, 0x800
/* 8081A980  38 E0 01 00 */	li r7, 0x100
/* 8081A984  4B A5 5B BD */	bl cLib_addCalcAngleS__FPsssss
/* 8081A988  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081A98C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A990  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081A994  4B A5 5D AD */	bl cLib_chaseF__FPfff
/* 8081A998  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081A99C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A9A0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081A9A4  4B A5 5D 9D */	bl cLib_chaseF__FPfff
/* 8081A9A8  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081A9AC  2C 00 00 00 */	cmpwi r0, 0
/* 8081A9B0  40 82 0D C4 */	bne lbl_8081B774
/* 8081A9B4  A8 7C 06 EA */	lha r3, 0x6ea(r28)
/* 8081A9B8  4B B4 A7 19 */	bl abs
/* 8081A9BC  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8081A9C0  40 80 0D B4 */	bge lbl_8081B774
/* 8081A9C4  38 00 00 02 */	li r0, 2
/* 8081A9C8  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081A9CC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081A9D0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8081A9D4  48 00 0D A0 */	b lbl_8081B774
lbl_8081A9D8:
/* 8081A9D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C2@ha */
/* 8081A9DC  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000702C2@l */
/* 8081A9E0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8081A9E4  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081A9E8  38 81 00 38 */	addi r4, r1, 0x38
/* 8081A9EC  38 A0 00 00 */	li r5, 0
/* 8081A9F0  38 C0 FF FF */	li r6, -1
/* 8081A9F4  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081A9F8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081A9FC  7D 89 03 A6 */	mtctr r12
/* 8081AA00  4E 80 04 21 */	bctrl 
/* 8081AA04  7F 83 E3 78 */	mr r3, r28
/* 8081AA08  4B FF C9 A9 */	bl setElecEffect1__9daE_YMB_cFv
/* 8081AA0C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081AA10  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 8081AA14  38 84 1E 64 */	addi r4, r4, l_HIO@l /* 0x80821E64@l */
/* 8081AA18  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8081AA1C  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081AA20  4B A5 5D 21 */	bl cLib_chaseF__FPfff
/* 8081AA24  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081AA28  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081AA2C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081AA30  4B A5 5D 11 */	bl cLib_chaseF__FPfff
/* 8081AA34  7F 83 E3 78 */	mr r3, r28
/* 8081AA38  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081AA3C  4B 7F FC D5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081AA40  7C 64 1B 78 */	mr r4, r3
/* 8081AA44  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8081AA48  3C 84 00 01 */	addis r4, r4, 1
/* 8081AA4C  38 04 80 00 */	addi r0, r4, -32768
/* 8081AA50  7C 04 07 34 */	extsh r4, r0
/* 8081AA54  38 A0 00 08 */	li r5, 8
/* 8081AA58  38 C0 10 00 */	li r6, 0x1000
/* 8081AA5C  38 E0 01 00 */	li r7, 0x100
/* 8081AA60  4B A5 5A E1 */	bl cLib_addCalcAngleS__FPsssss
/* 8081AA64  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8081AA68  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8081AA6C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8081AA70  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8081AA74  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081AA78  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8081AA7C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8081AA80  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8081AA84  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081AA88  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081AA8C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8081AA90  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8081AA94  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8081AA98  38 61 00 88 */	addi r3, r1, 0x88
/* 8081AA9C  38 81 00 94 */	addi r4, r1, 0x94
/* 8081AAA0  4B B2 C8 FD */	bl PSVECSquareDistance
/* 8081AAA4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081AAA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AAAC  40 81 00 58 */	ble lbl_8081AB04
/* 8081AAB0  FC 00 08 34 */	frsqrte f0, f1
/* 8081AAB4  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081AAB8  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AABC  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081AAC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AAC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AAC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AACC  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AAD0  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AAD4  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AAD8  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AADC  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AAE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AAE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AAE8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AAEC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AAF0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AAF4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AAF8  FC 21 00 32 */	fmul f1, f1, f0
/* 8081AAFC  FC 20 08 18 */	frsp f1, f1
/* 8081AB00  48 00 00 88 */	b lbl_8081AB88
lbl_8081AB04:
/* 8081AB04  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081AB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AB0C  40 80 00 10 */	bge lbl_8081AB1C
/* 8081AB10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081AB14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081AB18  48 00 00 70 */	b lbl_8081AB88
lbl_8081AB1C:
/* 8081AB1C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8081AB20  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8081AB24  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081AB28  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081AB2C  7C 03 00 00 */	cmpw r3, r0
/* 8081AB30  41 82 00 14 */	beq lbl_8081AB44
/* 8081AB34  40 80 00 40 */	bge lbl_8081AB74
/* 8081AB38  2C 03 00 00 */	cmpwi r3, 0
/* 8081AB3C  41 82 00 20 */	beq lbl_8081AB5C
/* 8081AB40  48 00 00 34 */	b lbl_8081AB74
lbl_8081AB44:
/* 8081AB44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081AB48  41 82 00 0C */	beq lbl_8081AB54
/* 8081AB4C  38 00 00 01 */	li r0, 1
/* 8081AB50  48 00 00 28 */	b lbl_8081AB78
lbl_8081AB54:
/* 8081AB54  38 00 00 02 */	li r0, 2
/* 8081AB58  48 00 00 20 */	b lbl_8081AB78
lbl_8081AB5C:
/* 8081AB5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081AB60  41 82 00 0C */	beq lbl_8081AB6C
/* 8081AB64  38 00 00 05 */	li r0, 5
/* 8081AB68  48 00 00 10 */	b lbl_8081AB78
lbl_8081AB6C:
/* 8081AB6C  38 00 00 03 */	li r0, 3
/* 8081AB70  48 00 00 08 */	b lbl_8081AB78
lbl_8081AB74:
/* 8081AB74  38 00 00 04 */	li r0, 4
lbl_8081AB78:
/* 8081AB78  2C 00 00 01 */	cmpwi r0, 1
/* 8081AB7C  40 82 00 0C */	bne lbl_8081AB88
/* 8081AB80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081AB84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081AB88:
/* 8081AB88  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8081AB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AB90  40 80 00 10 */	bge lbl_8081ABA0
/* 8081AB94  38 00 00 1E */	li r0, 0x1e
/* 8081AB98  90 1C 06 FC */	stw r0, 0x6fc(r28)
/* 8081AB9C  48 00 0B D8 */	b lbl_8081B774
lbl_8081ABA0:
/* 8081ABA0  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081ABA4  2C 00 00 00 */	cmpwi r0, 0
/* 8081ABA8  40 82 0B CC */	bne lbl_8081B774
/* 8081ABAC  38 00 00 03 */	li r0, 3
/* 8081ABB0  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081ABB4  38 00 00 96 */	li r0, 0x96
/* 8081ABB8  90 1C 07 00 */	stw r0, 0x700(r28)
/* 8081ABBC  38 00 00 00 */	li r0, 0
/* 8081ABC0  90 1C 06 FC */	stw r0, 0x6fc(r28)
/* 8081ABC4  90 1C 06 F0 */	stw r0, 0x6f0(r28)
/* 8081ABC8  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8081ABCC  4B A4 CD 89 */	bl cM_rndF__Ff
/* 8081ABD0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8081ABD4  EC 00 08 2A */	fadds f0, f0, f1
/* 8081ABD8  FC 00 00 1E */	fctiwz f0, f0
/* 8081ABDC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8081ABE0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8081ABE4  B0 1C 06 E6 */	sth r0, 0x6e6(r28)
/* 8081ABE8  7F 83 E3 78 */	mr r3, r28
/* 8081ABEC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081ABF0  4B 7F FB 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081ABF4  A8 1C 06 E6 */	lha r0, 0x6e6(r28)
/* 8081ABF8  7C 00 1A 14 */	add r0, r0, r3
/* 8081ABFC  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8081AC00  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 8081AC04  4B A4 CD 51 */	bl cM_rndF__Ff
/* 8081AC08  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8081AC0C  EC 00 08 2A */	fadds f0, f0, f1
/* 8081AC10  FC 00 00 1E */	fctiwz f0, f0
/* 8081AC14  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 8081AC18  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8081AC1C  B0 1C 06 E8 */	sth r0, 0x6e8(r28)
/* 8081AC20  48 00 0B 54 */	b lbl_8081B774
lbl_8081AC24:
/* 8081AC24  38 00 00 01 */	li r0, 1
/* 8081AC28  98 1C 07 1F */	stb r0, 0x71f(r28)
/* 8081AC2C  7F 83 E3 78 */	mr r3, r28
/* 8081AC30  4B FF C9 3D */	bl setElecEffect2__9daE_YMB_cFv
/* 8081AC34  80 1C 06 F0 */	lwz r0, 0x6f0(r28)
/* 8081AC38  2C 00 00 00 */	cmpwi r0, 0
/* 8081AC3C  40 82 00 7C */	bne lbl_8081ACB8
/* 8081AC40  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C2@ha */
/* 8081AC44  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000702C2@l */
/* 8081AC48  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081AC4C  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081AC50  38 81 00 34 */	addi r4, r1, 0x34
/* 8081AC54  38 A0 00 00 */	li r5, 0
/* 8081AC58  38 C0 FF FF */	li r6, -1
/* 8081AC5C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081AC60  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081AC64  7D 89 03 A6 */	mtctr r12
/* 8081AC68  4E 80 04 21 */	bctrl 
/* 8081AC6C  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081AC70  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8081AC74  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081AC78  4B A5 5A C9 */	bl cLib_chaseF__FPfff
/* 8081AC7C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8081AC80  C0 3C 06 CC */	lfs f1, 0x6cc(r28)
/* 8081AC84  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8081AC88  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081AC8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081AC90  40 81 00 CC */	ble lbl_8081AD5C
/* 8081AC94  38 00 00 01 */	li r0, 1
/* 8081AC98  90 1C 06 F0 */	stw r0, 0x6f0(r28)
/* 8081AC9C  7F 83 E3 78 */	mr r3, r28
/* 8081ACA0  38 80 00 15 */	li r4, 0x15
/* 8081ACA4  38 A0 00 02 */	li r5, 2
/* 8081ACA8  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8081ACAC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081ACB0  4B FF BC CD */	bl setBck__9daE_YMB_cFiUcff
/* 8081ACB4  48 00 00 A8 */	b lbl_8081AD5C
lbl_8081ACB8:
/* 8081ACB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081ACBC  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081ACC0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8081ACC4  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081ACC8  38 81 00 30 */	addi r4, r1, 0x30
/* 8081ACCC  38 A0 00 00 */	li r5, 0
/* 8081ACD0  38 C0 FF FF */	li r6, -1
/* 8081ACD4  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081ACD8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081ACDC  7D 89 03 A6 */	mtctr r12
/* 8081ACE0  4E 80 04 21 */	bctrl 
/* 8081ACE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C1@ha */
/* 8081ACE8  38 03 02 C1 */	addi r0, r3, 0x02C1 /* 0x000702C1@l */
/* 8081ACEC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8081ACF0  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081ACF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8081ACF8  38 A0 00 00 */	li r5, 0
/* 8081ACFC  38 C0 FF FF */	li r6, -1
/* 8081AD00  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081AD04  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081AD08  7D 89 03 A6 */	mtctr r12
/* 8081AD0C  4E 80 04 21 */	bctrl 
/* 8081AD10  7F 83 E3 78 */	mr r3, r28
/* 8081AD14  4B FF CB 49 */	bl setWaterEffect2__9daE_YMB_cFv
/* 8081AD18  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081AD1C  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8081AD20  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081AD24  4B A5 5A 1D */	bl cLib_chaseF__FPfff
/* 8081AD28  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8081AD2C  C0 1C 06 CC */	lfs f0, 0x6cc(r28)
/* 8081AD30  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8081AD34  EC 00 08 28 */	fsubs f0, f0, f1
/* 8081AD38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081AD3C  40 80 00 20 */	bge lbl_8081AD5C
/* 8081AD40  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081AD44  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8081AD48  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8081AD4C  C0 1C 06 CC */	lfs f0, 0x6cc(r28)
/* 8081AD50  EC 20 08 28 */	fsubs f1, f0, f1
/* 8081AD54  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 8081AD58  4B A5 59 E9 */	bl cLib_chaseF__FPfff
lbl_8081AD5C:
/* 8081AD5C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081AD60  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 8081AD64  38 84 1E 64 */	addi r4, r4, l_HIO@l /* 0x80821E64@l */
/* 8081AD68  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8081AD6C  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081AD70  4B A5 59 D1 */	bl cLib_chaseF__FPfff
/* 8081AD74  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081AD78  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8081AD7C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081AD80  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8081AD84  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081AD88  38 7C 06 A8 */	addi r3, r28, 0x6a8
/* 8081AD8C  38 81 00 AC */	addi r4, r1, 0xac
/* 8081AD90  A8 BC 06 E4 */	lha r5, 0x6e4(r28)
/* 8081AD94  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 8081AD98  4B A5 60 29 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081AD9C  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081ADA0  2C 00 00 03 */	cmpwi r0, 3
/* 8081ADA4  40 82 01 A8 */	bne lbl_8081AF4C
/* 8081ADA8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081ADAC  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 8081ADB0  4B A5 5E 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081ADB4  7C 64 1B 78 */	mr r4, r3
/* 8081ADB8  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8081ADBC  38 A0 00 08 */	li r5, 8
/* 8081ADC0  A8 DC 06 E8 */	lha r6, 0x6e8(r28)
/* 8081ADC4  38 E0 00 40 */	li r7, 0x40
/* 8081ADC8  4B A5 57 79 */	bl cLib_addCalcAngleS__FPsssss
/* 8081ADCC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8081ADD0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8081ADD4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081ADD8  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 8081ADDC  4B A5 5E 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081ADE0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8081ADE4  7C 03 00 50 */	subf r0, r3, r0
/* 8081ADE8  7C 03 07 34 */	extsh r3, r0
/* 8081ADEC  4B B4 A2 E5 */	bl abs
/* 8081ADF0  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8081ADF4  40 81 00 1C */	ble lbl_8081AE10
/* 8081ADF8  7F 83 E3 78 */	mr r3, r28
/* 8081ADFC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081AE00  4B 7F F9 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081AE04  A8 1C 06 E6 */	lha r0, 0x6e6(r28)
/* 8081AE08  7C 00 1A 14 */	add r0, r0, r3
/* 8081AE0C  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
lbl_8081AE10:
/* 8081AE10  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081AE14  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081AE18  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8081AE1C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081AE20  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8081AE24  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8081AE28  C0 5C 06 B0 */	lfs f2, 0x6b0(r28)
/* 8081AE2C  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 8081AE30  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8081AE34  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8081AE38  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8081AE3C  38 61 00 70 */	addi r3, r1, 0x70
/* 8081AE40  38 81 00 7C */	addi r4, r1, 0x7c
/* 8081AE44  4B B2 C5 59 */	bl PSVECSquareDistance
/* 8081AE48  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081AE4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AE50  40 81 00 58 */	ble lbl_8081AEA8
/* 8081AE54  FC 00 08 34 */	frsqrte f0, f1
/* 8081AE58  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081AE5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AE60  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081AE64  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AE68  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AE6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AE70  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AE74  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AE78  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AE7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AE80  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AE84  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AE88  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AE8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AE90  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AE94  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AE98  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AE9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8081AEA0  FC 20 08 18 */	frsp f1, f1
/* 8081AEA4  48 00 00 88 */	b lbl_8081AF2C
lbl_8081AEA8:
/* 8081AEA8  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081AEAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AEB0  40 80 00 10 */	bge lbl_8081AEC0
/* 8081AEB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081AEB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081AEBC  48 00 00 70 */	b lbl_8081AF2C
lbl_8081AEC0:
/* 8081AEC0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8081AEC4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8081AEC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081AECC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081AED0  7C 03 00 00 */	cmpw r3, r0
/* 8081AED4  41 82 00 14 */	beq lbl_8081AEE8
/* 8081AED8  40 80 00 40 */	bge lbl_8081AF18
/* 8081AEDC  2C 03 00 00 */	cmpwi r3, 0
/* 8081AEE0  41 82 00 20 */	beq lbl_8081AF00
/* 8081AEE4  48 00 00 34 */	b lbl_8081AF18
lbl_8081AEE8:
/* 8081AEE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081AEEC  41 82 00 0C */	beq lbl_8081AEF8
/* 8081AEF0  38 00 00 01 */	li r0, 1
/* 8081AEF4  48 00 00 28 */	b lbl_8081AF1C
lbl_8081AEF8:
/* 8081AEF8  38 00 00 02 */	li r0, 2
/* 8081AEFC  48 00 00 20 */	b lbl_8081AF1C
lbl_8081AF00:
/* 8081AF00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081AF04  41 82 00 0C */	beq lbl_8081AF10
/* 8081AF08  38 00 00 05 */	li r0, 5
/* 8081AF0C  48 00 00 10 */	b lbl_8081AF1C
lbl_8081AF10:
/* 8081AF10  38 00 00 03 */	li r0, 3
/* 8081AF14  48 00 00 08 */	b lbl_8081AF1C
lbl_8081AF18:
/* 8081AF18  38 00 00 04 */	li r0, 4
lbl_8081AF1C:
/* 8081AF1C  2C 00 00 01 */	cmpwi r0, 1
/* 8081AF20  40 82 00 0C */	bne lbl_8081AF2C
/* 8081AF24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081AF28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081AF2C:
/* 8081AF2C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8081AF30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AF34  40 80 08 40 */	bge lbl_8081B774
/* 8081AF38  38 00 00 04 */	li r0, 4
/* 8081AF3C  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081AF40  38 00 00 1E */	li r0, 0x1e
/* 8081AF44  90 1C 06 FC */	stw r0, 0x6fc(r28)
/* 8081AF48  48 00 08 2C */	b lbl_8081B774
lbl_8081AF4C:
/* 8081AF4C  2C 00 00 04 */	cmpwi r0, 4
/* 8081AF50  40 82 08 24 */	bne lbl_8081B774
/* 8081AF54  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081AF58  2C 00 00 00 */	cmpwi r0, 0
/* 8081AF5C  40 82 08 18 */	bne lbl_8081B774
/* 8081AF60  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081AF64  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081AF68  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8081AF6C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081AF70  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8081AF74  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8081AF78  C0 5C 06 B0 */	lfs f2, 0x6b0(r28)
/* 8081AF7C  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 8081AF80  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8081AF84  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8081AF88  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8081AF8C  38 61 00 58 */	addi r3, r1, 0x58
/* 8081AF90  38 81 00 64 */	addi r4, r1, 0x64
/* 8081AF94  4B B2 C4 09 */	bl PSVECSquareDistance
/* 8081AF98  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081AF9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081AFA0  40 81 00 58 */	ble lbl_8081AFF8
/* 8081AFA4  FC 00 08 34 */	frsqrte f0, f1
/* 8081AFA8  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081AFAC  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AFB0  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081AFB4  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AFB8  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AFBC  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AFC0  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AFC4  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AFC8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AFCC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AFD0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AFD4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AFD8  FC 44 00 32 */	fmul f2, f4, f0
/* 8081AFDC  FC 00 00 32 */	fmul f0, f0, f0
/* 8081AFE0  FC 01 00 32 */	fmul f0, f1, f0
/* 8081AFE4  FC 03 00 28 */	fsub f0, f3, f0
/* 8081AFE8  FC 02 00 32 */	fmul f0, f2, f0
/* 8081AFEC  FC 21 00 32 */	fmul f1, f1, f0
/* 8081AFF0  FC 20 08 18 */	frsp f1, f1
/* 8081AFF4  48 00 00 88 */	b lbl_8081B07C
lbl_8081AFF8:
/* 8081AFF8  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081AFFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081B000  40 80 00 10 */	bge lbl_8081B010
/* 8081B004  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081B008  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081B00C  48 00 00 70 */	b lbl_8081B07C
lbl_8081B010:
/* 8081B010  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8081B014  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8081B018  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081B01C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081B020  7C 03 00 00 */	cmpw r3, r0
/* 8081B024  41 82 00 14 */	beq lbl_8081B038
/* 8081B028  40 80 00 40 */	bge lbl_8081B068
/* 8081B02C  2C 03 00 00 */	cmpwi r3, 0
/* 8081B030  41 82 00 20 */	beq lbl_8081B050
/* 8081B034  48 00 00 34 */	b lbl_8081B068
lbl_8081B038:
/* 8081B038  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081B03C  41 82 00 0C */	beq lbl_8081B048
/* 8081B040  38 00 00 01 */	li r0, 1
/* 8081B044  48 00 00 28 */	b lbl_8081B06C
lbl_8081B048:
/* 8081B048  38 00 00 02 */	li r0, 2
/* 8081B04C  48 00 00 20 */	b lbl_8081B06C
lbl_8081B050:
/* 8081B050  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081B054  41 82 00 0C */	beq lbl_8081B060
/* 8081B058  38 00 00 05 */	li r0, 5
/* 8081B05C  48 00 00 10 */	b lbl_8081B06C
lbl_8081B060:
/* 8081B060  38 00 00 03 */	li r0, 3
/* 8081B064  48 00 00 08 */	b lbl_8081B06C
lbl_8081B068:
/* 8081B068  38 00 00 04 */	li r0, 4
lbl_8081B06C:
/* 8081B06C  2C 00 00 01 */	cmpwi r0, 1
/* 8081B070  40 82 00 0C */	bne lbl_8081B07C
/* 8081B074  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081B078  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081B07C:
/* 8081B07C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8081B080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081B084  40 81 06 F0 */	ble lbl_8081B774
/* 8081B088  80 1C 07 00 */	lwz r0, 0x700(r28)
/* 8081B08C  2C 00 00 00 */	cmpwi r0, 0
/* 8081B090  41 82 00 68 */	beq lbl_8081B0F8
/* 8081B094  38 00 00 03 */	li r0, 3
/* 8081B098  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081B09C  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8081B0A0  4B A4 C8 B5 */	bl cM_rndF__Ff
/* 8081B0A4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8081B0A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8081B0AC  FC 00 00 1E */	fctiwz f0, f0
/* 8081B0B0  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 8081B0B4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8081B0B8  B0 1C 06 E6 */	sth r0, 0x6e6(r28)
/* 8081B0BC  7F 83 E3 78 */	mr r3, r28
/* 8081B0C0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081B0C4  4B 7F F6 4D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081B0C8  A8 1C 06 E6 */	lha r0, 0x6e6(r28)
/* 8081B0CC  7C 00 1A 14 */	add r0, r0, r3
/* 8081B0D0  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8081B0D4  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 8081B0D8  4B A4 C8 7D */	bl cM_rndF__Ff
/* 8081B0DC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8081B0E0  EC 00 08 2A */	fadds f0, f0, f1
/* 8081B0E4  FC 00 00 1E */	fctiwz f0, f0
/* 8081B0E8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8081B0EC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8081B0F0  B0 1C 06 E8 */	sth r0, 0x6e8(r28)
/* 8081B0F4  48 00 06 80 */	b lbl_8081B774
lbl_8081B0F8:
/* 8081B0F8  38 00 00 05 */	li r0, 5
/* 8081B0FC  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081B100  38 00 00 1E */	li r0, 0x1e
/* 8081B104  90 1C 06 FC */	stw r0, 0x6fc(r28)
/* 8081B108  7F 83 E3 78 */	mr r3, r28
/* 8081B10C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081B110  4B 7F F6 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081B114  38 03 70 00 */	addi r0, r3, 0x7000
/* 8081B118  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8081B11C  48 00 06 58 */	b lbl_8081B774
lbl_8081B120:
/* 8081B120  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C1@ha */
/* 8081B124  38 03 02 C1 */	addi r0, r3, 0x02C1 /* 0x000702C1@l */
/* 8081B128  90 01 00 28 */	stw r0, 0x28(r1)
/* 8081B12C  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081B130  38 81 00 28 */	addi r4, r1, 0x28
/* 8081B134  38 A0 00 00 */	li r5, 0
/* 8081B138  38 C0 FF FF */	li r6, -1
/* 8081B13C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081B140  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B144  7D 89 03 A6 */	mtctr r12
/* 8081B148  4E 80 04 21 */	bctrl 
/* 8081B14C  7F 83 E3 78 */	mr r3, r28
/* 8081B150  4B FF C7 0D */	bl setWaterEffect2__9daE_YMB_cFv
/* 8081B154  7F 83 E3 78 */	mr r3, r28
/* 8081B158  4B FF C4 15 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081B15C  7F 83 E3 78 */	mr r3, r28
/* 8081B160  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081B164  4B 7F F5 AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081B168  38 03 80 00 */	addi r0, r3, -32768
/* 8081B16C  7C 03 07 34 */	extsh r3, r0
/* 8081B170  A8 1C 06 E4 */	lha r0, 0x6e4(r28)
/* 8081B174  7C 03 00 50 */	subf r0, r3, r0
/* 8081B178  7C 03 07 34 */	extsh r3, r0
/* 8081B17C  4B B4 9F 55 */	bl abs
/* 8081B180  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8081B184  40 80 00 10 */	bge lbl_8081B194
/* 8081B188  A8 7C 06 E4 */	lha r3, 0x6e4(r28)
/* 8081B18C  38 03 FE 80 */	addi r0, r3, -384
/* 8081B190  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
lbl_8081B194:
/* 8081B194  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081B198  2C 00 00 05 */	cmpwi r0, 5
/* 8081B19C  40 82 00 1C */	bne lbl_8081B1B8
/* 8081B1A0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081B1A4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8081B1A8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081B1AC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8081B1B0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8081B1B4  48 00 00 18 */	b lbl_8081B1CC
lbl_8081B1B8:
/* 8081B1B8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081B1BC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8081B1C0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8081B1C4  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8081B1C8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
lbl_8081B1CC:
/* 8081B1CC  38 7C 06 A8 */	addi r3, r28, 0x6a8
/* 8081B1D0  38 81 00 AC */	addi r4, r1, 0xac
/* 8081B1D4  A8 BC 06 E4 */	lha r5, 0x6e4(r28)
/* 8081B1D8  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 8081B1DC  4B A5 5B E5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081B1E0  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081B1E4  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 8081B1E8  38 84 1E 64 */	addi r4, r4, l_HIO@l /* 0x80821E64@l */
/* 8081B1EC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8081B1F0  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081B1F4  4B A5 55 4D */	bl cLib_chaseF__FPfff
/* 8081B1F8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081B1FC  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 8081B200  4B A5 5A 05 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081B204  7C 64 1B 78 */	mr r4, r3
/* 8081B208  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8081B20C  38 A0 00 08 */	li r5, 8
/* 8081B210  38 C0 08 00 */	li r6, 0x800
/* 8081B214  38 E0 01 00 */	li r7, 0x100
/* 8081B218  4B A5 53 29 */	bl cLib_addCalcAngleS__FPsssss
/* 8081B21C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8081B220  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8081B224  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 8081B228  2C 00 00 05 */	cmpwi r0, 5
/* 8081B22C  40 82 00 74 */	bne lbl_8081B2A0
/* 8081B230  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081B234  2C 00 00 00 */	cmpwi r0, 0
/* 8081B238  40 82 05 3C */	bne lbl_8081B774
/* 8081B23C  3B E0 00 00 */	li r31, 0
/* 8081B240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081B244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081B248  3B C3 56 B8 */	addi r30, r3, 0x56b8
/* 8081B24C  7F C3 F3 78 */	mr r3, r30
/* 8081B250  4B 85 85 95 */	bl LockonTruth__12dAttention_cFv
/* 8081B254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081B258  41 82 00 1C */	beq lbl_8081B274
/* 8081B25C  7F C3 F3 78 */	mr r3, r30
/* 8081B260  38 80 00 00 */	li r4, 0
/* 8081B264  4B 85 82 D9 */	bl LockonTarget__12dAttention_cFl
/* 8081B268  7C 03 E0 40 */	cmplw r3, r28
/* 8081B26C  40 82 00 08 */	bne lbl_8081B274
/* 8081B270  3B E0 00 01 */	li r31, 1
lbl_8081B274:
/* 8081B274  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8081B278  40 82 00 14 */	bne lbl_8081B28C
/* 8081B27C  7F A3 EB 78 */	mr r3, r29
/* 8081B280  4B B4 9E 51 */	bl abs
/* 8081B284  2C 03 58 00 */	cmpwi r3, 0x5800
/* 8081B288  40 81 04 EC */	ble lbl_8081B774
lbl_8081B28C:
/* 8081B28C  38 00 00 06 */	li r0, 6
/* 8081B290  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081B294  38 00 00 2D */	li r0, 0x2d
/* 8081B298  90 1C 06 FC */	stw r0, 0x6fc(r28)
/* 8081B29C  48 00 04 D8 */	b lbl_8081B774
lbl_8081B2A0:
/* 8081B2A0  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081B2A4  2C 00 00 00 */	cmpwi r0, 0
/* 8081B2A8  40 82 04 CC */	bne lbl_8081B774
/* 8081B2AC  38 00 00 07 */	li r0, 7
/* 8081B2B0  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081B2B4  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8081B2B8  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 8081B2BC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8081B2C0  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 8081B2C4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8081B2C8  D0 1C 06 B0 */	stfs f0, 0x6b0(r28)
/* 8081B2CC  7F 83 E3 78 */	mr r3, r28
/* 8081B2D0  38 80 00 06 */	li r4, 6
/* 8081B2D4  38 A0 00 00 */	li r5, 0
/* 8081B2D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8081B2DC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081B2E0  4B FF B6 9D */	bl setBck__9daE_YMB_cFiUcff
/* 8081B2E4  48 00 04 90 */	b lbl_8081B774
lbl_8081B2E8:
/* 8081B2E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081B2EC  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081B2F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8081B2F4  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081B2F8  38 81 00 24 */	addi r4, r1, 0x24
/* 8081B2FC  38 A0 00 00 */	li r5, 0
/* 8081B300  38 C0 FF FF */	li r6, -1
/* 8081B304  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081B308  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B30C  7D 89 03 A6 */	mtctr r12
/* 8081B310  4E 80 04 21 */	bctrl 
/* 8081B314  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 8081B318  38 80 00 01 */	li r4, 1
/* 8081B31C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081B320  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081B324  40 82 00 18 */	bne lbl_8081B33C
/* 8081B328  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081B32C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081B330  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081B334  41 82 00 08 */	beq lbl_8081B33C
/* 8081B338  38 80 00 00 */	li r4, 0
lbl_8081B33C:
/* 8081B33C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081B340  41 82 00 1C */	beq lbl_8081B35C
/* 8081B344  7F 83 E3 78 */	mr r3, r28
/* 8081B348  38 80 00 07 */	li r4, 7
/* 8081B34C  38 A0 00 02 */	li r5, 2
/* 8081B350  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8081B354  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081B358  4B FF B6 25 */	bl setBck__9daE_YMB_cFiUcff
lbl_8081B35C:
/* 8081B35C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C1@ha */
/* 8081B360  38 03 02 C1 */	addi r0, r3, 0x02C1 /* 0x000702C1@l */
/* 8081B364  90 01 00 20 */	stw r0, 0x20(r1)
/* 8081B368  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081B36C  38 81 00 20 */	addi r4, r1, 0x20
/* 8081B370  38 A0 00 00 */	li r5, 0
/* 8081B374  38 C0 FF FF */	li r6, -1
/* 8081B378  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081B37C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B380  7D 89 03 A6 */	mtctr r12
/* 8081B384  4E 80 04 21 */	bctrl 
/* 8081B388  7F 83 E3 78 */	mr r3, r28
/* 8081B38C  4B FF C4 D1 */	bl setWaterEffect2__9daE_YMB_cFv
/* 8081B390  7F 83 E3 78 */	mr r3, r28
/* 8081B394  4B FF C1 D9 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081B398  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081B39C  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 8081B3A0  38 84 1E 64 */	addi r4, r4, l_HIO@l /* 0x80821E64@l */
/* 8081B3A4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8081B3A8  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081B3AC  4B A5 53 95 */	bl cLib_chaseF__FPfff
/* 8081B3B0  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8081B3B4  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8081B3B8  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 8081B3BC  EC 21 00 2A */	fadds f1, f1, f0
/* 8081B3C0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8081B3C4  4B A5 53 7D */	bl cLib_chaseF__FPfff
/* 8081B3C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8081B3CC  38 9C 06 A8 */	addi r4, r28, 0x6a8
/* 8081B3D0  4B A5 58 35 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081B3D4  7C 64 1B 78 */	mr r4, r3
/* 8081B3D8  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8081B3DC  38 A0 00 08 */	li r5, 8
/* 8081B3E0  38 C0 08 00 */	li r6, 0x800
/* 8081B3E4  38 E0 00 40 */	li r7, 0x40
/* 8081B3E8  4B A5 51 59 */	bl cLib_addCalcAngleS__FPsssss
/* 8081B3EC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8081B3F0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8081B3F4  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8081B3F8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8081B3FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081B400  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081B404  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8081B408  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8081B40C  C0 5C 06 B0 */	lfs f2, 0x6b0(r28)
/* 8081B410  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 8081B414  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081B418  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8081B41C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8081B420  38 61 00 40 */	addi r3, r1, 0x40
/* 8081B424  38 81 00 4C */	addi r4, r1, 0x4c
/* 8081B428  4B B2 BF 75 */	bl PSVECSquareDistance
/* 8081B42C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081B430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081B434  40 81 00 58 */	ble lbl_8081B48C
/* 8081B438  FC 00 08 34 */	frsqrte f0, f1
/* 8081B43C  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081B440  FC 44 00 32 */	fmul f2, f4, f0
/* 8081B444  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081B448  FC 00 00 32 */	fmul f0, f0, f0
/* 8081B44C  FC 01 00 32 */	fmul f0, f1, f0
/* 8081B450  FC 03 00 28 */	fsub f0, f3, f0
/* 8081B454  FC 02 00 32 */	fmul f0, f2, f0
/* 8081B458  FC 44 00 32 */	fmul f2, f4, f0
/* 8081B45C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081B460  FC 01 00 32 */	fmul f0, f1, f0
/* 8081B464  FC 03 00 28 */	fsub f0, f3, f0
/* 8081B468  FC 02 00 32 */	fmul f0, f2, f0
/* 8081B46C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081B470  FC 00 00 32 */	fmul f0, f0, f0
/* 8081B474  FC 01 00 32 */	fmul f0, f1, f0
/* 8081B478  FC 03 00 28 */	fsub f0, f3, f0
/* 8081B47C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081B480  FC 21 00 32 */	fmul f1, f1, f0
/* 8081B484  FC 20 08 18 */	frsp f1, f1
/* 8081B488  48 00 00 88 */	b lbl_8081B510
lbl_8081B48C:
/* 8081B48C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081B490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081B494  40 80 00 10 */	bge lbl_8081B4A4
/* 8081B498  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081B49C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081B4A0  48 00 00 70 */	b lbl_8081B510
lbl_8081B4A4:
/* 8081B4A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081B4A8  80 81 00 08 */	lwz r4, 8(r1)
/* 8081B4AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081B4B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081B4B4  7C 03 00 00 */	cmpw r3, r0
/* 8081B4B8  41 82 00 14 */	beq lbl_8081B4CC
/* 8081B4BC  40 80 00 40 */	bge lbl_8081B4FC
/* 8081B4C0  2C 03 00 00 */	cmpwi r3, 0
/* 8081B4C4  41 82 00 20 */	beq lbl_8081B4E4
/* 8081B4C8  48 00 00 34 */	b lbl_8081B4FC
lbl_8081B4CC:
/* 8081B4CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081B4D0  41 82 00 0C */	beq lbl_8081B4DC
/* 8081B4D4  38 00 00 01 */	li r0, 1
/* 8081B4D8  48 00 00 28 */	b lbl_8081B500
lbl_8081B4DC:
/* 8081B4DC  38 00 00 02 */	li r0, 2
/* 8081B4E0  48 00 00 20 */	b lbl_8081B500
lbl_8081B4E4:
/* 8081B4E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081B4E8  41 82 00 0C */	beq lbl_8081B4F4
/* 8081B4EC  38 00 00 05 */	li r0, 5
/* 8081B4F0  48 00 00 10 */	b lbl_8081B500
lbl_8081B4F4:
/* 8081B4F4  38 00 00 03 */	li r0, 3
/* 8081B4F8  48 00 00 08 */	b lbl_8081B500
lbl_8081B4FC:
/* 8081B4FC  38 00 00 04 */	li r0, 4
lbl_8081B500:
/* 8081B500  2C 00 00 01 */	cmpwi r0, 1
/* 8081B504  40 82 00 0C */	bne lbl_8081B510
/* 8081B508  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081B50C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081B510:
/* 8081B510  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8081B514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081B518  40 80 02 5C */	bge lbl_8081B774
/* 8081B51C  38 00 00 08 */	li r0, 8
/* 8081B520  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081B524  38 00 00 0A */	li r0, 0xa
/* 8081B528  90 1C 06 FC */	stw r0, 0x6fc(r28)
/* 8081B52C  38 00 00 00 */	li r0, 0
/* 8081B530  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8081B534  48 00 02 40 */	b lbl_8081B774
lbl_8081B538:
/* 8081B538  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081B53C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081B540  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8081B544  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081B548  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081B54C  38 A0 00 00 */	li r5, 0
/* 8081B550  38 C0 FF FF */	li r6, -1
/* 8081B554  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081B558  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B55C  7D 89 03 A6 */	mtctr r12
/* 8081B560  4E 80 04 21 */	bctrl 
/* 8081B564  7F 83 E3 78 */	mr r3, r28
/* 8081B568  4B FF C0 05 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081B56C  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8081B570  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8081B574  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 8081B578  EC 21 00 2A */	fadds f1, f1, f0
/* 8081B57C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8081B580  4B A5 51 C1 */	bl cLib_chaseF__FPfff
/* 8081B584  3C 60 80 82 */	lis r3, l_HIO@ha /* 0x80821E64@ha */
/* 8081B588  3B A3 1E 64 */	addi r29, r3, l_HIO@l /* 0x80821E64@l */
/* 8081B58C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8081B590  D0 1C 06 C8 */	stfs f0, 0x6c8(r28)
/* 8081B594  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8081B598  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8081B59C  A8 1C 06 E4 */	lha r0, 0x6e4(r28)
/* 8081B5A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081B5A4  7C 63 02 14 */	add r3, r3, r0
/* 8081B5A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8081B5AC  FC 00 02 10 */	fabs f0, f0
/* 8081B5B0  FC 20 00 18 */	frsp f1, f0
/* 8081B5B4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081B5B8  C0 1C 06 C8 */	lfs f0, 0x6c8(r28)
/* 8081B5BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081B5C0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081B5C4  4B A5 51 7D */	bl cLib_chaseF__FPfff
/* 8081B5C8  A8 1C 06 E4 */	lha r0, 0x6e4(r28)
/* 8081B5CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081B5D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8081B5D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8081B5D8  7C 23 04 2E */	lfsx f1, r3, r0
/* 8081B5DC  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081B5E0  C0 1C 06 C8 */	lfs f0, 0x6c8(r28)
/* 8081B5E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081B5E8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081B5EC  4B A5 51 55 */	bl cLib_chaseF__FPfff
/* 8081B5F0  38 7C 06 E4 */	addi r3, r28, 0x6e4
/* 8081B5F4  38 80 40 00 */	li r4, 0x4000
/* 8081B5F8  38 A0 04 00 */	li r5, 0x400
/* 8081B5FC  4B A5 55 95 */	bl cLib_chaseAngleS__FPsss
/* 8081B600  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 8081B604  2C 00 00 00 */	cmpwi r0, 0
/* 8081B608  40 82 01 6C */	bne lbl_8081B774
/* 8081B60C  38 00 00 09 */	li r0, 9
/* 8081B610  90 1C 06 B8 */	stw r0, 0x6b8(r28)
/* 8081B614  7F 83 E3 78 */	mr r3, r28
/* 8081B618  38 80 00 11 */	li r4, 0x11
/* 8081B61C  38 A0 00 02 */	li r5, 2
/* 8081B620  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8081B624  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081B628  4B FF B3 55 */	bl setBck__9daE_YMB_cFiUcff
/* 8081B62C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8081B630  D0 1C 06 C8 */	stfs f0, 0x6c8(r28)
/* 8081B634  38 00 00 00 */	li r0, 0
/* 8081B638  98 1C 07 14 */	stb r0, 0x714(r28)
/* 8081B63C  48 00 01 38 */	b lbl_8081B774
lbl_8081B640:
/* 8081B640  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081B644  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081B648  90 01 00 18 */	stw r0, 0x18(r1)
/* 8081B64C  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081B650  38 81 00 18 */	addi r4, r1, 0x18
/* 8081B654  38 A0 00 00 */	li r5, 0
/* 8081B658  38 C0 FF FF */	li r6, -1
/* 8081B65C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081B660  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B664  7D 89 03 A6 */	mtctr r12
/* 8081B668  4E 80 04 21 */	bctrl 
/* 8081B66C  7F 83 E3 78 */	mr r3, r28
/* 8081B670  4B FF BB 91 */	bl setFlyWaitVoice__9daE_YMB_cFv
/* 8081B674  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8081B678  C0 3C 06 A0 */	lfs f1, 0x6a0(r28)
/* 8081B67C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8081B680  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081B684  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081B688  40 80 00 20 */	bge lbl_8081B6A8
/* 8081B68C  38 7C 06 C8 */	addi r3, r28, 0x6c8
/* 8081B690  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 8081B694  38 84 1E 64 */	addi r4, r4, l_HIO@l /* 0x80821E64@l */
/* 8081B698  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8081B69C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081B6A0  4B A5 50 A1 */	bl cLib_chaseF__FPfff
/* 8081B6A4  48 00 00 14 */	b lbl_8081B6B8
lbl_8081B6A8:
/* 8081B6A8  38 7C 06 C8 */	addi r3, r28, 0x6c8
/* 8081B6AC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081B6B0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081B6B4  4B A5 50 8D */	bl cLib_chaseF__FPfff
lbl_8081B6B8:
/* 8081B6B8  38 7C 06 E4 */	addi r3, r28, 0x6e4
/* 8081B6BC  38 80 40 00 */	li r4, 0x4000
/* 8081B6C0  38 A0 04 00 */	li r5, 0x400
/* 8081B6C4  4B A5 54 CD */	bl cLib_chaseAngleS__FPsss
/* 8081B6C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8081B6CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8081B6D0  A8 1C 06 E4 */	lha r0, 0x6e4(r28)
/* 8081B6D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081B6D8  7C 63 02 14 */	add r3, r3, r0
/* 8081B6DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8081B6E0  FC 00 02 10 */	fabs f0, f0
/* 8081B6E4  FC 20 00 18 */	frsp f1, f0
/* 8081B6E8  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8081B6EC  C0 1C 06 C8 */	lfs f0, 0x6c8(r28)
/* 8081B6F0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081B6F4  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081B6F8  4B A5 50 49 */	bl cLib_chaseF__FPfff
/* 8081B6FC  A8 1C 06 E4 */	lha r0, 0x6e4(r28)
/* 8081B700  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081B704  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8081B708  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8081B70C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8081B710  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8081B714  C0 1C 06 C8 */	lfs f0, 0x6c8(r28)
/* 8081B718  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081B71C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081B720  4B A5 50 21 */	bl cLib_chaseF__FPfff
/* 8081B724  7F 83 E3 78 */	mr r3, r28
/* 8081B728  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081B72C  4B 7F EF E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081B730  7C 64 1B 78 */	mr r4, r3
/* 8081B734  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8081B738  38 A0 00 08 */	li r5, 8
/* 8081B73C  38 C0 10 00 */	li r6, 0x1000
/* 8081B740  38 E0 01 00 */	li r7, 0x100
/* 8081B744  4B A5 4D FD */	bl cLib_addCalcAngleS__FPsssss
/* 8081B748  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8081B74C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081B750  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8081B754  40 82 00 20 */	bne lbl_8081B774
/* 8081B758  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 8081B75C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8081B760  40 82 00 14 */	bne lbl_8081B774
/* 8081B764  7F 83 E3 78 */	mr r3, r28
/* 8081B768  38 80 00 01 */	li r4, 1
/* 8081B76C  38 A0 00 01 */	li r5, 1
/* 8081B770  4B FF B3 0D */	bl setActionMode__9daE_YMB_cFii
lbl_8081B774:
/* 8081B774  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8081B778  4B B4 6A AD */	bl _restgpr_28
/* 8081B77C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8081B780  7C 08 03 A6 */	mtlr r0
/* 8081B784  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8081B788  4E 80 00 20 */	blr 
