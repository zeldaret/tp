lbl_80D47B20:
/* 80D47B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D47B24  7C 08 02 A6 */	mflr r0
/* 80D47B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D47B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D47B30  7C 7F 1B 78 */	mr r31, r3
/* 80D47B34  48 00 01 79 */	bl srchActors__8daPeru_cFv
/* 80D47B38  38 00 00 0A */	li r0, 0xa
/* 80D47B3C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D47B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D47B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D47B48  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D47B4C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D47B50  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D47B54  40 82 00 10 */	bne lbl_80D47B64
/* 80D47B58  3C 60 20 00 */	lis r3, 0x2000 /* 0x2000000A@ha */
/* 80D47B5C  38 03 00 0A */	addi r0, r3, 0x000A /* 0x2000000A@l */
/* 80D47B60  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80D47B64:
/* 80D47B64  88 1F 11 28 */	lbz r0, 0x1128(r31)
/* 80D47B68  28 00 00 00 */	cmplwi r0, 0
/* 80D47B6C  40 82 00 1C */	bne lbl_80D47B88
/* 80D47B70  38 60 01 27 */	li r3, 0x127
/* 80D47B74  4B 40 4F 38 */	b daNpcT_chkEvtBit__FUl
/* 80D47B78  2C 03 00 00 */	cmpwi r3, 0
/* 80D47B7C  40 82 00 0C */	bne lbl_80D47B88
/* 80D47B80  38 00 00 00 */	li r0, 0
/* 80D47B84  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80D47B88:
/* 80D47B88  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D47B8C  38 83 C0 60 */	addi r4, r3, m__14daPeru_Param_c@l
/* 80D47B90  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80D47B94  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80D47B98  4B 40 4E 80 */	b daNpcT_getDistTableIdx__Fii
/* 80D47B9C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80D47BA0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80D47BA4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D47BA8  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D47BAC  38 83 C0 60 */	addi r4, r3, m__14daPeru_Param_c@l
/* 80D47BB0  A8 64 00 48 */	lha r3, 0x48(r4)
/* 80D47BB4  A8 84 00 4A */	lha r4, 0x4a(r4)
/* 80D47BB8  4B 40 4E 60 */	b daNpcT_getDistTableIdx__Fii
/* 80D47BBC  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80D47BC0  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D47BC4  38 63 C0 60 */	addi r3, r3, m__14daPeru_Param_c@l
/* 80D47BC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D47BCC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80D47BD0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80D47BD4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80D47BD8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D47BDC  FC 00 00 1E */	fctiwz f0, f0
/* 80D47BE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D47BE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D47BE8  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80D47BEC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80D47BF0  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80D47BF4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D47BF8  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80D47BFC  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80D47C00  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80D47C04  4B 32 E3 3C */	b SetWallR__12dBgS_AcchCirFf
/* 80D47C08  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D47C0C  38 63 C0 60 */	addi r3, r3, m__14daPeru_Param_c@l
/* 80D47C10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D47C14  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80D47C18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D47C1C  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80D47C20  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D47C24  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80D47C28  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80D47C2C  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80D47C30  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80D47C34  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80D47C38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D47C3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D47C40  7C 08 03 A6 */	mtlr r0
/* 80D47C44  38 21 00 20 */	addi r1, r1, 0x20
/* 80D47C48  4E 80 00 20 */	blr 
