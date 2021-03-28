lbl_8002AE6C:
/* 8002AE6C  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 8002AE70  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 8002AE74  90 03 00 00 */	stw r0, 0(r3)
/* 8002AE78  3C 80 80 3A */	lis r4, __vt__11dDrawPath_c@ha
/* 8002AE7C  38 04 7C F8 */	addi r0, r4, __vt__11dDrawPath_c@l
/* 8002AE80  90 03 00 00 */	stw r0, 0(r3)
/* 8002AE84  3C 80 80 3A */	lis r4, __vt__28dDrawPathWithNormalPattern_c@ha
/* 8002AE88  38 04 6F 94 */	addi r0, r4, __vt__28dDrawPathWithNormalPattern_c@l
/* 8002AE8C  90 03 00 00 */	stw r0, 0(r3)
/* 8002AE90  3C 80 80 3A */	lis r4, __vt__15dRenderingMap_c@ha
/* 8002AE94  38 04 6F D4 */	addi r0, r4, __vt__15dRenderingMap_c@l
/* 8002AE98  90 03 00 00 */	stw r0, 0(r3)
/* 8002AE9C  3C 80 80 3A */	lis r4, __vt__18dRenderingFDAmap_c@ha
/* 8002AEA0  38 04 7C 90 */	addi r0, r4, __vt__18dRenderingFDAmap_c@l
/* 8002AEA4  90 03 00 00 */	stw r0, 0(r3)
/* 8002AEA8  38 A0 00 00 */	li r5, 0
/* 8002AEAC  90 A3 00 04 */	stw r5, 4(r3)
/* 8002AEB0  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 8002AEB4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8002AEB8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8002AEBC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8002AEC0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8002AEC4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8002AEC8  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 8002AECC  B0 A3 00 1E */	sth r5, 0x1e(r3)
/* 8002AED0  B0 A3 00 20 */	sth r5, 0x20(r3)
/* 8002AED4  B0 A3 00 22 */	sth r5, 0x22(r3)
/* 8002AED8  3C 80 80 3A */	lis r4, __vt__16renderingDAmap_c@ha
/* 8002AEDC  38 04 7E E0 */	addi r0, r4, __vt__16renderingDAmap_c@l
/* 8002AEE0  90 03 00 00 */	stw r0, 0(r3)
/* 8002AEE4  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8002AEE8  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8002AEEC  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 8002AEF0  98 A3 00 30 */	stb r5, 0x30(r3)
/* 8002AEF4  98 A3 00 31 */	stb r5, 0x31(r3)
/* 8002AEF8  3C 80 80 3A */	lis r4, __vt__19renderingPlusDoor_c@ha
/* 8002AEFC  38 04 7D 80 */	addi r0, r4, __vt__19renderingPlusDoor_c@l
/* 8002AF00  90 03 00 00 */	stw r0, 0(r3)
/* 8002AF04  3C 80 80 3A */	lis r4, __vt__28renderingPlusDoorAndCursor_c@ha
/* 8002AF08  38 04 7E 24 */	addi r0, r4, __vt__28renderingPlusDoorAndCursor_c@l
/* 8002AF0C  90 03 00 00 */	stw r0, 0(r3)
/* 8002AF10  3C 80 80 3A */	lis r4, __vt__15renderingAmap_c@ha
/* 8002AF14  38 04 70 F4 */	addi r0, r4, __vt__15renderingAmap_c@l
/* 8002AF18  90 03 00 00 */	stw r0, 0(r3)
/* 8002AF1C  4E 80 00 20 */	blr 
