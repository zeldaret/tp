lbl_806AB684:
/* 806AB684  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806AB688  7C 08 02 A6 */	mflr r0
/* 806AB68C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806AB690  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 806AB694  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 806AB698  39 61 00 50 */	addi r11, r1, 0x50
/* 806AB69C  4B CB 6B 41 */	bl _savegpr_29
/* 806AB6A0  7C 7E 1B 78 */	mr r30, r3
/* 806AB6A4  3C 80 80 6B */	lis r4, lit_3764@ha /* 0x806AD538@ha */
/* 806AB6A8  3B E4 D5 38 */	addi r31, r4, lit_3764@l /* 0x806AD538@l */
/* 806AB6AC  80 03 06 80 */	lwz r0, 0x680(r3)
/* 806AB6B0  2C 00 00 01 */	cmpwi r0, 1
/* 806AB6B4  41 82 00 4C */	beq lbl_806AB700
/* 806AB6B8  40 80 03 A0 */	bge lbl_806ABA58
/* 806AB6BC  2C 00 00 00 */	cmpwi r0, 0
/* 806AB6C0  40 80 00 08 */	bge lbl_806AB6C8
/* 806AB6C4  48 00 03 94 */	b lbl_806ABA58
lbl_806AB6C8:
/* 806AB6C8  38 80 00 0F */	li r4, 0xf
/* 806AB6CC  38 A0 00 02 */	li r5, 2
/* 806AB6D0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806AB6D4  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 806AB6D8  4B FF EE F1 */	bl setBck__8daE_DK_cFiUcff
/* 806AB6DC  7F C3 F3 78 */	mr r3, r30
/* 806AB6E0  38 80 00 0C */	li r4, 0xc
/* 806AB6E4  38 A0 00 02 */	li r5, 2
/* 806AB6E8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806AB6EC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 806AB6F0  4B FF EF 9D */	bl setBckCore__8daE_DK_cFiUcff
/* 806AB6F4  38 00 00 01 */	li r0, 1
/* 806AB6F8  90 1E 06 80 */	stw r0, 0x680(r30)
/* 806AB6FC  48 00 03 5C */	b lbl_806ABA58
lbl_806AB700:
/* 806AB700  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AB704  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB708  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AB70C  4B C7 CD 21 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB710  2C 03 00 00 */	cmpwi r3, 0
/* 806AB714  40 82 00 1C */	bne lbl_806AB730
/* 806AB718  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AB71C  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB720  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806AB724  4B C7 CD 09 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB728  2C 03 00 00 */	cmpwi r3, 0
/* 806AB72C  41 82 00 30 */	beq lbl_806AB75C
lbl_806AB730:
/* 806AB730  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A1@ha */
/* 806AB734  38 03 02 A1 */	addi r0, r3, 0x02A1 /* 0x000702A1@l */
/* 806AB738  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AB73C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806AB740  38 81 00 0C */	addi r4, r1, 0xc
/* 806AB744  38 A0 00 00 */	li r5, 0
/* 806AB748  38 C0 FF FF */	li r6, -1
/* 806AB74C  81 9E 05 CC */	lwz r12, 0x5cc(r30)
/* 806AB750  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AB754  7D 89 03 A6 */	mtctr r12
/* 806AB758  4E 80 04 21 */	bctrl 
lbl_806AB75C:
/* 806AB75C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AB760  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 806AB764  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB768  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806AB76C  4B C7 CC C1 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB770  2C 03 00 00 */	cmpwi r3, 0
/* 806AB774  40 82 00 1C */	bne lbl_806AB790
/* 806AB778  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AB77C  38 63 00 0C */	addi r3, r3, 0xc
/* 806AB780  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806AB784  4B C7 CC A9 */	bl checkPass__12J3DFrameCtrlFf
/* 806AB788  2C 03 00 00 */	cmpwi r3, 0
/* 806AB78C  41 82 01 AC */	beq lbl_806AB938
lbl_806AB790:
/* 806AB790  38 61 00 1C */	addi r3, r1, 0x1c
/* 806AB794  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806AB798  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AB79C  3B A5 61 C0 */	addi r29, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AB7A0  80 BD 5D AC */	lwz r5, 0x5dac(r29)
/* 806AB7A4  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 806AB7A8  4B BB B3 8D */	bl __mi__4cXyzCFRC3Vec
/* 806AB7AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806AB7B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AB7B4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806AB7B8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806AB7BC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806AB7C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AB7C4  FC 00 0A 10 */	fabs f0, f1
/* 806AB7C8  FC 40 00 18 */	frsp f2, f0
/* 806AB7CC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806AB7D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806AB7D4  40 80 00 10 */	bge lbl_806AB7E4
/* 806AB7D8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806AB7DC  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806AB7E0  48 00 00 24 */	b lbl_806AB804
lbl_806AB7E4:
/* 806AB7E4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806AB7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB7EC  40 81 00 10 */	ble lbl_806AB7FC
/* 806AB7F0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806AB7F4  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806AB7F8  48 00 00 0C */	b lbl_806AB804
lbl_806AB7FC:
/* 806AB7FC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806AB800  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
lbl_806AB804:
/* 806AB804  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806AB808  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AB80C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806AB810  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806AB814  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806AB818  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806AB81C  38 61 00 10 */	addi r3, r1, 0x10
/* 806AB820  4B C9 B9 19 */	bl PSVECSquareMag
/* 806AB824  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806AB828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB82C  40 81 00 58 */	ble lbl_806AB884
/* 806AB830  FC 00 08 34 */	frsqrte f0, f1
/* 806AB834  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 806AB838  FC 44 00 32 */	fmul f2, f4, f0
/* 806AB83C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 806AB840  FC 00 00 32 */	fmul f0, f0, f0
/* 806AB844  FC 01 00 32 */	fmul f0, f1, f0
/* 806AB848  FC 03 00 28 */	fsub f0, f3, f0
/* 806AB84C  FC 02 00 32 */	fmul f0, f2, f0
/* 806AB850  FC 44 00 32 */	fmul f2, f4, f0
/* 806AB854  FC 00 00 32 */	fmul f0, f0, f0
/* 806AB858  FC 01 00 32 */	fmul f0, f1, f0
/* 806AB85C  FC 03 00 28 */	fsub f0, f3, f0
/* 806AB860  FC 02 00 32 */	fmul f0, f2, f0
/* 806AB864  FC 44 00 32 */	fmul f2, f4, f0
/* 806AB868  FC 00 00 32 */	fmul f0, f0, f0
/* 806AB86C  FC 01 00 32 */	fmul f0, f1, f0
/* 806AB870  FC 03 00 28 */	fsub f0, f3, f0
/* 806AB874  FC 02 00 32 */	fmul f0, f2, f0
/* 806AB878  FC 21 00 32 */	fmul f1, f1, f0
/* 806AB87C  FC 20 08 18 */	frsp f1, f1
/* 806AB880  48 00 00 88 */	b lbl_806AB908
lbl_806AB884:
/* 806AB884  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 806AB888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB88C  40 80 00 10 */	bge lbl_806AB89C
/* 806AB890  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AB894  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806AB898  48 00 00 70 */	b lbl_806AB908
lbl_806AB89C:
/* 806AB89C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806AB8A0  80 81 00 08 */	lwz r4, 8(r1)
/* 806AB8A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806AB8A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806AB8AC  7C 03 00 00 */	cmpw r3, r0
/* 806AB8B0  41 82 00 14 */	beq lbl_806AB8C4
/* 806AB8B4  40 80 00 40 */	bge lbl_806AB8F4
/* 806AB8B8  2C 03 00 00 */	cmpwi r3, 0
/* 806AB8BC  41 82 00 20 */	beq lbl_806AB8DC
/* 806AB8C0  48 00 00 34 */	b lbl_806AB8F4
lbl_806AB8C4:
/* 806AB8C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AB8C8  41 82 00 0C */	beq lbl_806AB8D4
/* 806AB8CC  38 00 00 01 */	li r0, 1
/* 806AB8D0  48 00 00 28 */	b lbl_806AB8F8
lbl_806AB8D4:
/* 806AB8D4  38 00 00 02 */	li r0, 2
/* 806AB8D8  48 00 00 20 */	b lbl_806AB8F8
lbl_806AB8DC:
/* 806AB8DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AB8E0  41 82 00 0C */	beq lbl_806AB8EC
/* 806AB8E4  38 00 00 05 */	li r0, 5
/* 806AB8E8  48 00 00 10 */	b lbl_806AB8F8
lbl_806AB8EC:
/* 806AB8EC  38 00 00 03 */	li r0, 3
/* 806AB8F0  48 00 00 08 */	b lbl_806AB8F8
lbl_806AB8F4:
/* 806AB8F4  38 00 00 04 */	li r0, 4
lbl_806AB8F8:
/* 806AB8F8  2C 00 00 01 */	cmpwi r0, 1
/* 806AB8FC  40 82 00 0C */	bne lbl_806AB908
/* 806AB900  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AB904  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806AB908:
/* 806AB908  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806AB90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AB910  40 80 00 10 */	bge lbl_806AB920
/* 806AB914  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806AB918  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 806AB91C  48 00 00 0C */	b lbl_806AB928
lbl_806AB920:
/* 806AB920  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806AB924  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
lbl_806AB928:
/* 806AB928  7F C3 F3 78 */	mr r3, r30
/* 806AB92C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806AB930  4B 96 ED E1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806AB934  B0 7E 04 DE */	sth r3, 0x4de(r30)
lbl_806AB938:
/* 806AB938  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806AB93C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB940  4C 41 13 82 */	cror 2, 1, 2
/* 806AB944  40 82 00 08 */	bne lbl_806AB94C
/* 806AB948  EF FF 00 28 */	fsubs f31, f31, f0
lbl_806AB94C:
/* 806AB94C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806AB950  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 806AB954  4C 40 13 82 */	cror 2, 0, 2
/* 806AB958  41 82 00 14 */	beq lbl_806AB96C
/* 806AB95C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806AB960  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB964  4C 40 13 82 */	cror 2, 0, 2
/* 806AB968  40 82 00 18 */	bne lbl_806AB980
lbl_806AB96C:
/* 806AB96C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806AB970  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 806AB974  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 806AB978  4B BC 4D C9 */	bl cLib_chaseF__FPfff
/* 806AB97C  48 00 00 54 */	b lbl_806AB9D0
lbl_806AB980:
/* 806AB980  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806AB984  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB988  40 80 00 18 */	bge lbl_806AB9A0
/* 806AB98C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806AB990  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AB994  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806AB998  4B BC 4D A9 */	bl cLib_chaseF__FPfff
/* 806AB99C  48 00 00 34 */	b lbl_806AB9D0
lbl_806AB9A0:
/* 806AB9A0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806AB9A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB9A8  40 80 00 18 */	bge lbl_806AB9C0
/* 806AB9AC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806AB9B0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806AB9B4  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 806AB9B8  4B BC 4D 89 */	bl cLib_chaseF__FPfff
/* 806AB9BC  48 00 00 14 */	b lbl_806AB9D0
lbl_806AB9C0:
/* 806AB9C0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806AB9C4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AB9C8  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806AB9CC  4B BC 4D 75 */	bl cLib_chaseF__FPfff
lbl_806AB9D0:
/* 806AB9D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806AB9D4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB9D8  41 80 00 14 */	blt lbl_806AB9EC
/* 806AB9DC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806AB9E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AB9E4  4C 41 13 82 */	cror 2, 1, 2
/* 806AB9E8  40 82 00 18 */	bne lbl_806ABA00
lbl_806AB9EC:
/* 806AB9EC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806AB9F0  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 806AB9F4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806AB9F8  4B BC 4D 49 */	bl cLib_chaseF__FPfff
/* 806AB9FC  48 00 00 14 */	b lbl_806ABA10
lbl_806ABA00:
/* 806ABA00  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806ABA04  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806ABA08  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806ABA0C  4B BC 4D 35 */	bl cLib_chaseF__FPfff
lbl_806ABA10:
/* 806ABA10  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806ABA14  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806ABA18  38 A0 00 10 */	li r5, 0x10
/* 806ABA1C  38 C0 01 00 */	li r6, 0x100
/* 806ABA20  38 E0 00 10 */	li r7, 0x10
/* 806ABA24  4B BC 4B 1D */	bl cLib_addCalcAngleS__FPsssss
/* 806ABA28  7F C3 F3 78 */	mr r3, r30
/* 806ABA2C  4B FF EE 85 */	bl checkPlayerSearch__8daE_DK_cFv
/* 806ABA30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806ABA34  40 82 00 18 */	bne lbl_806ABA4C
/* 806ABA38  7F C3 F3 78 */	mr r3, r30
/* 806ABA3C  38 80 00 00 */	li r4, 0
/* 806ABA40  38 A0 00 00 */	li r5, 0
/* 806ABA44  4B FF EC ED */	bl setActionMode__8daE_DK_cFii
/* 806ABA48  48 00 00 10 */	b lbl_806ABA58
lbl_806ABA4C:
/* 806ABA4C  7F C3 F3 78 */	mr r3, r30
/* 806ABA50  FC 20 F8 90 */	fmr f1, f31
/* 806ABA54  4B FF F0 C5 */	bl checkPlayerAttack__8daE_DK_cFf
lbl_806ABA58:
/* 806ABA58  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 806ABA5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 806ABA60  39 61 00 50 */	addi r11, r1, 0x50
/* 806ABA64  4B CB 67 C5 */	bl _restgpr_29
/* 806ABA68  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806ABA6C  7C 08 03 A6 */	mtlr r0
/* 806ABA70  38 21 00 60 */	addi r1, r1, 0x60
/* 806ABA74  4E 80 00 20 */	blr 
