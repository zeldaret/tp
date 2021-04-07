lbl_80D3F8F8:
/* 80D3F8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F8FC  7C 08 02 A6 */	mflr r0
/* 80D3F900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3F908  7C 7F 1B 78 */	mr r31, r3
/* 80D3F90C  4B FF FF 79 */	bl setBaseMtx__9daZdoor_cFv
/* 80D3F910  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D3F914  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3F918  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D3F91C  7F E3 FB 78 */	mr r3, r31
/* 80D3F920  4B FF FD 3D */	bl init_cyl__9daZdoor_cFv
/* 80D3F924  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D3F928  80 83 00 04 */	lwz r4, 4(r3)
/* 80D3F92C  7F E3 FB 78 */	mr r3, r31
/* 80D3F930  4B 2D AC 49 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D3F934  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80D3F938  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80D3F93C  38 00 00 00 */	li r0, 0
/* 80D3F940  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80D3F944  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80D3F948  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80D3F94C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D3F950  7C 03 00 50 */	subf r0, r3, r0
/* 80D3F954  B0 1F 0E 2E */	sth r0, 0xe2e(r31)
/* 80D3F958  38 60 00 01 */	li r3, 1
/* 80D3F95C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3F960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F964  7C 08 03 A6 */	mtlr r0
/* 80D3F968  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F96C  4E 80 00 20 */	blr 
