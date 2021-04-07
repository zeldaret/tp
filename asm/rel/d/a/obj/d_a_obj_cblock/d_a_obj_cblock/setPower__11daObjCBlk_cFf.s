lbl_80BC6648:
/* 80BC6648  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BC664C  7C 08 02 A6 */	mflr r0
/* 80BC6650  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BC6654  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BC6658  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BC665C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BC6660  FF E0 08 90 */	fmr f31, f1
/* 80BC6664  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC6668  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC666C  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80BC6670  80 A3 0C 18 */	lwz r5, 0xc18(r3)
/* 80BC6674  38 61 00 08 */	addi r3, r1, 8
/* 80BC6678  38 85 00 44 */	addi r4, r5, 0x44
/* 80BC667C  38 A5 00 54 */	addi r5, r5, 0x54
/* 80BC6680  4B 6A 04 B5 */	bl __mi__4cXyzCFRC3Vec
/* 80BC6684  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BC6688  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BC668C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BC6690  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BC6694  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BC6698  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BC669C  4B 6A 0F D9 */	bl cM_atan2s__Fff
/* 80BC66A0  7C 64 1B 78 */	mr r4, r3
/* 80BC66A4  7F E3 FB 78 */	mr r3, r31
/* 80BC66A8  FC 20 F8 90 */	fmr f1, f31
/* 80BC66AC  38 A0 00 00 */	li r5, 0
/* 80BC66B0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80BC66B4  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80BC66B8  7D 89 03 A6 */	mtctr r12
/* 80BC66BC  4E 80 04 21 */	bctrl 
/* 80BC66C0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BC66C4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BC66C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BC66CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BC66D0  7C 08 03 A6 */	mtlr r0
/* 80BC66D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BC66D8  4E 80 00 20 */	blr 
