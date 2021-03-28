lbl_80C6F3BC:
/* 80C6F3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6F3C0  7C 08 02 A6 */	mflr r0
/* 80C6F3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6F3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6F3CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6F3D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6F3D4  7C 9F 23 78 */	mr r31, r4
/* 80C6F3D8  41 82 00 4C */	beq lbl_80C6F424
/* 80C6F3DC  4B 3A 99 04 */	b fopAc_IsActor__FPv
/* 80C6F3E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C6F3E4  41 82 00 40 */	beq lbl_80C6F424
/* 80C6F3E8  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C6F3EC  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80C6F3F0  40 82 00 34 */	bne lbl_80C6F424
/* 80C6F3F4  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80C6F3F8  2C 00 00 03 */	cmpwi r0, 3
/* 80C6F3FC  40 82 00 28 */	bne lbl_80C6F424
/* 80C6F400  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C6F404  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80C6F408  4B 6D 7F 94 */	b PSVECSquareDistance
/* 80C6F40C  3C 60 80 C7 */	lis r3, lit_3868@ha
/* 80C6F410  C0 03 09 E0 */	lfs f0, lit_3868@l(r3)
/* 80C6F414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6F418  40 80 00 0C */	bge lbl_80C6F424
/* 80C6F41C  7F C3 F3 78 */	mr r3, r30
/* 80C6F420  48 00 00 08 */	b lbl_80C6F428
lbl_80C6F424:
/* 80C6F424  38 60 00 00 */	li r3, 0
lbl_80C6F428:
/* 80C6F428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6F42C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6F430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6F434  7C 08 03 A6 */	mtlr r0
/* 80C6F438  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6F43C  4E 80 00 20 */	blr 
