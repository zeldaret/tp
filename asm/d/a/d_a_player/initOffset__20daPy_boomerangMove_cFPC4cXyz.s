lbl_8015E5B0:
/* 8015E5B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015E5B4  7C 08 02 A6 */	mflr r0
/* 8015E5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015E5BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8015E5C0  48 20 3C 1D */	bl _savegpr_29
/* 8015E5C4  7C 7D 1B 78 */	mr r29, r3
/* 8015E5C8  7C 9E 23 78 */	mr r30, r4
/* 8015E5CC  48 00 13 05 */	bl getThrowBoomerangActor__9daPy_py_cFv
/* 8015E5D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015E5D4  41 82 00 20 */	beq lbl_8015E5F4
/* 8015E5D8  7F A3 EB 78 */	mr r3, r29
/* 8015E5DC  7F C4 F3 78 */	mr r4, r30
/* 8015E5E0  48 00 02 9D */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 8015E5E4  80 1F 09 64 */	lwz r0, 0x964(r31)
/* 8015E5E8  60 00 00 80 */	ori r0, r0, 0x80
/* 8015E5EC  90 1F 09 64 */	stw r0, 0x964(r31)
/* 8015E5F0  48 00 00 44 */	b lbl_8015E634
lbl_8015E5F4:
/* 8015E5F4  C0 22 9C 14 */	lfs f1, lit_4248(r2)
/* 8015E5F8  48 10 93 5D */	bl cM_rndF__Ff
/* 8015E5FC  C0 02 9C 10 */	lfs f0, lit_4247(r2)
/* 8015E600  EC 00 08 2A */	fadds f0, f0, f1
/* 8015E604  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8015E608  C0 22 9C 18 */	lfs f1, lit_4249(r2)
/* 8015E60C  48 10 93 49 */	bl cM_rndF__Ff
/* 8015E610  C0 02 9C 18 */	lfs f0, lit_4249(r2)
/* 8015E614  EC 00 08 2A */	fadds f0, f0, f1
/* 8015E618  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8015E61C  C0 22 9C 1C */	lfs f1, lit_4250(r2)
/* 8015E620  48 10 93 35 */	bl cM_rndF__Ff
/* 8015E624  FC 00 08 1E */	fctiwz f0, f1
/* 8015E628  D8 01 00 08 */	stfd f0, 8(r1)
/* 8015E62C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8015E630  B0 1D 00 02 */	sth r0, 2(r29)
lbl_8015E634:
/* 8015E634  38 00 00 00 */	li r0, 0
/* 8015E638  98 1D 00 00 */	stb r0, 0(r29)
/* 8015E63C  39 61 00 20 */	addi r11, r1, 0x20
/* 8015E640  48 20 3B E9 */	bl _restgpr_29
/* 8015E644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015E648  7C 08 03 A6 */	mtlr r0
/* 8015E64C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015E650  4E 80 00 20 */	blr 
