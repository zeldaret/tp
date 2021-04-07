lbl_80BD935C:
/* 80BD935C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BD9360  7C 08 02 A6 */	mflr r0
/* 80BD9364  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BD9368  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BD936C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BD9370  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BD9374  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BD9378  7C 7E 1B 78 */	mr r30, r3
/* 80BD937C  FF E0 08 90 */	fmr f31, f1
/* 80BD9380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD9384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD9388  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80BD938C  28 04 00 00 */	cmplwi r4, 0
/* 80BD9390  40 82 00 3C */	bne lbl_80BD93CC
/* 80BD9394  80 BE 0E 8C */	lwz r5, 0xe8c(r30)
/* 80BD9398  38 61 00 08 */	addi r3, r1, 8
/* 80BD939C  38 85 00 44 */	addi r4, r5, 0x44
/* 80BD93A0  38 A5 00 54 */	addi r5, r5, 0x54
/* 80BD93A4  4B 68 D7 91 */	bl __mi__4cXyzCFRC3Vec
/* 80BD93A8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BD93AC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BD93B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD93B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD93B8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BD93BC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BD93C0  4B 68 E2 B5 */	bl cM_atan2s__Fff
/* 80BD93C4  7C 64 1B 78 */	mr r4, r3
/* 80BD93C8  48 00 00 08 */	b lbl_80BD93D0
lbl_80BD93CC:
/* 80BD93CC  A8 84 00 00 */	lha r4, 0(r4)
lbl_80BD93D0:
/* 80BD93D0  7F E3 FB 78 */	mr r3, r31
/* 80BD93D4  FC 20 F8 90 */	fmr f1, f31
/* 80BD93D8  38 A0 00 00 */	li r5, 0
/* 80BD93DC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80BD93E0  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80BD93E4  7D 89 03 A6 */	mtctr r12
/* 80BD93E8  4E 80 04 21 */	bctrl 
/* 80BD93EC  38 00 00 01 */	li r0, 1
/* 80BD93F0  98 1E 0F 0F */	stb r0, 0xf0f(r30)
/* 80BD93F4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BD93F8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BD93FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BD9400  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BD9404  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD9408  7C 08 03 A6 */	mtlr r0
/* 80BD940C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BD9410  4E 80 00 20 */	blr 
