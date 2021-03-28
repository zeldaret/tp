lbl_80310E3C:
/* 80310E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310E40  7C 08 02 A6 */	mflr r0
/* 80310E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310E48  38 60 00 00 */	li r3, 0
/* 80310E4C  38 80 00 04 */	li r4, 4
/* 80310E50  38 A0 00 05 */	li r5, 5
/* 80310E54  38 C0 00 00 */	li r6, 0
/* 80310E58  48 04 ED 99 */	bl GXSetBlendMode
/* 80310E5C  38 60 00 01 */	li r3, 1
/* 80310E60  48 04 ED E5 */	bl GXSetColorUpdate
/* 80310E64  38 60 00 00 */	li r3, 0
/* 80310E68  48 04 EE 09 */	bl GXSetAlphaUpdate
/* 80310E6C  38 60 00 01 */	li r3, 1
/* 80310E70  48 04 EF 69 */	bl GXSetDither
/* 80310E74  80 0D 83 D0 */	lwz r0, ColorBlack(r13)
/* 80310E78  90 01 00 08 */	stw r0, 8(r1)
/* 80310E7C  38 60 00 00 */	li r3, 0
/* 80310E80  C0 22 C9 68 */	lfs f1, lit_892(r2)
/* 80310E84  C0 42 C9 6C */	lfs f2, lit_893(r2)
/* 80310E88  C0 62 C9 70 */	lfs f3, lit_894(r2)
/* 80310E8C  FC 80 10 90 */	fmr f4, f2
/* 80310E90  38 81 00 08 */	addi r4, r1, 8
/* 80310E94  48 04 EA 25 */	bl GXSetFog
/* 80310E98  38 60 00 00 */	li r3, 0
/* 80310E9C  38 80 00 00 */	li r4, 0
/* 80310EA0  38 A0 00 00 */	li r5, 0
/* 80310EA4  48 04 EC 29 */	bl GXSetFogRangeAdj
/* 80310EA8  38 60 00 01 */	li r3, 1
/* 80310EAC  38 80 00 03 */	li r4, 3
/* 80310EB0  38 A0 00 01 */	li r5, 1
/* 80310EB4  48 04 ED E9 */	bl GXSetZMode
/* 80310EB8  38 60 00 01 */	li r3, 1
/* 80310EBC  48 04 EE 15 */	bl GXSetZCompLoc
/* 80310EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310EC4  7C 08 03 A6 */	mtlr r0
/* 80310EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80310ECC  4E 80 00 20 */	blr 
