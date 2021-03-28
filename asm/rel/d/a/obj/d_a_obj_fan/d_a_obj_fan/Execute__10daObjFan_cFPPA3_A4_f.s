lbl_80BE519C:
/* 80BE519C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE51A0  7C 08 02 A6 */	mflr r0
/* 80BE51A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE51A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BE51AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BE51B0  7C 7E 1B 78 */	mr r30, r3
/* 80BE51B4  7C 9F 23 78 */	mr r31, r4
/* 80BE51B8  4B FF FB E1 */	bl search_tornado__10daObjFan_cFv
/* 80BE51BC  88 BE 0A D4 */	lbz r5, 0xad4(r30)
/* 80BE51C0  28 05 00 00 */	cmplwi r5, 0
/* 80BE51C4  41 82 01 1C */	beq lbl_80BE52E0
/* 80BE51C8  A8 1E 0A CC */	lha r0, 0xacc(r30)
/* 80BE51CC  3C 60 80 BE */	lis r3, lit_3815@ha
/* 80BE51D0  C8 63 5E 38 */	lfd f3, lit_3815@l(r3)
/* 80BE51D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE51D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE51DC  3C 80 43 30 */	lis r4, 0x4330
/* 80BE51E0  90 81 00 08 */	stw r4, 8(r1)
/* 80BE51E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BE51E8  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BE51EC  3C 60 80 BE */	lis r3, lit_3813@ha
/* 80BE51F0  C0 23 5E 34 */	lfs f1, lit_3813@l(r3)
/* 80BE51F4  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 80BE51F8  3C 60 80 BE */	lis r3, l_max_rotspeed@ha
/* 80BE51FC  38 63 5D BC */	addi r3, r3, l_max_rotspeed@l
/* 80BE5200  7C 03 02 AE */	lhax r0, r3, r0
/* 80BE5204  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE5208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE520C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BE5210  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BE5214  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BE5218  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE521C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE5220  40 81 00 64 */	ble lbl_80BE5284
/* 80BE5224  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BE5228  28 03 00 00 */	cmplwi r3, 0
/* 80BE522C  41 82 00 28 */	beq lbl_80BE5254
/* 80BE5230  4B 68 2F A4 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BE5234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE5238  40 82 00 1C */	bne lbl_80BE5254
/* 80BE523C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE5240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE5244  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BE5248  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BE524C  7F C5 F3 78 */	mr r5, r30
/* 80BE5250  4B 48 F7 B8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80BE5254:
/* 80BE5254  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BE5258  28 03 00 00 */	cmplwi r3, 0
/* 80BE525C  41 82 00 84 */	beq lbl_80BE52E0
/* 80BE5260  4B 68 2F 74 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BE5264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE5268  41 82 00 78 */	beq lbl_80BE52E0
/* 80BE526C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE5270  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE5274  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BE5278  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80BE527C  4B 48 EF D4 */	b Release__4cBgSFP9dBgW_Base
/* 80BE5280  48 00 00 60 */	b lbl_80BE52E0
lbl_80BE5284:
/* 80BE5284  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BE5288  28 03 00 00 */	cmplwi r3, 0
/* 80BE528C  41 82 00 28 */	beq lbl_80BE52B4
/* 80BE5290  4B 68 2F 44 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BE5294  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE5298  40 82 00 1C */	bne lbl_80BE52B4
/* 80BE529C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE52A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE52A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BE52A8  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80BE52AC  7F C5 F3 78 */	mr r5, r30
/* 80BE52B0  4B 48 F7 58 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80BE52B4:
/* 80BE52B4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BE52B8  28 03 00 00 */	cmplwi r3, 0
/* 80BE52BC  41 82 00 24 */	beq lbl_80BE52E0
/* 80BE52C0  4B 68 2F 14 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BE52C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE52C8  41 82 00 18 */	beq lbl_80BE52E0
/* 80BE52CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE52D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE52D4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BE52D8  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BE52DC  4B 48 EF 74 */	b Release__4cBgSFP9dBgW_Base
lbl_80BE52E0:
/* 80BE52E0  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BE52E4  28 03 00 00 */	cmplwi r3, 0
/* 80BE52E8  41 82 00 08 */	beq lbl_80BE52F0
/* 80BE52EC  4B 49 66 D4 */	b Move__4dBgWFv
lbl_80BE52F0:
/* 80BE52F0  A8 1E 0A CC */	lha r0, 0xacc(r30)
/* 80BE52F4  3C 60 80 BE */	lis r3, lit_3815@ha
/* 80BE52F8  C8 63 5E 38 */	lfd f3, lit_3815@l(r3)
/* 80BE52FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE5300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5304  3C 80 43 30 */	lis r4, 0x4330
/* 80BE5308  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BE530C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BE5310  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BE5314  3C 60 80 BE */	lis r3, lit_3813@ha
/* 80BE5318  C0 23 5E 34 */	lfs f1, lit_3813@l(r3)
/* 80BE531C  88 1E 0A D4 */	lbz r0, 0xad4(r30)
/* 80BE5320  54 00 08 3C */	slwi r0, r0, 1
/* 80BE5324  3C 60 80 BE */	lis r3, l_max_rotspeed@ha
/* 80BE5328  38 63 5D BC */	addi r3, r3, l_max_rotspeed@l
/* 80BE532C  7C 03 02 AE */	lhax r0, r3, r0
/* 80BE5330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE5334  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE5338  90 81 00 08 */	stw r4, 8(r1)
/* 80BE533C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BE5340  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BE5344  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE5348  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE534C  40 81 00 0C */	ble lbl_80BE5358
/* 80BE5350  7F C3 F3 78 */	mr r3, r30
/* 80BE5354  48 00 04 E9 */	bl setCollision__10daObjFan_cFv
lbl_80BE5358:
/* 80BE5358  7F C3 F3 78 */	mr r3, r30
/* 80BE535C  48 00 00 31 */	bl action__10daObjFan_cFv
/* 80BE5360  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BE5364  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE5368  7F C3 F3 78 */	mr r3, r30
/* 80BE536C  4B FF FA D9 */	bl setBaseMtx__10daObjFan_cFv
/* 80BE5370  38 60 00 01 */	li r3, 1
/* 80BE5374  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BE5378  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BE537C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE5380  7C 08 03 A6 */	mtlr r0
/* 80BE5384  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE5388  4E 80 00 20 */	blr 
