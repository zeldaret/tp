lbl_80C228B4:
/* 80C228B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C228B8  7C 08 02 A6 */	mflr r0
/* 80C228BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C228C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C228C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C228C8  7C 7E 1B 78 */	mr r30, r3
/* 80C228CC  7C 9F 23 78 */	mr r31, r4
/* 80C228D0  48 00 02 59 */	bl mode_proc_call__13daObjIceBlk_cFv
/* 80C228D4  7F C3 F3 78 */	mr r3, r30
/* 80C228D8  48 00 11 79 */	bl event_proc_call__13daObjIceBlk_cFv
/* 80C228DC  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C228E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C228E4  7F C3 F3 78 */	mr r3, r30
/* 80C228E8  4B FF F5 3D */	bl setBaseMtx__13daObjIceBlk_cFv
/* 80C228EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C228F0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C228F4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C228F8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C228FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C22900  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C22904  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C22908  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C2290C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C22910  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C22914  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C22918  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C2291C  38 00 00 00 */	li r0, 0
/* 80C22920  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80C22924  98 1E 09 D1 */	stb r0, 0x9d1(r30)
/* 80C22928  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80C2292C  4B 46 0F 04 */	b Move__10dCcD_GSttsFv
/* 80C22930  38 60 00 01 */	li r3, 1
/* 80C22934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C22938  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2293C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C22940  7C 08 03 A6 */	mtlr r0
/* 80C22944  38 21 00 10 */	addi r1, r1, 0x10
/* 80C22948  4E 80 00 20 */	blr 
