lbl_801C1BA4:
/* 801C1BA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C1BA8  7C 08 02 A6 */	mflr r0
/* 801C1BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C1BB0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801C1BB4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801C1BB8  C3 E3 00 98 */	lfs f31, 0x98(r3)
/* 801C1BBC  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 801C1BC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801C1BC4  40 80 00 08 */	bge lbl_801C1BCC
/* 801C1BC8  48 00 00 08 */	b lbl_801C1BD0
lbl_801C1BCC:
/* 801C1BCC  FF E0 00 90 */	fmr f31, f0
lbl_801C1BD0:
/* 801C1BD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C1BD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C1BD8  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801C1BDC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801C1BE0  7D 89 03 A6 */	mtctr r12
/* 801C1BE4  4E 80 04 21 */	bctrl 
/* 801C1BE8  C0 02 A6 BC */	lfs f0, lit_4277(r2)
/* 801C1BEC  EC 20 F8 24 */	fdivs f1, f0, f31
/* 801C1BF0  C0 42 A6 60 */	lfs f2, lit_3803(r2)
/* 801C1BF4  28 03 00 00 */	cmplwi r3, 0
/* 801C1BF8  41 82 00 20 */	beq lbl_801C1C18
/* 801C1BFC  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 801C1C00  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C1C04  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801C1C08  40 82 00 10 */	bne lbl_801C1C18
/* 801C1C0C  C0 42 A6 C0 */	lfs f2, lit_4278(r2)
/* 801C1C10  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801C1C14  EC 42 00 32 */	fmuls f2, f2, f0
lbl_801C1C18:
/* 801C1C18  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C1C1C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801C1C20  41 82 00 08 */	beq lbl_801C1C28
/* 801C1C24  EC 22 F8 24 */	fdivs f1, f2, f31
lbl_801C1C28:
/* 801C1C28  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801C1C2C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801C1C30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C1C34  7C 08 03 A6 */	mtlr r0
/* 801C1C38  38 21 00 20 */	addi r1, r1, 0x20
/* 801C1C3C  4E 80 00 20 */	blr 
