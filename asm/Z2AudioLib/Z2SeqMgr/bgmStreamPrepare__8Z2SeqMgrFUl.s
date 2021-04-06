lbl_802AFB94:
/* 802AFB94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AFB98  7C 08 02 A6 */	mflr r0
/* 802AFB9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AFBA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AFBA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AFBA8  7C 7F 1B 78 */	mr r31, r3
/* 802AFBAC  7C 9E 23 78 */	mr r30, r4
/* 802AFBB0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802AFBB4  28 00 00 00 */	cmplwi r0, 0
/* 802AFBB8  41 82 00 0C */	beq lbl_802AFBC4
/* 802AFBBC  38 80 00 00 */	li r4, 0
/* 802AFBC0  48 00 03 1D */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_802AFBC4:
/* 802AFBC4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AFBC8  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802AFBCC  38 81 00 08 */	addi r4, r1, 8
/* 802AFBD0  38 BF 00 0C */	addi r5, r31, 0xc
/* 802AFBD4  38 C0 00 00 */	li r6, 0
/* 802AFBD8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFBDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AFBE0  7D 89 03 A6 */	mtctr r12
/* 802AFBE4  4E 80 04 21 */	bctrl 
/* 802AFBE8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802AFBEC  38 63 00 1C */	addi r3, r3, 0x1c
/* 802AFBF0  4B FF 26 31 */	bl lockWhenPrepared__15JAISoundStatus_Fv
/* 802AFBF4  3C 60 02 00 */	lis r3, 0x0200 /* 0x02000038@ha */
/* 802AFBF8  38 03 00 38 */	addi r0, r3, 0x0038 /* 0x02000038@l */
/* 802AFBFC  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC00  41 82 00 F0 */	beq lbl_802AFCF0
/* 802AFC04  40 80 00 54 */	bge lbl_802AFC58
/* 802AFC08  38 03 00 10 */	addi r0, r3, 0x10
/* 802AFC0C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC10  41 82 00 98 */	beq lbl_802AFCA8
/* 802AFC14  40 80 00 24 */	bge lbl_802AFC38
/* 802AFC18  38 03 00 03 */	addi r0, r3, 3
/* 802AFC1C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC20  41 82 00 E4 */	beq lbl_802AFD04
/* 802AFC24  41 80 01 50 */	blt lbl_802AFD74
/* 802AFC28  38 03 00 0F */	addi r0, r3, 0xf
/* 802AFC2C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC30  40 80 01 A4 */	bge lbl_802AFDD4
/* 802AFC34  48 00 01 40 */	b lbl_802AFD74
lbl_802AFC38:
/* 802AFC38  38 03 00 23 */	addi r0, r3, 0x23
/* 802AFC3C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC40  41 82 00 98 */	beq lbl_802AFCD8
/* 802AFC44  40 80 01 30 */	bge lbl_802AFD74
/* 802AFC48  38 03 00 14 */	addi r0, r3, 0x14
/* 802AFC4C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC50  41 82 00 78 */	beq lbl_802AFCC8
/* 802AFC54  48 00 01 20 */	b lbl_802AFD74
lbl_802AFC58:
/* 802AFC58  38 03 00 5C */	addi r0, r3, 0x5c
/* 802AFC5C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC60  41 82 01 00 */	beq lbl_802AFD60
/* 802AFC64  40 80 00 24 */	bge lbl_802AFC88
/* 802AFC68  38 03 00 47 */	addi r0, r3, 0x47
/* 802AFC6C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC70  41 82 00 94 */	beq lbl_802AFD04
/* 802AFC74  40 80 01 00 */	bge lbl_802AFD74
/* 802AFC78  38 03 00 3F */	addi r0, r3, 0x3f
/* 802AFC7C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC80  41 82 00 E0 */	beq lbl_802AFD60
/* 802AFC84  48 00 00 F0 */	b lbl_802AFD74
lbl_802AFC88:
/* 802AFC88  38 03 00 7C */	addi r0, r3, 0x7c
/* 802AFC8C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFC90  41 82 00 90 */	beq lbl_802AFD20
/* 802AFC94  40 80 00 E0 */	bge lbl_802AFD74
/* 802AFC98  38 03 00 5F */	addi r0, r3, 0x5f
/* 802AFC9C  7C 1E 00 00 */	cmpw r30, r0
/* 802AFCA0  41 82 00 64 */	beq lbl_802AFD04
/* 802AFCA4  48 00 00 D0 */	b lbl_802AFD74
lbl_802AFCA8:
/* 802AFCA8  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AFCAC  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 802AFCB0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AFCB4  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 802AFCB8  38 00 00 00 */	li r0, 0
/* 802AFCBC  90 1F 00 80 */	stw r0, 0x80(r31)
/* 802AFCC0  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 802AFCC4  48 00 01 10 */	b lbl_802AFDD4
lbl_802AFCC8:
/* 802AFCC8  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AFCCC  38 80 00 01 */	li r4, 1
/* 802AFCD0  48 00 6C 11 */	bl setSceneExist__10Z2SceneMgrFb
/* 802AFCD4  48 00 01 00 */	b lbl_802AFDD4
lbl_802AFCD8:
/* 802AFCD8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AFCDC  28 03 00 00 */	cmplwi r3, 0
/* 802AFCE0  41 82 00 F4 */	beq lbl_802AFDD4
/* 802AFCE4  88 8D 82 E2 */	lbz r4, struct_80450860+0x2(r13)
/* 802AFCE8  4B FF 27 F5 */	bl stop__8JAISoundFUl
/* 802AFCEC  48 00 00 E8 */	b lbl_802AFDD4
lbl_802AFCF0:
/* 802AFCF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AFCF4  28 03 00 00 */	cmplwi r3, 0
/* 802AFCF8  41 82 00 0C */	beq lbl_802AFD04
/* 802AFCFC  38 80 00 00 */	li r4, 0
/* 802AFD00  4B FF 27 DD */	bl stop__8JAISoundFUl
lbl_802AFD04:
/* 802AFD04  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AFD08  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 802AFD0C  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802AFD10  38 00 00 00 */	li r0, 0
/* 802AFD14  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802AFD18  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 802AFD1C  48 00 00 B8 */	b lbl_802AFDD4
lbl_802AFD20:
/* 802AFD20  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 802AFD24  38 00 00 2D */	li r0, 0x2d
/* 802AFD28  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802AFD2C  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802AFD30  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AFD34  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802AFD38  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AFD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AFD40  3C 00 43 30 */	lis r0, 0x4330
/* 802AFD44  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AFD48  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802AFD4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AFD50  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AFD54  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802AFD58  D0 7F 00 6C */	stfs f3, 0x6c(r31)
/* 802AFD5C  48 00 00 78 */	b lbl_802AFDD4
lbl_802AFD60:
/* 802AFD60  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AFD64  3C 80 80 3A */	lis r4, Z2SeqMgr__stringBase0@ha /* 0x8039BA08@ha */
/* 802AFD68  38 84 BA 08 */	addi r4, r4, Z2SeqMgr__stringBase0@l /* 0x8039BA08@l */
/* 802AFD6C  38 84 02 6A */	addi r4, r4, 0x26a
/* 802AFD70  48 00 64 79 */	bl setDemoName__11Z2StatusMgrFPc
lbl_802AFD74:
/* 802AFD74  88 0D 82 E2 */	lbz r0, struct_80450860+0x2(r13)
/* 802AFD78  28 00 00 00 */	cmplwi r0, 0
/* 802AFD7C  41 82 00 40 */	beq lbl_802AFDBC
/* 802AFD80  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 802AFD84  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802AFD88  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802AFD8C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AFD90  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 802AFD94  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AFD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AFD9C  3C 00 43 30 */	lis r0, 0x4330
/* 802AFDA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AFDA4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802AFDA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AFDAC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AFDB0  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802AFDB4  D0 7F 00 6C */	stfs f3, 0x6c(r31)
/* 802AFDB8  48 00 00 1C */	b lbl_802AFDD4
lbl_802AFDBC:
/* 802AFDBC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AFDC0  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 802AFDC4  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 802AFDC8  38 00 00 00 */	li r0, 0
/* 802AFDCC  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802AFDD0  D0 1F 00 6C */	stfs f0, 0x6c(r31)
lbl_802AFDD4:
/* 802AFDD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AFDD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AFDDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AFDE0  7C 08 03 A6 */	mtlr r0
/* 802AFDE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802AFDE8  4E 80 00 20 */	blr 
