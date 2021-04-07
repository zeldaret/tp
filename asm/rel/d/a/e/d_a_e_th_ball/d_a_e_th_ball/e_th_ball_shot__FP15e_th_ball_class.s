lbl_807B6734:
/* 807B6734  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B6738  7C 08 02 A6 */	mflr r0
/* 807B673C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B6740  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807B6744  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807B6748  39 61 00 40 */	addi r11, r1, 0x40
/* 807B674C  4B BA BA 91 */	bl _savegpr_29
/* 807B6750  7C 7E 1B 78 */	mr r30, r3
/* 807B6754  3C 60 80 7B */	lis r3, lit_3746@ha /* 0x807B7EB8@ha */
/* 807B6758  3B E3 7E B8 */	addi r31, r3, lit_3746@l /* 0x807B7EB8@l */
/* 807B675C  3B A0 00 01 */	li r29, 1
/* 807B6760  C3 FE 05 2C */	lfs f31, 0x52c(r30)
/* 807B6764  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 807B6768  2C 00 00 01 */	cmpwi r0, 1
/* 807B676C  41 82 01 1C */	beq lbl_807B6888
/* 807B6770  40 80 00 10 */	bge lbl_807B6780
/* 807B6774  2C 00 00 00 */	cmpwi r0, 0
/* 807B6778  40 80 00 14 */	bge lbl_807B678C
/* 807B677C  48 00 01 0C */	b lbl_807B6888
lbl_807B6780:
/* 807B6780  2C 00 00 03 */	cmpwi r0, 3
/* 807B6784  40 80 01 04 */	bge lbl_807B6888
/* 807B6788  48 00 00 10 */	b lbl_807B6798
lbl_807B678C:
/* 807B678C  38 00 00 01 */	li r0, 1
/* 807B6790  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 807B6794  48 00 00 F4 */	b lbl_807B6888
lbl_807B6798:
/* 807B6798  3B A0 00 00 */	li r29, 0
/* 807B679C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807B67A0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807B67A4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B67A8  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 807B67AC  4B AB 92 91 */	bl cLib_addCalc2__FPffff
/* 807B67B0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807B67B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B67B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B67BC  40 81 00 7C */	ble lbl_807B6838
/* 807B67C0  38 7E 0D E4 */	addi r3, r30, 0xde4
/* 807B67C4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 807B67C8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B67CC  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 807B67D0  4B AB 92 6D */	bl cLib_addCalc2__FPffff
/* 807B67D4  38 61 00 08 */	addi r3, r1, 8
/* 807B67D8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B67DC  3C A0 80 7C */	lis r5, master@ha /* 0x807B80E0@ha */
/* 807B67E0  38 A5 80 E0 */	addi r5, r5, master@l /* 0x807B80E0@l */
/* 807B67E4  80 A5 00 00 */	lwz r5, 0(r5)
/* 807B67E8  38 A5 06 C0 */	addi r5, r5, 0x6c0
/* 807B67EC  4B AB 03 49 */	bl __mi__4cXyzCFRC3Vec
/* 807B67F0  C0 21 00 08 */	lfs f1, 8(r1)
/* 807B67F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807B67F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B67FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B6800  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807B6804  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 807B6808  4B AB 0E 6D */	bl cM_atan2s__Fff
/* 807B680C  7C 64 1B 78 */	mr r4, r3
/* 807B6810  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807B6814  38 A0 00 01 */	li r5, 1
/* 807B6818  38 C0 40 00 */	li r6, 0x4000
/* 807B681C  4B AB 9D ED */	bl cLib_addCalcAngleS2__FPssss
/* 807B6820  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807B6824  38 80 00 00 */	li r4, 0
/* 807B6828  38 A0 00 01 */	li r5, 1
/* 807B682C  38 C0 40 00 */	li r6, 0x4000
/* 807B6830  4B AB 9D D9 */	bl cLib_addCalcAngleS2__FPssss
/* 807B6834  48 00 00 34 */	b lbl_807B6868
lbl_807B6838:
/* 807B6838  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807B683C  40 81 00 2C */	ble lbl_807B6868
/* 807B6840  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807B6844  4B AB 11 49 */	bl cM_rndFX__Ff
/* 807B6848  FC 00 08 1E */	fctiwz f0, f1
/* 807B684C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807B6850  80 61 00 24 */	lwz r3, 0x24(r1)
/* 807B6854  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807B6858  7C 00 1A 14 */	add r0, r0, r3
/* 807B685C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807B6860  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 807B6864  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807B6868:
/* 807B6868  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807B686C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807B6870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6874  40 80 00 14 */	bge lbl_807B6888
/* 807B6878  38 00 00 03 */	li r0, 3
/* 807B687C  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 807B6880  38 00 00 00 */	li r0, 0
/* 807B6884  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_807B6888:
/* 807B6888  7F C3 F3 78 */	mr r3, r30
/* 807B688C  7F A4 EB 78 */	mr r4, r29
/* 807B6890  4B FF F6 9D */	bl normal_move__FP15e_th_ball_classSc
/* 807B6894  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807B6898  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B689C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B68A0  40 81 00 C0 */	ble lbl_807B6960
/* 807B68A4  80 1E 16 34 */	lwz r0, 0x1634(r30)
/* 807B68A8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807B68AC  41 82 00 B4 */	beq lbl_807B6960
/* 807B68B0  7F C3 F3 78 */	mr r3, r30
/* 807B68B4  4B FF FC E1 */	bl wall_angle_get__FP15e_th_ball_class
/* 807B68B8  7C 7D 1B 78 */	mr r29, r3
/* 807B68BC  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 807B68C0  4B 9F 4C 01 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 807B68C4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 807B68C8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807B68CC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 807B68D0  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 807B68D4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807B68D8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807B68DC  7D 89 03 A6 */	mtctr r12
/* 807B68E0  4E 80 04 21 */	bctrl 
/* 807B68E4  7F A0 07 34 */	extsh r0, r29
/* 807B68E8  2C 00 00 23 */	cmpwi r0, 0x23
/* 807B68EC  41 82 00 40 */	beq lbl_807B692C
/* 807B68F0  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 807B68F4  7C 1D 28 50 */	subf r0, r29, r5
/* 807B68F8  7C 00 07 34 */	extsh r0, r0
/* 807B68FC  54 04 08 3C */	slwi r4, r0, 1
/* 807B6900  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 807B6904  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 807B6908  7C 04 00 50 */	subf r0, r4, r0
/* 807B690C  7C 00 07 34 */	extsh r0, r0
/* 807B6910  7C 05 02 14 */	add r0, r5, r0
/* 807B6914  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807B6918  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807B691C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807B6920  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B6924  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807B6928  48 00 00 20 */	b lbl_807B6948
lbl_807B692C:
/* 807B692C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807B6930  38 03 80 00 */	addi r0, r3, -32768
/* 807B6934  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807B6938  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807B693C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807B6940  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B6944  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807B6948:
/* 807B6948  38 00 00 03 */	li r0, 3
/* 807B694C  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 807B6950  38 00 00 00 */	li r0, 0
/* 807B6954  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 807B6958  38 00 00 1E */	li r0, 0x1e
/* 807B695C  B0 1E 06 52 */	sth r0, 0x652(r30)
lbl_807B6960:
/* 807B6960  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 807B6964  2C 00 00 01 */	cmpwi r0, 1
/* 807B6968  40 82 00 1C */	bne lbl_807B6984
/* 807B696C  C0 3E 0D CC */	lfs f1, 0xdcc(r30)
/* 807B6970  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807B6974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6978  40 81 00 0C */	ble lbl_807B6984
/* 807B697C  38 00 00 02 */	li r0, 2
/* 807B6980  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_807B6984:
/* 807B6984  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807B6988  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807B698C  39 61 00 40 */	addi r11, r1, 0x40
/* 807B6990  4B BA B8 99 */	bl _restgpr_29
/* 807B6994  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B6998  7C 08 03 A6 */	mtlr r0
/* 807B699C  38 21 00 50 */	addi r1, r1, 0x50
/* 807B69A0  4E 80 00 20 */	blr 
