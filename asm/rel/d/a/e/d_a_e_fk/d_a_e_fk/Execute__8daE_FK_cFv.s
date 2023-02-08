lbl_806BA6EC:
/* 806BA6EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806BA6F0  7C 08 02 A6 */	mflr r0
/* 806BA6F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 806BA6F8  39 61 00 60 */	addi r11, r1, 0x60
/* 806BA6FC  4B CA 7A D9 */	bl _savegpr_27
/* 806BA700  7C 7C 1B 78 */	mr r28, r3
/* 806BA704  3C 60 80 6C */	lis r3, lit_1109@ha /* 0x806BB8D0@ha */
/* 806BA708  3B C3 B8 D0 */	addi r30, r3, lit_1109@l /* 0x806BB8D0@l */
/* 806BA70C  3C 60 80 6C */	lis r3, lit_3826@ha /* 0x806BB6D0@ha */
/* 806BA710  3B E3 B6 D0 */	addi r31, r3, lit_3826@l /* 0x806BB6D0@l */
/* 806BA714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BA718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BA71C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806BA720  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806BA724  28 00 00 00 */	cmplwi r0, 0
/* 806BA728  41 82 00 0C */	beq lbl_806BA734
/* 806BA72C  38 60 00 01 */	li r3, 1
/* 806BA730  48 00 04 70 */	b lbl_806BABA0
lbl_806BA734:
/* 806BA734  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070527@ha */
/* 806BA738  38 03 05 27 */	addi r0, r3, 0x0527 /* 0x00070527@l */
/* 806BA73C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806BA740  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 806BA744  38 81 00 10 */	addi r4, r1, 0x10
/* 806BA748  38 A0 00 00 */	li r5, 0
/* 806BA74C  38 C0 FF FF */	li r6, -1
/* 806BA750  81 9C 0C 4C */	lwz r12, 0xc4c(r28)
/* 806BA754  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806BA758  7D 89 03 A6 */	mtctr r12
/* 806BA75C  4E 80 04 21 */	bctrl 
/* 806BA760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BA764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BA768  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806BA76C  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 806BA770  90 9E 00 64 */	stw r4, 0x64(r30)
/* 806BA774  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806BA778  4B BB 64 8D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806BA77C  B0 7E 00 68 */	sth r3, 0x68(r30)
/* 806BA780  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806BA784  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 806BA788  4B C8 CC 15 */	bl PSVECSquareDistance
/* 806BA78C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BA790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BA794  40 81 00 58 */	ble lbl_806BA7EC
/* 806BA798  FC 00 08 34 */	frsqrte f0, f1
/* 806BA79C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806BA7A0  FC 44 00 32 */	fmul f2, f4, f0
/* 806BA7A4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806BA7A8  FC 00 00 32 */	fmul f0, f0, f0
/* 806BA7AC  FC 01 00 32 */	fmul f0, f1, f0
/* 806BA7B0  FC 03 00 28 */	fsub f0, f3, f0
/* 806BA7B4  FC 02 00 32 */	fmul f0, f2, f0
/* 806BA7B8  FC 44 00 32 */	fmul f2, f4, f0
/* 806BA7BC  FC 00 00 32 */	fmul f0, f0, f0
/* 806BA7C0  FC 01 00 32 */	fmul f0, f1, f0
/* 806BA7C4  FC 03 00 28 */	fsub f0, f3, f0
/* 806BA7C8  FC 02 00 32 */	fmul f0, f2, f0
/* 806BA7CC  FC 44 00 32 */	fmul f2, f4, f0
/* 806BA7D0  FC 00 00 32 */	fmul f0, f0, f0
/* 806BA7D4  FC 01 00 32 */	fmul f0, f1, f0
/* 806BA7D8  FC 03 00 28 */	fsub f0, f3, f0
/* 806BA7DC  FC 02 00 32 */	fmul f0, f2, f0
/* 806BA7E0  FC 21 00 32 */	fmul f1, f1, f0
/* 806BA7E4  FC 20 08 18 */	frsp f1, f1
/* 806BA7E8  48 00 00 88 */	b lbl_806BA870
lbl_806BA7EC:
/* 806BA7EC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806BA7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BA7F4  40 80 00 10 */	bge lbl_806BA804
/* 806BA7F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BA7FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806BA800  48 00 00 70 */	b lbl_806BA870
lbl_806BA804:
/* 806BA804  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806BA808  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806BA80C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806BA810  3C 00 7F 80 */	lis r0, 0x7f80
/* 806BA814  7C 03 00 00 */	cmpw r3, r0
/* 806BA818  41 82 00 14 */	beq lbl_806BA82C
/* 806BA81C  40 80 00 40 */	bge lbl_806BA85C
/* 806BA820  2C 03 00 00 */	cmpwi r3, 0
/* 806BA824  41 82 00 20 */	beq lbl_806BA844
/* 806BA828  48 00 00 34 */	b lbl_806BA85C
lbl_806BA82C:
/* 806BA82C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BA830  41 82 00 0C */	beq lbl_806BA83C
/* 806BA834  38 00 00 01 */	li r0, 1
/* 806BA838  48 00 00 28 */	b lbl_806BA860
lbl_806BA83C:
/* 806BA83C  38 00 00 02 */	li r0, 2
/* 806BA840  48 00 00 20 */	b lbl_806BA860
lbl_806BA844:
/* 806BA844  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BA848  41 82 00 0C */	beq lbl_806BA854
/* 806BA84C  38 00 00 05 */	li r0, 5
/* 806BA850  48 00 00 10 */	b lbl_806BA860
lbl_806BA854:
/* 806BA854  38 00 00 03 */	li r0, 3
/* 806BA858  48 00 00 08 */	b lbl_806BA860
lbl_806BA85C:
/* 806BA85C  38 00 00 04 */	li r0, 4
lbl_806BA860:
/* 806BA860  2C 00 00 01 */	cmpwi r0, 1
/* 806BA864  40 82 00 0C */	bne lbl_806BA870
/* 806BA868  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BA86C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806BA870:
/* 806BA870  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 806BA874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BA878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BA87C  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 806BA880  28 03 00 00 */	cmplwi r3, 0
/* 806BA884  41 82 00 0C */	beq lbl_806BA890
/* 806BA888  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 806BA88C  B0 1E 00 A4 */	sth r0, 0xa4(r30)
lbl_806BA890:
/* 806BA890  C0 1C 06 0C */	lfs f0, 0x60c(r28)
/* 806BA894  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806BA898  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BA89C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806BA8A0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806BA8A4  38 61 00 38 */	addi r3, r1, 0x38
/* 806BA8A8  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 806BA8AC  A8 BE 00 68 */	lha r5, 0x68(r30)
/* 806BA8B0  7C 66 1B 78 */	mr r6, r3
/* 806BA8B4  4B BB 65 0D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806BA8B8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806BA8BC  D0 1E 00 90 */	stfs f0, 0x90(r30)
/* 806BA8C0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806BA8C4  3B 7E 00 90 */	addi r27, r30, 0x90
/* 806BA8C8  D0 1B 00 04 */	stfs f0, 4(r27)
/* 806BA8CC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806BA8D0  D0 1B 00 08 */	stfs f0, 8(r27)
/* 806BA8D4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806BA8D8  7F 64 DB 78 */	mr r4, r27
/* 806BA8DC  4B BB 63 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806BA8E0  B0 7E 00 9C */	sth r3, 0x9c(r30)
/* 806BA8E4  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806BA8E8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806BA8EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806BA8F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BA8F4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806BA8F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806BA8FC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806BA900  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BA904  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806BA908  C0 1B 00 08 */	lfs f0, 8(r27)
/* 806BA90C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BA910  38 61 00 14 */	addi r3, r1, 0x14
/* 806BA914  38 81 00 20 */	addi r4, r1, 0x20
/* 806BA918  4B C8 CA 85 */	bl PSVECSquareDistance
/* 806BA91C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BA920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BA924  40 81 00 58 */	ble lbl_806BA97C
/* 806BA928  FC 00 08 34 */	frsqrte f0, f1
/* 806BA92C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806BA930  FC 44 00 32 */	fmul f2, f4, f0
/* 806BA934  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806BA938  FC 00 00 32 */	fmul f0, f0, f0
/* 806BA93C  FC 01 00 32 */	fmul f0, f1, f0
/* 806BA940  FC 03 00 28 */	fsub f0, f3, f0
/* 806BA944  FC 02 00 32 */	fmul f0, f2, f0
/* 806BA948  FC 44 00 32 */	fmul f2, f4, f0
/* 806BA94C  FC 00 00 32 */	fmul f0, f0, f0
/* 806BA950  FC 01 00 32 */	fmul f0, f1, f0
/* 806BA954  FC 03 00 28 */	fsub f0, f3, f0
/* 806BA958  FC 02 00 32 */	fmul f0, f2, f0
/* 806BA95C  FC 44 00 32 */	fmul f2, f4, f0
/* 806BA960  FC 00 00 32 */	fmul f0, f0, f0
/* 806BA964  FC 01 00 32 */	fmul f0, f1, f0
/* 806BA968  FC 03 00 28 */	fsub f0, f3, f0
/* 806BA96C  FC 02 00 32 */	fmul f0, f2, f0
/* 806BA970  FC 21 00 32 */	fmul f1, f1, f0
/* 806BA974  FC 20 08 18 */	frsp f1, f1
/* 806BA978  48 00 00 88 */	b lbl_806BAA00
lbl_806BA97C:
/* 806BA97C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806BA980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BA984  40 80 00 10 */	bge lbl_806BA994
/* 806BA988  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BA98C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806BA990  48 00 00 70 */	b lbl_806BAA00
lbl_806BA994:
/* 806BA994  D0 21 00 08 */	stfs f1, 8(r1)
/* 806BA998  80 81 00 08 */	lwz r4, 8(r1)
/* 806BA99C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806BA9A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806BA9A4  7C 03 00 00 */	cmpw r3, r0
/* 806BA9A8  41 82 00 14 */	beq lbl_806BA9BC
/* 806BA9AC  40 80 00 40 */	bge lbl_806BA9EC
/* 806BA9B0  2C 03 00 00 */	cmpwi r3, 0
/* 806BA9B4  41 82 00 20 */	beq lbl_806BA9D4
/* 806BA9B8  48 00 00 34 */	b lbl_806BA9EC
lbl_806BA9BC:
/* 806BA9BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BA9C0  41 82 00 0C */	beq lbl_806BA9CC
/* 806BA9C4  38 00 00 01 */	li r0, 1
/* 806BA9C8  48 00 00 28 */	b lbl_806BA9F0
lbl_806BA9CC:
/* 806BA9CC  38 00 00 02 */	li r0, 2
/* 806BA9D0  48 00 00 20 */	b lbl_806BA9F0
lbl_806BA9D4:
/* 806BA9D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BA9D8  41 82 00 0C */	beq lbl_806BA9E4
/* 806BA9DC  38 00 00 05 */	li r0, 5
/* 806BA9E0  48 00 00 10 */	b lbl_806BA9F0
lbl_806BA9E4:
/* 806BA9E4  38 00 00 03 */	li r0, 3
/* 806BA9E8  48 00 00 08 */	b lbl_806BA9F0
lbl_806BA9EC:
/* 806BA9EC  38 00 00 04 */	li r0, 4
lbl_806BA9F0:
/* 806BA9F0  2C 00 00 01 */	cmpwi r0, 1
/* 806BA9F4  40 82 00 0C */	bne lbl_806BAA00
/* 806BA9F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BA9FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806BAA00:
/* 806BAA00  D0 3E 00 A0 */	stfs f1, 0xa0(r30)
/* 806BAA04  38 60 00 00 */	li r3, 0
/* 806BAA08  7C 64 1B 78 */	mr r4, r3
/* 806BAA0C  38 00 00 04 */	li r0, 4
/* 806BAA10  7C 09 03 A6 */	mtctr r0
lbl_806BAA14:
/* 806BAA14  38 C3 05 C4 */	addi r6, r3, 0x5c4
/* 806BAA18  7C BC 32 AE */	lhax r5, r28, r6
/* 806BAA1C  38 05 FF FF */	addi r0, r5, -1
/* 806BAA20  7C 1C 33 2E */	sthx r0, r28, r6
/* 806BAA24  7C 1C 32 AE */	lhax r0, r28, r6
/* 806BAA28  2C 00 00 00 */	cmpwi r0, 0
/* 806BAA2C  41 81 00 08 */	bgt lbl_806BAA34
/* 806BAA30  7C 9C 33 2E */	sthx r4, r28, r6
lbl_806BAA34:
/* 806BAA34  38 63 00 02 */	addi r3, r3, 2
/* 806BAA38  42 00 FF DC */	bdnz lbl_806BAA14
/* 806BAA3C  38 C0 00 00 */	li r6, 0
/* 806BAA40  38 60 00 00 */	li r3, 0
/* 806BAA44  38 00 00 02 */	li r0, 2
/* 806BAA48  7C 09 03 A6 */	mtctr r0
lbl_806BAA4C:
/* 806BAA4C  38 A3 05 B6 */	addi r5, r3, 0x5b6
/* 806BAA50  7C 9C 2A AE */	lhax r4, r28, r5
/* 806BAA54  38 04 FF FF */	addi r0, r4, -1
/* 806BAA58  7C 1C 2B 2E */	sthx r0, r28, r5
/* 806BAA5C  7C 1C 2A AE */	lhax r0, r28, r5
/* 806BAA60  2C 00 00 00 */	cmpwi r0, 0
/* 806BAA64  41 81 00 08 */	bgt lbl_806BAA6C
/* 806BAA68  7C DC 2B 2E */	sthx r6, r28, r5
lbl_806BAA6C:
/* 806BAA6C  38 63 00 02 */	addi r3, r3, 2
/* 806BAA70  42 00 FF DC */	bdnz lbl_806BAA4C
/* 806BAA74  7F 83 E3 78 */	mr r3, r28
/* 806BAA78  4B FF F0 61 */	bl Yazirushi__8daE_FK_cFv
/* 806BAA7C  7F 83 E3 78 */	mr r3, r28
/* 806BAA80  4B FF F5 85 */	bl Action__8daE_FK_cFv
/* 806BAA84  A8 1C 05 C6 */	lha r0, 0x5c6(r28)
/* 806BAA88  2C 00 00 00 */	cmpwi r0, 0
/* 806BAA8C  40 82 00 38 */	bne lbl_806BAAC4
/* 806BAA90  38 00 00 04 */	li r0, 4
/* 806BAA94  98 1C 06 15 */	stb r0, 0x615(r28)
/* 806BAA98  38 00 00 00 */	li r0, 0
/* 806BAA9C  98 1C 06 16 */	stb r0, 0x616(r28)
/* 806BAAA0  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806BAAA4  80 1C 06 44 */	lwz r0, 0x644(r28)
/* 806BAAA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BAAAC  90 1C 06 44 */	stw r0, 0x644(r28)
/* 806BAAB0  80 1C 07 7C */	lwz r0, 0x77c(r28)
/* 806BAAB4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BAAB8  90 1C 07 7C */	stw r0, 0x77c(r28)
/* 806BAABC  38 00 03 E8 */	li r0, 0x3e8
/* 806BAAC0  B0 1C 05 C6 */	sth r0, 0x5c6(r28)
lbl_806BAAC4:
/* 806BAAC4  7F 83 E3 78 */	mr r3, r28
/* 806BAAC8  48 00 03 55 */	bl setBaseMtx__8daE_FK_cFv
/* 806BAACC  7F 83 E3 78 */	mr r3, r28
/* 806BAAD0  48 00 03 E1 */	bl setEfMtx__8daE_FK_cFv
/* 806BAAD4  A8 1C 05 B6 */	lha r0, 0x5b6(r28)
/* 806BAAD8  2C 00 00 00 */	cmpwi r0, 0
/* 806BAADC  40 82 00 14 */	bne lbl_806BAAF0
/* 806BAAE0  7F 83 E3 78 */	mr r3, r28
/* 806BAAE4  4B FF EB 8D */	bl SetBodySph__8daE_FK_cFv
/* 806BAAE8  7F 83 E3 78 */	mr r3, r28
/* 806BAAEC  4B FF EC B9 */	bl SetSwordSph__8daE_FK_cFv
lbl_806BAAF0:
/* 806BAAF0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806BAAF4  7C 03 07 74 */	extsb r3, r0
/* 806BAAF8  4B 97 25 75 */	bl dComIfGp_getReverb__Fi
/* 806BAAFC  7C 65 1B 78 */	mr r5, r3
/* 806BAB00  80 7C 0C 30 */	lwz r3, 0xc30(r28)
/* 806BAB04  38 80 00 00 */	li r4, 0
/* 806BAB08  4B 95 65 A9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806BAB0C  7F 83 E3 78 */	mr r3, r28
/* 806BAB10  4B 95 FA FD */	bl fopAcM_calcSpeed__FP10fopAc_ac_c
/* 806BAB14  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 806BAB18  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 806BAB1C  EC 01 00 2A */	fadds f0, f1, f0
/* 806BAB20  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 806BAB24  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806BAB28  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 806BAB2C  EC 01 00 2A */	fadds f0, f1, f0
/* 806BAB30  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806BAB34  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 806BAB38  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 806BAB3C  EC 01 00 2A */	fadds f0, f1, f0
/* 806BAB40  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 806BAB44  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806BAB48  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806BAB4C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806BAB50  EC 21 00 2A */	fadds f1, f1, f0
/* 806BAB54  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806BAB58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806BAB5C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806BAB60  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806BAB64  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BAB68  4B 96 31 55 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806BAB6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BAB70  41 82 00 18 */	beq lbl_806BAB88
/* 806BAB74  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 806BAB78  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 806BAB7C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 806BAB80  EC 01 00 2A */	fadds f0, f1, f0
/* 806BAB84  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_806BAB88:
/* 806BAB88  7F 83 E3 78 */	mr r3, r28
/* 806BAB8C  4B FF FA 91 */	bl UpDown__8daE_FK_cFv
/* 806BAB90  38 7C 0D 30 */	addi r3, r28, 0xd30
/* 806BAB94  7F A4 EB 78 */	mr r4, r29
/* 806BAB98  4B 9B BF 15 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806BAB9C  38 60 00 01 */	li r3, 1
lbl_806BABA0:
/* 806BABA0  39 61 00 60 */	addi r11, r1, 0x60
/* 806BABA4  4B CA 76 7D */	bl _restgpr_27
/* 806BABA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806BABAC  7C 08 03 A6 */	mtlr r0
/* 806BABB0  38 21 00 60 */	addi r1, r1, 0x60
/* 806BABB4  4E 80 00 20 */	blr 
