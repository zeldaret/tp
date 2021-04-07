lbl_807025B8:
/* 807025B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807025BC  7C 08 02 A6 */	mflr r0
/* 807025C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 807025C4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807025C8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807025CC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 807025D0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 807025D4  39 61 00 50 */	addi r11, r1, 0x50
/* 807025D8  4B C5 FB FD */	bl _savegpr_27
/* 807025DC  7C 7D 1B 78 */	mr r29, r3
/* 807025E0  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 807025E4  3B E3 5A F8 */	addi r31, r3, lit_3903@l /* 0x80705AF8@l */
/* 807025E8  3B C0 FF FF */	li r30, -1
/* 807025EC  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 807025F0  FC 00 02 10 */	fabs f0, f0
/* 807025F4  FC 20 00 18 */	frsp f1, f0
/* 807025F8  FF E0 08 90 */	fmr f31, f1
/* 807025FC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80702600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80702604  40 80 00 08 */	bge lbl_8070260C
/* 80702608  FF E0 00 90 */	fmr f31, f0
lbl_8070260C:
/* 8070260C  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80702610  FC 00 02 10 */	fabs f0, f0
/* 80702614  FC 20 00 18 */	frsp f1, f0
/* 80702618  FF C0 08 90 */	fmr f30, f1
/* 8070261C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80702620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80702624  40 80 00 08 */	bge lbl_8070262C
/* 80702628  FF C0 00 90 */	fmr f30, f0
lbl_8070262C:
/* 8070262C  38 00 00 02 */	li r0, 2
/* 80702630  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 80702634  A8 7D 06 72 */	lha r3, 0x672(r29)
/* 80702638  38 03 00 01 */	addi r0, r3, 1
/* 8070263C  28 00 00 15 */	cmplwi r0, 0x15
/* 80702640  41 81 05 8C */	bgt lbl_80702BCC
/* 80702644  3C 60 80 70 */	lis r3, lit_5114@ha /* 0x80705D1C@ha */
/* 80702648  38 63 5D 1C */	addi r3, r3, lit_5114@l /* 0x80705D1C@l */
/* 8070264C  54 00 10 3A */	slwi r0, r0, 2
/* 80702650  7C 03 00 2E */	lwzx r0, r3, r0
/* 80702654  7C 09 03 A6 */	mtctr r0
/* 80702658  4E 80 04 20 */	bctr 
lbl_8070265C:
/* 8070265C  38 80 00 01 */	li r4, 1
/* 80702660  98 9D 09 1C */	stb r4, 0x91c(r29)
/* 80702664  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80702668  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070266C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80702670  40 82 00 18 */	bne lbl_80702688
/* 80702674  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80702678  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070267C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80702680  41 82 00 08 */	beq lbl_80702688
/* 80702684  38 80 00 00 */	li r4, 0
lbl_80702688:
/* 80702688  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070268C  41 82 05 40 */	beq lbl_80702BCC
/* 80702690  38 00 00 00 */	li r0, 0
/* 80702694  B0 1D 06 72 */	sth r0, 0x672(r29)
lbl_80702698:
/* 80702698  7F A3 EB 78 */	mr r3, r29
/* 8070269C  38 80 00 15 */	li r4, 0x15
/* 807026A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807026A4  38 A0 00 02 */	li r5, 2
/* 807026A8  FC 40 08 90 */	fmr f2, f1
/* 807026AC  4B FF D6 2D */	bl anm_init__FP10e_kr_classifUcf
/* 807026B0  38 00 00 01 */	li r0, 1
/* 807026B4  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 807026B8  38 00 00 64 */	li r0, 0x64
/* 807026BC  B0 1D 06 9C */	sth r0, 0x69c(r29)
lbl_807026C0:
/* 807026C0  38 00 00 01 */	li r0, 1
/* 807026C4  98 1D 09 1C */	stb r0, 0x91c(r29)
/* 807026C8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807026CC  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 807026D0  38 A0 00 05 */	li r5, 5
/* 807026D4  38 C0 03 00 */	li r6, 0x300
/* 807026D8  4B B6 DF 31 */	bl cLib_addCalcAngleS2__FPssss
/* 807026DC  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 807026E0  38 80 00 00 */	li r4, 0
/* 807026E4  38 A0 00 05 */	li r5, 5
/* 807026E8  38 C0 08 00 */	li r6, 0x800
/* 807026EC  4B B6 DF 1D */	bl cLib_addCalcAngleS2__FPssss
/* 807026F0  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 807026F4  38 80 00 00 */	li r4, 0
/* 807026F8  38 A0 00 05 */	li r5, 5
/* 807026FC  38 C0 08 00 */	li r6, 0x800
/* 80702700  4B B6 DF 09 */	bl cLib_addCalcAngleS2__FPssss
/* 80702704  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80702708  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 8070270C  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80702710  FC 60 F8 90 */	fmr f3, f31
/* 80702714  4B B6 D3 29 */	bl cLib_addCalc2__FPffff
/* 80702718  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8070271C  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702720  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80702724  FC 60 F0 90 */	fmr f3, f30
/* 80702728  4B B6 D3 15 */	bl cLib_addCalc2__FPffff
/* 8070272C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80702730  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80702734  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80702738  2C 00 00 00 */	cmpwi r0, 0
/* 8070273C  40 82 04 90 */	bne lbl_80702BCC
/* 80702740  7F A3 EB 78 */	mr r3, r29
/* 80702744  4B FF D8 11 */	bl e_kr_player_view_check__FP10e_kr_class
/* 80702748  2C 03 00 00 */	cmpwi r3, 0
/* 8070274C  41 82 04 80 */	beq lbl_80702BCC
/* 80702750  38 00 00 02 */	li r0, 2
/* 80702754  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702758  38 00 00 1E */	li r0, 0x1e
/* 8070275C  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80702760  7F A3 EB 78 */	mr r3, r29
/* 80702764  38 80 00 07 */	li r4, 7
/* 80702768  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8070276C  38 A0 00 00 */	li r5, 0
/* 80702770  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80702774  4B FF D5 65 */	bl anm_init__FP10e_kr_classifUcf
/* 80702778  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007002D@ha */
/* 8070277C  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0007002D@l */
/* 80702780  90 01 00 0C */	stw r0, 0xc(r1)
/* 80702784  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80702788  38 81 00 0C */	addi r4, r1, 0xc
/* 8070278C  38 A0 FF FF */	li r5, -1
/* 80702790  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 80702794  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80702798  7D 89 03 A6 */	mtctr r12
/* 8070279C  4E 80 04 21 */	bctrl 
/* 807027A0  48 00 04 2C */	b lbl_80702BCC
lbl_807027A4:
/* 807027A4  38 00 00 01 */	li r0, 1
/* 807027A8  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 807027AC  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807027B0  2C 00 00 00 */	cmpwi r0, 0
/* 807027B4  40 82 04 18 */	bne lbl_80702BCC
/* 807027B8  38 00 00 03 */	li r0, 3
/* 807027BC  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 807027C0  7F A3 EB 78 */	mr r3, r29
/* 807027C4  38 80 00 08 */	li r4, 8
/* 807027C8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807027CC  38 A0 00 02 */	li r5, 2
/* 807027D0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 807027D4  3C C0 80 70 */	lis r6, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 807027D8  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l /* 0x80705FF4@l */
/* 807027DC  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 807027E0  EC 42 00 32 */	fmuls f2, f2, f0
/* 807027E4  4B FF D4 F5 */	bl anm_init__FP10e_kr_classifUcf
/* 807027E8  38 00 00 46 */	li r0, 0x46
/* 807027EC  B0 1D 06 9C */	sth r0, 0x69c(r29)
lbl_807027F0:
/* 807027F0  38 00 00 01 */	li r0, 1
/* 807027F4  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 807027F8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807027FC  A8 9D 06 C0 */	lha r4, 0x6c0(r29)
/* 80702800  38 A0 00 0A */	li r5, 0xa
/* 80702804  38 C0 02 00 */	li r6, 0x200
/* 80702808  4B B6 DE 01 */	bl cLib_addCalcAngleS2__FPssss
/* 8070280C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80702810  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80702814  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80702818  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070281C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80702820  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80702824  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80702828  80 63 00 00 */	lwz r3, 0(r3)
/* 8070282C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80702830  4B 90 9B AD */	bl mDoMtx_YrotS__FPA4_fs
/* 80702834  38 61 00 1C */	addi r3, r1, 0x1c
/* 80702838  38 81 00 10 */	addi r4, r1, 0x10
/* 8070283C  4B B6 E6 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80702840  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80702844  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80702848  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070284C  EC 21 00 2A */	fadds f1, f1, f0
/* 80702850  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702854  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80702858  4B B6 D1 E5 */	bl cLib_addCalc2__FPffff
/* 8070285C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80702860  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80702864  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80702868  EC 21 00 2A */	fadds f1, f1, f0
/* 8070286C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702870  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80702874  4B B6 D1 C9 */	bl cLib_addCalc2__FPffff
/* 80702878  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8070287C  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702880  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80702884  EC 21 00 2A */	fadds f1, f1, f0
/* 80702888  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8070288C  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80702890  4B B6 D1 AD */	bl cLib_addCalc2__FPffff
/* 80702894  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80702898  2C 00 00 00 */	cmpwi r0, 0
/* 8070289C  40 82 03 30 */	bne lbl_80702BCC
/* 807028A0  38 00 00 03 */	li r0, 3
/* 807028A4  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 807028A8  38 00 00 00 */	li r0, 0
/* 807028AC  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 807028B0  48 00 03 1C */	b lbl_80702BCC
lbl_807028B4:
/* 807028B4  3B C0 00 00 */	li r30, 0
/* 807028B8  38 00 00 00 */	li r0, 0
/* 807028BC  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 807028C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807028C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807028C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807028CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807028D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807028D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807028D8  80 63 00 00 */	lwz r3, 0(r3)
/* 807028DC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807028E0  4B 90 9A FD */	bl mDoMtx_YrotS__FPA4_fs
/* 807028E4  38 61 00 1C */	addi r3, r1, 0x1c
/* 807028E8  38 81 00 10 */	addi r4, r1, 0x10
/* 807028EC  4B B6 E6 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807028F0  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 807028F4  A8 1D 06 72 */	lha r0, 0x672(r29)
/* 807028F8  2C 00 00 0A */	cmpwi r0, 0xa
/* 807028FC  40 82 00 08 */	bne lbl_80702904
/* 80702900  C0 5F 00 70 */	lfs f2, 0x70(r31)
lbl_80702904:
/* 80702904  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80702908  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070290C  EC 01 00 2A */	fadds f0, f1, f0
/* 80702910  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80702914  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80702918  EC 00 10 2A */	fadds f0, f0, f2
/* 8070291C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 80702920  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702924  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80702928  EC 01 00 2A */	fadds f0, f1, f0
/* 8070292C  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 80702930  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80702934  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 80702938  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070293C  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 80702940  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80702944  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80702948  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8070294C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80702950  EC 61 00 28 */	fsubs f3, f1, f0
/* 80702954  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 80702958  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8070295C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80702960  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 80702964  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80702968  EC 01 00 28 */	fsubs f0, f1, f0
/* 8070296C  EC 40 00 32 */	fmuls f2, f0, f0
/* 80702970  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80702974  EC 04 01 32 */	fmuls f0, f4, f4
/* 80702978  EC 01 00 2A */	fadds f0, f1, f0
/* 8070297C  EC 42 00 2A */	fadds f2, f2, f0
/* 80702980  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80702984  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80702988  40 81 00 0C */	ble lbl_80702994
/* 8070298C  FC 00 10 34 */	frsqrte f0, f2
/* 80702990  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80702994:
/* 80702994  A8 1D 06 72 */	lha r0, 0x672(r29)
/* 80702998  2C 00 00 0A */	cmpwi r0, 0xa
/* 8070299C  40 82 00 68 */	bne lbl_80702A04
/* 807029A0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807029A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807029A8  40 80 00 10 */	bge lbl_807029B8
/* 807029AC  38 00 00 0B */	li r0, 0xb
/* 807029B0  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 807029B4  48 00 02 18 */	b lbl_80702BCC
lbl_807029B8:
/* 807029B8  7F A3 EB 78 */	mr r3, r29
/* 807029BC  4B FF D5 99 */	bl e_kr_player_view_check__FP10e_kr_class
/* 807029C0  2C 03 00 00 */	cmpwi r3, 0
/* 807029C4  41 82 02 08 */	beq lbl_80702BCC
/* 807029C8  38 00 00 03 */	li r0, 3
/* 807029CC  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 807029D0  38 00 00 00 */	li r0, 0
/* 807029D4  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 807029D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007002D@ha */
/* 807029DC  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0007002D@l */
/* 807029E0  90 01 00 08 */	stw r0, 8(r1)
/* 807029E4  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807029E8  38 81 00 08 */	addi r4, r1, 8
/* 807029EC  38 A0 FF FF */	li r5, -1
/* 807029F0  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 807029F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807029F8  7D 89 03 A6 */	mtctr r12
/* 807029FC  4E 80 04 21 */	bctrl 
/* 80702A00  48 00 01 CC */	b lbl_80702BCC
lbl_80702A04:
/* 80702A04  2C 00 00 0B */	cmpwi r0, 0xb
/* 80702A08  40 82 00 58 */	bne lbl_80702A60
/* 80702A0C  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80702A10  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80702A14  A8 03 00 50 */	lha r0, 0x50(r3)
/* 80702A18  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 80702A1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80702A20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80702A24  3C 00 43 30 */	lis r0, 0x4330
/* 80702A28  90 01 00 28 */	stw r0, 0x28(r1)
/* 80702A2C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80702A30  EC 00 08 28 */	fsubs f0, f0, f1
/* 80702A34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80702A38  40 80 01 94 */	bge lbl_80702BCC
/* 80702A3C  38 00 00 0C */	li r0, 0xc
/* 80702A40  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702A44  7F A3 EB 78 */	mr r3, r29
/* 80702A48  38 80 00 0B */	li r4, 0xb
/* 80702A4C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80702A50  38 A0 00 00 */	li r5, 0
/* 80702A54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80702A58  4B FF D2 81 */	bl anm_init__FP10e_kr_classifUcf
/* 80702A5C  48 00 01 70 */	b lbl_80702BCC
lbl_80702A60:
/* 80702A60  2C 00 00 0C */	cmpwi r0, 0xc
/* 80702A64  40 82 01 68 */	bne lbl_80702BCC
/* 80702A68  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80702A6C  D0 1D 0E A8 */	stfs f0, 0xea8(r29)
/* 80702A70  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80702A74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80702A78  40 80 01 54 */	bge lbl_80702BCC
/* 80702A7C  38 00 00 14 */	li r0, 0x14
/* 80702A80  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702A84  7F A3 EB 78 */	mr r3, r29
/* 80702A88  38 80 00 0F */	li r4, 0xf
/* 80702A8C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80702A90  38 A0 00 02 */	li r5, 2
/* 80702A94  3C C0 80 70 */	lis r6, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80702A98  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l /* 0x80705FF4@l */
/* 80702A9C  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 80702AA0  4B FF D2 39 */	bl anm_init__FP10e_kr_classifUcf
/* 80702AA4  38 00 00 0A */	li r0, 0xa
/* 80702AA8  98 1D 06 70 */	stb r0, 0x670(r29)
/* 80702AAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80702AB0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80702AB4  38 00 00 00 */	li r0, 0
/* 80702AB8  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 80702ABC  3B C0 FF FF */	li r30, -1
/* 80702AC0  48 00 01 0C */	b lbl_80702BCC
lbl_80702AC4:
/* 80702AC4  38 00 00 01 */	li r0, 1
/* 80702AC8  98 1D 09 1C */	stb r0, 0x91c(r29)
/* 80702ACC  38 00 00 00 */	li r0, 0
/* 80702AD0  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 80702AD4  AB 7D 06 D8 */	lha r27, 0x6d8(r29)
/* 80702AD8  38 1B 00 01 */	addi r0, r27, 1
/* 80702ADC  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 80702AE0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80702AE4  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80702AE8  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702AEC  FC 60 F8 90 */	fmr f3, f31
/* 80702AF0  4B B6 CF 4D */	bl cLib_addCalc2__FPffff
/* 80702AF4  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80702AF8  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702AFC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702B00  FC 60 F0 90 */	fmr f3, f30
/* 80702B04  4B B6 CF 39 */	bl cLib_addCalc2__FPffff
/* 80702B08  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80702B0C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80702B10  EC 01 00 2A */	fadds f0, f1, f0
/* 80702B14  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80702B18  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80702B1C  3B 83 5F F4 */	addi r28, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80702B20  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80702B24  7C 1B 00 00 */	cmpw r27, r0
/* 80702B28  40 81 00 14 */	ble lbl_80702B3C
/* 80702B2C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80702B30  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80702B34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80702B38  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80702B3C:
/* 80702B3C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80702B40  38 80 00 00 */	li r4, 0
/* 80702B44  38 A0 00 05 */	li r5, 5
/* 80702B48  38 C0 08 00 */	li r6, 0x800
/* 80702B4C  4B B6 DA BD */	bl cLib_addCalcAngleS2__FPssss
/* 80702B50  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80702B54  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80702B58  38 A0 00 05 */	li r5, 5
/* 80702B5C  38 C0 03 00 */	li r6, 0x300
/* 80702B60  4B B6 DA A9 */	bl cLib_addCalcAngleS2__FPssss
/* 80702B64  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80702B68  38 80 00 00 */	li r4, 0
/* 80702B6C  38 A0 00 05 */	li r5, 5
/* 80702B70  38 C0 08 00 */	li r6, 0x800
/* 80702B74  4B B6 DA 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80702B78  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80702B7C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80702B80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80702B84  4C 40 13 82 */	cror 2, 0, 2
/* 80702B88  40 82 00 44 */	bne lbl_80702BCC
/* 80702B8C  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80702B90  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80702B94  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80702B98  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80702B9C  7C 1B 00 00 */	cmpw r27, r0
/* 80702BA0  40 81 00 2C */	ble lbl_80702BCC
/* 80702BA4  7F A3 EB 78 */	mr r3, r29
/* 80702BA8  38 80 00 13 */	li r4, 0x13
/* 80702BAC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80702BB0  38 A0 00 00 */	li r5, 0
/* 80702BB4  3C C0 80 70 */	lis r6, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80702BB8  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l /* 0x80705FF4@l */
/* 80702BBC  C0 46 00 48 */	lfs f2, 0x48(r6)
/* 80702BC0  4B FF D1 19 */	bl anm_init__FP10e_kr_classifUcf
/* 80702BC4  38 00 FF FF */	li r0, -1
/* 80702BC8  B0 1D 06 72 */	sth r0, 0x672(r29)
lbl_80702BCC:
/* 80702BCC  7F C0 07 75 */	extsb. r0, r30
/* 80702BD0  41 82 00 08 */	beq lbl_80702BD8
/* 80702BD4  48 00 00 0C */	b lbl_80702BE0
lbl_80702BD8:
/* 80702BD8  7F A3 EB 78 */	mr r3, r29
/* 80702BDC  4B FF D7 71 */	bl e_kr_pos_move__FP10e_kr_class
lbl_80702BE0:
/* 80702BE0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80702BE4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80702BE8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80702BEC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80702BF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80702BF4  4B C5 F6 2D */	bl _restgpr_27
/* 80702BF8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80702BFC  7C 08 03 A6 */	mtlr r0
/* 80702C00  38 21 00 70 */	addi r1, r1, 0x70
/* 80702C04  4E 80 00 20 */	blr 
