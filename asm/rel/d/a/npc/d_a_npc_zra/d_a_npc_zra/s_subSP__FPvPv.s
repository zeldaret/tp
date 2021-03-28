lbl_80B8B3A0:
/* 80B8B3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8B3A4  7C 08 02 A6 */	mflr r0
/* 80B8B3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8B3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8B3B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B8B3B4  7C 7E 1B 78 */	mr r30, r3
/* 80B8B3B8  7C 9F 23 78 */	mr r31, r4
/* 80B8B3BC  4B 48 D9 24 */	b fopAc_IsActor__FPv
/* 80B8B3C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B3C4  41 82 00 40 */	beq lbl_80B8B404
/* 80B8B3C8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80B8B3CC  2C 00 00 E5 */	cmpwi r0, 0xe5
/* 80B8B3D0  40 82 00 34 */	bne lbl_80B8B404
/* 80B8B3D4  88 7E 14 E8 */	lbz r3, 0x14e8(r30)
/* 80B8B3D8  88 1F 14 E8 */	lbz r0, 0x14e8(r31)
/* 80B8B3DC  7C 03 00 00 */	cmpw r3, r0
/* 80B8B3E0  40 82 00 24 */	bne lbl_80B8B404
/* 80B8B3E4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B8B3E8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80B8B3EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B8B3F0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B8B3F4  7C 03 00 40 */	cmplw r3, r0
/* 80B8B3F8  41 82 00 0C */	beq lbl_80B8B404
/* 80B8B3FC  7F C3 F3 78 */	mr r3, r30
/* 80B8B400  48 00 00 08 */	b lbl_80B8B408
lbl_80B8B404:
/* 80B8B404  38 60 00 00 */	li r3, 0
lbl_80B8B408:
/* 80B8B408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8B40C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B8B410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8B414  7C 08 03 A6 */	mtlr r0
/* 80B8B418  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8B41C  4E 80 00 20 */	blr 
