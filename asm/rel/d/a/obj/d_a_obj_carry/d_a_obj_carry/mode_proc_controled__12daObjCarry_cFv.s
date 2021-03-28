lbl_80475478:
/* 80475478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047547C  7C 08 02 A6 */	mflr r0
/* 80475480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475488  7C 7F 1B 78 */	mr r31, r3
/* 8047548C  48 00 3E 49 */	bl calc_rot_call__12daObjCarry_cFv
/* 80475490  7F E3 FB 78 */	mr r3, r31
/* 80475494  4B FF A3 19 */	bl setBaseMtx__12daObjCarry_cFv
/* 80475498  88 1F 0D B8 */	lbz r0, 0xdb8(r31)
/* 8047549C  98 1F 0D B9 */	stb r0, 0xdb9(r31)
/* 804754A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804754A4  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 804754A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804754AC  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 804754B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804754B4  D0 1F 0D F4 */	stfs f0, 0xdf4(r31)
/* 804754B8  38 60 00 01 */	li r3, 1
/* 804754BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804754C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804754C4  7C 08 03 A6 */	mtlr r0
/* 804754C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804754CC  4E 80 00 20 */	blr 
