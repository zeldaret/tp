lbl_80AD3614:
/* 80AD3614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3618  7C 08 02 A6 */	mflr r0
/* 80AD361C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3624  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD3628  7C 7F 1B 78 */	mr r31, r3
/* 80AD362C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD3630  2C 00 00 02 */	cmpwi r0, 2
/* 80AD3634  41 82 00 B8 */	beq lbl_80AD36EC
/* 80AD3638  40 80 00 CC */	bge lbl_80AD3704
/* 80AD363C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3640  40 80 00 0C */	bge lbl_80AD364C
/* 80AD3644  48 00 00 C0 */	b lbl_80AD3704
/* 80AD3648  48 00 00 BC */	b lbl_80AD3704
lbl_80AD364C:
/* 80AD364C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD3650  2C 00 00 06 */	cmpwi r0, 6
/* 80AD3654  41 82 00 28 */	beq lbl_80AD367C
/* 80AD3658  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD365C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD3660  4B 67 22 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3664  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD3668  38 00 00 06 */	li r0, 6
/* 80AD366C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD3670  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD3674  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD3678  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD367C:
/* 80AD367C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD3680  2C 00 00 05 */	cmpwi r0, 5
/* 80AD3684  41 82 00 28 */	beq lbl_80AD36AC
/* 80AD3688  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD368C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD3690  4B 67 22 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3694  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD3698  38 00 00 05 */	li r0, 5
/* 80AD369C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD36A0  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD36A4  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD36A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD36AC:
/* 80AD36AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD36B0  2C 00 00 00 */	cmpwi r0, 0
/* 80AD36B4  41 82 00 28 */	beq lbl_80AD36DC
/* 80AD36B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD36BC  4B 67 20 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD36C0  38 00 00 00 */	li r0, 0
/* 80AD36C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD36C8  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD36CC  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD36D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD36D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD36D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD36DC:
/* 80AD36DC  38 00 00 00 */	li r0, 0
/* 80AD36E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD36E4  38 00 00 02 */	li r0, 2
/* 80AD36E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD36EC:
/* 80AD36EC  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD36F0  2C 00 00 02 */	cmpwi r0, 2
/* 80AD36F4  40 82 00 10 */	bne lbl_80AD3704
/* 80AD36F8  38 00 00 01 */	li r0, 1
/* 80AD36FC  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80AD3700  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AD3704:
/* 80AD3704  38 60 00 01 */	li r3, 1
/* 80AD3708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD370C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD3710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3714  7C 08 03 A6 */	mtlr r0
/* 80AD3718  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD371C  4E 80 00 20 */	blr 
