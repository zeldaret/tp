lbl_801902F0:
/* 801902F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801902F4  7C 08 02 A6 */	mflr r0
/* 801902F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801902FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190300  93 C1 00 08 */	stw r30, 8(r1)
/* 80190304  7C 7E 1B 78 */	mr r30, r3
/* 80190308  3C 60 80 3C */	lis r3, __vt__16dFile_select3D_c@ha
/* 8019030C  38 03 B3 5C */	addi r0, r3, __vt__16dFile_select3D_c@l
/* 80190310  90 1E 00 00 */	stw r0, 0(r30)
/* 80190314  3B FE 00 14 */	addi r31, r30, 0x14
/* 80190318  7F E3 FB 78 */	mr r3, r31
/* 8019031C  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80190320  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80190324  48 19 53 A1 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80190328  38 7F 00 74 */	addi r3, r31, 0x74
/* 8019032C  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha
/* 80190330  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 80190334  38 A0 00 00 */	li r5, 0
/* 80190338  38 C0 00 74 */	li r6, 0x74
/* 8019033C  38 E0 00 06 */	li r7, 6
/* 80190340  48 1D 1A 21 */	bl __construct_array
/* 80190344  38 00 00 00 */	li r0, 0
/* 80190348  90 1E 00 04 */	stw r0, 4(r30)
/* 8019034C  90 1E 00 08 */	stw r0, 8(r30)
/* 80190350  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 80190354  D0 1E 03 BC */	stfs f0, 0x3bc(r30)
/* 80190358  D0 1E 03 B8 */	stfs f0, 0x3b8(r30)
/* 8019035C  C0 02 9F 40 */	lfs f0, lit_4611(r2)
/* 80190360  D0 1E 03 C0 */	stfs f0, 0x3c0(r30)
/* 80190364  7F C3 F3 78 */	mr r3, r30
/* 80190368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019036C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80190370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190374  7C 08 03 A6 */	mtlr r0
/* 80190378  38 21 00 10 */	addi r1, r1, 0x10
/* 8019037C  4E 80 00 20 */	blr 
