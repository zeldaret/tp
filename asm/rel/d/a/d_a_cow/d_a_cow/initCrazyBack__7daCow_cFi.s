lbl_8065F744:
/* 8065F744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065F748  7C 08 02 A6 */	mflr r0
/* 8065F74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065F750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065F754  7C 7F 1B 78 */	mr r31, r3
/* 8065F758  88 03 0C 5F */	lbz r0, 0xc5f(r3)
/* 8065F75C  28 00 00 03 */	cmplwi r0, 3
/* 8065F760  40 82 00 48 */	bne lbl_8065F7A8
/* 8065F764  38 80 00 1C */	li r4, 0x1c
/* 8065F768  38 A0 00 02 */	li r5, 2
/* 8065F76C  3C C0 80 66 */	lis r6, lit_4087@ha
/* 8065F770  C0 26 2D D0 */	lfs f1, lit_4087@l(r6)
/* 8065F774  3C C0 80 66 */	lis r6, lit_3989@ha
/* 8065F778  C0 46 2D B8 */	lfs f2, lit_3989@l(r6)
/* 8065F77C  4B FF 8F B5 */	bl setBck__7daCow_cFiUcff
/* 8065F780  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8065F784  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8065F788  28 03 00 FF */	cmplwi r3, 0xff
/* 8065F78C  41 82 00 1C */	beq lbl_8065F7A8
/* 8065F790  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8065F794  7C 04 07 74 */	extsb r4, r0
/* 8065F798  4B 9F 20 54 */	b dPath_GetRoomPath__Fii
/* 8065F79C  90 7F 0C 0C */	stw r3, 0xc0c(r31)
/* 8065F7A0  38 00 00 03 */	li r0, 3
/* 8065F7A4  98 1F 0C 10 */	stb r0, 0xc10(r31)
lbl_8065F7A8:
/* 8065F7A8  38 00 00 00 */	li r0, 0
/* 8065F7AC  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 8065F7B0  98 1F 0C 61 */	stb r0, 0xc61(r31)
/* 8065F7B4  A8 1F 0C 34 */	lha r0, 0xc34(r31)
/* 8065F7B8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8065F7BC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8065F7C0  38 00 00 08 */	li r0, 8
/* 8065F7C4  98 1F 0C 9F */	stb r0, 0xc9f(r31)
/* 8065F7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065F7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065F7D0  7C 08 03 A6 */	mtlr r0
/* 8065F7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8065F7D8  4E 80 00 20 */	blr 
