lbl_8052B9CC:
/* 8052B9CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8052B9D0  7C 08 02 A6 */	mflr r0
/* 8052B9D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8052B9D8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8052B9DC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8052B9E0  39 61 00 80 */	addi r11, r1, 0x80
/* 8052B9E4  4B E3 67 F0 */	b _savegpr_27
/* 8052B9E8  7C 9C 23 78 */	mr r28, r4
/* 8052B9EC  3B 61 00 14 */	addi r27, r1, 0x14
/* 8052B9F0  7F 63 DB 78 */	mr r3, r27
/* 8052B9F4  4B B4 BB 88 */	b __ct__11dBgS_GndChkFv
/* 8052B9F8  3C 60 80 53 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8052B9FC  38 63 6B 3C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 8052BA00  90 61 00 24 */	stw r3, 0x24(r1)
/* 8052BA04  3B E3 00 0C */	addi r31, r3, 0xc
/* 8052BA08  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8052BA0C  3B C3 00 18 */	addi r30, r3, 0x18
/* 8052BA10  93 C1 00 50 */	stw r30, 0x50(r1)
/* 8052BA14  3B A3 00 24 */	addi r29, r3, 0x24
/* 8052BA18  93 A1 00 60 */	stw r29, 0x60(r1)
/* 8052BA1C  38 7B 00 3C */	addi r3, r27, 0x3c
/* 8052BA20  4B B4 D4 48 */	b SetObj__16dBgS_PolyPassChkFv
/* 8052BA24  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8052BA28  D0 01 00 08 */	stfs f0, 8(r1)
/* 8052BA2C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8052BA30  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052BA34  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8052BA38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8052BA3C  3C 60 80 53 */	lis r3, lit_4538@ha
/* 8052BA40  C0 03 61 DC */	lfs f0, lit_4538@l(r3)
/* 8052BA44  EC 01 00 2A */	fadds f0, f1, f0
/* 8052BA48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8052BA4C  7F 63 DB 78 */	mr r3, r27
/* 8052BA50  38 81 00 08 */	addi r4, r1, 8
/* 8052BA54  4B D3 C2 D4 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8052BA58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8052BA5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8052BA60  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8052BA64  7F 64 DB 78 */	mr r4, r27
/* 8052BA68  4B B4 8A 38 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8052BA6C  FF E0 08 90 */	fmr f31, f1
/* 8052BA70  3C 60 80 53 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8052BA74  38 03 6B 3C */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 8052BA78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052BA7C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8052BA80  93 C1 00 50 */	stw r30, 0x50(r1)
/* 8052BA84  93 A1 00 60 */	stw r29, 0x60(r1)
/* 8052BA88  7F 63 DB 78 */	mr r3, r27
/* 8052BA8C  38 80 00 00 */	li r4, 0
/* 8052BA90  4B B4 BB 60 */	b __dt__11dBgS_GndChkFv
/* 8052BA94  FC 20 F8 90 */	fmr f1, f31
/* 8052BA98  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8052BA9C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8052BAA0  39 61 00 80 */	addi r11, r1, 0x80
/* 8052BAA4  4B E3 67 7C */	b _restgpr_27
/* 8052BAA8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8052BAAC  7C 08 03 A6 */	mtlr r0
/* 8052BAB0  38 21 00 90 */	addi r1, r1, 0x90
/* 8052BAB4  4E 80 00 20 */	blr 
