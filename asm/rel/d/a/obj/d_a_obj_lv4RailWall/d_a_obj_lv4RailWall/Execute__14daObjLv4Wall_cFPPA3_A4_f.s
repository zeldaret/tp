lbl_80C60DC4:
/* 80C60DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C60DC8  7C 08 02 A6 */	mflr r0
/* 80C60DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C60DD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C60DD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C60DD8  7C 7E 1B 78 */	mr r30, r3
/* 80C60DDC  7C 9F 23 78 */	mr r31, r4
/* 80C60DE0  80 03 09 4C */	lwz r0, 0x94c(r3)
/* 80C60DE4  28 00 00 00 */	cmplwi r0, 0
/* 80C60DE8  40 82 00 20 */	bne lbl_80C60E08
/* 80C60DEC  38 00 00 B3 */	li r0, 0xb3
/* 80C60DF0  B0 01 00 08 */	sth r0, 8(r1)
/* 80C60DF4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80C60DF8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80C60DFC  38 81 00 08 */	addi r4, r1, 8
/* 80C60E00  4B 3B 89 F8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C60E04  90 7E 09 4C */	stw r3, 0x94c(r30)
lbl_80C60E08:
/* 80C60E08  80 1E 09 4C */	lwz r0, 0x94c(r30)
/* 80C60E0C  28 00 00 00 */	cmplwi r0, 0
/* 80C60E10  40 82 00 0C */	bne lbl_80C60E1C
/* 80C60E14  38 60 00 01 */	li r3, 1
/* 80C60E18  48 00 00 60 */	b lbl_80C60E78
lbl_80C60E1C:
/* 80C60E1C  7F C3 F3 78 */	mr r3, r30
/* 80C60E20  48 00 00 71 */	bl action__14daObjLv4Wall_cFv
/* 80C60E24  C0 9E 04 D0 */	lfs f4, 0x4d0(r30)
/* 80C60E28  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80C60E2C  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80C60E30  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80C60E34  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C60E38  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C60E3C  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80C60E40  3C 60 80 C6 */	lis r3, lit_3711@ha
/* 80C60E44  C0 03 1B 40 */	lfs f0, lit_3711@l(r3)
/* 80C60E48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C60E4C  EC 03 00 2A */	fadds f0, f3, f0
/* 80C60E50  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C60E54  80 7E 09 4C */	lwz r3, 0x94c(r30)
/* 80C60E58  D0 83 04 D0 */	stfs f4, 0x4d0(r3)
/* 80C60E5C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C60E60  D0 43 04 D8 */	stfs f2, 0x4d8(r3)
/* 80C60E64  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C60E68  90 1F 00 00 */	stw r0, 0(r31)
/* 80C60E6C  7F C3 F3 78 */	mr r3, r30
/* 80C60E70  4B FF FC 91 */	bl setBaseMtx__14daObjLv4Wall_cFv
/* 80C60E74  38 60 00 01 */	li r3, 1
lbl_80C60E78:
/* 80C60E78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C60E7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C60E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C60E84  7C 08 03 A6 */	mtlr r0
/* 80C60E88  38 21 00 20 */	addi r1, r1, 0x20
/* 80C60E8C  4E 80 00 20 */	blr 
