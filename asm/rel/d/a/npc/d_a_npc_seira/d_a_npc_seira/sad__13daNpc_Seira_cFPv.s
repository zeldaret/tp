lbl_80ACE4FC:
/* 80ACE4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACE500  7C 08 02 A6 */	mflr r0
/* 80ACE504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACE508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACE50C  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACE510  7C 7F 1B 78 */	mr r31, r3
/* 80ACE514  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE518  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE51C  41 82 00 B8 */	beq lbl_80ACE5D4
/* 80ACE520  40 80 00 CC */	bge lbl_80ACE5EC
/* 80ACE524  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE528  40 80 00 0C */	bge lbl_80ACE534
/* 80ACE52C  48 00 00 C0 */	b lbl_80ACE5EC
/* 80ACE530  48 00 00 BC */	b lbl_80ACE5EC
lbl_80ACE534:
/* 80ACE534  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE538  2C 00 00 0B */	cmpwi r0, 0xb
/* 80ACE53C  41 82 00 28 */	beq lbl_80ACE564
/* 80ACE540  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE544  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE548  4B 67 73 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE54C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE550  38 00 00 0B */	li r0, 0xb
/* 80ACE554  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE558  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE55C  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE560  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE564:
/* 80ACE564  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE568  2C 00 00 10 */	cmpwi r0, 0x10
/* 80ACE56C  41 82 00 28 */	beq lbl_80ACE594
/* 80ACE570  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE574  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE578  4B 67 73 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE57C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE580  38 00 00 10 */	li r0, 0x10
/* 80ACE584  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE588  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE58C  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE590  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE594:
/* 80ACE594  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE598  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE59C  41 82 00 28 */	beq lbl_80ACE5C4
/* 80ACE5A0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE5A4  4B 67 71 59 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE5A8  38 00 00 00 */	li r0, 0
/* 80ACE5AC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE5B0  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE5B4  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE5B8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE5BC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE5C0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE5C4:
/* 80ACE5C4  38 00 00 00 */	li r0, 0
/* 80ACE5C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE5CC  38 00 00 02 */	li r0, 2
/* 80ACE5D0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE5D4:
/* 80ACE5D4  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACE5D8  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE5DC  40 82 00 10 */	bne lbl_80ACE5EC
/* 80ACE5E0  38 00 00 01 */	li r0, 1
/* 80ACE5E4  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80ACE5E8  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80ACE5EC:
/* 80ACE5EC  38 60 00 01 */	li r3, 1
/* 80ACE5F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE5F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE5F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE5FC  7C 08 03 A6 */	mtlr r0
/* 80ACE600  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE604  4E 80 00 20 */	blr 
