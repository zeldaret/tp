lbl_809A3798:
/* 809A3798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A379C  7C 08 02 A6 */	mflr r0
/* 809A37A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A37A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A37A8  93 C1 00 08 */	stw r30, 8(r1)
/* 809A37AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A37B0  7C 9F 23 78 */	mr r31, r4
/* 809A37B4  41 82 00 94 */	beq lbl_809A3848
/* 809A37B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809A37BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809A37C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809A37C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A37C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809A37CC  38 03 00 84 */	addi r0, r3, 0x84
/* 809A37D0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809A37D4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809A37D8  41 82 00 54 */	beq lbl_809A382C
/* 809A37DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809A37E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809A37E4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809A37E8  38 03 00 58 */	addi r0, r3, 0x58
/* 809A37EC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809A37F0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 809A37F4  41 82 00 10 */	beq lbl_809A3804
/* 809A37F8  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha
/* 809A37FC  38 03 52 2C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809A3800  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_809A3804:
/* 809A3804  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809A3808  41 82 00 24 */	beq lbl_809A382C
/* 809A380C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809A3810  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809A3814  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809A3818  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809A381C  41 82 00 10 */	beq lbl_809A382C
/* 809A3820  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha
/* 809A3824  38 03 52 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809A3828  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_809A382C:
/* 809A382C  7F C3 F3 78 */	mr r3, r30
/* 809A3830  38 80 00 00 */	li r4, 0
/* 809A3834  4B 6E 08 B0 */	b __dt__12dCcD_GObjInfFv
/* 809A3838  7F E0 07 35 */	extsh. r0, r31
/* 809A383C  40 81 00 0C */	ble lbl_809A3848
/* 809A3840  7F C3 F3 78 */	mr r3, r30
/* 809A3844  4B 92 B4 F8 */	b __dl__FPv
lbl_809A3848:
/* 809A3848  7F C3 F3 78 */	mr r3, r30
/* 809A384C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A3850  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A3854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A3858  7C 08 03 A6 */	mtlr r0
/* 809A385C  38 21 00 10 */	addi r1, r1, 0x10
/* 809A3860  4E 80 00 20 */	blr 
