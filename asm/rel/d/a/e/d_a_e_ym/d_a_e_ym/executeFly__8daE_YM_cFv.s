lbl_8080E6A0:
/* 8080E6A0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8080E6A4  7C 08 02 A6 */	mflr r0
/* 8080E6A8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8080E6AC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8080E6B0  4B B5 3B 29 */	bl _savegpr_28
/* 8080E6B4  7C 7D 1B 78 */	mr r29, r3
/* 8080E6B8  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080E6BC  3B C3 59 94 */	addi r30, r3, lit_3925@l /* 0x80815994@l */
/* 8080E6C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8080E6C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080E6C8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8080E6CC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8080E6D0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8080E6D4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8080E6D8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8080E6DC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8080E6E0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8080E6E4  38 61 00 88 */	addi r3, r1, 0x88
/* 8080E6E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8080E6EC  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8080E6F0  4B A5 84 45 */	bl __mi__4cXyzCFRC3Vec
/* 8080E6F4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8080E6F8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8080E6FC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8080E700  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8080E704  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8080E708  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8080E70C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8080E710  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8080E714  38 BD 06 70 */	addi r5, r29, 0x670
/* 8080E718  4B A5 84 1D */	bl __mi__4cXyzCFRC3Vec
/* 8080E71C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8080E720  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8080E724  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8080E728  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8080E72C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8080E730  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8080E734  38 61 00 70 */	addi r3, r1, 0x70
/* 8080E738  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080E73C  38 BD 06 70 */	addi r5, r29, 0x670
/* 8080E740  4B A5 83 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8080E744  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8080E748  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8080E74C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8080E750  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8080E754  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8080E758  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8080E75C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070199@ha */
/* 8080E760  38 03 01 99 */	addi r0, r3, 0x0199 /* 0x00070199@l */
/* 8080E764  90 01 00 24 */	stw r0, 0x24(r1)
/* 8080E768  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080E76C  38 81 00 24 */	addi r4, r1, 0x24
/* 8080E770  38 A0 00 00 */	li r5, 0
/* 8080E774  38 C0 FF FF */	li r6, -1
/* 8080E778  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080E77C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080E780  7D 89 03 A6 */	mtctr r12
/* 8080E784  4E 80 04 21 */	bctrl 
/* 8080E788  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080E78C  28 00 00 0A */	cmplwi r0, 0xa
/* 8080E790  41 81 10 EC */	bgt lbl_8080F87C
/* 8080E794  3C 60 80 81 */	lis r3, lit_7049@ha /* 0x80815BA4@ha */
/* 8080E798  38 63 5B A4 */	addi r3, r3, lit_7049@l /* 0x80815BA4@l */
/* 8080E79C  54 00 10 3A */	slwi r0, r0, 2
/* 8080E7A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8080E7A4  7C 09 03 A6 */	mtctr r0
/* 8080E7A8  4E 80 04 20 */	bctr 
lbl_8080E7AC:
/* 8080E7AC  38 00 00 64 */	li r0, 0x64
/* 8080E7B0  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
/* 8080E7B4  7F A3 EB 78 */	mr r3, r29
/* 8080E7B8  38 80 00 0D */	li r4, 0xd
/* 8080E7BC  38 A0 00 00 */	li r5, 0
/* 8080E7C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080E7C4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080E7C8  4B FF 9B 61 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080E7CC  38 00 00 00 */	li r0, 0
/* 8080E7D0  98 1D 06 A5 */	stb r0, 0x6a5(r29)
/* 8080E7D4  38 00 00 01 */	li r0, 1
/* 8080E7D8  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8080E7DC:
/* 8080E7DC  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080E7E0  28 00 00 01 */	cmplwi r0, 1
/* 8080E7E4  40 82 00 0C */	bne lbl_8080E7F0
/* 8080E7E8  7F A3 EB 78 */	mr r3, r29
/* 8080E7EC  4B FF A0 99 */	bl setElecEffect1__8daE_YM_cFv
lbl_8080E7F0:
/* 8080E7F0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080E7F4  38 63 00 0C */	addi r3, r3, 0xc
/* 8080E7F8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8080E7FC  4B B1 9C 31 */	bl checkPass__12J3DFrameCtrlFf
/* 8080E800  2C 03 00 00 */	cmpwi r3, 0
/* 8080E804  41 82 00 0C */	beq lbl_8080E810
/* 8080E808  38 00 00 01 */	li r0, 1
/* 8080E80C  98 1D 06 CC */	stb r0, 0x6cc(r29)
lbl_8080E810:
/* 8080E810  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080E814  38 63 00 0C */	addi r3, r3, 0xc
/* 8080E818  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8080E81C  4B B1 9C 11 */	bl checkPass__12J3DFrameCtrlFf
/* 8080E820  2C 03 00 00 */	cmpwi r3, 0
/* 8080E824  41 82 10 58 */	beq lbl_8080F87C
/* 8080E828  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080E82C  28 00 00 01 */	cmplwi r0, 1
/* 8080E830  41 82 00 20 */	beq lbl_8080E850
/* 8080E834  38 00 00 07 */	li r0, 7
/* 8080E838  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080E83C  38 00 00 1E */	li r0, 0x1e
/* 8080E840  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080E844  7F A3 EB 78 */	mr r3, r29
/* 8080E848  4B FF FD E9 */	bl initFly__8daE_YM_cFv
/* 8080E84C  48 00 10 30 */	b lbl_8080F87C
lbl_8080E850:
/* 8080E850  38 00 00 28 */	li r0, 0x28
/* 8080E854  B0 1D 07 0E */	sth r0, 0x70e(r29)
/* 8080E858  38 00 00 0A */	li r0, 0xa
/* 8080E85C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080E860  38 00 00 5A */	li r0, 0x5a
/* 8080E864  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080E868  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8080E86C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080E870  7F A3 EB 78 */	mr r3, r29
/* 8080E874  4B FF FD BD */	bl initFly__8daE_YM_cFv
/* 8080E878  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080E87C  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080E880  4B A6 23 85 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080E884  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8080E888  48 00 0F F4 */	b lbl_8080F87C
lbl_8080E88C:
/* 8080E88C  38 00 00 64 */	li r0, 0x64
/* 8080E890  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
/* 8080E894  7F A3 EB 78 */	mr r3, r29
/* 8080E898  38 80 00 0E */	li r4, 0xe
/* 8080E89C  38 A0 00 02 */	li r5, 2
/* 8080E8A0  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080E8A4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080E8A8  4B FF 9A 81 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080E8AC  7F A3 EB 78 */	mr r3, r29
/* 8080E8B0  4B FF FD 81 */	bl initFly__8daE_YM_cFv
/* 8080E8B4  38 00 00 00 */	li r0, 0
/* 8080E8B8  98 1D 06 A5 */	stb r0, 0x6a5(r29)
/* 8080E8BC  38 00 00 03 */	li r0, 3
/* 8080E8C0  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080E8C4  48 00 0F B8 */	b lbl_8080F87C
lbl_8080E8C8:
/* 8080E8C8  38 7D 07 60 */	addi r3, r29, 0x760
/* 8080E8CC  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8080E8D0  4B 86 88 45 */	bl SetGroundUpY__9dBgS_AcchFf
/* 8080E8D4  88 7D 06 A5 */	lbz r3, 0x6a5(r29)
/* 8080E8D8  28 03 00 00 */	cmplwi r3, 0
/* 8080E8DC  41 82 02 C4 */	beq lbl_8080EBA0
/* 8080E8E0  A8 1D 07 0C */	lha r0, 0x70c(r29)
/* 8080E8E4  2C 00 00 00 */	cmpwi r0, 0
/* 8080E8E8  40 82 02 C0 */	bne lbl_8080EBA8
/* 8080E8EC  4B A5 8F 81 */	bl cM_rnd__Fv
/* 8080E8F0  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8080E8F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E8F8  40 80 02 B0 */	bge lbl_8080EBA8
/* 8080E8FC  38 00 00 5A */	li r0, 0x5a
/* 8080E900  B0 1D 07 0C */	sth r0, 0x70c(r29)
/* 8080E904  C0 1D 06 70 */	lfs f0, 0x670(r29)
/* 8080E908  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8080E90C  C0 1D 06 74 */	lfs f0, 0x674(r29)
/* 8080E910  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8080E914  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 8080E918  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8080E91C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8080E920  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8080E924  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080E928  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8080E92C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8080E930  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8080E934  38 61 00 64 */	addi r3, r1, 0x64
/* 8080E938  4B B3 88 01 */	bl PSVECSquareMag
/* 8080E93C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080E940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E944  40 81 00 58 */	ble lbl_8080E99C
/* 8080E948  FC 00 08 34 */	frsqrte f0, f1
/* 8080E94C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080E950  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E954  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080E958  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E95C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E960  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E964  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E968  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E96C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E970  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E974  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E978  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E97C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E980  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E984  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E988  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E98C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E990  FC 21 00 32 */	fmul f1, f1, f0
/* 8080E994  FC 20 08 18 */	frsp f1, f1
/* 8080E998  48 00 00 88 */	b lbl_8080EA20
lbl_8080E99C:
/* 8080E99C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080E9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E9A4  40 80 00 10 */	bge lbl_8080E9B4
/* 8080E9A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080E9AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080E9B0  48 00 00 70 */	b lbl_8080EA20
lbl_8080E9B4:
/* 8080E9B4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8080E9B8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8080E9BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080E9C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080E9C4  7C 03 00 00 */	cmpw r3, r0
/* 8080E9C8  41 82 00 14 */	beq lbl_8080E9DC
/* 8080E9CC  40 80 00 40 */	bge lbl_8080EA0C
/* 8080E9D0  2C 03 00 00 */	cmpwi r3, 0
/* 8080E9D4  41 82 00 20 */	beq lbl_8080E9F4
/* 8080E9D8  48 00 00 34 */	b lbl_8080EA0C
lbl_8080E9DC:
/* 8080E9DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E9E0  41 82 00 0C */	beq lbl_8080E9EC
/* 8080E9E4  38 00 00 01 */	li r0, 1
/* 8080E9E8  48 00 00 28 */	b lbl_8080EA10
lbl_8080E9EC:
/* 8080E9EC  38 00 00 02 */	li r0, 2
/* 8080E9F0  48 00 00 20 */	b lbl_8080EA10
lbl_8080E9F4:
/* 8080E9F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E9F8  41 82 00 0C */	beq lbl_8080EA04
/* 8080E9FC  38 00 00 05 */	li r0, 5
/* 8080EA00  48 00 00 10 */	b lbl_8080EA10
lbl_8080EA04:
/* 8080EA04  38 00 00 03 */	li r0, 3
/* 8080EA08  48 00 00 08 */	b lbl_8080EA10
lbl_8080EA0C:
/* 8080EA0C  38 00 00 04 */	li r0, 4
lbl_8080EA10:
/* 8080EA10  2C 00 00 01 */	cmpwi r0, 1
/* 8080EA14  40 82 00 0C */	bne lbl_8080EA20
/* 8080EA18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080EA1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080EA20:
/* 8080EA20  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8080EA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080EA28  4C 41 13 82 */	cror 2, 1, 2
/* 8080EA2C  40 82 00 40 */	bne lbl_8080EA6C
/* 8080EA30  7F A3 EB 78 */	mr r3, r29
/* 8080EA34  4B FF FA 69 */	bl checkFlyTerritory__8daE_YM_cFv
/* 8080EA38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080EA3C  41 82 00 A4 */	beq lbl_8080EAE0
/* 8080EA40  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8080EA44  4B A5 8F 49 */	bl cM_rndFX__Ff
/* 8080EA48  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8080EA4C  EC 00 08 2A */	fadds f0, f0, f1
/* 8080EA50  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8080EA54  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8080EA58  4B A5 8F 35 */	bl cM_rndFX__Ff
/* 8080EA5C  C0 1D 06 84 */	lfs f0, 0x684(r29)
/* 8080EA60  EC 00 08 2A */	fadds f0, f0, f1
/* 8080EA64  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8080EA68  48 00 00 78 */	b lbl_8080EAE0
lbl_8080EA6C:
/* 8080EA6C  7F A3 EB 78 */	mr r3, r29
/* 8080EA70  4B FF FA 2D */	bl checkFlyTerritory__8daE_YM_cFv
/* 8080EA74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080EA78  41 82 00 20 */	beq lbl_8080EA98
/* 8080EA7C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EA80  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080EA84  4B A6 21 81 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080EA88  3C 63 00 01 */	addis r3, r3, 1
/* 8080EA8C  38 03 80 00 */	addi r0, r3, -32768
/* 8080EA90  7C 03 07 34 */	extsh r3, r0
/* 8080EA94  48 00 00 10 */	b lbl_8080EAA4
lbl_8080EA98:
/* 8080EA98  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EA9C  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080EAA0  4B A6 21 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
lbl_8080EAA4:
/* 8080EAA4  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8080EAA8  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8080EAAC  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8080EAB0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080EAB4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080EAB8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8080EABC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8080EAC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8080EAC4  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8080EAC8  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 8080EACC  7C 63 02 14 */	add r3, r3, r0
/* 8080EAD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8080EAD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8080EAD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8080EADC  D0 1D 06 84 */	stfs f0, 0x684(r29)
lbl_8080EAE0:
/* 8080EAE0  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8080EAE4  4B A5 8E 71 */	bl cM_rndF__Ff
/* 8080EAE8  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8080EAEC  EC 00 08 2A */	fadds f0, f0, f1
/* 8080EAF0  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8080EAF4  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 8080EAF8  C0 1D 06 74 */	lfs f0, 0x674(r29)
/* 8080EAFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080EB00  FC 00 02 10 */	fabs f0, f0
/* 8080EB04  FC 20 00 18 */	frsp f1, f0
/* 8080EB08  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8080EB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080EB10  40 81 00 18 */	ble lbl_8080EB28
/* 8080EB14  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8080EB18  4B A5 8E 3D */	bl cM_rndF__Ff
/* 8080EB1C  C0 1D 06 74 */	lfs f0, 0x674(r29)
/* 8080EB20  EC 00 08 2A */	fadds f0, f0, f1
/* 8080EB24  D0 1D 06 80 */	stfs f0, 0x680(r29)
lbl_8080EB28:
/* 8080EB28  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EB2C  38 9D 06 7C */	addi r4, r29, 0x67c
/* 8080EB30  4B A6 20 D5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080EB34  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8080EB38  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EB3C  38 9D 06 7C */	addi r4, r29, 0x67c
/* 8080EB40  4B A6 21 35 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8080EB44  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8080EB48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080EB4C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080EB50  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080EB54  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080EB58  7C 64 02 14 */	add r3, r4, r0
/* 8080EB5C  C0 23 00 04 */	lfs f1, 4(r3)
/* 8080EB60  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080EB64  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080EB68  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8080EB6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080EB70  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080EB74  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080EB78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080EB7C  7C 24 04 2E */	lfsx f1, r4, r0
/* 8080EB80  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8080EB84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080EB88  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080EB8C  38 00 00 14 */	li r0, 0x14
/* 8080EB90  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080EB94  38 00 00 06 */	li r0, 6
/* 8080EB98  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080EB9C  48 00 0C E0 */	b lbl_8080F87C
lbl_8080EBA0:
/* 8080EBA0  38 03 00 01 */	addi r0, r3, 1
/* 8080EBA4  98 1D 06 A5 */	stb r0, 0x6a5(r29)
lbl_8080EBA8:
/* 8080EBA8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8080EBAC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8080EBB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080EBB4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8080EBB8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8080EBBC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8080EBC0  38 61 00 58 */	addi r3, r1, 0x58
/* 8080EBC4  4B B3 85 75 */	bl PSVECSquareMag
/* 8080EBC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080EBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080EBD0  40 81 00 58 */	ble lbl_8080EC28
/* 8080EBD4  FC 00 08 34 */	frsqrte f0, f1
/* 8080EBD8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080EBDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080EBE0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080EBE4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080EBE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080EBEC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080EBF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8080EBF4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080EBF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080EBFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080EC00  FC 03 00 28 */	fsub f0, f3, f0
/* 8080EC04  FC 02 00 32 */	fmul f0, f2, f0
/* 8080EC08  FC 44 00 32 */	fmul f2, f4, f0
/* 8080EC0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080EC10  FC 01 00 32 */	fmul f0, f1, f0
/* 8080EC14  FC 03 00 28 */	fsub f0, f3, f0
/* 8080EC18  FC 02 00 32 */	fmul f0, f2, f0
/* 8080EC1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8080EC20  FC 20 08 18 */	frsp f1, f1
/* 8080EC24  48 00 00 88 */	b lbl_8080ECAC
lbl_8080EC28:
/* 8080EC28  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080EC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080EC30  40 80 00 10 */	bge lbl_8080EC40
/* 8080EC34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080EC38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080EC3C  48 00 00 70 */	b lbl_8080ECAC
lbl_8080EC40:
/* 8080EC40  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8080EC44  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8080EC48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080EC4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080EC50  7C 03 00 00 */	cmpw r3, r0
/* 8080EC54  41 82 00 14 */	beq lbl_8080EC68
/* 8080EC58  40 80 00 40 */	bge lbl_8080EC98
/* 8080EC5C  2C 03 00 00 */	cmpwi r3, 0
/* 8080EC60  41 82 00 20 */	beq lbl_8080EC80
/* 8080EC64  48 00 00 34 */	b lbl_8080EC98
lbl_8080EC68:
/* 8080EC68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080EC6C  41 82 00 0C */	beq lbl_8080EC78
/* 8080EC70  38 00 00 01 */	li r0, 1
/* 8080EC74  48 00 00 28 */	b lbl_8080EC9C
lbl_8080EC78:
/* 8080EC78  38 00 00 02 */	li r0, 2
/* 8080EC7C  48 00 00 20 */	b lbl_8080EC9C
lbl_8080EC80:
/* 8080EC80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080EC84  41 82 00 0C */	beq lbl_8080EC90
/* 8080EC88  38 00 00 05 */	li r0, 5
/* 8080EC8C  48 00 00 10 */	b lbl_8080EC9C
lbl_8080EC90:
/* 8080EC90  38 00 00 03 */	li r0, 3
/* 8080EC94  48 00 00 08 */	b lbl_8080EC9C
lbl_8080EC98:
/* 8080EC98  38 00 00 04 */	li r0, 4
lbl_8080EC9C:
/* 8080EC9C  2C 00 00 01 */	cmpwi r0, 1
/* 8080ECA0  40 82 00 0C */	bne lbl_8080ECAC
/* 8080ECA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080ECA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080ECAC:
/* 8080ECAC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8080ECB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080ECB4  4C 41 13 82 */	cror 2, 1, 2
/* 8080ECB8  40 82 00 B4 */	bne lbl_8080ED6C
/* 8080ECBC  C0 1D 06 70 */	lfs f0, 0x670(r29)
/* 8080ECC0  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8080ECC4  C0 1D 06 74 */	lfs f0, 0x674(r29)
/* 8080ECC8  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8080ECCC  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 8080ECD0  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8080ECD4  7F A3 EB 78 */	mr r3, r29
/* 8080ECD8  4B FF F7 C5 */	bl checkFlyTerritory__8daE_YM_cFv
/* 8080ECDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080ECE0  41 82 00 68 */	beq lbl_8080ED48
/* 8080ECE4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8080ECE8  4B A5 8C A5 */	bl cM_rndFX__Ff
/* 8080ECEC  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8080ECF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8080ECF4  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8080ECF8  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 8080ECFC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8080ED00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080ED04  40 80 00 1C */	bge lbl_8080ED20
/* 8080ED08  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8080ED0C  4B A5 8C 49 */	bl cM_rndF__Ff
/* 8080ED10  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 8080ED14  EC 00 08 28 */	fsubs f0, f0, f1
/* 8080ED18  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8080ED1C  48 00 00 18 */	b lbl_8080ED34
lbl_8080ED20:
/* 8080ED20  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8080ED24  4B A5 8C 31 */	bl cM_rndF__Ff
/* 8080ED28  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 8080ED2C  EC 00 08 2A */	fadds f0, f0, f1
/* 8080ED30  D0 1D 06 80 */	stfs f0, 0x680(r29)
lbl_8080ED34:
/* 8080ED34  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8080ED38  4B A5 8C 55 */	bl cM_rndFX__Ff
/* 8080ED3C  C0 1D 06 84 */	lfs f0, 0x684(r29)
/* 8080ED40  EC 00 08 2A */	fadds f0, f0, f1
/* 8080ED44  D0 1D 06 84 */	stfs f0, 0x684(r29)
lbl_8080ED48:
/* 8080ED48  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080ED4C  38 9D 06 7C */	addi r4, r29, 0x67c
/* 8080ED50  4B A6 1E B5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080ED54  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8080ED58  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080ED5C  38 9D 06 7C */	addi r4, r29, 0x67c
/* 8080ED60  4B A6 1F 15 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8080ED64  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8080ED68  48 00 00 98 */	b lbl_8080EE00
lbl_8080ED6C:
/* 8080ED6C  7F A3 EB 78 */	mr r3, r29
/* 8080ED70  4B FF F7 2D */	bl checkFlyTerritory__8daE_YM_cFv
/* 8080ED74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080ED78  41 82 00 38 */	beq lbl_8080EDB0
/* 8080ED7C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080ED80  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080ED84  4B A6 1E 81 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080ED88  3C 63 00 01 */	addis r3, r3, 1
/* 8080ED8C  38 03 80 00 */	addi r0, r3, -32768
/* 8080ED90  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8080ED94  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8080ED98  4B A5 8B BD */	bl cM_rndF__Ff
/* 8080ED9C  FC 00 08 1E */	fctiwz f0, f1
/* 8080EDA0  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8080EDA4  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8080EDA8  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8080EDAC  48 00 00 54 */	b lbl_8080EE00
lbl_8080EDB0:
/* 8080EDB0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EDB4  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080EDB8  4B A6 1E 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080EDBC  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8080EDC0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EDC4  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080EDC8  4B A6 1E AD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8080EDCC  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8080EDD0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EDD4  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080EDD8  4B A6 1E 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080EDDC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8080EDE0  7C 04 18 50 */	subf r0, r4, r3
/* 8080EDE4  7C 00 07 35 */	extsh. r0, r0
/* 8080EDE8  40 80 00 10 */	bge lbl_8080EDF8
/* 8080EDEC  38 04 30 00 */	addi r0, r4, 0x3000
/* 8080EDF0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8080EDF4  48 00 00 0C */	b lbl_8080EE00
lbl_8080EDF8:
/* 8080EDF8  38 04 D0 00 */	addi r0, r4, -12288
/* 8080EDFC  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8080EE00:
/* 8080EE00  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080EE04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080EE08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080EE0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080EE10  7C 23 04 2E */	lfsx f1, r3, r0
/* 8080EE14  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080EE18  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080EE1C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8080EE20  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080EE24  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080EE28  38 00 00 14 */	li r0, 0x14
/* 8080EE2C  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080EE30  38 00 00 04 */	li r0, 4
/* 8080EE34  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8080EE38:
/* 8080EE38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080EE3C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080EE40  3B E3 00 04 */	addi r31, r3, 4
/* 8080EE44  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080EE48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080EE4C  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8080EE50  FC 00 02 10 */	fabs f0, f0
/* 8080EE54  FC 20 00 18 */	frsp f1, f0
/* 8080EE58  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080EE5C  3C 80 80 81 */	lis r4, l_HIO@ha /* 0x80815D38@ha */
/* 8080EE60  38 84 5D 38 */	addi r4, r4, l_HIO@l /* 0x80815D38@l */
/* 8080EE64  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8080EE68  EC 20 00 72 */	fmuls f1, f0, f1
/* 8080EE6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080EE70  4B A6 18 D1 */	bl cLib_chaseF__FPfff
/* 8080EE74  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080EE78  38 80 00 01 */	li r4, 1
/* 8080EE7C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080EE80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080EE84  40 82 00 18 */	bne lbl_8080EE9C
/* 8080EE88  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080EE8C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080EE90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080EE94  41 82 00 08 */	beq lbl_8080EE9C
/* 8080EE98  38 80 00 00 */	li r4, 0
lbl_8080EE9C:
/* 8080EE9C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080EEA0  41 82 00 38 */	beq lbl_8080EED8
/* 8080EEA4  7F A3 EB 78 */	mr r3, r29
/* 8080EEA8  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 8080EEAC  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 8080EEB0  38 A0 00 0D */	li r5, 0xd
/* 8080EEB4  4B FF 92 D1 */	bl checkBck__8daE_YM_cFPCci
/* 8080EEB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080EEBC  41 82 00 1C */	beq lbl_8080EED8
/* 8080EEC0  7F A3 EB 78 */	mr r3, r29
/* 8080EEC4  38 80 00 0C */	li r4, 0xc
/* 8080EEC8  38 A0 00 02 */	li r5, 2
/* 8080EECC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080EED0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080EED4  4B FF 94 55 */	bl bckSetFly__8daE_YM_cFiUcff
lbl_8080EED8:
/* 8080EED8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080EEDC  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080EEE0  4B A6 1D 25 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080EEE4  7C 64 1B 78 */	mr r4, r3
/* 8080EEE8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080EEEC  38 A0 04 00 */	li r5, 0x400
/* 8080EEF0  4B A6 1C A1 */	bl cLib_chaseAngleS__FPsss
/* 8080EEF4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8080EEF8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8080EEFC  7C 03 00 50 */	subf r0, r3, r0
/* 8080EF00  7C 04 07 34 */	extsh r4, r0
/* 8080EF04  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080EF08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080EF0C  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8080EF10  FC 00 02 10 */	fabs f0, f0
/* 8080EF14  FC 40 00 18 */	frsp f2, f0
/* 8080EF18  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8080EF1C  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8080EF20  54 9C 04 38 */	rlwinm r28, r4, 0, 0x10, 0x1c
/* 8080EF24  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080EF28  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080EF2C  7C 04 E4 2E */	lfsx f0, r4, r28
/* 8080EF30  EC 01 00 32 */	fmuls f0, f1, f0
/* 8080EF34  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8080EF38  FC 00 00 1E */	fctiwz f0, f0
/* 8080EF3C  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8080EF40  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8080EF44  38 A0 01 00 */	li r5, 0x100
/* 8080EF48  4B A6 1C 49 */	bl cLib_chaseAngleS__FPsss
/* 8080EF4C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080EF50  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080EF54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080EF58  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080EF5C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8080EF60  FC 00 02 10 */	fabs f0, f0
/* 8080EF64  FC 20 00 18 */	frsp f1, f0
/* 8080EF68  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8080EF6C  FC 00 02 10 */	fabs f0, f0
/* 8080EF70  FC 40 00 18 */	frsp f2, f0
/* 8080EF74  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8080EF78  4C 41 13 82 */	cror 2, 1, 2
/* 8080EF7C  40 82 00 30 */	bne lbl_8080EFAC
/* 8080EF80  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8080EF84  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 8080EF88  7C 1F E4 2E */	lfsx f0, r31, r28
/* 8080EF8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8080EF90  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8080EF94  FC 00 00 1E */	fctiwz f0, f0
/* 8080EF98  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8080EF9C  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8080EFA0  38 A0 04 00 */	li r5, 0x400
/* 8080EFA4  4B A6 1B ED */	bl cLib_chaseAngleS__FPsss
/* 8080EFA8  48 00 00 24 */	b lbl_8080EFCC
lbl_8080EFAC:
/* 8080EFAC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8080EFB0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8080EFB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080EFB8  FC 00 00 1E */	fctiwz f0, f0
/* 8080EFBC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8080EFC0  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8080EFC4  38 A0 04 00 */	li r5, 0x400
/* 8080EFC8  4B A6 1B C9 */	bl cLib_chaseAngleS__FPsss
lbl_8080EFCC:
/* 8080EFCC  38 60 00 00 */	li r3, 0
/* 8080EFD0  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080EFD4  2C 00 00 04 */	cmpwi r0, 4
/* 8080EFD8  40 82 00 18 */	bne lbl_8080EFF0
/* 8080EFDC  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080EFE0  2C 00 00 00 */	cmpwi r0, 0
/* 8080EFE4  40 82 00 44 */	bne lbl_8080F028
/* 8080EFE8  38 60 00 01 */	li r3, 1
/* 8080EFEC  48 00 00 3C */	b lbl_8080F028
lbl_8080EFF0:
/* 8080EFF0  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 8080EFF4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8080EFF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080EFFC  FC 00 02 10 */	fabs f0, f0
/* 8080F000  FC 20 00 18 */	frsp f1, f0
/* 8080F004  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8080F008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F00C  41 80 00 10 */	blt lbl_8080F01C
/* 8080F010  80 1D 07 8C */	lwz r0, 0x78c(r29)
/* 8080F014  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080F018  41 82 00 10 */	beq lbl_8080F028
lbl_8080F01C:
/* 8080F01C  38 60 00 01 */	li r3, 1
/* 8080F020  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F024  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8080F028:
/* 8080F028  2C 03 00 00 */	cmpwi r3, 0
/* 8080F02C  41 82 08 50 */	beq lbl_8080F87C
/* 8080F030  38 00 00 05 */	li r0, 5
/* 8080F034  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080F038  38 00 00 1E */	li r0, 0x1e
/* 8080F03C  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080F040  7F A3 EB 78 */	mr r3, r29
/* 8080F044  38 80 00 0E */	li r4, 0xe
/* 8080F048  38 A0 00 02 */	li r5, 2
/* 8080F04C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080F050  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F054  4B FF 92 D5 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080F058  48 00 08 24 */	b lbl_8080F87C
lbl_8080F05C:
/* 8080F05C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080F060  38 80 00 01 */	li r4, 1
/* 8080F064  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080F068  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080F06C  40 82 00 18 */	bne lbl_8080F084
/* 8080F070  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F074  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080F078  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080F07C  41 82 00 08 */	beq lbl_8080F084
/* 8080F080  38 80 00 00 */	li r4, 0
lbl_8080F084:
/* 8080F084  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080F088  41 82 00 38 */	beq lbl_8080F0C0
/* 8080F08C  7F A3 EB 78 */	mr r3, r29
/* 8080F090  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 8080F094  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 8080F098  38 A0 00 0D */	li r5, 0xd
/* 8080F09C  4B FF 90 E9 */	bl checkBck__8daE_YM_cFPCci
/* 8080F0A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080F0A4  41 82 00 1C */	beq lbl_8080F0C0
/* 8080F0A8  7F A3 EB 78 */	mr r3, r29
/* 8080F0AC  38 80 00 0C */	li r4, 0xc
/* 8080F0B0  38 A0 00 02 */	li r5, 2
/* 8080F0B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F0B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F0BC  4B FF 92 6D */	bl bckSetFly__8daE_YM_cFiUcff
lbl_8080F0C0:
/* 8080F0C0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080F0C4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8080F0C8  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080F0CC  4B A6 16 75 */	bl cLib_chaseF__FPfff
/* 8080F0D0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080F0D4  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 8080F0D8  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080F0DC  4B A6 16 65 */	bl cLib_chaseF__FPfff
/* 8080F0E0  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080F0E4  A8 9D 06 EA */	lha r4, 0x6ea(r29)
/* 8080F0E8  3C 84 00 01 */	addis r4, r4, 1
/* 8080F0EC  38 04 80 00 */	addi r0, r4, -32768
/* 8080F0F0  7C 04 07 34 */	extsh r4, r0
/* 8080F0F4  38 A0 00 08 */	li r5, 8
/* 8080F0F8  38 C0 10 00 */	li r6, 0x1000
/* 8080F0FC  38 E0 01 00 */	li r7, 0x100
/* 8080F100  4B A6 14 41 */	bl cLib_addCalcAngleS__FPsssss
/* 8080F104  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080F108  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8080F10C  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080F110  2C 00 00 00 */	cmpwi r0, 0
/* 8080F114  40 82 07 68 */	bne lbl_8080F87C
/* 8080F118  38 00 00 05 */	li r0, 5
/* 8080F11C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080F120  38 00 00 1E */	li r0, 0x1e
/* 8080F124  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080F128  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F12C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080F130  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080F134  7F A3 EB 78 */	mr r3, r29
/* 8080F138  38 80 00 0E */	li r4, 0xe
/* 8080F13C  38 A0 00 02 */	li r5, 2
/* 8080F140  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080F144  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F148  4B FF 91 E1 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080F14C  48 00 07 30 */	b lbl_8080F87C
lbl_8080F150:
/* 8080F150  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080F154  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080F158  4B A6 1A AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080F15C  7C 64 1B 78 */	mr r4, r3
/* 8080F160  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080F164  38 A0 08 00 */	li r5, 0x800
/* 8080F168  4B A6 1A 29 */	bl cLib_chaseAngleS__FPsss
/* 8080F16C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8080F170  38 80 00 00 */	li r4, 0
/* 8080F174  38 A0 04 00 */	li r5, 0x400
/* 8080F178  4B A6 1A 19 */	bl cLib_chaseAngleS__FPsss
/* 8080F17C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8080F180  38 80 00 00 */	li r4, 0
/* 8080F184  38 A0 04 00 */	li r5, 0x400
/* 8080F188  4B A6 1A 09 */	bl cLib_chaseAngleS__FPsss
/* 8080F18C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080F190  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F194  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F198  4B A6 15 A9 */	bl cLib_chaseF__FPfff
/* 8080F19C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080F1A0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F1A4  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080F1A8  4B A6 15 99 */	bl cLib_chaseF__FPfff
/* 8080F1AC  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080F1B0  2C 00 00 00 */	cmpwi r0, 0
/* 8080F1B4  41 82 02 34 */	beq lbl_8080F3E8
/* 8080F1B8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8080F1BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8080F1C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F1C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8080F1C8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8080F1CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8080F1D0  38 61 00 4C */	addi r3, r1, 0x4c
/* 8080F1D4  4B B3 7F 65 */	bl PSVECSquareMag
/* 8080F1D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F1E0  40 81 00 58 */	ble lbl_8080F238
/* 8080F1E4  FC 00 08 34 */	frsqrte f0, f1
/* 8080F1E8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080F1EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F1F0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080F1F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F1F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F1FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F200  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F204  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F208  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F20C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F210  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F214  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F218  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F21C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F220  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F224  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F228  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F22C  FC 21 00 32 */	fmul f1, f1, f0
/* 8080F230  FC 20 08 18 */	frsp f1, f1
/* 8080F234  48 00 00 88 */	b lbl_8080F2BC
lbl_8080F238:
/* 8080F238  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080F23C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F240  40 80 00 10 */	bge lbl_8080F250
/* 8080F244  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F248  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080F24C  48 00 00 70 */	b lbl_8080F2BC
lbl_8080F250:
/* 8080F250  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8080F254  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8080F258  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080F25C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080F260  7C 03 00 00 */	cmpw r3, r0
/* 8080F264  41 82 00 14 */	beq lbl_8080F278
/* 8080F268  40 80 00 40 */	bge lbl_8080F2A8
/* 8080F26C  2C 03 00 00 */	cmpwi r3, 0
/* 8080F270  41 82 00 20 */	beq lbl_8080F290
/* 8080F274  48 00 00 34 */	b lbl_8080F2A8
lbl_8080F278:
/* 8080F278  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F27C  41 82 00 0C */	beq lbl_8080F288
/* 8080F280  38 00 00 01 */	li r0, 1
/* 8080F284  48 00 00 28 */	b lbl_8080F2AC
lbl_8080F288:
/* 8080F288  38 00 00 02 */	li r0, 2
/* 8080F28C  48 00 00 20 */	b lbl_8080F2AC
lbl_8080F290:
/* 8080F290  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F294  41 82 00 0C */	beq lbl_8080F2A0
/* 8080F298  38 00 00 05 */	li r0, 5
/* 8080F29C  48 00 00 10 */	b lbl_8080F2AC
lbl_8080F2A0:
/* 8080F2A0  38 00 00 03 */	li r0, 3
/* 8080F2A4  48 00 00 08 */	b lbl_8080F2AC
lbl_8080F2A8:
/* 8080F2A8  38 00 00 04 */	li r0, 4
lbl_8080F2AC:
/* 8080F2AC  2C 00 00 01 */	cmpwi r0, 1
/* 8080F2B0  40 82 00 0C */	bne lbl_8080F2BC
/* 8080F2B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F2B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080F2BC:
/* 8080F2BC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8080F2C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F2C4  41 80 01 24 */	blt lbl_8080F3E8
/* 8080F2C8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8080F2CC  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8080F2D0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8080F2D4  41 82 01 2C */	beq lbl_8080F400
/* 8080F2D8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8080F2DC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8080F2E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F2E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8080F2E8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8080F2EC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8080F2F0  38 61 00 40 */	addi r3, r1, 0x40
/* 8080F2F4  4B B3 7E 45 */	bl PSVECSquareMag
/* 8080F2F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F300  40 81 00 58 */	ble lbl_8080F358
/* 8080F304  FC 00 08 34 */	frsqrte f0, f1
/* 8080F308  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080F30C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F310  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080F314  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F318  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F31C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F320  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F324  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F328  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F32C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F330  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F334  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F338  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F33C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F340  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F344  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F348  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F34C  FC 21 00 32 */	fmul f1, f1, f0
/* 8080F350  FC 20 08 18 */	frsp f1, f1
/* 8080F354  48 00 00 88 */	b lbl_8080F3DC
lbl_8080F358:
/* 8080F358  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080F35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F360  40 80 00 10 */	bge lbl_8080F370
/* 8080F364  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F368  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080F36C  48 00 00 70 */	b lbl_8080F3DC
lbl_8080F370:
/* 8080F370  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8080F374  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8080F378  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080F37C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080F380  7C 03 00 00 */	cmpw r3, r0
/* 8080F384  41 82 00 14 */	beq lbl_8080F398
/* 8080F388  40 80 00 40 */	bge lbl_8080F3C8
/* 8080F38C  2C 03 00 00 */	cmpwi r3, 0
/* 8080F390  41 82 00 20 */	beq lbl_8080F3B0
/* 8080F394  48 00 00 34 */	b lbl_8080F3C8
lbl_8080F398:
/* 8080F398  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F39C  41 82 00 0C */	beq lbl_8080F3A8
/* 8080F3A0  38 00 00 01 */	li r0, 1
/* 8080F3A4  48 00 00 28 */	b lbl_8080F3CC
lbl_8080F3A8:
/* 8080F3A8  38 00 00 02 */	li r0, 2
/* 8080F3AC  48 00 00 20 */	b lbl_8080F3CC
lbl_8080F3B0:
/* 8080F3B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F3B4  41 82 00 0C */	beq lbl_8080F3C0
/* 8080F3B8  38 00 00 05 */	li r0, 5
/* 8080F3BC  48 00 00 10 */	b lbl_8080F3CC
lbl_8080F3C0:
/* 8080F3C0  38 00 00 03 */	li r0, 3
/* 8080F3C4  48 00 00 08 */	b lbl_8080F3CC
lbl_8080F3C8:
/* 8080F3C8  38 00 00 04 */	li r0, 4
lbl_8080F3CC:
/* 8080F3CC  2C 00 00 01 */	cmpwi r0, 1
/* 8080F3D0  40 82 00 0C */	bne lbl_8080F3DC
/* 8080F3D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F3D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080F3DC:
/* 8080F3DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8080F3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F3E4  40 80 00 1C */	bge lbl_8080F400
lbl_8080F3E8:
/* 8080F3E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F3EC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080F3F0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080F3F4  38 00 00 03 */	li r0, 3
/* 8080F3F8  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080F3FC  48 00 04 B4 */	b lbl_8080F8B0
lbl_8080F400:
/* 8080F400  A8 1D 06 F2 */	lha r0, 0x6f2(r29)
/* 8080F404  2C 00 00 00 */	cmpwi r0, 0
/* 8080F408  40 82 04 74 */	bne lbl_8080F87C
/* 8080F40C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8080F410  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8080F414  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F418  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8080F41C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8080F420  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8080F424  38 61 00 34 */	addi r3, r1, 0x34
/* 8080F428  4B B3 7D 11 */	bl PSVECSquareMag
/* 8080F42C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F434  40 81 00 58 */	ble lbl_8080F48C
/* 8080F438  FC 00 08 34 */	frsqrte f0, f1
/* 8080F43C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080F440  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F444  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080F448  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F44C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F450  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F454  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F458  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F45C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F460  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F464  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F468  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F46C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F470  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F474  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F478  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F47C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F480  FC 21 00 32 */	fmul f1, f1, f0
/* 8080F484  FC 20 08 18 */	frsp f1, f1
/* 8080F488  48 00 00 88 */	b lbl_8080F510
lbl_8080F48C:
/* 8080F48C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080F490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F494  40 80 00 10 */	bge lbl_8080F4A4
/* 8080F498  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F49C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080F4A0  48 00 00 70 */	b lbl_8080F510
lbl_8080F4A4:
/* 8080F4A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080F4A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8080F4AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080F4B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080F4B4  7C 03 00 00 */	cmpw r3, r0
/* 8080F4B8  41 82 00 14 */	beq lbl_8080F4CC
/* 8080F4BC  40 80 00 40 */	bge lbl_8080F4FC
/* 8080F4C0  2C 03 00 00 */	cmpwi r3, 0
/* 8080F4C4  41 82 00 20 */	beq lbl_8080F4E4
/* 8080F4C8  48 00 00 34 */	b lbl_8080F4FC
lbl_8080F4CC:
/* 8080F4CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F4D0  41 82 00 0C */	beq lbl_8080F4DC
/* 8080F4D4  38 00 00 01 */	li r0, 1
/* 8080F4D8  48 00 00 28 */	b lbl_8080F500
lbl_8080F4DC:
/* 8080F4DC  38 00 00 02 */	li r0, 2
/* 8080F4E0  48 00 00 20 */	b lbl_8080F500
lbl_8080F4E4:
/* 8080F4E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F4E8  41 82 00 0C */	beq lbl_8080F4F4
/* 8080F4EC  38 00 00 05 */	li r0, 5
/* 8080F4F0  48 00 00 10 */	b lbl_8080F500
lbl_8080F4F4:
/* 8080F4F4  38 00 00 03 */	li r0, 3
/* 8080F4F8  48 00 00 08 */	b lbl_8080F500
lbl_8080F4FC:
/* 8080F4FC  38 00 00 04 */	li r0, 4
lbl_8080F500:
/* 8080F500  2C 00 00 01 */	cmpwi r0, 1
/* 8080F504  40 82 00 0C */	bne lbl_8080F510
/* 8080F508  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F50C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080F510:
/* 8080F510  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8080F514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F518  40 80 03 64 */	bge lbl_8080F87C
/* 8080F51C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8080F520  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8080F524  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F528  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8080F52C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8080F530  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080F534  38 61 00 28 */	addi r3, r1, 0x28
/* 8080F538  4B B3 7C 01 */	bl PSVECSquareMag
/* 8080F53C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F544  40 81 00 58 */	ble lbl_8080F59C
/* 8080F548  FC 00 08 34 */	frsqrte f0, f1
/* 8080F54C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080F550  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F554  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080F558  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F55C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F560  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F564  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F568  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F56C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F570  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F574  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F578  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F57C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080F580  FC 00 00 32 */	fmul f0, f0, f0
/* 8080F584  FC 01 00 32 */	fmul f0, f1, f0
/* 8080F588  FC 03 00 28 */	fsub f0, f3, f0
/* 8080F58C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080F590  FC 21 00 32 */	fmul f1, f1, f0
/* 8080F594  FC 20 08 18 */	frsp f1, f1
/* 8080F598  48 00 00 88 */	b lbl_8080F620
lbl_8080F59C:
/* 8080F59C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080F5A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F5A4  40 80 00 10 */	bge lbl_8080F5B4
/* 8080F5A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F5AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080F5B0  48 00 00 70 */	b lbl_8080F620
lbl_8080F5B4:
/* 8080F5B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080F5B8  80 81 00 08 */	lwz r4, 8(r1)
/* 8080F5BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080F5C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080F5C4  7C 03 00 00 */	cmpw r3, r0
/* 8080F5C8  41 82 00 14 */	beq lbl_8080F5DC
/* 8080F5CC  40 80 00 40 */	bge lbl_8080F60C
/* 8080F5D0  2C 03 00 00 */	cmpwi r3, 0
/* 8080F5D4  41 82 00 20 */	beq lbl_8080F5F4
/* 8080F5D8  48 00 00 34 */	b lbl_8080F60C
lbl_8080F5DC:
/* 8080F5DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F5E0  41 82 00 0C */	beq lbl_8080F5EC
/* 8080F5E4  38 00 00 01 */	li r0, 1
/* 8080F5E8  48 00 00 28 */	b lbl_8080F610
lbl_8080F5EC:
/* 8080F5EC  38 00 00 02 */	li r0, 2
/* 8080F5F0  48 00 00 20 */	b lbl_8080F610
lbl_8080F5F4:
/* 8080F5F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080F5F8  41 82 00 0C */	beq lbl_8080F604
/* 8080F5FC  38 00 00 05 */	li r0, 5
/* 8080F600  48 00 00 10 */	b lbl_8080F610
lbl_8080F604:
/* 8080F604  38 00 00 03 */	li r0, 3
/* 8080F608  48 00 00 08 */	b lbl_8080F610
lbl_8080F60C:
/* 8080F60C  38 00 00 04 */	li r0, 4
lbl_8080F610:
/* 8080F610  2C 00 00 01 */	cmpwi r0, 1
/* 8080F614  40 82 00 0C */	bne lbl_8080F620
/* 8080F618  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080F61C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080F620:
/* 8080F620  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8080F624  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080F628  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080F62C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8080F630  EC 02 00 2A */	fadds f0, f2, f0
/* 8080F634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F638  40 80 02 44 */	bge lbl_8080F87C
/* 8080F63C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8080F640  FC 00 02 10 */	fabs f0, f0
/* 8080F644  FC 00 00 18 */	frsp f0, f0
/* 8080F648  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8080F64C  40 80 02 30 */	bge lbl_8080F87C
/* 8080F650  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080F654  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080F658  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080F65C  7F A3 EB 78 */	mr r3, r29
/* 8080F660  38 80 00 0C */	li r4, 0xc
/* 8080F664  4B FF A9 39 */	bl setActionMode__8daE_YM_cFi
/* 8080F668  48 00 02 48 */	b lbl_8080F8B0
lbl_8080F66C:
/* 8080F66C  A8 1D 07 0E */	lha r0, 0x70e(r29)
/* 8080F670  2C 00 00 00 */	cmpwi r0, 0
/* 8080F674  41 82 00 60 */	beq lbl_8080F6D4
/* 8080F678  7F A3 EB 78 */	mr r3, r29
/* 8080F67C  4B FF 93 61 */	bl setElecEffect2__8daE_YM_cFv
/* 8080F680  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 8080F684  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 8080F688  90 01 00 20 */	stw r0, 0x20(r1)
/* 8080F68C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080F690  38 81 00 20 */	addi r4, r1, 0x20
/* 8080F694  38 A0 00 00 */	li r5, 0
/* 8080F698  38 C0 FF FF */	li r6, -1
/* 8080F69C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080F6A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080F6A4  7D 89 03 A6 */	mtctr r12
/* 8080F6A8  4E 80 04 21 */	bctrl 
/* 8080F6AC  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080F6B0  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080F6B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8080F6B8  FC 00 00 1E */	fctiwz f0, f0
/* 8080F6BC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8080F6C0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8080F6C4  B0 1D 07 00 */	sth r0, 0x700(r29)
/* 8080F6C8  80 1D 09 74 */	lwz r0, 0x974(r29)
/* 8080F6CC  60 00 00 01 */	ori r0, r0, 1
/* 8080F6D0  90 1D 09 74 */	stw r0, 0x974(r29)
lbl_8080F6D4:
/* 8080F6D4  A8 1D 07 0E */	lha r0, 0x70e(r29)
/* 8080F6D8  2C 00 00 00 */	cmpwi r0, 0
/* 8080F6DC  41 82 00 DC */	beq lbl_8080F7B8
/* 8080F6E0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080F6E4  38 80 00 01 */	li r4, 1
/* 8080F6E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080F6EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080F6F0  40 82 00 18 */	bne lbl_8080F708
/* 8080F6F4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F6F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080F6FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080F700  41 82 00 08 */	beq lbl_8080F708
/* 8080F704  38 80 00 00 */	li r4, 0
lbl_8080F708:
/* 8080F708  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080F70C  41 82 00 38 */	beq lbl_8080F744
/* 8080F710  7F A3 EB 78 */	mr r3, r29
/* 8080F714  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 8080F718  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 8080F71C  38 A0 00 0D */	li r5, 0xd
/* 8080F720  4B FF 8A 65 */	bl checkBck__8daE_YM_cFPCci
/* 8080F724  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080F728  41 82 00 1C */	beq lbl_8080F744
/* 8080F72C  7F A3 EB 78 */	mr r3, r29
/* 8080F730  38 80 00 0C */	li r4, 0xc
/* 8080F734  38 A0 00 02 */	li r5, 2
/* 8080F738  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F73C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F740  4B FF 8B E9 */	bl bckSetFly__8daE_YM_cFiUcff
lbl_8080F744:
/* 8080F744  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8080F748  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8080F74C  EC 21 00 2A */	fadds f1, f1, f0
/* 8080F750  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8080F754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F758  40 81 00 2C */	ble lbl_8080F784
/* 8080F75C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8080F760  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8080F764  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080F768  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080F76C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8080F770  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8080F774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080F778  40 80 00 1C */	bge lbl_8080F794
/* 8080F77C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080F780  48 00 00 14 */	b lbl_8080F794
lbl_8080F784:
/* 8080F784  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080F788  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F78C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F790  4B A6 0F B1 */	bl cLib_chaseF__FPfff
lbl_8080F794:
/* 8080F794  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8080F798  FC 00 02 10 */	fabs f0, f0
/* 8080F79C  FC 20 00 18 */	frsp f1, f0
/* 8080F7A0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080F7A4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8080F7A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8080F7AC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F7B0  4B A6 0F 91 */	bl cLib_chaseF__FPfff
/* 8080F7B4  48 00 00 A4 */	b lbl_8080F858
lbl_8080F7B8:
/* 8080F7B8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080F7BC  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080F7C0  4B A6 14 45 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080F7C4  7C 7F 1B 78 */	mr r31, r3
/* 8080F7C8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080F7CC  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8080F7D0  4B A6 14 35 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080F7D4  7C 1F 18 50 */	subf r0, r31, r3
/* 8080F7D8  7C 00 07 35 */	extsh. r0, r0
/* 8080F7DC  40 80 00 10 */	bge lbl_8080F7EC
/* 8080F7E0  38 1F 30 00 */	addi r0, r31, 0x3000
/* 8080F7E4  7C 04 07 34 */	extsh r4, r0
/* 8080F7E8  48 00 00 08 */	b lbl_8080F7F0
lbl_8080F7EC:
/* 8080F7EC  38 9F D0 00 */	addi r4, r31, -12288
lbl_8080F7F0:
/* 8080F7F0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8080F7F4  38 A0 04 00 */	li r5, 0x400
/* 8080F7F8  4B A6 13 99 */	bl cLib_chaseAngleS__FPsss
/* 8080F7FC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080F800  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080F804  4B A6 14 71 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8080F808  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8080F80C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080F810  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080F814  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080F818  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080F81C  7C 25 04 2E */	lfsx f1, r5, r0
/* 8080F820  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080F824  38 83 5D 38 */	addi r4, r3, l_HIO@l /* 0x80815D38@l */
/* 8080F828  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8080F82C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080F830  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080F834  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8080F838  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080F83C  7C 65 02 14 */	add r3, r5, r0
/* 8080F840  C0 23 00 04 */	lfs f1, 4(r3)
/* 8080F844  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080F848  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8080F84C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8080F850  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F854  4B A6 0E ED */	bl cLib_chaseF__FPfff
lbl_8080F858:
/* 8080F858  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080F85C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8080F860  38 A0 04 00 */	li r5, 0x400
/* 8080F864  4B A6 13 2D */	bl cLib_chaseAngleS__FPsss
/* 8080F868  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080F86C  2C 00 00 00 */	cmpwi r0, 0
/* 8080F870  40 82 00 0C */	bne lbl_8080F87C
/* 8080F874  38 00 00 03 */	li r0, 3
/* 8080F878  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8080F87C:
/* 8080F87C  A8 7D 06 E4 */	lha r3, 0x6e4(r29)
/* 8080F880  38 03 08 00 */	addi r0, r3, 0x800
/* 8080F884  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8080F888  A8 1D 06 E4 */	lha r0, 0x6e4(r29)
/* 8080F88C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080F890  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8080F894  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8080F898  7C 43 04 2E */	lfsx f2, r3, r0
/* 8080F89C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8080F8A0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8080F8A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8080F8A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8080F8AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_8080F8B0:
/* 8080F8B0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8080F8B4  4B B5 29 71 */	bl _restgpr_28
/* 8080F8B8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8080F8BC  7C 08 03 A6 */	mtlr r0
/* 8080F8C0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8080F8C4  4E 80 00 20 */	blr 
