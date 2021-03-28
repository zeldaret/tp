lbl_80C1629C:
/* 80C1629C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C162A0  7C 08 02 A6 */	mflr r0
/* 80C162A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C162A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C162AC  7C 7F 1B 78 */	mr r31, r3
/* 80C162B0  3C 80 80 C1 */	lis r4, lit_3703@ha
/* 80C162B4  38 84 64 C8 */	addi r4, r4, lit_3703@l
/* 80C162B8  C0 24 00 4C */	lfs f1, 0x4c(r4)
/* 80C162BC  FC 40 08 90 */	fmr f2, f1
/* 80C162C0  FC 60 08 90 */	fmr f3, f1
/* 80C162C4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80C162C8  FC A0 20 90 */	fmr f5, f4
/* 80C162CC  C0 C4 00 54 */	lfs f6, 0x54(r4)
/* 80C162D0  4B 40 42 78 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C162D4  7F E3 FB 78 */	mr r3, r31
/* 80C162D8  4B FF FB 29 */	bl initBaseMtx__13daObjH_Saku_cFv
/* 80C162DC  38 60 00 04 */	li r3, 4
/* 80C162E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C162E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C162E8  7C 08 03 A6 */	mtlr r0
/* 80C162EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C162F0  4E 80 00 20 */	blr 
