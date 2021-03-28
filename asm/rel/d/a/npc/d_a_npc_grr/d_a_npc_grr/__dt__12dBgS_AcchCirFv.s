lbl_809E3630:
/* 809E3630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3634  7C 08 02 A6 */	mflr r0
/* 809E3638  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E363C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E3640  93 C1 00 08 */	stw r30, 8(r1)
/* 809E3644  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E3648  7C 9F 23 78 */	mr r31, r4
/* 809E364C  41 82 00 38 */	beq lbl_809E3684
/* 809E3650  3C 60 80 9E */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809E3654  38 03 3E A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809E3658  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809E365C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809E3660  38 80 FF FF */	li r4, -1
/* 809E3664  4B 88 B8 B4 */	b __dt__8cM3dGCirFv
/* 809E3668  7F C3 F3 78 */	mr r3, r30
/* 809E366C  38 80 00 00 */	li r4, 0
/* 809E3670  4B 88 4A 40 */	b __dt__13cBgS_PolyInfoFv
/* 809E3674  7F E0 07 35 */	extsh. r0, r31
/* 809E3678  40 81 00 0C */	ble lbl_809E3684
/* 809E367C  7F C3 F3 78 */	mr r3, r30
/* 809E3680  4B 8E B6 BC */	b __dl__FPv
lbl_809E3684:
/* 809E3684  7F C3 F3 78 */	mr r3, r30
/* 809E3688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E368C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E3690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E3694  7C 08 03 A6 */	mtlr r0
/* 809E3698  38 21 00 10 */	addi r1, r1, 0x10
/* 809E369C  4E 80 00 20 */	blr 
