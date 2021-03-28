lbl_80C66D40:
/* 80C66D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66D44  7C 08 02 A6 */	mflr r0
/* 80C66D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80C66D54  7C 7E 1B 78 */	mr r30, r3
/* 80C66D58  7C 9F 23 78 */	mr r31, r4
/* 80C66D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C66D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C66D64  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C66D68  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80C66D6C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C66D70  41 82 00 24 */	beq lbl_80C66D94
/* 80C66D74  38 60 00 B2 */	li r3, 0xb2
/* 80C66D78  38 80 00 01 */	li r4, 1
/* 80C66D7C  4B 43 11 64 */	b checkItemGet__FUci
/* 80C66D80  2C 03 00 00 */	cmpwi r3, 0
/* 80C66D84  41 82 00 10 */	beq lbl_80C66D94
/* 80C66D88  38 00 00 80 */	li r0, 0x80
/* 80C66D8C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C66D90  48 00 00 0C */	b lbl_80C66D9C
lbl_80C66D94:
/* 80C66D94  38 00 00 00 */	li r0, 0
/* 80C66D98  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80C66D9C:
/* 80C66D9C  7F C3 F3 78 */	mr r3, r30
/* 80C66DA0  48 00 00 31 */	bl action__16daObjL4DigSand_cFv
/* 80C66DA4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C66DA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C66DAC  7F C3 F3 78 */	mr r3, r30
/* 80C66DB0  4B FF FD A5 */	bl setBaseMtx__16daObjL4DigSand_cFv
/* 80C66DB4  38 60 00 01 */	li r3, 1
/* 80C66DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66DBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C66DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66DC4  7C 08 03 A6 */	mtlr r0
/* 80C66DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66DCC  4E 80 00 20 */	blr 
