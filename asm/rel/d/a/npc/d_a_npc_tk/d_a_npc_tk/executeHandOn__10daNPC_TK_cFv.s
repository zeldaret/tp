lbl_80B03754:
/* 80B03754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B03758  7C 08 02 A6 */	mflr r0
/* 80B0375C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B03760  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B03764  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B03768  7C 7E 1B 78 */	mr r30, r3
/* 80B0376C  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B03770  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B03774  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80B03778  2C 00 00 00 */	cmpwi r0, 0
/* 80B0377C  40 82 00 20 */	bne lbl_80B0379C
/* 80B03780  38 60 00 00 */	li r3, 0
/* 80B03784  90 7E 06 94 */	stw r3, 0x694(r30)
/* 80B03788  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B0378C  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 80B03790  B0 7E 06 A2 */	sth r3, 0x6a2(r30)
/* 80B03794  38 00 00 01 */	li r0, 1
/* 80B03798  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80B0379C:
/* 80B0379C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B037A0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B037A4  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80B037A8  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B037AC  38 03 D8 00 */	addi r0, r3, -10240
/* 80B037B0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B037B4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B037B8  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80B037BC  A8 03 05 9C */	lha r0, 0x59c(r3)
/* 80B037C0  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80B037C4  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B037C8  2C 00 00 01 */	cmpwi r0, 1
/* 80B037CC  41 82 00 64 */	beq lbl_80B03830
/* 80B037D0  40 80 00 10 */	bge lbl_80B037E0
/* 80B037D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B037D8  40 80 00 14 */	bge lbl_80B037EC
/* 80B037DC  48 00 01 70 */	b lbl_80B0394C
lbl_80B037E0:
/* 80B037E0  2C 00 00 03 */	cmpwi r0, 3
/* 80B037E4  40 80 01 68 */	bge lbl_80B0394C
/* 80B037E8  48 00 01 0C */	b lbl_80B038F4
lbl_80B037EC:
/* 80B037EC  7F C3 F3 78 */	mr r3, r30
/* 80B037F0  38 80 00 0C */	li r4, 0xc
/* 80B037F4  38 A0 00 02 */	li r5, 2
/* 80B037F8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B037FC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B03800  4B FF DC 99 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B03804  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B03808  4B 76 41 4D */	bl cM_rndF__Ff
/* 80B0380C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B03810  EC 00 08 2A */	fadds f0, f0, f1
/* 80B03814  FC 00 00 1E */	fctiwz f0, f0
/* 80B03818  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B0381C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B03820  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B03824  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B03828  38 00 00 01 */	li r0, 1
/* 80B0382C  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80B03830:
/* 80B03830  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80B03834  A8 9E 06 A4 */	lha r4, 0x6a4(r30)
/* 80B03838  38 A0 04 00 */	li r5, 0x400
/* 80B0383C  4B 76 D3 55 */	bl cLib_chaseAngleS__FPsss
/* 80B03840  38 7E 06 A2 */	addi r3, r30, 0x6a2
/* 80B03844  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 80B03848  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B0384C  7C 04 00 50 */	subf r0, r4, r0
/* 80B03850  1C 00 00 07 */	mulli r0, r0, 7
/* 80B03854  7C 04 07 34 */	extsh r4, r0
/* 80B03858  38 A0 02 00 */	li r5, 0x200
/* 80B0385C  4B 76 D3 35 */	bl cLib_chaseAngleS__FPsss
/* 80B03860  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B03864  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 80B03868  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B0386C  2C 00 00 00 */	cmpwi r0, 0
/* 80B03870  40 82 00 DC */	bne lbl_80B0394C
/* 80B03874  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B03878  38 63 00 0C */	addi r3, r3, 0xc
/* 80B0387C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B03880  4B 82 4B AD */	bl checkPass__12J3DFrameCtrlFf
/* 80B03884  2C 03 00 00 */	cmpwi r3, 0
/* 80B03888  41 82 00 C4 */	beq lbl_80B0394C
/* 80B0388C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B03890  4B 76 40 C5 */	bl cM_rndF__Ff
/* 80B03894  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80B03898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0389C  40 80 00 20 */	bge lbl_80B038BC
/* 80B038A0  7F C3 F3 78 */	mr r3, r30
/* 80B038A4  38 80 00 0A */	li r4, 0xa
/* 80B038A8  38 A0 00 00 */	li r5, 0
/* 80B038AC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B038B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B038B4  4B FF DB E5 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B038B8  48 00 00 30 */	b lbl_80B038E8
lbl_80B038BC:
/* 80B038BC  7F C3 F3 78 */	mr r3, r30
/* 80B038C0  38 80 00 0B */	li r4, 0xb
/* 80B038C4  38 A0 00 00 */	li r5, 0
/* 80B038C8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B038CC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B038D0  4B FF DB C9 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B038D4  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 80B038D8  2C 00 00 00 */	cmpwi r0, 0
/* 80B038DC  40 80 00 0C */	bge lbl_80B038E8
/* 80B038E0  38 00 00 00 */	li r0, 0
/* 80B038E4  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_80B038E8:
/* 80B038E8  38 00 00 02 */	li r0, 2
/* 80B038EC  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B038F0  48 00 00 5C */	b lbl_80B0394C
lbl_80B038F4:
/* 80B038F4  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80B038F8  38 80 00 00 */	li r4, 0
/* 80B038FC  38 A0 10 00 */	li r5, 0x1000
/* 80B03900  4B 76 D2 91 */	bl cLib_chaseAngleS__FPsss
/* 80B03904  38 7E 06 A2 */	addi r3, r30, 0x6a2
/* 80B03908  38 80 00 00 */	li r4, 0
/* 80B0390C  38 A0 10 00 */	li r5, 0x1000
/* 80B03910  4B 76 D2 81 */	bl cLib_chaseAngleS__FPsss
/* 80B03914  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B03918  38 80 00 01 */	li r4, 1
/* 80B0391C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B03920  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B03924  40 82 00 18 */	bne lbl_80B0393C
/* 80B03928  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0392C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B03930  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B03934  41 82 00 08 */	beq lbl_80B0393C
/* 80B03938  38 80 00 00 */	li r4, 0
lbl_80B0393C:
/* 80B0393C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B03940  41 82 00 0C */	beq lbl_80B0394C
/* 80B03944  38 00 00 00 */	li r0, 0
/* 80B03948  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80B0394C:
/* 80B0394C  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 80B03950  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B03954  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B03958  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0395C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80B03960  38 7E 06 80 */	addi r3, r30, 0x680
/* 80B03964  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B03968  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80B0396C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B03970  EC 21 00 2A */	fadds f1, f1, f0
/* 80B03974  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B03978  4B 76 CD C9 */	bl cLib_chaseF__FPfff
/* 80B0397C  38 00 00 01 */	li r0, 1
/* 80B03980  98 1E 06 C1 */	stb r0, 0x6c1(r30)
/* 80B03984  7F C3 F3 78 */	mr r3, r30
/* 80B03988  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B0398C  4B FF E4 15 */	bl setMasterShoulder__10daNPC_TK_cFP4cXyz
/* 80B03990  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B03994  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B03998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0399C  7C 08 03 A6 */	mtlr r0
/* 80B039A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B039A4  4E 80 00 20 */	blr 
