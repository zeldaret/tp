lbl_80C67B40:
/* 80C67B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67B44  7C 08 02 A6 */	mflr r0
/* 80C67B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67B50  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67B54  7C 7E 1B 78 */	mr r30, r3
/* 80C67B58  3C 60 80 C6 */	lis r3, lit_3704@ha
/* 80C67B5C  3B E3 7D 80 */	addi r31, r3, lit_3704@l
/* 80C67B60  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C67B64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C67B68  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C67B6C  4B 60 8B D4 */	b cLib_chaseF__FPfff
/* 80C67B70  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C67B74  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C67B78  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 80C67B7C  4B 60 8B C4 */	b cLib_chaseF__FPfff
/* 80C67B80  2C 03 00 00 */	cmpwi r3, 0
/* 80C67B84  41 82 00 0C */	beq lbl_80C67B90
/* 80C67B88  7F C3 F3 78 */	mr r3, r30
/* 80C67B8C  48 00 00 1D */	bl mode_init_dead__15daObjLv4Floor_cFv
lbl_80C67B90:
/* 80C67B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67B94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C67B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67B9C  7C 08 03 A6 */	mtlr r0
/* 80C67BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67BA4  4E 80 00 20 */	blr 
