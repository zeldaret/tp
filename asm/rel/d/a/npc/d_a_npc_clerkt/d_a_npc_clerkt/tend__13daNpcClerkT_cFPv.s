lbl_8099B4DC:
/* 8099B4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099B4E0  7C 08 02 A6 */	mflr r0
/* 8099B4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099B4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099B4EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8099B4F0  7C 7F 1B 78 */	mr r31, r3
/* 8099B4F4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8099B4F8  2C 00 00 02 */	cmpwi r0, 2
/* 8099B4FC  41 82 00 8C */	beq lbl_8099B588
/* 8099B500  40 80 00 F0 */	bge lbl_8099B5F0
/* 8099B504  2C 00 00 00 */	cmpwi r0, 0
/* 8099B508  40 80 00 0C */	bge lbl_8099B514
/* 8099B50C  48 00 00 E4 */	b lbl_8099B5F0
/* 8099B510  48 00 00 E0 */	b lbl_8099B5F0
lbl_8099B514:
/* 8099B514  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099B518  2C 00 00 00 */	cmpwi r0, 0
/* 8099B51C  40 82 00 6C */	bne lbl_8099B588
/* 8099B520  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8099B524  2C 00 00 01 */	cmpwi r0, 1
/* 8099B528  41 82 00 28 */	beq lbl_8099B550
/* 8099B52C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8099B530  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8099B534  4B 7A A3 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099B538  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8099B53C  38 00 00 01 */	li r0, 1
/* 8099B540  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8099B544  3C 60 80 9A */	lis r3, lit_4829@ha /* 0x8099D308@ha */
/* 8099B548  C0 03 D3 08 */	lfs f0, lit_4829@l(r3)  /* 0x8099D308@l */
/* 8099B54C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8099B550:
/* 8099B550  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8099B554  2C 00 00 00 */	cmpwi r0, 0
/* 8099B558  41 82 00 28 */	beq lbl_8099B580
/* 8099B55C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8099B560  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8099B564  4B 7A A3 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099B568  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8099B56C  38 00 00 00 */	li r0, 0
/* 8099B570  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8099B574  3C 60 80 9A */	lis r3, lit_4829@ha /* 0x8099D308@ha */
/* 8099B578  C0 03 D3 08 */	lfs f0, lit_4829@l(r3)  /* 0x8099D308@l */
/* 8099B57C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8099B580:
/* 8099B580  38 00 00 02 */	li r0, 2
/* 8099B584  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099B588:
/* 8099B588  88 1F 10 EA */	lbz r0, 0x10ea(r31)
/* 8099B58C  28 00 00 00 */	cmplwi r0, 0
/* 8099B590  41 82 00 1C */	beq lbl_8099B5AC
/* 8099B594  80 1F 10 E0 */	lwz r0, 0x10e0(r31)
/* 8099B598  2C 00 00 02 */	cmpwi r0, 2
/* 8099B59C  40 82 00 10 */	bne lbl_8099B5AC
/* 8099B5A0  38 00 00 01 */	li r0, 1
/* 8099B5A4  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 8099B5A8  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_8099B5AC:
/* 8099B5AC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099B5B0  2C 00 00 00 */	cmpwi r0, 0
/* 8099B5B4  40 82 00 3C */	bne lbl_8099B5F0
/* 8099B5B8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B5BC  2C 00 00 00 */	cmpwi r0, 0
/* 8099B5C0  41 82 00 28 */	beq lbl_8099B5E8
/* 8099B5C4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B5C8  4B 7A A1 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8099B5CC  38 00 00 00 */	li r0, 0
/* 8099B5D0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B5D4  3C 60 80 9A */	lis r3, lit_4123@ha /* 0x8099D2F0@ha */
/* 8099B5D8  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)  /* 0x8099D2F0@l */
/* 8099B5DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B5E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B5E4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B5E8:
/* 8099B5E8  38 00 00 00 */	li r0, 0
/* 8099B5EC  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_8099B5F0:
/* 8099B5F0  38 60 00 01 */	li r3, 1
/* 8099B5F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099B5F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099B5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099B600  7C 08 03 A6 */	mtlr r0
/* 8099B604  38 21 00 10 */	addi r1, r1, 0x10
/* 8099B608  4E 80 00 20 */	blr 
