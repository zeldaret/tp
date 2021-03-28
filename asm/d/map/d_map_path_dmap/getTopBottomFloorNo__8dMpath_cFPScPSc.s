lbl_8003F760:
/* 8003F760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F764  7C 08 02 A6 */	mflr r0
/* 8003F768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003F770  93 C1 00 08 */	stw r30, 8(r1)
/* 8003F774  7C 7E 1B 78 */	mr r30, r3
/* 8003F778  7C 9F 23 78 */	mr r31, r4
/* 8003F77C  4B FF FF DD */	bl isExistMapPathData__8dMpath_cFv
/* 8003F780  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003F784  41 82 00 28 */	beq lbl_8003F7AC
/* 8003F788  28 1E 00 00 */	cmplwi r30, 0
/* 8003F78C  41 82 00 0C */	beq lbl_8003F798
/* 8003F790  88 0D 80 B5 */	lbz r0, struct_80450634+0x1(r13)
/* 8003F794  98 1E 00 00 */	stb r0, 0(r30)
lbl_8003F798:
/* 8003F798  28 1F 00 00 */	cmplwi r31, 0
/* 8003F79C  41 82 00 30 */	beq lbl_8003F7CC
/* 8003F7A0  88 0D 80 B4 */	lbz r0, struct_80450634+0x0(r13)
/* 8003F7A4  98 1F 00 00 */	stb r0, 0(r31)
/* 8003F7A8  48 00 00 24 */	b lbl_8003F7CC
lbl_8003F7AC:
/* 8003F7AC  28 1E 00 00 */	cmplwi r30, 0
/* 8003F7B0  41 82 00 0C */	beq lbl_8003F7BC
/* 8003F7B4  38 00 00 00 */	li r0, 0
/* 8003F7B8  98 1E 00 00 */	stb r0, 0(r30)
lbl_8003F7BC:
/* 8003F7BC  28 1F 00 00 */	cmplwi r31, 0
/* 8003F7C0  41 82 00 0C */	beq lbl_8003F7CC
/* 8003F7C4  38 00 00 00 */	li r0, 0
/* 8003F7C8  98 1F 00 00 */	stb r0, 0(r31)
lbl_8003F7CC:
/* 8003F7CC  38 60 00 01 */	li r3, 1
/* 8003F7D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003F7D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003F7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F7DC  7C 08 03 A6 */	mtlr r0
/* 8003F7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F7E4  4E 80 00 20 */	blr 
