lbl_80C3C8D8:
/* 80C3C8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C8DC  7C 08 02 A6 */	mflr r0
/* 80C3C8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3C8E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3C8EC  7C 7E 1B 78 */	mr r30, r3
/* 80C3C8F0  3C 80 80 C4 */	lis r4, M_attr__15daObjKazeNeko_c@ha
/* 80C3C8F4  3B E4 D3 DC */	addi r31, r4, M_attr__15daObjKazeNeko_c@l
/* 80C3C8F8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C3C8FC  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C3C900  FC 60 08 90 */	fmr f3, f1
/* 80C3C904  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 80C3C908  C0 BF 00 38 */	lfs f5, 0x38(r31)
/* 80C3C90C  FC C0 20 90 */	fmr f6, f4
/* 80C3C910  4B 3D DC 38 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C3C914  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C3C918  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C3C91C  38 7F 00 00 */	addi r3, r31, 0
/* 80C3C920  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C3C924  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3C928  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3C92C  D0 1E 07 2C */	stfs f0, 0x72c(r30)
/* 80C3C930  D0 3E 07 30 */	stfs f1, 0x730(r30)
/* 80C3C934  D0 5E 07 34 */	stfs f2, 0x734(r30)
/* 80C3C938  38 00 00 00 */	li r0, 0
/* 80C3C93C  98 1E 07 52 */	stb r0, 0x752(r30)
/* 80C3C940  7F C3 F3 78 */	mr r3, r30
/* 80C3C944  48 00 00 25 */	bl initBaseMtx__15daObjKazeNeko_cFv
/* 80C3C948  7F C3 F3 78 */	mr r3, r30
/* 80C3C94C  48 00 01 41 */	bl initCcCylinder__15daObjKazeNeko_cFv
/* 80C3C950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3C954  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3C958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C95C  7C 08 03 A6 */	mtlr r0
/* 80C3C960  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C964  4E 80 00 20 */	blr 
