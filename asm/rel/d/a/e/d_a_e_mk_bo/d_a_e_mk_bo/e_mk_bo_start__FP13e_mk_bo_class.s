lbl_8071D694:
/* 8071D694  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8071D698  7C 08 02 A6 */	mflr r0
/* 8071D69C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8071D6A0  39 61 00 60 */	addi r11, r1, 0x60
/* 8071D6A4  4B C4 4B 34 */	b _savegpr_28
/* 8071D6A8  7C 7C 1B 78 */	mr r28, r3
/* 8071D6AC  3C 60 80 72 */	lis r3, lit_3776@ha
/* 8071D6B0  3B C3 F6 40 */	addi r30, r3, lit_3776@l
/* 8071D6B4  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 8071D6B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071D6BC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071D6C0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8071D6C4  38 81 00 10 */	addi r4, r1, 0x10
/* 8071D6C8  4B 8F C1 30 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071D6CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071D6D0  3B A0 00 02 */	li r29, 2
/* 8071D6D4  40 82 00 0C */	bne lbl_8071D6E0
/* 8071D6D8  38 60 00 02 */	li r3, 2
/* 8071D6DC  48 00 04 AC */	b lbl_8071DB88
lbl_8071D6E0:
/* 8071D6E0  A8 1C 05 DC */	lha r0, 0x5dc(r28)
/* 8071D6E4  2C 00 00 01 */	cmpwi r0, 1
/* 8071D6E8  41 82 00 C0 */	beq lbl_8071D7A8
/* 8071D6EC  40 80 00 10 */	bge lbl_8071D6FC
/* 8071D6F0  2C 00 00 00 */	cmpwi r0, 0
/* 8071D6F4  40 80 00 14 */	bge lbl_8071D708
/* 8071D6F8  48 00 04 10 */	b lbl_8071DB08
lbl_8071D6FC:
/* 8071D6FC  2C 00 00 04 */	cmpwi r0, 4
/* 8071D700  40 80 04 08 */	bge lbl_8071DB08
/* 8071D704  48 00 01 D8 */	b lbl_8071D8DC
lbl_8071D708:
/* 8071D708  38 00 00 01 */	li r0, 1
/* 8071D70C  98 1C 09 98 */	stb r0, 0x998(r28)
/* 8071D710  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071D714  D0 1C 05 E0 */	stfs f0, 0x5e0(r28)
/* 8071D718  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8071D71C  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 8071D720  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8071D724  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8071D728  B0 1C 05 DC */	sth r0, 0x5dc(r28)
/* 8071D72C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8071D730  38 9C 05 E0 */	addi r4, r28, 0x5e0
/* 8071D734  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8071D738  4B B4 93 FC */	b __mi__4cXyzCFRC3Vec
/* 8071D73C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8071D740  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8071D744  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8071D748  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D74C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8071D750  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8071D754  4B B4 9F 20 */	b cM_atan2s__Fff
/* 8071D758  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 8071D75C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8071D760  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 8071D764  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071D768  EC 20 00 32 */	fmuls f1, f0, f0
/* 8071D76C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8071D770  EC 00 00 32 */	fmuls f0, f0, f0
/* 8071D774  EC 41 00 2A */	fadds f2, f1, f0
/* 8071D778  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071D77C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071D780  40 81 00 0C */	ble lbl_8071D78C
/* 8071D784  FC 00 10 34 */	frsqrte f0, f2
/* 8071D788  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8071D78C:
/* 8071D78C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8071D790  4B B4 9E E4 */	b cM_atan2s__Fff
/* 8071D794  7C 03 00 D0 */	neg r0, r3
/* 8071D798  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 8071D79C  38 00 04 00 */	li r0, 0x400
/* 8071D7A0  B0 1C 05 EE */	sth r0, 0x5ee(r28)
/* 8071D7A4  48 00 03 64 */	b lbl_8071DB08
lbl_8071D7A8:
/* 8071D7A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8071D7AC  38 9C 05 E0 */	addi r4, r28, 0x5e0
/* 8071D7B0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8071D7B4  4B B4 93 80 */	b __mi__4cXyzCFRC3Vec
/* 8071D7B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8071D7BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8071D7C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8071D7C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D7C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8071D7CC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8071D7D0  38 61 00 38 */	addi r3, r1, 0x38
/* 8071D7D4  4B C2 99 64 */	b PSVECSquareMag
/* 8071D7D8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071D7DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D7E0  40 81 00 58 */	ble lbl_8071D838
/* 8071D7E4  FC 00 08 34 */	frsqrte f0, f1
/* 8071D7E8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8071D7EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D7F0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8071D7F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D7F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D7FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D800  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D804  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D808  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D80C  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D810  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D814  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D818  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D81C  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D820  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D824  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D828  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D82C  FC 21 00 32 */	fmul f1, f1, f0
/* 8071D830  FC 20 08 18 */	frsp f1, f1
/* 8071D834  48 00 00 88 */	b lbl_8071D8BC
lbl_8071D838:
/* 8071D838  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8071D83C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D840  40 80 00 10 */	bge lbl_8071D850
/* 8071D844  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071D848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8071D84C  48 00 00 70 */	b lbl_8071D8BC
lbl_8071D850:
/* 8071D850  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8071D854  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8071D858  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071D85C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071D860  7C 03 00 00 */	cmpw r3, r0
/* 8071D864  41 82 00 14 */	beq lbl_8071D878
/* 8071D868  40 80 00 40 */	bge lbl_8071D8A8
/* 8071D86C  2C 03 00 00 */	cmpwi r3, 0
/* 8071D870  41 82 00 20 */	beq lbl_8071D890
/* 8071D874  48 00 00 34 */	b lbl_8071D8A8
lbl_8071D878:
/* 8071D878  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071D87C  41 82 00 0C */	beq lbl_8071D888
/* 8071D880  38 00 00 01 */	li r0, 1
/* 8071D884  48 00 00 28 */	b lbl_8071D8AC
lbl_8071D888:
/* 8071D888  38 00 00 02 */	li r0, 2
/* 8071D88C  48 00 00 20 */	b lbl_8071D8AC
lbl_8071D890:
/* 8071D890  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071D894  41 82 00 0C */	beq lbl_8071D8A0
/* 8071D898  38 00 00 05 */	li r0, 5
/* 8071D89C  48 00 00 10 */	b lbl_8071D8AC
lbl_8071D8A0:
/* 8071D8A0  38 00 00 03 */	li r0, 3
/* 8071D8A4  48 00 00 08 */	b lbl_8071D8AC
lbl_8071D8A8:
/* 8071D8A8  38 00 00 04 */	li r0, 4
lbl_8071D8AC:
/* 8071D8AC  2C 00 00 01 */	cmpwi r0, 1
/* 8071D8B0  40 82 00 0C */	bne lbl_8071D8BC
/* 8071D8B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071D8B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8071D8BC:
/* 8071D8BC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8071D8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D8C4  40 80 02 44 */	bge lbl_8071DB08
/* 8071D8C8  38 00 00 02 */	li r0, 2
/* 8071D8CC  B0 1C 05 DC */	sth r0, 0x5dc(r28)
/* 8071D8D0  38 00 00 1E */	li r0, 0x1e
/* 8071D8D4  B0 1C 05 F4 */	sth r0, 0x5f4(r28)
/* 8071D8D8  48 00 02 30 */	b lbl_8071DB08
lbl_8071D8DC:
/* 8071D8DC  A8 1C 05 F4 */	lha r0, 0x5f4(r28)
/* 8071D8E0  2C 00 00 00 */	cmpwi r0, 0
/* 8071D8E4  40 82 00 08 */	bne lbl_8071D8EC
/* 8071D8E8  3B A0 00 00 */	li r29, 0
lbl_8071D8EC:
/* 8071D8EC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8071D8F0  D0 1C 05 E0 */	stfs f0, 0x5e0(r28)
/* 8071D8F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8071D8F8  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 8071D8FC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8071D900  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8071D904  C0 3C 05 E4 */	lfs f1, 0x5e4(r28)
/* 8071D908  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8071D90C  EC 01 00 2A */	fadds f0, f1, f0
/* 8071D910  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 8071D914  38 61 00 14 */	addi r3, r1, 0x14
/* 8071D918  38 9C 05 E0 */	addi r4, r28, 0x5e0
/* 8071D91C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8071D920  4B B4 92 14 */	b __mi__4cXyzCFRC3Vec
/* 8071D924  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8071D928  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8071D92C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8071D930  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D934  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8071D938  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8071D93C  4B B4 9D 38 */	b cM_atan2s__Fff
/* 8071D940  7C 64 1B 78 */	mr r4, r3
/* 8071D944  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8071D948  38 A0 00 01 */	li r5, 1
/* 8071D94C  A8 DC 05 EC */	lha r6, 0x5ec(r28)
/* 8071D950  4B B5 2C B8 */	b cLib_addCalcAngleS2__FPssss
/* 8071D954  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071D958  EC 20 00 32 */	fmuls f1, f0, f0
/* 8071D95C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8071D960  EC 00 00 32 */	fmuls f0, f0, f0
/* 8071D964  EC 41 00 2A */	fadds f2, f1, f0
/* 8071D968  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071D96C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071D970  40 81 00 0C */	ble lbl_8071D97C
/* 8071D974  FC 00 10 34 */	frsqrte f0, f2
/* 8071D978  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8071D97C:
/* 8071D97C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8071D980  4B B4 9C F4 */	b cM_atan2s__Fff
/* 8071D984  7C 03 00 D0 */	neg r0, r3
/* 8071D988  7C 04 07 34 */	extsh r4, r0
/* 8071D98C  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8071D990  38 A0 00 01 */	li r5, 1
/* 8071D994  A8 DC 05 EC */	lha r6, 0x5ec(r28)
/* 8071D998  4B B5 2C 70 */	b cLib_addCalcAngleS2__FPssss
/* 8071D99C  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 8071D9A0  A8 9C 05 EE */	lha r4, 0x5ee(r28)
/* 8071D9A4  38 A0 00 01 */	li r5, 1
/* 8071D9A8  38 C0 00 40 */	li r6, 0x40
/* 8071D9AC  4B B5 2C 5C */	b cLib_addCalcAngleS2__FPssss
/* 8071D9B0  38 7C 05 EE */	addi r3, r28, 0x5ee
/* 8071D9B4  38 80 20 00 */	li r4, 0x2000
/* 8071D9B8  38 A0 00 01 */	li r5, 1
/* 8071D9BC  38 C0 00 04 */	li r6, 4
/* 8071D9C0  4B B5 2C 48 */	b cLib_addCalcAngleS2__FPssss
/* 8071D9C4  38 61 00 38 */	addi r3, r1, 0x38
/* 8071D9C8  4B C2 97 70 */	b PSVECSquareMag
/* 8071D9CC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071D9D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D9D4  40 81 00 58 */	ble lbl_8071DA2C
/* 8071D9D8  FC 00 08 34 */	frsqrte f0, f1
/* 8071D9DC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8071D9E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D9E4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8071D9E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D9EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D9F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D9F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D9F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D9FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8071DA00  FC 01 00 32 */	fmul f0, f1, f0
/* 8071DA04  FC 03 00 28 */	fsub f0, f3, f0
/* 8071DA08  FC 02 00 32 */	fmul f0, f2, f0
/* 8071DA0C  FC 44 00 32 */	fmul f2, f4, f0
/* 8071DA10  FC 00 00 32 */	fmul f0, f0, f0
/* 8071DA14  FC 01 00 32 */	fmul f0, f1, f0
/* 8071DA18  FC 03 00 28 */	fsub f0, f3, f0
/* 8071DA1C  FC 02 00 32 */	fmul f0, f2, f0
/* 8071DA20  FC 21 00 32 */	fmul f1, f1, f0
/* 8071DA24  FC 20 08 18 */	frsp f1, f1
/* 8071DA28  48 00 00 88 */	b lbl_8071DAB0
lbl_8071DA2C:
/* 8071DA2C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8071DA30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DA34  40 80 00 10 */	bge lbl_8071DA44
/* 8071DA38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071DA3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8071DA40  48 00 00 70 */	b lbl_8071DAB0
lbl_8071DA44:
/* 8071DA44  D0 21 00 08 */	stfs f1, 8(r1)
/* 8071DA48  80 81 00 08 */	lwz r4, 8(r1)
/* 8071DA4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071DA50  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071DA54  7C 03 00 00 */	cmpw r3, r0
/* 8071DA58  41 82 00 14 */	beq lbl_8071DA6C
/* 8071DA5C  40 80 00 40 */	bge lbl_8071DA9C
/* 8071DA60  2C 03 00 00 */	cmpwi r3, 0
/* 8071DA64  41 82 00 20 */	beq lbl_8071DA84
/* 8071DA68  48 00 00 34 */	b lbl_8071DA9C
lbl_8071DA6C:
/* 8071DA6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071DA70  41 82 00 0C */	beq lbl_8071DA7C
/* 8071DA74  38 00 00 01 */	li r0, 1
/* 8071DA78  48 00 00 28 */	b lbl_8071DAA0
lbl_8071DA7C:
/* 8071DA7C  38 00 00 02 */	li r0, 2
/* 8071DA80  48 00 00 20 */	b lbl_8071DAA0
lbl_8071DA84:
/* 8071DA84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071DA88  41 82 00 0C */	beq lbl_8071DA94
/* 8071DA8C  38 00 00 05 */	li r0, 5
/* 8071DA90  48 00 00 10 */	b lbl_8071DAA0
lbl_8071DA94:
/* 8071DA94  38 00 00 03 */	li r0, 3
/* 8071DA98  48 00 00 08 */	b lbl_8071DAA0
lbl_8071DA9C:
/* 8071DA9C  38 00 00 04 */	li r0, 4
lbl_8071DAA0:
/* 8071DAA0  2C 00 00 01 */	cmpwi r0, 1
/* 8071DAA4  40 82 00 0C */	bne lbl_8071DAB0
/* 8071DAA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071DAAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8071DAB0:
/* 8071DAB0  A8 1F 0C 32 */	lha r0, 0xc32(r31)
/* 8071DAB4  2C 00 00 00 */	cmpwi r0, 0
/* 8071DAB8  40 82 00 1C */	bne lbl_8071DAD4
/* 8071DABC  A8 1F 06 B6 */	lha r0, 0x6b6(r31)
/* 8071DAC0  2C 00 00 02 */	cmpwi r0, 2
/* 8071DAC4  40 82 00 44 */	bne lbl_8071DB08
/* 8071DAC8  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8071DACC  2C 00 00 14 */	cmpwi r0, 0x14
/* 8071DAD0  41 80 00 38 */	blt lbl_8071DB08
lbl_8071DAD4:
/* 8071DAD4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8071DAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DADC  40 80 00 18 */	bge lbl_8071DAF4
/* 8071DAE0  38 00 00 01 */	li r0, 1
/* 8071DAE4  98 1C 06 00 */	stb r0, 0x600(r28)
/* 8071DAE8  38 00 00 03 */	li r0, 3
/* 8071DAEC  98 1F 07 07 */	stb r0, 0x707(r31)
/* 8071DAF0  48 00 00 18 */	b lbl_8071DB08
lbl_8071DAF4:
/* 8071DAF4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8071DAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071DAFC  40 80 00 0C */	bge lbl_8071DB08
/* 8071DB00  38 00 00 02 */	li r0, 2
/* 8071DB04  98 1F 07 07 */	stb r0, 0x707(r31)
lbl_8071DB08:
/* 8071DB08  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8071DB0C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8071DB10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071DB14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071DB18  80 63 00 00 */	lwz r3, 0(r3)
/* 8071DB1C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8071DB20  4B 8E E8 BC */	b mDoMtx_YrotS__FPA4_fs
/* 8071DB24  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071DB28  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071DB2C  80 63 00 00 */	lwz r3, 0(r3)
/* 8071DB30  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 8071DB34  4B 8E E8 68 */	b mDoMtx_XrotM__FPA4_fs
/* 8071DB38  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8071DB3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8071DB40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071DB44  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8071DB48  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8071DB4C  38 61 00 38 */	addi r3, r1, 0x38
/* 8071DB50  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8071DB54  4B B5 33 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071DB58  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8071DB5C  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8071DB60  7C 65 1B 78 */	mr r5, r3
/* 8071DB64  4B C2 95 2C */	b PSVECAdd
/* 8071DB68  38 00 E8 00 */	li r0, -6144
/* 8071DB6C  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 8071DB70  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 8071DB74  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8071DB78  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8071DB7C  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8071DB80  4B B5 1E BC */	b cLib_addCalc2__FPffff
/* 8071DB84  7F A3 EB 78 */	mr r3, r29
lbl_8071DB88:
/* 8071DB88  39 61 00 60 */	addi r11, r1, 0x60
/* 8071DB8C  4B C4 46 98 */	b _restgpr_28
/* 8071DB90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8071DB94  7C 08 03 A6 */	mtlr r0
/* 8071DB98  38 21 00 60 */	addi r1, r1, 0x60
/* 8071DB9C  4E 80 00 20 */	blr 
