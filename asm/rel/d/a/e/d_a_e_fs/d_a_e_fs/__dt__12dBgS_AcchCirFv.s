lbl_806BDEDC:
/* 806BDEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDEE0  7C 08 02 A6 */	mflr r0
/* 806BDEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDEEC  93 C1 00 08 */	stw r30, 8(r1)
/* 806BDEF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 806BDEF4  7C 9F 23 78 */	mr r31, r4
/* 806BDEF8  41 82 00 38 */	beq lbl_806BDF30
/* 806BDEFC  3C 60 80 6C */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806BDF00  38 03 E6 DC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806BDF04  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806BDF08  38 7E 00 14 */	addi r3, r30, 0x14
/* 806BDF0C  38 80 FF FF */	li r4, -1
/* 806BDF10  4B BB 10 08 */	b __dt__8cM3dGCirFv
/* 806BDF14  7F C3 F3 78 */	mr r3, r30
/* 806BDF18  38 80 00 00 */	li r4, 0
/* 806BDF1C  4B BA A1 94 */	b __dt__13cBgS_PolyInfoFv
/* 806BDF20  7F E0 07 35 */	extsh. r0, r31
/* 806BDF24  40 81 00 0C */	ble lbl_806BDF30
/* 806BDF28  7F C3 F3 78 */	mr r3, r30
/* 806BDF2C  4B C1 0E 10 */	b __dl__FPv
lbl_806BDF30:
/* 806BDF30  7F C3 F3 78 */	mr r3, r30
/* 806BDF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDF38  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BDF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDF40  7C 08 03 A6 */	mtlr r0
/* 806BDF44  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDF48  4E 80 00 20 */	blr 
