lbl_80A9530C:
/* 80A9530C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95310  7C 08 02 A6 */	mflr r0
/* 80A95314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9531C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A95320  7C 7E 1B 78 */	mr r30, r3
/* 80A95324  3B E0 00 00 */	li r31, 0
/* 80A95328  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9532C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A95330  41 82 00 B8 */	beq lbl_80A953E8
/* 80A95334  40 80 00 10 */	bge lbl_80A95344
/* 80A95338  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9533C  40 80 00 14 */	bge lbl_80A95350
/* 80A95340  48 00 00 AC */	b lbl_80A953EC
lbl_80A95344:
/* 80A95344  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A95348  41 82 00 A4 */	beq lbl_80A953EC
/* 80A9534C  48 00 00 A0 */	b lbl_80A953EC
lbl_80A95350:
/* 80A95350  38 9E 0F 84 */	addi r4, r30, 0xf84
/* 80A95354  4B FF F7 D1 */	bl _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyz
/* 80A95358  2C 03 00 00 */	cmpwi r3, 0
/* 80A9535C  41 82 00 90 */	beq lbl_80A953EC
/* 80A95360  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80A95364  38 1E 0F 90 */	addi r0, r30, 0xf90
/* 80A95368  7C 63 00 50 */	subf r3, r3, r0
/* 80A9536C  30 03 FF FF */	addic r0, r3, -1
/* 80A95370  7C 00 19 10 */	subfe r0, r0, r3
/* 80A95374  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A95378  40 82 00 10 */	bne lbl_80A95388
/* 80A9537C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A95380  2C 00 00 03 */	cmpwi r0, 3
/* 80A95384  41 82 00 34 */	beq lbl_80A953B8
lbl_80A95388:
/* 80A95388  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9538C  4B 6B 03 70 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A95390  38 00 00 00 */	li r0, 0
/* 80A95394  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A95398  3C 60 80 A9 */	lis r3, lit_4347@ha
/* 80A9539C  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)
/* 80A953A0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A953A4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A953A8  38 00 00 03 */	li r0, 3
/* 80A953AC  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80A953B0  38 00 00 01 */	li r0, 1
/* 80A953B4  48 00 00 08 */	b lbl_80A953BC
lbl_80A953B8:
/* 80A953B8  38 00 00 00 */	li r0, 0
lbl_80A953BC:
/* 80A953BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A953C0  41 82 00 0C */	beq lbl_80A953CC
/* 80A953C4  38 1E 0F 90 */	addi r0, r30, 0xf90
/* 80A953C8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_80A953CC:
/* 80A953CC  38 00 00 00 */	li r0, 0
/* 80A953D0  B0 1E 0C D4 */	sth r0, 0xcd4(r30)
/* 80A953D4  B0 1E 0C D6 */	sth r0, 0xcd6(r30)
/* 80A953D8  38 00 00 01 */	li r0, 1
/* 80A953DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A953E0  3B E0 00 01 */	li r31, 1
/* 80A953E4  48 00 00 08 */	b lbl_80A953EC
lbl_80A953E8:
/* 80A953E8  3B E0 00 01 */	li r31, 1
lbl_80A953EC:
/* 80A953EC  7F E3 FB 78 */	mr r3, r31
/* 80A953F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A953F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A953F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A953FC  7C 08 03 A6 */	mtlr r0
/* 80A95400  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95404  4E 80 00 20 */	blr 
