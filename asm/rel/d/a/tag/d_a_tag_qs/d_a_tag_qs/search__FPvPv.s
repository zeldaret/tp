lbl_80D5E64C:
/* 80D5E64C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D5E650  7C 08 02 A6 */	mflr r0
/* 80D5E654  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D5E658  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80D5E65C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80D5E660  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80D5E664  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80D5E668  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5E66C  4B 60 3B 71 */	bl _savegpr_29
/* 80D5E670  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5E674  7C 9F 23 78 */	mr r31, r4
/* 80D5E678  3C 80 80 D6 */	lis r4, lit_3734@ha /* 0x80D5ECE0@ha */
/* 80D5E67C  3B A4 EC E0 */	addi r29, r4, lit_3734@l /* 0x80D5ECE0@l */
/* 80D5E680  41 82 00 10 */	beq lbl_80D5E690
/* 80D5E684  4B 2B A6 5D */	bl fopAc_IsActor__FPv
/* 80D5E688  2C 03 00 00 */	cmpwi r3, 0
/* 80D5E68C  40 82 00 0C */	bne lbl_80D5E698
lbl_80D5E690:
/* 80D5E690  38 60 00 00 */	li r3, 0
/* 80D5E694  48 00 03 3C */	b lbl_80D5E9D0
lbl_80D5E698:
/* 80D5E698  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80D5E69C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D5E6A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D5E6A4  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 80D5E6A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D5E6AC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D5E6B0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D5E6B4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5E6B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D5E6BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D5E6C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80D5E6C4  38 61 00 0C */	addi r3, r1, 0xc
/* 80D5E6C8  38 81 00 18 */	addi r4, r1, 0x18
/* 80D5E6CC  4B 5E 8C D1 */	bl PSVECSquareDistance
/* 80D5E6D0  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80D5E6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5E6D8  40 81 00 58 */	ble lbl_80D5E730
/* 80D5E6DC  FC 00 08 34 */	frsqrte f0, f1
/* 80D5E6E0  C8 9D 00 40 */	lfd f4, 0x40(r29)
/* 80D5E6E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5E6E8  C8 7D 00 48 */	lfd f3, 0x48(r29)
/* 80D5E6EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5E6F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5E6F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5E6F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5E6FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5E700  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5E704  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5E708  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5E70C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5E710  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5E714  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5E718  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5E71C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5E720  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5E724  FF C1 00 32 */	fmul f30, f1, f0
/* 80D5E728  FF C0 F0 18 */	frsp f30, f30
/* 80D5E72C  48 00 00 90 */	b lbl_80D5E7BC
lbl_80D5E730:
/* 80D5E730  C8 1D 00 50 */	lfd f0, 0x50(r29)
/* 80D5E734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5E738  40 80 00 10 */	bge lbl_80D5E748
/* 80D5E73C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5E740  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D5E744  48 00 00 78 */	b lbl_80D5E7BC
lbl_80D5E748:
/* 80D5E748  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D5E74C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D5E750  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D5E754  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D5E758  7C 03 00 00 */	cmpw r3, r0
/* 80D5E75C  41 82 00 14 */	beq lbl_80D5E770
/* 80D5E760  40 80 00 40 */	bge lbl_80D5E7A0
/* 80D5E764  2C 03 00 00 */	cmpwi r3, 0
/* 80D5E768  41 82 00 20 */	beq lbl_80D5E788
/* 80D5E76C  48 00 00 34 */	b lbl_80D5E7A0
lbl_80D5E770:
/* 80D5E770  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5E774  41 82 00 0C */	beq lbl_80D5E780
/* 80D5E778  38 00 00 01 */	li r0, 1
/* 80D5E77C  48 00 00 28 */	b lbl_80D5E7A4
lbl_80D5E780:
/* 80D5E780  38 00 00 02 */	li r0, 2
/* 80D5E784  48 00 00 20 */	b lbl_80D5E7A4
lbl_80D5E788:
/* 80D5E788  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5E78C  41 82 00 0C */	beq lbl_80D5E798
/* 80D5E790  38 00 00 05 */	li r0, 5
/* 80D5E794  48 00 00 10 */	b lbl_80D5E7A4
lbl_80D5E798:
/* 80D5E798  38 00 00 03 */	li r0, 3
/* 80D5E79C  48 00 00 08 */	b lbl_80D5E7A4
lbl_80D5E7A0:
/* 80D5E7A0  38 00 00 04 */	li r0, 4
lbl_80D5E7A4:
/* 80D5E7A4  2C 00 00 01 */	cmpwi r0, 1
/* 80D5E7A8  40 82 00 10 */	bne lbl_80D5E7B8
/* 80D5E7AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5E7B0  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D5E7B4  48 00 00 08 */	b lbl_80D5E7BC
lbl_80D5E7B8:
/* 80D5E7B8  FF C0 08 90 */	fmr f30, f1
lbl_80D5E7BC:
/* 80D5E7BC  C0 3F 05 68 */	lfs f1, 0x568(r31)
/* 80D5E7C0  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80D5E7C4  40 81 00 0C */	ble lbl_80D5E7D0
/* 80D5E7C8  38 60 00 00 */	li r3, 0
/* 80D5E7CC  48 00 02 04 */	b lbl_80D5E9D0
lbl_80D5E7D0:
/* 80D5E7D0  C0 9F 04 D4 */	lfs f4, 0x4d4(r31)
/* 80D5E7D4  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80D5E7D8  EC 04 00 28 */	fsubs f0, f4, f0
/* 80D5E7DC  C0 BE 04 D4 */	lfs f5, 0x4d4(r30)
/* 80D5E7E0  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 80D5E7E4  41 81 00 14 */	bgt lbl_80D5E7F8
/* 80D5E7E8  C0 5F 05 6C */	lfs f2, 0x56c(r31)
/* 80D5E7EC  EC 04 10 2A */	fadds f0, f4, f2
/* 80D5E7F0  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 80D5E7F4  40 80 00 0C */	bge lbl_80D5E800
lbl_80D5E7F8:
/* 80D5E7F8  38 60 00 00 */	li r3, 0
/* 80D5E7FC  48 00 01 D4 */	b lbl_80D5E9D0
lbl_80D5E800:
/* 80D5E800  C0 7D 00 04 */	lfs f3, 4(r29)
/* 80D5E804  EC 42 07 B2 */	fmuls f2, f2, f30
/* 80D5E808  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80D5E80C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D5E810  EC 02 00 24 */	fdivs f0, f2, f0
/* 80D5E814  EC 04 00 2A */	fadds f0, f4, f0
/* 80D5E818  EC 03 00 2A */	fadds f0, f3, f0
/* 80D5E81C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80D5E820  40 81 00 0C */	ble lbl_80D5E82C
/* 80D5E824  38 60 00 00 */	li r3, 0
/* 80D5E828  48 00 01 A8 */	b lbl_80D5E9D0
lbl_80D5E82C:
/* 80D5E82C  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80D5E830  2C 00 02 18 */	cmpwi r0, 0x218
/* 80D5E834  40 82 00 6C */	bne lbl_80D5E8A0
/* 80D5E838  7F C3 F3 78 */	mr r3, r30
/* 80D5E83C  4B 2D 92 21 */	bl getItemNo__12daItemBase_cFv
/* 80D5E840  7F C3 F3 78 */	mr r3, r30
/* 80D5E844  4B 2D 92 19 */	bl getItemNo__12daItemBase_cFv
/* 80D5E848  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5E84C  28 00 00 03 */	cmplwi r0, 3
/* 80D5E850  41 81 00 48 */	bgt lbl_80D5E898
/* 80D5E854  7F E3 FB 78 */	mr r3, r31
/* 80D5E858  C0 3F 05 68 */	lfs f1, 0x568(r31)
/* 80D5E85C  FC 40 F0 90 */	fmr f2, f30
/* 80D5E860  4B FF FA 2D */	bl calcPower__9daTagQs_cFff
/* 80D5E864  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D5E868  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D5E86C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80D5E870  4B FF FB 89 */	bl hikiyose__FP4cXyzP4cXyzP4cXyzf
/* 80D5E874  2C 03 00 01 */	cmpwi r3, 1
/* 80D5E878  40 82 00 10 */	bne lbl_80D5E888
/* 80D5E87C  7F C3 F3 78 */	mr r3, r30
/* 80D5E880  4B 2D 93 61 */	bl startCtrl__8daItem_cFv
/* 80D5E884  48 00 00 14 */	b lbl_80D5E898
lbl_80D5E888:
/* 80D5E888  2C 03 00 02 */	cmpwi r3, 2
/* 80D5E88C  40 82 00 0C */	bne lbl_80D5E898
/* 80D5E890  7F C3 F3 78 */	mr r3, r30
/* 80D5E894  4B 2B B3 E9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D5E898:
/* 80D5E898  38 60 00 00 */	li r3, 0
/* 80D5E89C  48 00 01 34 */	b lbl_80D5E9D0
lbl_80D5E8A0:
/* 80D5E8A0  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80D5E8A4  40 82 00 6C */	bne lbl_80D5E910
/* 80D5E8A8  7F DD F3 78 */	mr r29, r30
/* 80D5E8AC  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80D5E8B0  2C 00 00 07 */	cmpwi r0, 7
/* 80D5E8B4  41 82 00 14 */	beq lbl_80D5E8C8
/* 80D5E8B8  2C 00 00 01 */	cmpwi r0, 1
/* 80D5E8BC  41 82 00 0C */	beq lbl_80D5E8C8
/* 80D5E8C0  2C 00 00 05 */	cmpwi r0, 5
/* 80D5E8C4  40 82 00 44 */	bne lbl_80D5E908
lbl_80D5E8C8:
/* 80D5E8C8  7F E3 FB 78 */	mr r3, r31
/* 80D5E8CC  FC 40 F0 90 */	fmr f2, f30
/* 80D5E8D0  4B FF F9 BD */	bl calcPower__9daTagQs_cFff
/* 80D5E8D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D5E8D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D5E8DC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D5E8E0  4B FF FB 19 */	bl hikiyose__FP4cXyzP4cXyzP4cXyzf
/* 80D5E8E4  2C 03 00 01 */	cmpwi r3, 1
/* 80D5E8E8  40 82 00 10 */	bne lbl_80D5E8F8
/* 80D5E8EC  38 00 00 01 */	li r0, 1
/* 80D5E8F0  98 1D 0D B8 */	stb r0, 0xdb8(r29)
/* 80D5E8F4  48 00 00 14 */	b lbl_80D5E908
lbl_80D5E8F8:
/* 80D5E8F8  2C 03 00 02 */	cmpwi r3, 2
/* 80D5E8FC  40 82 00 0C */	bne lbl_80D5E908
/* 80D5E900  7F A3 EB 78 */	mr r3, r29
/* 80D5E904  4B 2B B3 79 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D5E908:
/* 80D5E908  38 60 00 00 */	li r3, 0
/* 80D5E90C  48 00 00 C4 */	b lbl_80D5E9D0
lbl_80D5E910:
/* 80D5E910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5E914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5E918  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80D5E91C  7C 1E E8 40 */	cmplw r30, r29
/* 80D5E920  40 82 00 AC */	bne lbl_80D5E9CC
/* 80D5E924  38 61 00 24 */	addi r3, r1, 0x24
/* 80D5E928  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D5E92C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D5E930  4B 50 82 05 */	bl __mi__4cXyzCFRC3Vec
/* 80D5E934  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D5E938  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D5E93C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D5E940  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D5E944  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D5E948  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D5E94C  38 61 00 30 */	addi r3, r1, 0x30
/* 80D5E950  4B 5E 87 E9 */	bl PSVECSquareMag
/* 80D5E954  FF E0 08 90 */	fmr f31, f1
/* 80D5E958  7F E3 FB 78 */	mr r3, r31
/* 80D5E95C  4B FF F8 A1 */	bl getPower__9daTagQs_cFv
/* 80D5E960  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80D5E964  4C 41 13 82 */	cror 2, 1, 2
/* 80D5E968  40 82 00 5C */	bne lbl_80D5E9C4
/* 80D5E96C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80D5E970  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80D5E974  4B 50 8D 01 */	bl cM_atan2s__Fff
/* 80D5E978  7C 7E 1B 78 */	mr r30, r3
/* 80D5E97C  7F A3 EB 78 */	mr r3, r29
/* 80D5E980  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80D5E984  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D5E988  7D 89 03 A6 */	mtctr r12
/* 80D5E98C  4E 80 04 21 */	bctrl 
/* 80D5E990  28 03 00 00 */	cmplwi r3, 0
/* 80D5E994  40 82 00 30 */	bne lbl_80D5E9C4
/* 80D5E998  7F E3 FB 78 */	mr r3, r31
/* 80D5E99C  C0 3F 05 68 */	lfs f1, 0x568(r31)
/* 80D5E9A0  FC 40 F0 90 */	fmr f2, f30
/* 80D5E9A4  4B FF F8 E9 */	bl calcPower__9daTagQs_cFff
/* 80D5E9A8  7F A3 EB 78 */	mr r3, r29
/* 80D5E9AC  7F C4 F3 78 */	mr r4, r30
/* 80D5E9B0  38 A0 00 00 */	li r5, 0
/* 80D5E9B4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80D5E9B8  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80D5E9BC  7D 89 03 A6 */	mtctr r12
/* 80D5E9C0  4E 80 04 21 */	bctrl 
lbl_80D5E9C4:
/* 80D5E9C4  38 60 00 00 */	li r3, 0
/* 80D5E9C8  48 00 00 08 */	b lbl_80D5E9D0
lbl_80D5E9CC:
/* 80D5E9CC  38 60 00 00 */	li r3, 0
lbl_80D5E9D0:
/* 80D5E9D0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80D5E9D4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80D5E9D8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80D5E9DC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80D5E9E0  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5E9E4  4B 60 38 45 */	bl _restgpr_29
/* 80D5E9E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D5E9EC  7C 08 03 A6 */	mtlr r0
/* 80D5E9F0  38 21 00 70 */	addi r1, r1, 0x70
/* 80D5E9F4  4E 80 00 20 */	blr 
