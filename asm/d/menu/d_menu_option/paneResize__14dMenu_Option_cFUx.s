lbl_801E80B4:
/* 801E80B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E80B8  7C 08 02 A6 */	mflr r0
/* 801E80BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E80C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801E80C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801E80C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801E80CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801E80D0  39 61 00 20 */	addi r11, r1, 0x20
/* 801E80D4  48 17 A1 09 */	bl _savegpr_29
/* 801E80D8  7C 7D 1B 78 */	mr r29, r3
/* 801E80DC  7C BF 2B 78 */	mr r31, r5
/* 801E80E0  7C DE 33 78 */	mr r30, r6
/* 801E80E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801E80E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E80EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E80F0  7D 89 03 A6 */	mtctr r12
/* 801E80F4  4E 80 04 21 */	bctrl 
/* 801E80F8  48 10 F0 09 */	bl getBounds__7J2DPaneFv
/* 801E80FC  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801E8100  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801E8104  7F C6 F3 78 */	mr r6, r30
/* 801E8108  7F E5 FB 78 */	mr r5, r31
/* 801E810C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8110  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E8114  7D 89 03 A6 */	mtctr r12
/* 801E8118  4E 80 04 21 */	bctrl 
/* 801E811C  48 10 EF E5 */	bl getBounds__7J2DPaneFv
/* 801E8120  C0 23 00 00 */	lfs f1, 0(r3)
/* 801E8124  C0 02 A9 60 */	lfs f0, lit_4862(r2)
/* 801E8128  EF E1 00 28 */	fsubs f31, f1, f0
/* 801E812C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801E8130  7F C6 F3 78 */	mr r6, r30
/* 801E8134  7F E5 FB 78 */	mr r5, r31
/* 801E8138  81 83 00 00 */	lwz r12, 0(r3)
/* 801E813C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E8140  7D 89 03 A6 */	mtctr r12
/* 801E8144  4E 80 04 21 */	bctrl 
/* 801E8148  FC 20 F8 90 */	fmr f1, f31
/* 801E814C  FC 40 F0 90 */	fmr f2, f30
/* 801E8150  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8154  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801E8158  7D 89 03 A6 */	mtctr r12
/* 801E815C  4E 80 04 21 */	bctrl 
/* 801E8160  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801E8164  7F C6 F3 78 */	mr r6, r30
/* 801E8168  7F E5 FB 78 */	mr r5, r31
/* 801E816C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8170  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E8174  7D 89 03 A6 */	mtctr r12
/* 801E8178  4E 80 04 21 */	bctrl 
/* 801E817C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801E8180  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801E8184  EF C1 00 28 */	fsubs f30, f1, f0
/* 801E8188  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801E818C  7F C6 F3 78 */	mr r6, r30
/* 801E8190  7F E5 FB 78 */	mr r5, r31
/* 801E8194  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8198  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E819C  7D 89 03 A6 */	mtctr r12
/* 801E81A0  4E 80 04 21 */	bctrl 
/* 801E81A4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801E81A8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801E81AC  EF E1 00 28 */	fsubs f31, f1, f0
/* 801E81B0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801E81B4  7F C6 F3 78 */	mr r6, r30
/* 801E81B8  7F E5 FB 78 */	mr r5, r31
/* 801E81BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E81C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E81C4  7D 89 03 A6 */	mtctr r12
/* 801E81C8  4E 80 04 21 */	bctrl 
/* 801E81CC  C0 02 A9 78 */	lfs f0, lit_6256(r2)
/* 801E81D0  EC 20 F8 2A */	fadds f1, f0, f31
/* 801E81D4  FC 40 F0 90 */	fmr f2, f30
/* 801E81D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E81DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801E81E0  7D 89 03 A6 */	mtctr r12
/* 801E81E4  4E 80 04 21 */	bctrl 
/* 801E81E8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801E81EC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801E81F0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801E81F4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801E81F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801E81FC  48 17 A0 2D */	bl _restgpr_29
/* 801E8200  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E8204  7C 08 03 A6 */	mtlr r0
/* 801E8208  38 21 00 40 */	addi r1, r1, 0x40
/* 801E820C  4E 80 00 20 */	blr 
