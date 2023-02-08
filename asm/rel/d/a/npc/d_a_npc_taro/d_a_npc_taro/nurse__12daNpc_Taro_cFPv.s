lbl_8056FC20:
/* 8056FC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FC24  7C 08 02 A6 */	mflr r0
/* 8056FC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056FC30  93 C1 00 08 */	stw r30, 8(r1)
/* 8056FC34  7C 7F 1B 78 */	mr r31, r3
/* 8056FC38  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8056FC3C  2C 00 00 02 */	cmpwi r0, 2
/* 8056FC40  41 82 00 80 */	beq lbl_8056FCC0
/* 8056FC44  40 80 01 6C */	bge lbl_8056FDB0
/* 8056FC48  2C 00 00 00 */	cmpwi r0, 0
/* 8056FC4C  40 80 00 0C */	bge lbl_8056FC58
/* 8056FC50  48 00 01 60 */	b lbl_8056FDB0
/* 8056FC54  48 00 01 5C */	b lbl_8056FDB0
lbl_8056FC58:
/* 8056FC58  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056FC5C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056FC60  41 82 00 28 */	beq lbl_8056FC88
/* 8056FC64  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8056FC68  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056FC6C  4B BD 5C 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FC70  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8056FC74  38 00 00 1F */	li r0, 0x1f
/* 8056FC78  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056FC7C  3C 60 80 57 */	lis r3, lit_5232@ha /* 0x805717D0@ha */
/* 8056FC80  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)  /* 0x805717D0@l */
/* 8056FC84  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056FC88:
/* 8056FC88  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056FC8C  2C 00 00 00 */	cmpwi r0, 0
/* 8056FC90  41 82 00 28 */	beq lbl_8056FCB8
/* 8056FC94  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8056FC98  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056FC9C  4B BD 5B FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FCA0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8056FCA4  38 00 00 00 */	li r0, 0
/* 8056FCA8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056FCAC  3C 60 80 57 */	lis r3, lit_5232@ha /* 0x805717D0@ha */
/* 8056FCB0  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)  /* 0x805717D0@l */
/* 8056FCB4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056FCB8:
/* 8056FCB8  38 00 00 02 */	li r0, 2
/* 8056FCBC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8056FCC0:
/* 8056FCC0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8056FCC4  2C 00 00 00 */	cmpwi r0, 0
/* 8056FCC8  40 82 00 E8 */	bne lbl_8056FDB0
/* 8056FCCC  7F E3 FB 78 */	mr r3, r31
/* 8056FCD0  4B BD B6 69 */	bl srchPlayerActor__8daNpcT_cFv
/* 8056FCD4  2C 03 00 00 */	cmpwi r3, 0
/* 8056FCD8  41 82 00 54 */	beq lbl_8056FD2C
/* 8056FCDC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056FCE0  2C 00 00 01 */	cmpwi r0, 1
/* 8056FCE4  41 82 00 2C */	beq lbl_8056FD10
/* 8056FCE8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056FCEC  4B BD 5A 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056FCF0  38 00 00 00 */	li r0, 0
/* 8056FCF4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056FCF8  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056FCFC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056FD00  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056FD04  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056FD08  38 00 00 01 */	li r0, 1
/* 8056FD0C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056FD10:
/* 8056FD10  38 00 00 00 */	li r0, 0
/* 8056FD14  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056FD18  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 8056FD1C  20 00 00 01 */	subfic r0, r0, 1
/* 8056FD20  7C 00 00 34 */	cntlzw r0, r0
/* 8056FD24  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8056FD28  48 00 00 54 */	b lbl_8056FD7C
lbl_8056FD2C:
/* 8056FD2C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056FD30  2C 00 00 00 */	cmpwi r0, 0
/* 8056FD34  41 82 00 28 */	beq lbl_8056FD5C
/* 8056FD38  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056FD3C  4B BD 59 C1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056FD40  38 00 00 00 */	li r0, 0
/* 8056FD44  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056FD48  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056FD4C  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056FD50  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056FD54  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056FD58  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056FD5C:
/* 8056FD5C  38 00 00 00 */	li r0, 0
/* 8056FD60  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056FD64  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 8056FD68  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8056FD6C  7C 63 00 50 */	subf r3, r3, r0
/* 8056FD70  30 03 FF FF */	addic r0, r3, -1
/* 8056FD74  7C 00 19 10 */	subfe r0, r0, r3
/* 8056FD78  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_8056FD7C:
/* 8056FD7C  2C 00 00 00 */	cmpwi r0, 0
/* 8056FD80  41 82 00 30 */	beq lbl_8056FDB0
/* 8056FD84  7F E3 FB 78 */	mr r3, r31
/* 8056FD88  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8056FD8C  38 A0 00 1F */	li r5, 0x1f
/* 8056FD90  38 C0 00 24 */	li r6, 0x24
/* 8056FD94  38 E0 00 0F */	li r7, 0xf
/* 8056FD98  39 00 00 00 */	li r8, 0
/* 8056FD9C  4B BD B8 AD */	bl step__8daNpcT_cFsiiii
/* 8056FDA0  2C 03 00 00 */	cmpwi r3, 0
/* 8056FDA4  41 82 00 0C */	beq lbl_8056FDB0
/* 8056FDA8  38 00 00 01 */	li r0, 1
/* 8056FDAC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8056FDB0:
/* 8056FDB0  38 60 00 01 */	li r3, 1
/* 8056FDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056FDB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056FDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FDC0  7C 08 03 A6 */	mtlr r0
/* 8056FDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FDC8  4E 80 00 20 */	blr 
