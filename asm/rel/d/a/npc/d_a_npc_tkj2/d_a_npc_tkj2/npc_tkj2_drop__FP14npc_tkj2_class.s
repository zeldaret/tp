lbl_80B12750:
/* 80B12750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B12754  7C 08 02 A6 */	mflr r0
/* 80B12758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1275C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B12760  93 C1 00 08 */	stw r30, 8(r1)
/* 80B12764  7C 7E 1B 78 */	mr r30, r3
/* 80B12768  3C 80 80 B1 */	lis r4, lit_3648@ha /* 0x80B142DC@ha */
/* 80B1276C  3B E4 42 DC */	addi r31, r4, lit_3648@l /* 0x80B142DC@l */
/* 80B12770  A8 03 06 0A */	lha r0, 0x60a(r3)
/* 80B12774  2C 00 00 01 */	cmpwi r0, 1
/* 80B12778  41 82 00 34 */	beq lbl_80B127AC
/* 80B1277C  40 80 00 30 */	bge lbl_80B127AC
/* 80B12780  2C 00 00 00 */	cmpwi r0, 0
/* 80B12784  40 80 00 08 */	bge lbl_80B1278C
/* 80B12788  48 00 00 24 */	b lbl_80B127AC
lbl_80B1278C:
/* 80B1278C  38 80 00 07 */	li r4, 7
/* 80B12790  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B12794  38 A0 00 00 */	li r5, 0
/* 80B12798  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80B1279C  4B FF E6 85 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B127A0  A8 7E 06 0A */	lha r3, 0x60a(r30)
/* 80B127A4  38 03 00 01 */	addi r0, r3, 1
/* 80B127A8  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_80B127AC:
/* 80B127AC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80B127B0  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80B127B4  80 1E 06 A0 */	lwz r0, 0x6a0(r30)
/* 80B127B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B127BC  41 82 00 28 */	beq lbl_80B127E4
/* 80B127C0  38 00 00 00 */	li r0, 0
/* 80B127C4  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B127C8  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B127CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B127D0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80B127D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B127D8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80B127DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B127E0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
lbl_80B127E4:
/* 80B127E4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B127E8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80B127EC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80B127F0  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80B127F4  4B 75 D2 49 */	bl cLib_addCalc2__FPffff
/* 80B127F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B127FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B12800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B12804  7C 08 03 A6 */	mtlr r0
/* 80B12808  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1280C  4E 80 00 20 */	blr 
