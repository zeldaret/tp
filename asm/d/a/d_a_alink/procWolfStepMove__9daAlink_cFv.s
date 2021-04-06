lbl_8012F500:
/* 8012F500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F504  7C 08 02 A6 */	mflr r0
/* 8012F508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F50C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F510  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F514  7C 7E 1B 78 */	mr r30, r3
/* 8012F518  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012F51C  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8012F520  2C 00 00 00 */	cmpwi r0, 0
/* 8012F524  41 82 00 74 */	beq lbl_8012F598
/* 8012F528  38 00 00 04 */	li r0, 4
/* 8012F52C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8012F530  7F E3 FB 78 */	mr r3, r31
/* 8012F534  48 02 EF 99 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012F53C  41 82 00 14 */	beq lbl_8012F550
/* 8012F540  7F C3 F3 78 */	mr r3, r30
/* 8012F544  38 80 00 00 */	li r4, 0
/* 8012F548  4B FF A5 FD */	bl checkNextActionWolf__9daAlink_cFi
/* 8012F54C  48 00 00 D0 */	b lbl_8012F61C
lbl_8012F550:
/* 8012F550  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012F554  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 8012F558  38 63 F1 A0 */	addi r3, r3, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 8012F55C  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8012F560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F564  40 81 00 B4 */	ble lbl_8012F618
/* 8012F568  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8012F56C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012F570  7F C3 F3 78 */	mr r3, r30
/* 8012F574  38 80 00 01 */	li r4, 1
/* 8012F578  4B FF A5 CD */	bl checkNextActionWolf__9daAlink_cFi
/* 8012F57C  2C 03 00 00 */	cmpwi r3, 0
/* 8012F580  41 82 00 0C */	beq lbl_8012F58C
/* 8012F584  38 60 00 01 */	li r3, 1
/* 8012F588  48 00 00 94 */	b lbl_8012F61C
lbl_8012F58C:
/* 8012F58C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012F590  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012F594  48 00 00 84 */	b lbl_8012F618
lbl_8012F598:
/* 8012F598  7F E3 FB 78 */	mr r3, r31
/* 8012F59C  48 02 EF 31 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012F5A4  41 82 00 74 */	beq lbl_8012F618
/* 8012F5A8  7F C3 F3 78 */	mr r3, r30
/* 8012F5AC  38 80 00 12 */	li r4, 0x12
/* 8012F5B0  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 8012F5B4  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 8012F5B8  38 A5 00 64 */	addi r5, r5, 0x64
/* 8012F5BC  4B FF A2 8D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012F5C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8012F5C4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8012F5C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012F5CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012F5D0  7C 64 02 14 */	add r3, r4, r0
/* 8012F5D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012F5D8  C0 3E 34 F4 */	lfs f1, 0x34f4(r30)
/* 8012F5DC  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 8012F5E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012F5E4  EC 81 00 2A */	fadds f4, f1, f0
/* 8012F5E8  C0 7E 34 F0 */	lfs f3, 0x34f0(r30)
/* 8012F5EC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8012F5F0  C0 3E 34 EC */	lfs f1, 0x34ec(r30)
/* 8012F5F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012F5F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8012F5FC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8012F600  D0 7E 04 D4 */	stfs f3, 0x4d4(r30)
/* 8012F604  D0 9E 04 D8 */	stfs f4, 0x4d8(r30)
/* 8012F608  38 00 00 50 */	li r0, 0x50
/* 8012F60C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8012F610  38 00 00 01 */	li r0, 1
/* 8012F614  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_8012F618:
/* 8012F618  38 60 00 01 */	li r3, 1
lbl_8012F61C:
/* 8012F61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F620  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F628  7C 08 03 A6 */	mtlr r0
/* 8012F62C  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F630  4E 80 00 20 */	blr 
