lbl_8012F634:
/* 8012F634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F638  7C 08 02 A6 */	mflr r0
/* 8012F63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F644  7C 7F 1B 78 */	mr r31, r3
/* 8012F648  38 80 01 0B */	li r4, 0x10b
/* 8012F64C  4B F9 29 21 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012F650  7F E3 FB 78 */	mr r3, r31
/* 8012F654  38 80 00 1A */	li r4, 0x1a
/* 8012F658  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8012F65C  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8012F660  4B FF A1 E9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012F664  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8012F668  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8012F66C  41 82 00 20 */	beq lbl_8012F68C
/* 8012F670  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8012F674  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8012F678  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8012F67C  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 8012F680  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012F684  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012F688  48 00 00 1C */	b lbl_8012F6A4
lbl_8012F68C:
/* 8012F68C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8012F690  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 8012F694  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 8012F698  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8012F69C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012F6A0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_8012F6A4:
/* 8012F6A4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012F6A8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012F6AC  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8012F6B0  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8012F6B4  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8012F6B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012F6BC  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8012F6C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012F6C4  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8012F6C8  7F E3 FB 78 */	mr r3, r31
/* 8012F6CC  38 80 00 01 */	li r4, 1
/* 8012F6D0  4B FF 1A F1 */	bl setFootEffectProcType__9daAlink_cFi
/* 8012F6D4  38 60 00 01 */	li r3, 1
/* 8012F6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F6E0  7C 08 03 A6 */	mtlr r0
/* 8012F6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F6E8  4E 80 00 20 */	blr 
