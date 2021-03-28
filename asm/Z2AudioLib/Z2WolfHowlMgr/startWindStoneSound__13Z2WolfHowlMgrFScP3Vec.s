lbl_802CB6EC:
/* 802CB6EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802CB6F0  7C 08 02 A6 */	mflr r0
/* 802CB6F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802CB6F8  39 61 00 40 */	addi r11, r1, 0x40
/* 802CB6FC  48 09 6A E1 */	bl _savegpr_29
/* 802CB700  7C 7D 1B 78 */	mr r29, r3
/* 802CB704  7C 9E 23 78 */	mr r30, r4
/* 802CB708  7C BF 2B 79 */	or. r31, r5, r5
/* 802CB70C  41 82 03 64 */	beq lbl_802CBA70
/* 802CB710  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802CB714  28 03 00 00 */	cmplwi r3, 0
/* 802CB718  41 82 03 58 */	beq lbl_802CBA70
/* 802CB71C  80 03 00 04 */	lwz r0, 4(r3)
/* 802CB720  28 00 00 00 */	cmplwi r0, 0
/* 802CB724  40 82 00 08 */	bne lbl_802CB72C
/* 802CB728  48 00 03 48 */	b lbl_802CBA70
lbl_802CB72C:
/* 802CB72C  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802CB730  E0 23 01 70 */	psq_l f1, 368(r3), 0, 0 /* qr0 */
/* 802CB734  C0 03 01 78 */	lfs f0, 0x178(r3)
/* 802CB738  F0 21 00 14 */	psq_st f1, 20(r1), 0, 0 /* qr0 */
/* 802CB73C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802CB740  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802CB744  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802CB748  90 61 00 20 */	stw r3, 0x20(r1)
/* 802CB74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CB750  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802CB754  90 01 00 28 */	stw r0, 0x28(r1)
/* 802CB758  7F E3 FB 78 */	mr r3, r31
/* 802CB75C  38 81 00 20 */	addi r4, r1, 0x20
/* 802CB760  48 07 BC 3D */	bl PSVECSquareDistance
/* 802CB764  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CB768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CB76C  40 81 00 58 */	ble lbl_802CB7C4
/* 802CB770  FC 00 08 34 */	frsqrte f0, f1
/* 802CB774  C8 82 C4 A8 */	lfd f4, lit_4032(r2)
/* 802CB778  FC 44 00 32 */	fmul f2, f4, f0
/* 802CB77C  C8 62 C4 B0 */	lfd f3, lit_4033(r2)
/* 802CB780  FC 00 00 32 */	fmul f0, f0, f0
/* 802CB784  FC 01 00 32 */	fmul f0, f1, f0
/* 802CB788  FC 03 00 28 */	fsub f0, f3, f0
/* 802CB78C  FC 02 00 32 */	fmul f0, f2, f0
/* 802CB790  FC 44 00 32 */	fmul f2, f4, f0
/* 802CB794  FC 00 00 32 */	fmul f0, f0, f0
/* 802CB798  FC 01 00 32 */	fmul f0, f1, f0
/* 802CB79C  FC 03 00 28 */	fsub f0, f3, f0
/* 802CB7A0  FC 02 00 32 */	fmul f0, f2, f0
/* 802CB7A4  FC 44 00 32 */	fmul f2, f4, f0
/* 802CB7A8  FC 00 00 32 */	fmul f0, f0, f0
/* 802CB7AC  FC 01 00 32 */	fmul f0, f1, f0
/* 802CB7B0  FC 03 00 28 */	fsub f0, f3, f0
/* 802CB7B4  FC 02 00 32 */	fmul f0, f2, f0
/* 802CB7B8  FC 21 00 32 */	fmul f1, f1, f0
/* 802CB7BC  FC 20 08 18 */	frsp f1, f1
/* 802CB7C0  48 00 00 88 */	b lbl_802CB848
lbl_802CB7C4:
/* 802CB7C4  C8 02 C4 B8 */	lfd f0, lit_4034(r2)
/* 802CB7C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CB7CC  40 80 00 10 */	bge lbl_802CB7DC
/* 802CB7D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802CB7D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 802CB7D8  48 00 00 70 */	b lbl_802CB848
lbl_802CB7DC:
/* 802CB7DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802CB7E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802CB7E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802CB7E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 802CB7EC  7C 03 00 00 */	cmpw r3, r0
/* 802CB7F0  41 82 00 14 */	beq lbl_802CB804
/* 802CB7F4  40 80 00 40 */	bge lbl_802CB834
/* 802CB7F8  2C 03 00 00 */	cmpwi r3, 0
/* 802CB7FC  41 82 00 20 */	beq lbl_802CB81C
/* 802CB800  48 00 00 34 */	b lbl_802CB834
lbl_802CB804:
/* 802CB804  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802CB808  41 82 00 0C */	beq lbl_802CB814
/* 802CB80C  38 00 00 01 */	li r0, 1
/* 802CB810  48 00 00 28 */	b lbl_802CB838
lbl_802CB814:
/* 802CB814  38 00 00 02 */	li r0, 2
/* 802CB818  48 00 00 20 */	b lbl_802CB838
lbl_802CB81C:
/* 802CB81C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802CB820  41 82 00 0C */	beq lbl_802CB82C
/* 802CB824  38 00 00 05 */	li r0, 5
/* 802CB828  48 00 00 10 */	b lbl_802CB838
lbl_802CB82C:
/* 802CB82C  38 00 00 03 */	li r0, 3
/* 802CB830  48 00 00 08 */	b lbl_802CB838
lbl_802CB834:
/* 802CB834  38 00 00 04 */	li r0, 4
lbl_802CB838:
/* 802CB838  2C 00 00 01 */	cmpwi r0, 1
/* 802CB83C  40 82 00 0C */	bne lbl_802CB848
/* 802CB840  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802CB844  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_802CB848:
/* 802CB848  C0 02 C4 C0 */	lfs f0, lit_4035(r2)
/* 802CB84C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CB850  40 81 00 18 */	ble lbl_802CB868
/* 802CB854  80 7D 00 04 */	lwz r3, 4(r29)
/* 802CB858  28 03 00 00 */	cmplwi r3, 0
/* 802CB85C  41 82 00 0C */	beq lbl_802CB868
/* 802CB860  4B FD 6D 39 */	bl stop__8JAISoundFv
/* 802CB864  48 00 00 54 */	b lbl_802CB8B8
lbl_802CB868:
/* 802CB868  C0 02 C4 C0 */	lfs f0, lit_4035(r2)
/* 802CB86C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CB870  40 80 00 48 */	bge lbl_802CB8B8
/* 802CB874  80 1D 00 04 */	lwz r0, 4(r29)
/* 802CB878  28 00 00 00 */	cmplwi r0, 0
/* 802CB87C  40 82 00 3C */	bne lbl_802CB8B8
/* 802CB880  7F C0 07 74 */	extsb r0, r30
/* 802CB884  54 00 10 3A */	slwi r0, r0, 2
/* 802CB888  3C 60 80 43 */	lis r3, sWindStoneSound@ha
/* 802CB88C  38 63 42 1C */	addi r3, r3, sWindStoneSound@l
/* 802CB890  7C 03 00 2E */	lwzx r0, r3, r0
/* 802CB894  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CB898  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802CB89C  38 81 00 10 */	addi r4, r1, 0x10
/* 802CB8A0  38 BD 00 04 */	addi r5, r29, 4
/* 802CB8A4  7F E6 FB 78 */	mr r6, r31
/* 802CB8A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802CB8AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802CB8B0  7D 89 03 A6 */	mtctr r12
/* 802CB8B4  4E 80 04 21 */	bctrl 
lbl_802CB8B8:
/* 802CB8B8  80 7D 00 04 */	lwz r3, 4(r29)
/* 802CB8BC  28 03 00 00 */	cmplwi r3, 0
/* 802CB8C0  41 82 01 B0 */	beq lbl_802CBA70
/* 802CB8C4  C0 22 C4 60 */	lfs f1, lit_3485(r2)
/* 802CB8C8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802CB8CC  C0 02 C4 64 */	lfs f0, lit_3486(r2)
/* 802CB8D0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CB8D4  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CB8D8  38 00 00 00 */	li r0, 0
/* 802CB8DC  90 03 00 30 */	stw r0, 0x30(r3)
/* 802CB8E0  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 802CB8E4  80 7D 00 04 */	lwz r3, 4(r29)
/* 802CB8E8  38 80 00 1E */	li r4, 0x1e
/* 802CB8EC  4B FD 6B F1 */	bl stop__8JAISoundFUl
/* 802CB8F0  80 8D 8D E0 */	lwz r4, mLinkPtr__14Z2CreatureLink(r13)
/* 802CB8F4  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 802CB8F8  28 00 00 01 */	cmplwi r0, 1
/* 802CB8FC  40 82 01 60 */	bne lbl_802CBA5C
/* 802CB900  7F E3 FB 78 */	mr r3, r31
/* 802CB904  80 84 00 04 */	lwz r4, 4(r4)
/* 802CB908  48 07 BA 95 */	bl PSVECSquareDistance
/* 802CB90C  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CB910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CB914  40 81 00 58 */	ble lbl_802CB96C
/* 802CB918  FC 00 08 34 */	frsqrte f0, f1
/* 802CB91C  C8 82 C4 A8 */	lfd f4, lit_4032(r2)
/* 802CB920  FC 44 00 32 */	fmul f2, f4, f0
/* 802CB924  C8 62 C4 B0 */	lfd f3, lit_4033(r2)
/* 802CB928  FC 00 00 32 */	fmul f0, f0, f0
/* 802CB92C  FC 01 00 32 */	fmul f0, f1, f0
/* 802CB930  FC 03 00 28 */	fsub f0, f3, f0
/* 802CB934  FC 02 00 32 */	fmul f0, f2, f0
/* 802CB938  FC 44 00 32 */	fmul f2, f4, f0
/* 802CB93C  FC 00 00 32 */	fmul f0, f0, f0
/* 802CB940  FC 01 00 32 */	fmul f0, f1, f0
/* 802CB944  FC 03 00 28 */	fsub f0, f3, f0
/* 802CB948  FC 02 00 32 */	fmul f0, f2, f0
/* 802CB94C  FC 44 00 32 */	fmul f2, f4, f0
/* 802CB950  FC 00 00 32 */	fmul f0, f0, f0
/* 802CB954  FC 01 00 32 */	fmul f0, f1, f0
/* 802CB958  FC 03 00 28 */	fsub f0, f3, f0
/* 802CB95C  FC 02 00 32 */	fmul f0, f2, f0
/* 802CB960  FC 21 00 32 */	fmul f1, f1, f0
/* 802CB964  FC 20 08 18 */	frsp f1, f1
/* 802CB968  48 00 00 88 */	b lbl_802CB9F0
lbl_802CB96C:
/* 802CB96C  C8 02 C4 B8 */	lfd f0, lit_4034(r2)
/* 802CB970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802CB974  40 80 00 10 */	bge lbl_802CB984
/* 802CB978  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802CB97C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 802CB980  48 00 00 70 */	b lbl_802CB9F0
lbl_802CB984:
/* 802CB984  D0 21 00 08 */	stfs f1, 8(r1)
/* 802CB988  80 81 00 08 */	lwz r4, 8(r1)
/* 802CB98C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802CB990  3C 00 7F 80 */	lis r0, 0x7f80
/* 802CB994  7C 03 00 00 */	cmpw r3, r0
/* 802CB998  41 82 00 14 */	beq lbl_802CB9AC
/* 802CB99C  40 80 00 40 */	bge lbl_802CB9DC
/* 802CB9A0  2C 03 00 00 */	cmpwi r3, 0
/* 802CB9A4  41 82 00 20 */	beq lbl_802CB9C4
/* 802CB9A8  48 00 00 34 */	b lbl_802CB9DC
lbl_802CB9AC:
/* 802CB9AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802CB9B0  41 82 00 0C */	beq lbl_802CB9BC
/* 802CB9B4  38 00 00 01 */	li r0, 1
/* 802CB9B8  48 00 00 28 */	b lbl_802CB9E0
lbl_802CB9BC:
/* 802CB9BC  38 00 00 02 */	li r0, 2
/* 802CB9C0  48 00 00 20 */	b lbl_802CB9E0
lbl_802CB9C4:
/* 802CB9C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802CB9C8  41 82 00 0C */	beq lbl_802CB9D4
/* 802CB9CC  38 00 00 05 */	li r0, 5
/* 802CB9D0  48 00 00 10 */	b lbl_802CB9E0
lbl_802CB9D4:
/* 802CB9D4  38 00 00 03 */	li r0, 3
/* 802CB9D8  48 00 00 08 */	b lbl_802CB9E0
lbl_802CB9DC:
/* 802CB9DC  38 00 00 04 */	li r0, 4
lbl_802CB9E0:
/* 802CB9E0  2C 00 00 01 */	cmpwi r0, 1
/* 802CB9E4  40 82 00 0C */	bne lbl_802CB9F0
/* 802CB9E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802CB9EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_802CB9F0:
/* 802CB9F0  C0 C2 C4 64 */	lfs f6, lit_3486(r2)
/* 802CB9F4  C0 42 C4 C4 */	lfs f2, lit_4036(r2)
/* 802CB9F8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802CB9FC  40 80 00 0C */	bge lbl_802CBA08
/* 802CBA00  C0 C2 C4 60 */	lfs f6, lit_3485(r2)
/* 802CBA04  48 00 00 24 */	b lbl_802CBA28
lbl_802CBA08:
/* 802CBA08  C0 62 C4 C8 */	lfs f3, lit_4037(r2)
/* 802CBA0C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802CBA10  40 80 00 18 */	bge lbl_802CBA28
/* 802CBA14  C0 82 C4 CC */	lfs f4, lit_4038(r2)
/* 802CBA18  C0 A2 C4 D0 */	lfs f5, lit_4039(r2)
/* 802CBA1C  38 60 00 00 */	li r3, 0
/* 802CBA20  4B FD DC D5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802CBA24  FC C0 08 90 */	fmr f6, f1
lbl_802CBA28:
/* 802CBA28  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802CBA2C  D0 C3 00 94 */	stfs f6, 0x94(r3)
/* 802CBA30  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CBA34  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 802CBA38  38 00 00 00 */	li r0, 0
/* 802CBA3C  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 802CBA40  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 802CBA44  80 7D 00 04 */	lwz r3, 4(r29)
/* 802CBA48  38 63 00 48 */	addi r3, r3, 0x48
/* 802CBA4C  C0 22 C4 D4 */	lfs f1, lit_4040(r2)
/* 802CBA50  38 80 00 00 */	li r4, 0
/* 802CBA54  4B FD 73 61 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802CBA58  48 00 00 18 */	b lbl_802CBA70
lbl_802CBA5C:
/* 802CBA5C  80 7D 00 04 */	lwz r3, 4(r29)
/* 802CBA60  38 63 00 48 */	addi r3, r3, 0x48
/* 802CBA64  C0 22 C4 D8 */	lfs f1, lit_4041(r2)
/* 802CBA68  38 80 00 00 */	li r4, 0
/* 802CBA6C  4B FD 73 49 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802CBA70:
/* 802CBA70  39 61 00 40 */	addi r11, r1, 0x40
/* 802CBA74  48 09 67 B5 */	bl _restgpr_29
/* 802CBA78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802CBA7C  7C 08 03 A6 */	mtlr r0
/* 802CBA80  38 21 00 40 */	addi r1, r1, 0x40
/* 802CBA84  4E 80 00 20 */	blr 
