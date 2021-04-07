lbl_80BA3638:
/* 80BA3638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA363C  7C 08 02 A6 */	mflr r0
/* 80BA3640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA3644  88 03 05 E9 */	lbz r0, 0x5e9(r3)
/* 80BA3648  2C 00 00 01 */	cmpwi r0, 1
/* 80BA364C  41 82 00 54 */	beq lbl_80BA36A0
/* 80BA3650  40 80 00 6C */	bge lbl_80BA36BC
/* 80BA3654  2C 00 00 00 */	cmpwi r0, 0
/* 80BA3658  40 80 00 08 */	bge lbl_80BA3660
/* 80BA365C  48 00 00 60 */	b lbl_80BA36BC
lbl_80BA3660:
/* 80BA3660  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80BA3664  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80BA3668  40 82 00 54 */	bne lbl_80BA36BC
/* 80BA366C  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 80BA3670  3C 80 80 BA */	lis r4, lit_4215@ha /* 0x80BA54B8@ha */
/* 80BA3674  C0 04 54 B8 */	lfs f0, lit_4215@l(r4)  /* 0x80BA54B8@l */
/* 80BA3678  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA367C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BA3680  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BA3684  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BA3688  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA368C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80BA3690  38 00 40 00 */	li r0, 0x4000
/* 80BA3694  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80BA3698  4B FF FD 71 */	bl checkGround__10daObjARI_cFv
/* 80BA369C  48 00 00 20 */	b lbl_80BA36BC
lbl_80BA36A0:
/* 80BA36A0  38 80 00 00 */	li r4, 0
/* 80BA36A4  98 83 05 E8 */	stb r4, 0x5e8(r3)
/* 80BA36A8  98 83 05 E9 */	stb r4, 0x5e9(r3)
/* 80BA36AC  88 03 06 31 */	lbz r0, 0x631(r3)
/* 80BA36B0  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 80BA36B4  98 03 06 31 */	stb r0, 0x631(r3)
/* 80BA36B8  B0 83 04 E4 */	sth r4, 0x4e4(r3)
lbl_80BA36BC:
/* 80BA36BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA36C0  7C 08 03 A6 */	mtlr r0
/* 80BA36C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA36C8  4E 80 00 20 */	blr 
