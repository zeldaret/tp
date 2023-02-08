lbl_80CFD600:
/* 80CFD600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD604  7C 08 02 A6 */	mflr r0
/* 80CFD608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD610  7C 7F 1B 78 */	mr r31, r3
/* 80CFD614  4B FF FF 45 */	bl initBaseMtx__12daObjSword_cFv
/* 80CFD618  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CFD61C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CFD620  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CFD624  7F E3 FB 78 */	mr r3, r31
/* 80CFD628  3C 80 80 D0 */	lis r4, l_cull_box@ha /* 0x80CFDEB4@ha */
/* 80CFD62C  C4 24 DE B4 */	lfsu f1, l_cull_box@l(r4)  /* 0x80CFDEB4@l */
/* 80CFD630  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CFD634  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CFD638  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CFD63C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CFD640  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CFD644  4B 31 CF 05 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CFD648  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80CFD64C  60 00 00 30 */	ori r0, r0, 0x30
/* 80CFD650  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80CFD654  7F E3 FB 78 */	mr r3, r31
/* 80CFD658  4B 33 A4 1D */	bl show__12daItemBase_cFv
/* 80CFD65C  7F E3 FB 78 */	mr r3, r31
/* 80CFD660  48 00 05 BD */	bl execute__12daObjSword_cFv
/* 80CFD664  38 60 00 01 */	li r3, 1
/* 80CFD668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFD66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD670  7C 08 03 A6 */	mtlr r0
/* 80CFD674  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD678  4E 80 00 20 */	blr 
