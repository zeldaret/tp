lbl_805954B0:
/* 805954B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805954B4  7C 08 02 A6 */	mflr r0
/* 805954B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805954BC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805954C0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805954C4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805954C8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805954CC  39 61 00 50 */	addi r11, r1, 0x50
/* 805954D0  4B DC CC F0 */	b _savegpr_22
/* 805954D4  7C 79 1B 78 */	mr r25, r3
/* 805954D8  3C 60 80 59 */	lis r3, M_attr__14daObjOnCloth_c@ha
/* 805954DC  3B A3 5C B4 */	addi r29, r3, M_attr__14daObjOnCloth_c@l
/* 805954E0  3B 79 05 A8 */	addi r27, r25, 0x5a8
/* 805954E4  38 79 05 78 */	addi r3, r25, 0x578
/* 805954E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805954EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805954F0  4B DB 0F C0 */	b PSMTXCopy
/* 805954F4  3B 40 00 00 */	li r26, 0
/* 805954F8  3B 00 00 00 */	li r24, 0
/* 805954FC  3B 9D 00 00 */	addi r28, r29, 0
/* 80595500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595504  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80595508  7F DF F3 78 */	mr r31, r30
/* 8059550C  C3 DD 00 70 */	lfs f30, 0x70(r29)
/* 80595510  CB FD 00 78 */	lfd f31, 0x78(r29)
/* 80595514  3E C0 43 30 */	lis r22, 0x4330
/* 80595518  7F D7 F3 78 */	mr r23, r30
lbl_8059551C:
/* 8059551C  4B A7 77 AC */	b push__14mDoMtx_stack_cFv
/* 80595520  7F C3 F3 78 */	mr r3, r30
/* 80595524  7F C4 F3 78 */	mr r4, r30
/* 80595528  4B DB 10 88 */	b PSMTXInverse
/* 8059552C  7F E3 FB 78 */	mr r3, r31
/* 80595530  7F 64 DB 78 */	mr r4, r27
/* 80595534  38 A1 00 08 */	addi r5, r1, 8
/* 80595538  4B DB 18 34 */	b PSMTXMultVec
/* 8059553C  4B A7 77 D8 */	b pop__14mDoMtx_stack_cFv
/* 80595540  38 61 00 08 */	addi r3, r1, 8
/* 80595544  7C 64 1B 78 */	mr r4, r3
/* 80595548  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8059554C  4B DB 1B 8C */	b PSVECScale
/* 80595550  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80595554  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80595558  4B CD 21 1C */	b cM_atan2s__Fff
/* 8059555C  B0 7B 00 30 */	sth r3, 0x30(r27)
/* 80595560  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 80595564  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80595568  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059556C  92 C1 00 18 */	stw r22, 0x18(r1)
/* 80595570  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80595574  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80595578  FC 1E 00 00 */	fcmpu cr0, f30, f0
/* 8059557C  41 82 00 64 */	beq lbl_805955E0
/* 80595580  38 7D 00 00 */	addi r3, r29, 0
/* 80595584  38 18 00 24 */	addi r0, r24, 0x24
/* 80595588  7C 63 02 AE */	lhax r3, r3, r0
/* 8059558C  7C 60 07 35 */	extsh. r0, r3
/* 80595590  40 81 00 28 */	ble lbl_805955B8
/* 80595594  A8 1B 00 30 */	lha r0, 0x30(r27)
/* 80595598  7C 00 18 00 */	cmpw r0, r3
/* 8059559C  40 81 00 44 */	ble lbl_805955E0
/* 805955A0  B0 7B 00 30 */	sth r3, 0x30(r27)
/* 805955A4  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 805955A8  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 805955AC  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 805955B0  D0 1B 00 20 */	stfs f0, 0x20(r27)
/* 805955B4  48 00 00 2C */	b lbl_805955E0
lbl_805955B8:
/* 805955B8  7C 60 07 35 */	extsh. r0, r3
/* 805955BC  40 80 00 24 */	bge lbl_805955E0
/* 805955C0  A8 1B 00 30 */	lha r0, 0x30(r27)
/* 805955C4  7C 00 18 00 */	cmpw r0, r3
/* 805955C8  40 80 00 18 */	bge lbl_805955E0
/* 805955CC  B0 7B 00 30 */	sth r3, 0x30(r27)
/* 805955D0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 805955D4  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 805955D8  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 805955DC  D0 1B 00 20 */	stfs f0, 0x20(r27)
lbl_805955E0:
/* 805955E0  7E E3 BB 78 */	mr r3, r23
/* 805955E4  A8 9B 00 30 */	lha r4, 0x30(r27)
/* 805955E8  4B A7 6D B4 */	b mDoMtx_XrotM__FPA4_fs
/* 805955EC  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 805955F0  C0 5C 00 04 */	lfs f2, 4(r28)
/* 805955F4  FC 60 08 90 */	fmr f3, f1
/* 805955F8  4B A7 77 A4 */	b transM__14mDoMtx_stack_cFfff
/* 805955FC  3B 5A 00 01 */	addi r26, r26, 1
/* 80595600  2C 1A 00 03 */	cmpwi r26, 3
/* 80595604  3B 18 00 02 */	addi r24, r24, 2
/* 80595608  3B 7B 00 38 */	addi r27, r27, 0x38
/* 8059560C  41 80 FF 10 */	blt lbl_8059551C
/* 80595610  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80595614  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80595618  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8059561C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80595620  39 61 00 50 */	addi r11, r1, 0x50
/* 80595624  4B DC CB E8 */	b _restgpr_22
/* 80595628  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8059562C  7C 08 03 A6 */	mtlr r0
/* 80595630  38 21 00 70 */	addi r1, r1, 0x70
/* 80595634  4E 80 00 20 */	blr 
