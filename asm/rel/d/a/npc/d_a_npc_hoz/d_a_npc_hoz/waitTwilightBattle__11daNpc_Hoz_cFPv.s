lbl_80A03578:
/* 80A03578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0357C  7C 08 02 A6 */	mflr r0
/* 80A03580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A03584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A03588  93 C1 00 08 */	stw r30, 8(r1)
/* 80A0358C  7C 7F 1B 78 */	mr r31, r3
/* 80A03590  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A03594  2C 00 00 02 */	cmpwi r0, 2
/* 80A03598  41 82 01 64 */	beq lbl_80A036FC
/* 80A0359C  40 80 02 2C */	bge lbl_80A037C8
/* 80A035A0  2C 00 00 00 */	cmpwi r0, 0
/* 80A035A4  40 80 00 0C */	bge lbl_80A035B0
/* 80A035A8  48 00 02 20 */	b lbl_80A037C8
/* 80A035AC  48 00 02 1C */	b lbl_80A037C8
lbl_80A035B0:
/* 80A035B0  38 60 00 50 */	li r3, 0x50
/* 80A035B4  4B 74 94 F9 */	bl daNpcT_chkEvtBit__FUl
/* 80A035B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A035BC  41 82 00 D8 */	beq lbl_80A03694
/* 80A035C0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A035C4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A035C8  40 82 00 34 */	bne lbl_80A035FC
/* 80A035CC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A035D0  41 82 00 58 */	beq lbl_80A03628
/* 80A035D4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A035D8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A035DC  4B 74 22 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A035E0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A035E4  38 00 00 20 */	li r0, 0x20
/* 80A035E8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A035EC  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A035F0  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A035F4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A035F8  48 00 00 30 */	b lbl_80A03628
lbl_80A035FC:
/* 80A035FC  2C 00 00 23 */	cmpwi r0, 0x23
/* 80A03600  41 82 00 28 */	beq lbl_80A03628
/* 80A03604  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03608  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A0360C  4B 74 22 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03610  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03614  38 00 00 23 */	li r0, 0x23
/* 80A03618  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A0361C  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A03620  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A03624  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A03628:
/* 80A03628  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A0362C  2C 00 00 09 */	cmpwi r0, 9
/* 80A03630  40 82 00 34 */	bne lbl_80A03664
/* 80A03634  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80A03638  41 82 00 BC */	beq lbl_80A036F4
/* 80A0363C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A03640  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A03644  4B 74 22 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03648  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A0364C  38 00 00 1B */	li r0, 0x1b
/* 80A03650  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A03654  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A03658  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A0365C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80A03660  48 00 00 94 */	b lbl_80A036F4
lbl_80A03664:
/* 80A03664  2C 00 00 21 */	cmpwi r0, 0x21
/* 80A03668  41 82 00 8C */	beq lbl_80A036F4
/* 80A0366C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A03670  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A03674  4B 74 22 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03678  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A0367C  38 00 00 21 */	li r0, 0x21
/* 80A03680  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A03684  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A03688  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A0368C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80A03690  48 00 00 64 */	b lbl_80A036F4
lbl_80A03694:
/* 80A03694  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A03698  2C 00 00 01 */	cmpwi r0, 1
/* 80A0369C  41 82 00 28 */	beq lbl_80A036C4
/* 80A036A0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A036A4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A036A8  4B 74 21 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A036AC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A036B0  38 00 00 01 */	li r0, 1
/* 80A036B4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A036B8  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A036BC  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A036C0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A036C4:
/* 80A036C4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A036C8  2C 00 00 02 */	cmpwi r0, 2
/* 80A036CC  41 82 00 28 */	beq lbl_80A036F4
/* 80A036D0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A036D4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A036D8  4B 74 21 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A036DC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A036E0  38 00 00 02 */	li r0, 2
/* 80A036E4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A036E8  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A036EC  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A036F0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A036F4:
/* 80A036F4  38 00 00 02 */	li r0, 2
/* 80A036F8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A036FC:
/* 80A036FC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A03700  28 00 00 00 */	cmplwi r0, 0
/* 80A03704  40 82 00 C4 */	bne lbl_80A037C8
/* 80A03708  7F E3 FB 78 */	mr r3, r31
/* 80A0370C  4B 74 7C 2D */	bl srchPlayerActor__8daNpcT_cFv
/* 80A03710  2C 03 00 00 */	cmpwi r3, 0
/* 80A03714  41 82 00 44 */	beq lbl_80A03758
/* 80A03718  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A0371C  2C 00 00 01 */	cmpwi r0, 1
/* 80A03720  41 82 00 2C */	beq lbl_80A0374C
/* 80A03724  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03728  4B 74 1F D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A0372C  38 00 00 00 */	li r0, 0
/* 80A03730  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03734  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A03738  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A0373C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03740  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03744  38 00 00 01 */	li r0, 1
/* 80A03748  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A0374C:
/* 80A0374C  38 00 00 00 */	li r0, 0
/* 80A03750  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03754  48 00 00 74 */	b lbl_80A037C8
lbl_80A03758:
/* 80A03758  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A0375C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A03760  7C 04 00 00 */	cmpw r4, r0
/* 80A03764  41 82 00 2C */	beq lbl_80A03790
/* 80A03768  7F E3 FB 78 */	mr r3, r31
/* 80A0376C  38 A0 FF FF */	li r5, -1
/* 80A03770  38 C0 FF FF */	li r6, -1
/* 80A03774  38 E0 00 0F */	li r7, 0xf
/* 80A03778  39 00 00 00 */	li r8, 0
/* 80A0377C  4B 74 7E CD */	bl step__8daNpcT_cFsiiii
/* 80A03780  2C 03 00 00 */	cmpwi r3, 0
/* 80A03784  41 82 00 0C */	beq lbl_80A03790
/* 80A03788  38 00 00 01 */	li r0, 1
/* 80A0378C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A03790:
/* 80A03790  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03794  2C 00 00 00 */	cmpwi r0, 0
/* 80A03798  41 82 00 28 */	beq lbl_80A037C0
/* 80A0379C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A037A0  4B 74 1F 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A037A4  38 00 00 00 */	li r0, 0
/* 80A037A8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A037AC  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A037B0  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A037B4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A037B8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A037BC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A037C0:
/* 80A037C0  38 00 00 00 */	li r0, 0
/* 80A037C4  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A037C8:
/* 80A037C8  38 60 00 01 */	li r3, 1
/* 80A037CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A037D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A037D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A037D8  7C 08 03 A6 */	mtlr r0
/* 80A037DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A037E0  4E 80 00 20 */	blr 
