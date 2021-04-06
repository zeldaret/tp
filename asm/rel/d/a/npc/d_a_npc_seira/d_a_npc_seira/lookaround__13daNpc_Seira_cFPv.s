lbl_80ACE608:
/* 80ACE608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACE60C  7C 08 02 A6 */	mflr r0
/* 80ACE610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACE614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACE618  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACE61C  7C 7F 1B 78 */	mr r31, r3
/* 80ACE620  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE624  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE628  41 82 00 B8 */	beq lbl_80ACE6E0
/* 80ACE62C  40 80 00 CC */	bge lbl_80ACE6F8
/* 80ACE630  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE634  40 80 00 0C */	bge lbl_80ACE640
/* 80ACE638  48 00 00 C0 */	b lbl_80ACE6F8
/* 80ACE63C  48 00 00 BC */	b lbl_80ACE6F8
lbl_80ACE640:
/* 80ACE640  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE644  2C 00 00 0D */	cmpwi r0, 0xd
/* 80ACE648  41 82 00 28 */	beq lbl_80ACE670
/* 80ACE64C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE650  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE654  4B 67 72 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE658  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE65C  38 00 00 0D */	li r0, 0xd
/* 80ACE660  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE664  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE668  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE66C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE670:
/* 80ACE670  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE674  2C 00 00 17 */	cmpwi r0, 0x17
/* 80ACE678  41 82 00 28 */	beq lbl_80ACE6A0
/* 80ACE67C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE680  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE684  4B 67 72 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE688  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE68C  38 00 00 17 */	li r0, 0x17
/* 80ACE690  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE694  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE698  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE69C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE6A0:
/* 80ACE6A0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE6A4  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE6A8  41 82 00 28 */	beq lbl_80ACE6D0
/* 80ACE6AC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE6B0  4B 67 70 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE6B4  38 00 00 00 */	li r0, 0
/* 80ACE6B8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE6BC  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE6C0  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE6C4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE6C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE6CC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE6D0:
/* 80ACE6D0  38 00 00 00 */	li r0, 0
/* 80ACE6D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE6D8  38 00 00 02 */	li r0, 2
/* 80ACE6DC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE6E0:
/* 80ACE6E0  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACE6E4  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE6E8  40 82 00 10 */	bne lbl_80ACE6F8
/* 80ACE6EC  38 00 00 01 */	li r0, 1
/* 80ACE6F0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80ACE6F4  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80ACE6F8:
/* 80ACE6F8  38 60 00 01 */	li r3, 1
/* 80ACE6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE700  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE708  7C 08 03 A6 */	mtlr r0
/* 80ACE70C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE710  4E 80 00 20 */	blr 
