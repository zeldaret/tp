lbl_804CA3B8:
/* 804CA3B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CA3BC  7C 08 02 A6 */	mflr r0
/* 804CA3C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CA3C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CA3C8  7C 7F 1B 78 */	mr r31, r3
/* 804CA3CC  38 7F 0C 38 */	addi r3, r31, 0xc38
/* 804CA3D0  3C 80 80 4D */	lis r4, lit_5921@ha
/* 804CA3D4  38 84 C5 6C */	addi r4, r4, lit_5921@l
/* 804CA3D8  4B E9 7C 70 */	b __ptmf_cmpr
/* 804CA3DC  2C 03 00 00 */	cmpwi r3, 0
/* 804CA3E0  40 82 00 0C */	bne lbl_804CA3EC
/* 804CA3E4  38 60 00 00 */	li r3, 0
/* 804CA3E8  48 00 00 E4 */	b lbl_804CA4CC
lbl_804CA3EC:
/* 804CA3EC  3C 60 80 4D */	lis r3, lit_5924@ha
/* 804CA3F0  38 83 C5 78 */	addi r4, r3, lit_5924@l
/* 804CA3F4  80 64 00 00 */	lwz r3, 0(r4)
/* 804CA3F8  80 04 00 04 */	lwz r0, 4(r4)
/* 804CA3FC  90 7F 0C 38 */	stw r3, 0xc38(r31)
/* 804CA400  90 1F 0C 3C */	stw r0, 0xc3c(r31)
/* 804CA404  80 04 00 08 */	lwz r0, 8(r4)
/* 804CA408  90 1F 0C 40 */	stw r0, 0xc40(r31)
/* 804CA40C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CA410  28 00 00 04 */	cmplwi r0, 4
/* 804CA414  41 82 00 0C */	beq lbl_804CA420
/* 804CA418  28 00 00 0C */	cmplwi r0, 0xc
/* 804CA41C  40 82 00 10 */	bne lbl_804CA42C
lbl_804CA420:
/* 804CA420  38 00 00 06 */	li r0, 6
/* 804CA424  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804CA428  48 00 00 0C */	b lbl_804CA434
lbl_804CA42C:
/* 804CA42C  38 00 00 05 */	li r0, 5
/* 804CA430  90 1F 00 B0 */	stw r0, 0xb0(r31)
lbl_804CA434:
/* 804CA434  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 804CA438  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804CA43C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804CA440  38 00 00 1E */	li r0, 0x1e
/* 804CA444  98 1F 07 A4 */	stb r0, 0x7a4(r31)
/* 804CA448  80 1F 07 F8 */	lwz r0, 0x7f8(r31)
/* 804CA44C  60 00 00 01 */	ori r0, r0, 1
/* 804CA450  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 804CA454  3C 60 80 4C */	lis r3, daNbomb_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 804CA458  38 03 6E 10 */	addi r0, r3, daNbomb_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 804CA45C  90 1F 08 BC */	stw r0, 0x8bc(r31)
/* 804CA460  3C 60 80 4D */	lis r3, lit_4255@ha
/* 804CA464  C0 03 C3 80 */	lfs f0, lit_4255@l(r3)
/* 804CA468  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804CA46C  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 804CA470  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804CA474  4B C9 41 3C */	b initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 804CA478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CA47C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CA480  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804CA484  4B C1 92 DC */	b getBombExplodeTime__9daAlink_cCFv
/* 804CA488  7C 60 07 34 */	extsh r0, r3
/* 804CA48C  3C 60 80 4D */	lis r3, lit_4689@ha
/* 804CA490  C8 23 C3 D8 */	lfd f1, lit_4689@l(r3)
/* 804CA494  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CA498  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CA49C  3C 00 43 30 */	lis r0, 0x4330
/* 804CA4A0  90 01 00 08 */	stw r0, 8(r1)
/* 804CA4A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CA4A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CA4AC  3C 60 80 4D */	lis r3, lit_5021@ha
/* 804CA4B0  C0 03 C3 E0 */	lfs f0, lit_5021@l(r3)
/* 804CA4B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804CA4B8  FC 00 00 1E */	fctiwz f0, f0
/* 804CA4BC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CA4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CA4C4  B0 1F 0B 58 */	sth r0, 0xb58(r31)
/* 804CA4C8  38 60 00 01 */	li r3, 1
lbl_804CA4CC:
/* 804CA4CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CA4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CA4D4  7C 08 03 A6 */	mtlr r0
/* 804CA4D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804CA4DC  4E 80 00 20 */	blr 
