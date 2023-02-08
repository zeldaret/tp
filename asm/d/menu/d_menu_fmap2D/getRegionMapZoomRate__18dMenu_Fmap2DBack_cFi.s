lbl_801D2B64:
/* 801D2B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D2B68  7C 08 02 A6 */	mflr r0
/* 801D2B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D2B70  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D2B74  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D2B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D2B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 801D2B80  7C 7E 1B 78 */	mr r30, r3
/* 801D2B84  7C 9F 23 78 */	mr r31, r4
/* 801D2B88  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D2B8C  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D2B90  88 04 03 08 */	lbz r0, 0x308(r4)
/* 801D2B94  28 00 00 00 */	cmplwi r0, 0
/* 801D2B98  40 82 00 30 */	bne lbl_801D2BC8
/* 801D2B9C  4B FF FB 7D */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D2BA0  57 FF 10 3A */	slwi r31, r31, 2
/* 801D2BA4  7C 7E FA 14 */	add r3, r30, r31
/* 801D2BA8  C0 03 0E CC */	lfs f0, 0xecc(r3)
/* 801D2BAC  EF E1 00 24 */	fdivs f31, f1, f0
/* 801D2BB0  7F C3 F3 78 */	mr r3, r30
/* 801D2BB4  4B FF FB 75 */	bl getMapAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D2BB8  7C 7E FA 14 */	add r3, r30, r31
/* 801D2BBC  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D2BC0  EC 21 00 24 */	fdivs f1, f1, f0
/* 801D2BC4  48 00 00 48 */	b lbl_801D2C0C
lbl_801D2BC8:
/* 801D2BC8  4B FF FB 51 */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D2BCC  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D2BD0  54 00 10 3A */	slwi r0, r0, 2
/* 801D2BD4  7C 7E 02 14 */	add r3, r30, r0
/* 801D2BD8  C0 43 0E 4C */	lfs f2, 0xe4c(r3)
/* 801D2BDC  C0 03 0E 0C */	lfs f0, 0xe0c(r3)
/* 801D2BE0  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D2BE4  EF E1 00 24 */	fdivs f31, f1, f0
/* 801D2BE8  7F C3 F3 78 */	mr r3, r30
/* 801D2BEC  4B FF FB 3D */	bl getMapAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D2BF0  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D2BF4  54 00 10 3A */	slwi r0, r0, 2
/* 801D2BF8  7C 7E 02 14 */	add r3, r30, r0
/* 801D2BFC  C0 43 0E 6C */	lfs f2, 0xe6c(r3)
/* 801D2C00  C0 03 0E 2C */	lfs f0, 0xe2c(r3)
/* 801D2C04  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D2C08  EC 21 00 24 */	fdivs f1, f1, f0
lbl_801D2C0C:
/* 801D2C0C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801D2C10  40 80 00 14 */	bge lbl_801D2C24
/* 801D2C14  38 00 00 00 */	li r0, 0
/* 801D2C18  98 1E 12 2E */	stb r0, 0x122e(r30)
/* 801D2C1C  FC 20 F8 90 */	fmr f1, f31
/* 801D2C20  48 00 00 0C */	b lbl_801D2C2C
lbl_801D2C24:
/* 801D2C24  38 00 00 01 */	li r0, 1
/* 801D2C28  98 1E 12 2E */	stb r0, 0x122e(r30)
lbl_801D2C2C:
/* 801D2C2C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2C30  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D2C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2C38  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D2C3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2C40  7C 08 03 A6 */	mtlr r0
/* 801D2C44  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2C48  4E 80 00 20 */	blr 
