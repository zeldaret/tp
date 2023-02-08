lbl_80CAF3F8:
/* 80CAF3F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAF3FC  7C 08 02 A6 */	mflr r0
/* 80CAF400  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAF404  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAF408  4B 6B 2D D1 */	bl _savegpr_28
/* 80CAF40C  7C BC 2B 78 */	mr r28, r5
/* 80CAF410  3C 60 80 CB */	lis r3, l_bmd@ha /* 0x80CB09D4@ha */
/* 80CAF414  3B E3 09 D4 */	addi r31, r3, l_bmd@l /* 0x80CB09D4@l */
/* 80CAF418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAF41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAF420  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 80CAF424  88 04 07 32 */	lbz r0, 0x732(r4)
/* 80CAF428  28 00 00 00 */	cmplwi r0, 0
/* 80CAF42C  41 82 00 70 */	beq lbl_80CAF49C
/* 80CAF430  A8 1C 00 08 */	lha r0, 8(r28)
/* 80CAF434  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80CAF438  40 82 00 64 */	bne lbl_80CAF49C
/* 80CAF43C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80CAF440  4B 5B 85 15 */	bl cM_rndF__Ff
/* 80CAF444  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80CAF448  EC 00 08 2A */	fadds f0, f0, f1
/* 80CAF44C  FC 00 00 1E */	fctiwz f0, f0
/* 80CAF450  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CAF454  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80CAF458  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80CAF45C  4B 5B 85 31 */	bl cM_rndFX__Ff
/* 80CAF460  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80CAF464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAF468  40 80 00 0C */	bge lbl_80CAF474
/* 80CAF46C  7C 1D 00 D0 */	neg r0, r29
/* 80CAF470  7C 1D 07 34 */	extsh r29, r0
lbl_80CAF474:
/* 80CAF474  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80CAF478  7C 60 EA 14 */	add r3, r0, r29
/* 80CAF47C  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80CAF480  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80CAF484  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CAF488  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80CAF48C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80CAF490  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80CAF494  38 00 00 03 */	li r0, 3
/* 80CAF498  98 1C 0C F2 */	stb r0, 0xcf2(r28)
lbl_80CAF49C:
/* 80CAF49C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAF4A0  4B 6B 2D 85 */	bl _restgpr_28
/* 80CAF4A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAF4A8  7C 08 03 A6 */	mtlr r0
/* 80CAF4AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAF4B0  4E 80 00 20 */	blr 
