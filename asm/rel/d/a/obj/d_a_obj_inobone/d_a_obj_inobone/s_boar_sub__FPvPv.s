lbl_80C27780:
/* 80C27780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27784  7C 08 02 A6 */	mflr r0
/* 80C27788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2778C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C27790  93 C1 00 08 */	stw r30, 8(r1)
/* 80C27794  7C 7E 1B 78 */	mr r30, r3
/* 80C27798  7C 9F 23 78 */	mr r31, r4
/* 80C2779C  4B 3F 15 44 */	b fopAc_IsActor__FPv
/* 80C277A0  2C 03 00 00 */	cmpwi r3, 0
/* 80C277A4  41 82 00 50 */	beq lbl_80C277F4
/* 80C277A8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C277AC  2C 00 00 EF */	cmpwi r0, 0xef
/* 80C277B0  40 82 00 44 */	bne lbl_80C277F4
/* 80C277B4  7F E3 FB 78 */	mr r3, r31
/* 80C277B8  7F C4 F3 78 */	mr r4, r30
/* 80C277BC  4B 3F 31 A8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C277C0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C277C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C277C8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C277CC  3C 60 80 C3 */	lis r3, lit_3693@ha
/* 80C277D0  C0 03 81 A8 */	lfs f0, lit_3693@l(r3)
/* 80C277D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C277D8  40 80 00 1C */	bge lbl_80C277F4
/* 80C277DC  3C 60 80 C3 */	lis r3, lit_3694@ha
/* 80C277E0  C0 03 81 AC */	lfs f0, lit_3694@l(r3)
/* 80C277E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C277E8  40 80 00 0C */	bge lbl_80C277F4
/* 80C277EC  7F C3 F3 78 */	mr r3, r30
/* 80C277F0  48 00 00 08 */	b lbl_80C277F8
lbl_80C277F4:
/* 80C277F4  38 60 00 00 */	li r3, 0
lbl_80C277F8:
/* 80C277F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C277FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C27800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27804  7C 08 03 A6 */	mtlr r0
/* 80C27808  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2780C  4E 80 00 20 */	blr 
