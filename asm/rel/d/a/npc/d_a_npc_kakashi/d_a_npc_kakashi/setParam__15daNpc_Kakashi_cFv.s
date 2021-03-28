lbl_8054BEA8:
/* 8054BEA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054BEAC  7C 08 02 A6 */	mflr r0
/* 8054BEB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054BEB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054BEB8  7C 7F 1B 78 */	mr r31, r3
/* 8054BEBC  48 00 0A 71 */	bl selectAction__15daNpc_Kakashi_cFv
/* 8054BEC0  7F E3 FB 78 */	mr r3, r31
/* 8054BEC4  48 00 00 C5 */	bl srchActors__15daNpc_Kakashi_cFv
/* 8054BEC8  38 00 00 03 */	li r0, 3
/* 8054BECC  98 1F 05 44 */	stb r0, 0x544(r31)
/* 8054BED0  38 60 00 01 */	li r3, 1
/* 8054BED4  88 1F 13 48 */	lbz r0, 0x1348(r31)
/* 8054BED8  28 00 00 04 */	cmplwi r0, 4
/* 8054BEDC  40 82 00 14 */	bne lbl_8054BEF0
/* 8054BEE0  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8054BEE4  2C 00 00 02 */	cmpwi r0, 2
/* 8054BEE8  40 80 00 08 */	bge lbl_8054BEF0
/* 8054BEEC  38 60 00 00 */	li r3, 0
lbl_8054BEF0:
/* 8054BEF0  90 7F 05 5C */	stw r3, 0x55c(r31)
/* 8054BEF4  3C 60 80 55 */	lis r3, m__21daNpc_Kakashi_Param_c@ha
/* 8054BEF8  38 63 EA C4 */	addi r3, r3, m__21daNpc_Kakashi_Param_c@l
/* 8054BEFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8054BF00  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8054BF04  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8054BF08  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8054BF0C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8054BF10  FC 00 00 1E */	fctiwz f0, f0
/* 8054BF14  D8 01 00 08 */	stfd f0, 8(r1)
/* 8054BF18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8054BF1C  98 1F 08 78 */	stb r0, 0x878(r31)
/* 8054BF20  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8054BF24  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 8054BF28  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8054BF2C  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 8054BF30  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8054BF34  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 8054BF38  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8054BF3C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 8054BF40  4B B2 A0 00 */	b SetWallR__12dBgS_AcchCirFf
/* 8054BF44  3C 60 80 55 */	lis r3, m__21daNpc_Kakashi_Param_c@ha
/* 8054BF48  38 63 EA C4 */	addi r3, r3, m__21daNpc_Kakashi_Param_c@l
/* 8054BF4C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8054BF50  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 8054BF54  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8054BF58  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 8054BF5C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 8054BF60  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 8054BF64  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8054BF68  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 8054BF6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8054BF70  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8054BF74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054BF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BF7C  7C 08 03 A6 */	mtlr r0
/* 8054BF80  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BF84  4E 80 00 20 */	blr 
