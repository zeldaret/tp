lbl_80C3A8C8:
/* 80C3A8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3A8CC  7C 08 02 A6 */	mflr r0
/* 80C3A8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3A8D4  88 03 07 C1 */	lbz r0, 0x7c1(r3)
/* 80C3A8D8  2C 00 00 01 */	cmpwi r0, 1
/* 80C3A8DC  41 82 00 54 */	beq lbl_80C3A930
/* 80C3A8E0  40 80 00 6C */	bge lbl_80C3A94C
/* 80C3A8E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C3A8E8  40 80 00 08 */	bge lbl_80C3A8F0
/* 80C3A8EC  48 00 00 60 */	b lbl_80C3A94C
lbl_80C3A8F0:
/* 80C3A8F0  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80C3A8F4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80C3A8F8  40 82 00 54 */	bne lbl_80C3A94C
/* 80C3A8FC  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 80C3A900  3C 80 80 C4 */	lis r4, lit_4223@ha /* 0x80C3C714@ha */
/* 80C3A904  C0 04 C7 14 */	lfs f0, lit_4223@l(r4)  /* 0x80C3C714@l */
/* 80C3A908  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3A90C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80C3A910  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80C3A914  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80C3A918  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3A91C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C3A920  38 00 40 00 */	li r0, 0x4000
/* 80C3A924  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80C3A928  4B FF FD 71 */	bl checkGround__10daObjKAT_cFv
/* 80C3A92C  48 00 00 20 */	b lbl_80C3A94C
lbl_80C3A930:
/* 80C3A930  38 80 00 00 */	li r4, 0
/* 80C3A934  98 83 07 C0 */	stb r4, 0x7c0(r3)
/* 80C3A938  98 83 07 C1 */	stb r4, 0x7c1(r3)
/* 80C3A93C  88 03 08 08 */	lbz r0, 0x808(r3)
/* 80C3A940  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 80C3A944  98 03 08 08 */	stb r0, 0x808(r3)
/* 80C3A948  B0 83 04 E4 */	sth r4, 0x4e4(r3)
lbl_80C3A94C:
/* 80C3A94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3A950  7C 08 03 A6 */	mtlr r0
/* 80C3A954  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3A958  4E 80 00 20 */	blr 
