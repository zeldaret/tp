lbl_80C82FA4:
/* 80C82FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82FA8  7C 08 02 A6 */	mflr r0
/* 80C82FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82FB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C82FB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C82FBC  7C 9F 23 78 */	mr r31, r4
/* 80C82FC0  41 82 00 4C */	beq lbl_80C8300C
/* 80C82FC4  4B 39 5D 1D */	bl fopAc_IsActor__FPv
/* 80C82FC8  2C 03 00 00 */	cmpwi r3, 0
/* 80C82FCC  41 82 00 40 */	beq lbl_80C8300C
/* 80C82FD0  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C82FD4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80C82FD8  40 82 00 34 */	bne lbl_80C8300C
/* 80C82FDC  80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 80C82FE0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80C82FE4  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80C82FE8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80C82FEC  7C 03 00 00 */	cmpw r3, r0
/* 80C82FF0  40 82 00 1C */	bne lbl_80C8300C
/* 80C82FF4  54 A3 C6 3E */	rlwinm r3, r5, 0x18, 0x18, 0x1f
/* 80C82FF8  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 80C82FFC  7C 03 00 00 */	cmpw r3, r0
/* 80C83000  40 82 00 0C */	bne lbl_80C8300C
/* 80C83004  7F C3 F3 78 */	mr r3, r30
/* 80C83008  48 00 00 08 */	b lbl_80C83010
lbl_80C8300C:
/* 80C8300C  38 60 00 00 */	li r3, 0
lbl_80C83010:
/* 80C83010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83014  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C83018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8301C  7C 08 03 A6 */	mtlr r0
/* 80C83020  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83024  4E 80 00 20 */	blr 
