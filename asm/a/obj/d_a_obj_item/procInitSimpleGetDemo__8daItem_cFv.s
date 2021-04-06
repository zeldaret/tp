lbl_8015C058:
/* 8015C058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C05C  7C 08 02 A6 */	mflr r0
/* 8015C060  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C064  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015C068  7C 7F 1B 78 */	mr r31, r3
/* 8015C06C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C074  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8015C078  38 61 00 08 */	addi r3, r1, 8
/* 8015C07C  48 00 1F 5D */	bl getItemPos__9daPy_py_cCFv
/* 8015C080  C0 01 00 08 */	lfs f0, 8(r1)
/* 8015C084  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8015C088  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8015C08C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8015C090  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8015C094  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8015C098  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8015C09C  C0 02 9B 98 */	lfs f0, lit_4404(r2)
/* 8015C0A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8015C0A4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8015C0A8  38 00 00 00 */	li r0, 0
/* 8015C0AC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8015C0B0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8015C0B4  C0 1F 09 30 */	lfs f0, 0x930(r31)
/* 8015C0B8  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8015C0BC  C0 1F 09 34 */	lfs f0, 0x934(r31)
/* 8015C0C0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8015C0C4  C0 1F 09 38 */	lfs f0, 0x938(r31)
/* 8015C0C8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8015C0CC  7F E3 FB 78 */	mr r3, r31
/* 8015C0D0  4B FF EF E9 */	bl getData__12daItemBase_cFv
/* 8015C0D4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8015C0D8  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015C0DC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8015C0E0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 8015C0E4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8015C0E8  7F E3 FB 78 */	mr r3, r31
/* 8015C0EC  4B FF EF CD */	bl getData__12daItemBase_cFv
/* 8015C0F0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8015C0F4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8015C0F8  7F E3 FB 78 */	mr r3, r31
/* 8015C0FC  4B ED B9 79 */	bl show__12daItemBase_cFv
/* 8015C100  7F E3 FB 78 */	mr r3, r31
/* 8015C104  4B FF EF B5 */	bl getData__12daItemBase_cFv
/* 8015C108  A8 03 00 34 */	lha r0, 0x34(r3)
/* 8015C10C  B0 1F 09 46 */	sth r0, 0x946(r31)
/* 8015C110  3C 00 00 02 */	lis r0, 2
/* 8015C114  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8015C118  38 00 00 02 */	li r0, 2
/* 8015C11C  98 1F 09 4A */	stb r0, 0x94a(r31)
/* 8015C120  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015C124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C128  7C 08 03 A6 */	mtlr r0
/* 8015C12C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C130  4E 80 00 20 */	blr 
