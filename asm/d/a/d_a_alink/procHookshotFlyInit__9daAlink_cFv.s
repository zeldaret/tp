lbl_8010BD90:
/* 8010BD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010BD94  7C 08 02 A6 */	mflr r0
/* 8010BD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010BD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010BDA0  7C 7F 1B 78 */	mr r31, r3
/* 8010BDA4  38 80 00 C6 */	li r4, 0xc6
/* 8010BDA8  4B FB 61 C5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010BDAC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8010BDB0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8010BDB4  40 82 00 10 */	bne lbl_8010BDC4
/* 8010BDB8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8010BDBC  64 00 00 80 */	oris r0, r0, 0x80
/* 8010BDC0  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_8010BDC4:
/* 8010BDC4  7F E3 FB 78 */	mr r3, r31
/* 8010BDC8  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 8010BDCC  2C 00 00 00 */	cmpwi r0, 0
/* 8010BDD0  38 80 01 2A */	li r4, 0x12a
/* 8010BDD4  40 82 00 08 */	bne lbl_8010BDDC
/* 8010BDD8  38 80 01 29 */	li r4, 0x129
lbl_8010BDDC:
/* 8010BDDC  4B FA 11 A5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8010BDE0  38 00 00 00 */	li r0, 0
/* 8010BDE4  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 8010BDE8  7F E3 FB 78 */	mr r3, r31
/* 8010BDEC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010BDF0  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8010BDF4  38 80 00 00 */	li r4, 0
/* 8010BDF8  4B FA F9 79 */	bl setSpecialGravity__9daAlink_cFffi
/* 8010BDFC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010BE00  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8010BE04  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8010BE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010BE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010BE10  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010BE14  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8010BE18  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010BE1C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010BE20  60 00 00 10 */	ori r0, r0, 0x10
/* 8010BE24  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010BE28  7F E3 FB 78 */	mr r3, r31
/* 8010BE2C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010006@ha */
/* 8010BE30  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00010006@l */
/* 8010BE34  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8010BE38  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010BE3C  7D 89 03 A6 */	mtctr r12
/* 8010BE40  4E 80 04 21 */	bctrl 
/* 8010BE44  C0 1F 37 98 */	lfs f0, 0x3798(r31)
/* 8010BE48  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8010BE4C  C0 1F 37 9C */	lfs f0, 0x379c(r31)
/* 8010BE50  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 8010BE54  C0 1F 37 A0 */	lfs f0, 0x37a0(r31)
/* 8010BE58  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 8010BE5C  C0 1F 38 34 */	lfs f0, 0x3834(r31)
/* 8010BE60  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8010BE64  C0 1F 38 38 */	lfs f0, 0x3838(r31)
/* 8010BE68  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8010BE6C  C0 1F 38 3C */	lfs f0, 0x383c(r31)
/* 8010BE70  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8010BE74  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8010BE78  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 8010BE7C  D0 1F 37 D4 */	stfs f0, 0x37d4(r31)
/* 8010BE80  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010BE84  D0 1F 37 D8 */	stfs f0, 0x37d8(r31)
/* 8010BE88  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010BE8C  D0 1F 37 DC */	stfs f0, 0x37dc(r31)
/* 8010BE90  A8 1F 30 1C */	lha r0, 0x301c(r31)
/* 8010BE94  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8010BE98  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 8010BE9C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8010BEA0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010BEA4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8010BEA8  38 00 00 01 */	li r0, 1
/* 8010BEAC  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8010BEB0  38 00 00 04 */	li r0, 4
/* 8010BEB4  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 8010BEB8  38 00 00 50 */	li r0, 0x50
/* 8010BEBC  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8010BEC0  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010BEC4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010BEC8  38 00 00 00 */	li r0, 0
/* 8010BECC  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8010BED0  7F E3 FB 78 */	mr r3, r31
/* 8010BED4  48 00 00 1D */	bl procHookshotFly__9daAlink_cFv
/* 8010BED8  38 60 00 01 */	li r3, 1
/* 8010BEDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010BEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010BEE4  7C 08 03 A6 */	mtlr r0
/* 8010BEE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8010BEEC  4E 80 00 20 */	blr 
