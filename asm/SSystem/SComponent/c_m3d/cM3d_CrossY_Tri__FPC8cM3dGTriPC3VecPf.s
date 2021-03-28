lbl_8026A8C0:
/* 8026A8C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026A8C4  7C 08 02 A6 */	mflr r0
/* 8026A8C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026A8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8026A8D0  48 0F 79 0D */	bl _savegpr_29
/* 8026A8D4  7C 7D 1B 78 */	mr r29, r3
/* 8026A8D8  7C 9E 23 78 */	mr r30, r4
/* 8026A8DC  7C BF 2B 78 */	mr r31, r5
/* 8026A8E0  4B FF FA 05 */	bl cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vec
/* 8026A8E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A8E8  41 82 00 40 */	beq lbl_8026A928
/* 8026A8EC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8026A8F0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026A8F4  FC 00 00 50 */	fneg f0, f0
/* 8026A8F8  EC 41 00 32 */	fmuls f2, f1, f0
/* 8026A8FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8026A900  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026A904  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026A908  EC 22 00 28 */	fsubs f1, f2, f0
/* 8026A90C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026A910  EC 21 00 28 */	fsubs f1, f1, f0
/* 8026A914  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026A918  EC 01 00 24 */	fdivs f0, f1, f0
/* 8026A91C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026A920  38 60 00 01 */	li r3, 1
/* 8026A924  48 00 00 08 */	b lbl_8026A92C
lbl_8026A928:
/* 8026A928  38 60 00 00 */	li r3, 0
lbl_8026A92C:
/* 8026A92C  39 61 00 20 */	addi r11, r1, 0x20
/* 8026A930  48 0F 78 F9 */	bl _restgpr_29
/* 8026A934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026A938  7C 08 03 A6 */	mtlr r0
/* 8026A93C  38 21 00 20 */	addi r1, r1, 0x20
/* 8026A940  4E 80 00 20 */	blr 
