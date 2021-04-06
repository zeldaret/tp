lbl_800FBBC8:
/* 800FBBC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FBBCC  7C 08 02 A6 */	mflr r0
/* 800FBBD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FBBD4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800FBBD8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800FBBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FBBE0  93 C1 00 08 */	stw r30, 8(r1)
/* 800FBBE4  7C 7E 1B 78 */	mr r30, r3
/* 800FBBE8  FF E0 08 90 */	fmr f31, f1
/* 800FBBEC  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800FBBF0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBBF4  40 82 00 10 */	bne lbl_800FBC04
/* 800FBBF8  80 1E 31 74 */	lwz r0, 0x3174(r30)
/* 800FBBFC  2C 00 00 06 */	cmpwi r0, 6
/* 800FBC00  40 82 00 0C */	bne lbl_800FBC0C
lbl_800FBC04:
/* 800FBC04  38 60 00 00 */	li r3, 0
/* 800FBC08  48 00 00 AC */	b lbl_800FBCB4
lbl_800FBC0C:
/* 800FBC0C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800FBC10  20 00 00 5B */	subfic r0, r0, 0x5b
/* 800FBC14  7C 00 00 34 */	cntlzw r0, r0
/* 800FBC18  54 1F DE 3E */	rlwinm r31, r0, 0x1b, 0x18, 0x1f
/* 800FBC1C  38 80 00 5A */	li r4, 0x5a
/* 800FBC20  4B FC 63 4D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FBC24  7F C3 F3 78 */	mr r3, r30
/* 800FBC28  38 80 00 94 */	li r4, 0x94
/* 800FBC2C  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wallCatch_c0@ha /* 0x8038E164@ha */
/* 800FBC30  38 C5 E1 64 */	addi r6, r5, m__23daAlinkHIO_wallCatch_c0@l /* 0x8038E164@l */
/* 800FBC34  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 800FBC38  FC 40 F8 90 */	fmr f2, f31
/* 800FBC3C  A8 A6 00 28 */	lha r5, 0x28(r6)
/* 800FBC40  C0 66 00 34 */	lfs f3, 0x34(r6)
/* 800FBC44  4B FB 13 C9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800FBC48  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 800FBC4C  48 06 2F 45 */	bl checkBowItem__9daPy_py_cFi
/* 800FBC50  2C 03 00 00 */	cmpwi r3, 0
/* 800FBC54  41 82 00 0C */	beq lbl_800FBC60
/* 800FBC58  C0 1E 1F E0 */	lfs f0, 0x1fe0(r30)
/* 800FBC5C  D0 1E 33 DC */	stfs f0, 0x33dc(r30)
lbl_800FBC60:
/* 800FBC60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FBC64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FBC68  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FBC6C  60 00 02 00 */	ori r0, r0, 0x200
/* 800FBC70  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FBC74  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FBC78  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800FBC7C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FBC80  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800FBC84  2C 1F 00 00 */	cmpwi r31, 0
/* 800FBC88  40 82 00 20 */	bne lbl_800FBCA8
/* 800FBC8C  7F C3 F3 78 */	mr r3, r30
/* 800FBC90  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010018@ha */
/* 800FBC94  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00010018@l */
/* 800FBC98  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800FBC9C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FBCA0  7D 89 03 A6 */	mtctr r12
/* 800FBCA4  4E 80 04 21 */	bctrl 
lbl_800FBCA8:
/* 800FBCA8  7F C3 F3 78 */	mr r3, r30
/* 800FBCAC  4B FF EA 39 */	bl setHangGroundY__9daAlink_cFv
/* 800FBCB0  38 60 00 01 */	li r3, 1
lbl_800FBCB4:
/* 800FBCB4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800FBCB8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800FBCBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FBCC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FBCC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FBCC8  7C 08 03 A6 */	mtlr r0
/* 800FBCCC  38 21 00 20 */	addi r1, r1, 0x20
/* 800FBCD0  4E 80 00 20 */	blr 
