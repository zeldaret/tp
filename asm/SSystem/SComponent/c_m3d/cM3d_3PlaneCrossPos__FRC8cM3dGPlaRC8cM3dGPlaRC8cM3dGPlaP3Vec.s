lbl_8026E8A0:
/* 8026E8A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8026E8A4  7C 08 02 A6 */	mflr r0
/* 8026E8A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8026E8AC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8026E8B0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8026E8B4  39 61 00 40 */	addi r11, r1, 0x40
/* 8026E8B8  48 0F 39 25 */	bl _savegpr_29
/* 8026E8BC  7C BD 2B 78 */	mr r29, r5
/* 8026E8C0  7C DE 33 78 */	mr r30, r6
/* 8026E8C4  3C A0 80 3A */	lis r5, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E8C8  38 05 78 F8 */	addi r0, r5, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E8CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E8D0  38 A1 00 08 */	addi r5, r1, 8
/* 8026E8D4  4B FF FE 1D */	bl cM3d_2PlaneCrossLine__FRC8cM3dGPlaRC8cM3dGPlaP8cM3dGLin
/* 8026E8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8026E8DC  40 82 00 18 */	bne lbl_8026E8F4
/* 8026E8E0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E8E4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E8E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E8EC  38 60 00 00 */	li r3, 0
/* 8026E8F0  48 00 00 70 */	b lbl_8026E960
lbl_8026E8F4:
/* 8026E8F4  3B E1 00 14 */	addi r31, r1, 0x14
/* 8026E8F8  7F A3 EB 78 */	mr r3, r29
/* 8026E8FC  38 81 00 08 */	addi r4, r1, 8
/* 8026E900  48 0D 88 95 */	bl PSVECDotProduct
/* 8026E904  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026E908  EF E0 08 2A */	fadds f31, f0, f1
/* 8026E90C  7F A3 EB 78 */	mr r3, r29
/* 8026E910  7F E4 FB 78 */	mr r4, r31
/* 8026E914  48 0D 88 81 */	bl PSVECDotProduct
/* 8026E918  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026E91C  EC 40 08 2A */	fadds f2, f0, f1
/* 8026E920  FC 20 F8 90 */	fmr f1, f31
/* 8026E924  38 61 00 08 */	addi r3, r1, 8
/* 8026E928  7F E4 FB 78 */	mr r4, r31
/* 8026E92C  7F C5 F3 78 */	mr r5, r30
/* 8026E930  4B FF A5 A5 */	bl cM3d_CrossInfLineVsInfPlane_proc__FffPC3VecPC3VecP3Vec
/* 8026E934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E938  40 82 00 18 */	bne lbl_8026E950
/* 8026E93C  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E940  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E944  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E948  38 60 00 00 */	li r3, 0
/* 8026E94C  48 00 00 14 */	b lbl_8026E960
lbl_8026E950:
/* 8026E950  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E954  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E958  90 01 00 20 */	stw r0, 0x20(r1)
/* 8026E95C  38 60 00 01 */	li r3, 1
lbl_8026E960:
/* 8026E960  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8026E964  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8026E968  39 61 00 40 */	addi r11, r1, 0x40
/* 8026E96C  48 0F 38 BD */	bl _restgpr_29
/* 8026E970  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8026E974  7C 08 03 A6 */	mtlr r0
/* 8026E978  38 21 00 50 */	addi r1, r1, 0x50
/* 8026E97C  4E 80 00 20 */	blr 
