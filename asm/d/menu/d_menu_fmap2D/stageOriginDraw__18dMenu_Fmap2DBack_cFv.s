lbl_801D3BBC:
/* 801D3BBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D3BC0  7C 08 02 A6 */	mflr r0
/* 801D3BC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D3BC8  39 61 00 30 */	addi r11, r1, 0x30
/* 801D3BCC  48 18 E6 0D */	bl _savegpr_28
/* 801D3BD0  7C 7C 1B 78 */	mr r28, r3
/* 801D3BD4  80 63 0D 88 */	lwz r3, 0xd88(r3)
/* 801D3BD8  28 03 00 00 */	cmplwi r3, 0
/* 801D3BDC  41 82 00 C4 */	beq lbl_801D3CA0
/* 801D3BE0  3B C3 00 04 */	addi r30, r3, 4
/* 801D3BE4  3B A0 00 00 */	li r29, 0
/* 801D3BE8  3B E0 00 00 */	li r31, 0
/* 801D3BEC  48 00 00 A8 */	b lbl_801D3C94
lbl_801D3BF0:
/* 801D3BF0  88 BC 12 27 */	lbz r5, 0x1227(r28)
/* 801D3BF4  38 65 00 01 */	addi r3, r5, 1
/* 801D3BF8  7C 9E FA 14 */	add r4, r30, r31
/* 801D3BFC  88 04 00 09 */	lbz r0, 9(r4)
/* 801D3C00  7C 03 00 00 */	cmpw r3, r0
/* 801D3C04  40 82 00 88 */	bne lbl_801D3C8C
/* 801D3C08  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 801D3C0C  7C BC 02 14 */	add r5, r28, r0
/* 801D3C10  7F 83 E3 78 */	mr r3, r28
/* 801D3C14  C0 25 10 04 */	lfs f1, 0x1004(r5)
/* 801D3C18  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801D3C1C  EC 21 00 2A */	fadds f1, f1, f0
/* 801D3C20  C0 1C 0F C8 */	lfs f0, 0xfc8(r28)
/* 801D3C24  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D3C28  C0 45 10 24 */	lfs f2, 0x1024(r5)
/* 801D3C2C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801D3C30  EC 42 00 2A */	fadds f2, f2, f0
/* 801D3C34  C0 1C 0F CC */	lfs f0, 0xfcc(r28)
/* 801D3C38  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D3C3C  38 81 00 14 */	addi r4, r1, 0x14
/* 801D3C40  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D3C44  4B FF D0 D5 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3C48  38 00 00 00 */	li r0, 0
/* 801D3C4C  98 01 00 08 */	stb r0, 8(r1)
/* 801D3C50  98 01 00 09 */	stb r0, 9(r1)
/* 801D3C54  38 00 00 FF */	li r0, 0xff
/* 801D3C58  98 01 00 0A */	stb r0, 0xa(r1)
/* 801D3C5C  98 01 00 0B */	stb r0, 0xb(r1)
/* 801D3C60  80 01 00 08 */	lwz r0, 8(r1)
/* 801D3C64  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D3C68  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801D3C6C  C0 42 A7 F0 */	lfs f2, lit_4204(r2)
/* 801D3C70  EC 20 10 28 */	fsubs f1, f0, f2
/* 801D3C74  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D3C78  EC 40 10 28 */	fsubs f2, f0, f2
/* 801D3C7C  C0 62 A7 F4 */	lfs f3, lit_4205(r2)
/* 801D3C80  FC 80 18 90 */	fmr f4, f3
/* 801D3C84  38 61 00 0C */	addi r3, r1, 0xc
/* 801D3C88  48 11 5E 3D */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_801D3C8C:
/* 801D3C8C  3B BD 00 01 */	addi r29, r29, 1
/* 801D3C90  3B FF 00 14 */	addi r31, r31, 0x14
lbl_801D3C94:
/* 801D3C94  88 1C 12 25 */	lbz r0, 0x1225(r28)
/* 801D3C98  7C 1D 00 00 */	cmpw r29, r0
/* 801D3C9C  41 80 FF 54 */	blt lbl_801D3BF0
lbl_801D3CA0:
/* 801D3CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 801D3CA4  48 18 E5 81 */	bl _restgpr_28
/* 801D3CA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D3CAC  7C 08 03 A6 */	mtlr r0
/* 801D3CB0  38 21 00 30 */	addi r1, r1, 0x30
/* 801D3CB4  4E 80 00 20 */	blr 
