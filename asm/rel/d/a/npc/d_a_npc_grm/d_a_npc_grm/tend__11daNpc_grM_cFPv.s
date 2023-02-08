lbl_809D58F4:
/* 809D58F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D58F8  7C 08 02 A6 */	mflr r0
/* 809D58FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D5904  93 C1 00 08 */	stw r30, 8(r1)
/* 809D5908  7C 7F 1B 78 */	mr r31, r3
/* 809D590C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809D5910  2C 00 00 02 */	cmpwi r0, 2
/* 809D5914  41 82 00 80 */	beq lbl_809D5994
/* 809D5918  40 80 01 78 */	bge lbl_809D5A90
/* 809D591C  2C 00 00 00 */	cmpwi r0, 0
/* 809D5920  40 80 00 0C */	bge lbl_809D592C
/* 809D5924  48 00 01 6C */	b lbl_809D5A90
/* 809D5928  48 00 01 68 */	b lbl_809D5A90
lbl_809D592C:
/* 809D592C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809D5930  2C 00 00 04 */	cmpwi r0, 4
/* 809D5934  41 82 00 28 */	beq lbl_809D595C
/* 809D5938  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809D593C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809D5940  4B 76 FF 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D5944  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809D5948  38 00 00 04 */	li r0, 4
/* 809D594C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809D5950  3C 60 80 9D */	lis r3, lit_4560@ha /* 0x809D6E30@ha */
/* 809D5954  C0 03 6E 30 */	lfs f0, lit_4560@l(r3)  /* 0x809D6E30@l */
/* 809D5958  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809D595C:
/* 809D595C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809D5960  2C 00 00 00 */	cmpwi r0, 0
/* 809D5964  41 82 00 28 */	beq lbl_809D598C
/* 809D5968  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809D596C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809D5970  4B 76 FF 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D5974  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809D5978  38 00 00 00 */	li r0, 0
/* 809D597C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809D5980  3C 60 80 9D */	lis r3, lit_4560@ha /* 0x809D6E30@ha */
/* 809D5984  C0 03 6E 30 */	lfs f0, lit_4560@l(r3)  /* 0x809D6E30@l */
/* 809D5988  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809D598C:
/* 809D598C  38 00 00 02 */	li r0, 2
/* 809D5990  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D5994:
/* 809D5994  80 1F 10 D8 */	lwz r0, 0x10d8(r31)
/* 809D5998  2C 00 00 02 */	cmpwi r0, 2
/* 809D599C  40 82 00 10 */	bne lbl_809D59AC
/* 809D59A0  38 00 00 01 */	li r0, 1
/* 809D59A4  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 809D59A8  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_809D59AC:
/* 809D59AC  7F E3 FB 78 */	mr r3, r31
/* 809D59B0  4B 77 59 89 */	bl srchPlayerActor__8daNpcT_cFv
/* 809D59B4  2C 03 00 00 */	cmpwi r3, 0
/* 809D59B8  41 82 00 54 */	beq lbl_809D5A0C
/* 809D59BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809D59C0  2C 00 00 01 */	cmpwi r0, 1
/* 809D59C4  41 82 00 2C */	beq lbl_809D59F0
/* 809D59C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809D59CC  4B 76 FD 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D59D0  38 00 00 00 */	li r0, 0
/* 809D59D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809D59D8  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D59DC  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D59E0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809D59E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D59E8  38 00 00 01 */	li r0, 1
/* 809D59EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809D59F0:
/* 809D59F0  38 00 00 00 */	li r0, 0
/* 809D59F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D59F8  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 809D59FC  20 00 00 01 */	subfic r0, r0, 1
/* 809D5A00  7C 00 00 34 */	cntlzw r0, r0
/* 809D5A04  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 809D5A08  48 00 00 54 */	b lbl_809D5A5C
lbl_809D5A0C:
/* 809D5A0C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809D5A10  2C 00 00 00 */	cmpwi r0, 0
/* 809D5A14  41 82 00 28 */	beq lbl_809D5A3C
/* 809D5A18  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809D5A1C  4B 76 FC E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D5A20  38 00 00 00 */	li r0, 0
/* 809D5A24  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809D5A28  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D5A2C  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D5A30  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809D5A34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D5A38  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809D5A3C:
/* 809D5A3C  38 00 00 00 */	li r0, 0
/* 809D5A40  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D5A44  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809D5A48  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809D5A4C  7C 63 00 50 */	subf r3, r3, r0
/* 809D5A50  30 03 FF FF */	addic r0, r3, -1
/* 809D5A54  7C 00 19 10 */	subfe r0, r0, r3
/* 809D5A58  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_809D5A5C:
/* 809D5A5C  2C 00 00 00 */	cmpwi r0, 0
/* 809D5A60  41 82 00 30 */	beq lbl_809D5A90
/* 809D5A64  7F E3 FB 78 */	mr r3, r31
/* 809D5A68  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809D5A6C  38 A0 FF FF */	li r5, -1
/* 809D5A70  38 C0 FF FF */	li r6, -1
/* 809D5A74  38 E0 00 0F */	li r7, 0xf
/* 809D5A78  39 00 00 00 */	li r8, 0
/* 809D5A7C  4B 77 5B CD */	bl step__8daNpcT_cFsiiii
/* 809D5A80  2C 03 00 00 */	cmpwi r3, 0
/* 809D5A84  41 82 00 0C */	beq lbl_809D5A90
/* 809D5A88  38 00 00 01 */	li r0, 1
/* 809D5A8C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D5A90:
/* 809D5A90  38 60 00 01 */	li r3, 1
/* 809D5A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D5A98  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D5A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5AA0  7C 08 03 A6 */	mtlr r0
/* 809D5AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5AA8  4E 80 00 20 */	blr 
