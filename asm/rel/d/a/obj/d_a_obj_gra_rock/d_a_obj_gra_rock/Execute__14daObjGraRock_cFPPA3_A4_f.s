lbl_80C11FF0:
/* 80C11FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11FF4  7C 08 02 A6 */	mflr r0
/* 80C11FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C11FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12000  93 C1 00 08 */	stw r30, 8(r1)
/* 80C12004  7C 7E 1B 78 */	mr r30, r3
/* 80C12008  7C 9F 23 78 */	mr r31, r4
/* 80C1200C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80C12010  4B 3F B4 19 */	bl play__14mDoExt_baseAnmFv
/* 80C12014  88 1E 09 BD */	lbz r0, 0x9bd(r30)
/* 80C12018  28 00 00 00 */	cmplwi r0, 0
/* 80C1201C  41 82 00 50 */	beq lbl_80C1206C
/* 80C12020  88 1E 05 D1 */	lbz r0, 0x5d1(r30)
/* 80C12024  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C12028  41 82 00 34 */	beq lbl_80C1205C
/* 80C1202C  38 7E 09 BD */	addi r3, r30, 0x9bd
/* 80C12030  48 00 02 DD */	bl func_80C1230C
/* 80C12034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C12038  40 82 00 88 */	bne lbl_80C120C0
/* 80C1203C  3C 60 80 C1 */	lis r3, lit_3857@ha /* 0x80C12400@ha */
/* 80C12040  C0 03 24 00 */	lfs f0, lit_3857@l(r3)  /* 0x80C12400@l */
/* 80C12044  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80C12048  38 60 00 5A */	li r3, 0x5a
/* 80C1204C  38 80 00 5A */	li r4, 0x5a
/* 80C12050  48 00 02 D9 */	bl func_80C12328
/* 80C12054  B0 7E 09 BE */	sth r3, 0x9be(r30)
/* 80C12058  48 00 00 68 */	b lbl_80C120C0
lbl_80C1205C:
/* 80C1205C  3C 60 80 C1 */	lis r3, lit_3860@ha /* 0x80C1240C@ha */
/* 80C12060  C0 03 24 0C */	lfs f0, lit_3860@l(r3)  /* 0x80C1240C@l */
/* 80C12064  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80C12068  48 00 00 58 */	b lbl_80C120C0
lbl_80C1206C:
/* 80C1206C  38 7E 09 BE */	addi r3, r30, 0x9be
/* 80C12070  48 00 02 81 */	bl func_80C122F0
/* 80C12074  7C 60 07 35 */	extsh. r0, r3
/* 80C12078  40 82 00 3C */	bne lbl_80C120B4
/* 80C1207C  3C 60 80 C1 */	lis r3, lit_3860@ha /* 0x80C1240C@ha */
/* 80C12080  C0 03 24 0C */	lfs f0, lit_3860@l(r3)  /* 0x80C1240C@l */
/* 80C12084  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80C12088  88 1E 05 D1 */	lbz r0, 0x5d1(r30)
/* 80C1208C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C12090  41 82 00 30 */	beq lbl_80C120C0
/* 80C12094  38 60 00 5A */	li r3, 0x5a
/* 80C12098  38 80 00 5A */	li r4, 0x5a
/* 80C1209C  48 00 02 8D */	bl func_80C12328
/* 80C120A0  B0 7E 09 BE */	sth r3, 0x9be(r30)
/* 80C120A4  3C 60 80 C1 */	lis r3, lit_3857@ha /* 0x80C12400@ha */
/* 80C120A8  C0 03 24 00 */	lfs f0, lit_3857@l(r3)  /* 0x80C12400@l */
/* 80C120AC  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80C120B0  48 00 00 10 */	b lbl_80C120C0
lbl_80C120B4:
/* 80C120B4  3C 60 80 C1 */	lis r3, lit_3857@ha /* 0x80C12400@ha */
/* 80C120B8  C0 03 24 00 */	lfs f0, lit_3857@l(r3)  /* 0x80C12400@l */
/* 80C120BC  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
lbl_80C120C0:
/* 80C120C0  7F C3 F3 78 */	mr r3, r30
/* 80C120C4  4B FF F7 0D */	bl col_set__14daObjGraRock_cFv
/* 80C120C8  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C120CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C120D0  7F C3 F3 78 */	mr r3, r30
/* 80C120D4  4B FF F0 25 */	bl setAttnPos__14daObjGraRock_cFv
/* 80C120D8  7F C3 F3 78 */	mr r3, r30
/* 80C120DC  4B FF F3 69 */	bl setBaseMtx__14daObjGraRock_cFv
/* 80C120E0  38 60 00 01 */	li r3, 1
/* 80C120E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C120E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C120EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C120F0  7C 08 03 A6 */	mtlr r0
/* 80C120F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C120F8  4E 80 00 20 */	blr 
