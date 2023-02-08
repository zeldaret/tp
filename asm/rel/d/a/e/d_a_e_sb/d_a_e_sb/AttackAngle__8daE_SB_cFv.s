lbl_80782180:
/* 80782180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80782184  7C 08 02 A6 */	mflr r0
/* 80782188  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078218C  39 61 00 20 */	addi r11, r1, 0x20
/* 80782190  4B BE 00 4D */	bl _savegpr_29
/* 80782194  7C 7E 1B 78 */	mr r30, r3
/* 80782198  3B E0 03 00 */	li r31, 0x300
/* 8078219C  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 807821A0  2C 00 00 02 */	cmpwi r0, 2
/* 807821A4  40 82 00 14 */	bne lbl_807821B8
/* 807821A8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807821AC  80 9E 05 EC */	lwz r4, 0x5ec(r30)
/* 807821B0  4B AE EA 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807821B4  48 00 00 18 */	b lbl_807821CC
lbl_807821B8:
/* 807821B8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807821BC  3C 80 80 78 */	lis r4, data_80784FCC@ha /* 0x80784FCC@ha */
/* 807821C0  38 84 4F CC */	addi r4, r4, data_80784FCC@l /* 0x80784FCC@l */
/* 807821C4  80 84 00 00 */	lwz r4, 0(r4)
/* 807821C8  4B AE EA 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
lbl_807821CC:
/* 807821CC  7C 7D 1B 78 */	mr r29, r3
/* 807821D0  A8 7E 06 10 */	lha r3, 0x610(r30)
/* 807821D4  38 03 13 A0 */	addi r0, r3, 0x13a0
/* 807821D8  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 807821DC  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 807821E0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807821E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807821E8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807821EC  7C 23 04 2E */	lfsx f1, r3, r0
/* 807821F0  3C 60 80 78 */	lis r3, lit_3975@ha /* 0x80784E00@ha */
/* 807821F4  C0 03 4E 00 */	lfs f0, lit_3975@l(r3)  /* 0x80784E00@l */
/* 807821F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 807821FC  FC 00 00 1E */	fctiwz f0, f0
/* 80782200  D8 01 00 08 */	stfd f0, 8(r1)
/* 80782204  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80782208  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8078220C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80782210  2C 00 00 00 */	cmpwi r0, 0
/* 80782214  40 80 00 08 */	bge lbl_8078221C
/* 80782218  3B E0 00 00 */	li r31, 0
lbl_8078221C:
/* 8078221C  38 7E 06 12 */	addi r3, r30, 0x612
/* 80782220  7F E4 FB 78 */	mr r4, r31
/* 80782224  38 A0 01 00 */	li r5, 0x100
/* 80782228  4B AE E9 69 */	bl cLib_chaseAngleS__FPsss
/* 8078222C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80782230  7F A4 EB 78 */	mr r4, r29
/* 80782234  A8 BE 06 12 */	lha r5, 0x612(r30)
/* 80782238  4B AE E9 59 */	bl cLib_chaseAngleS__FPsss
/* 8078223C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80782240  7F A4 EB 78 */	mr r4, r29
/* 80782244  A8 BE 06 12 */	lha r5, 0x612(r30)
/* 80782248  4B AE E9 49 */	bl cLib_chaseAngleS__FPsss
/* 8078224C  39 61 00 20 */	addi r11, r1, 0x20
/* 80782250  4B BD FF D9 */	bl _restgpr_29
/* 80782254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80782258  7C 08 03 A6 */	mtlr r0
/* 8078225C  38 21 00 20 */	addi r1, r1, 0x20
/* 80782260  4E 80 00 20 */	blr 
