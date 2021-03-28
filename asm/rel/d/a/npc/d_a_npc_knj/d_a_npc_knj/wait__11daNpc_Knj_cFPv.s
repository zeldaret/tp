lbl_80A443EC:
/* 80A443EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A443F0  7C 08 02 A6 */	mflr r0
/* 80A443F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A443F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A443FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A44400  7C 7F 1B 78 */	mr r31, r3
/* 80A44404  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A44408  2C 00 00 02 */	cmpwi r0, 2
/* 80A4440C  41 82 00 80 */	beq lbl_80A4448C
/* 80A44410  40 80 01 6C */	bge lbl_80A4457C
/* 80A44414  2C 00 00 00 */	cmpwi r0, 0
/* 80A44418  40 80 00 0C */	bge lbl_80A44424
/* 80A4441C  48 00 01 60 */	b lbl_80A4457C
/* 80A44420  48 00 01 5C */	b lbl_80A4457C
lbl_80A44424:
/* 80A44424  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A44428  2C 00 00 00 */	cmpwi r0, 0
/* 80A4442C  41 82 00 28 */	beq lbl_80A44454
/* 80A44430  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A44434  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A44438  4B 70 14 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A4443C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A44440  38 00 00 00 */	li r0, 0
/* 80A44444  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A44448  3C 60 80 A4 */	lis r3, lit_4529@ha
/* 80A4444C  C0 03 55 B8 */	lfs f0, lit_4529@l(r3)
/* 80A44450  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A44454:
/* 80A44454  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A44458  2C 00 00 00 */	cmpwi r0, 0
/* 80A4445C  41 82 00 28 */	beq lbl_80A44484
/* 80A44460  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A44464  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A44468  4B 70 14 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A4446C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A44470  38 00 00 00 */	li r0, 0
/* 80A44474  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A44478  3C 60 80 A4 */	lis r3, lit_4529@ha
/* 80A4447C  C0 03 55 B8 */	lfs f0, lit_4529@l(r3)
/* 80A44480  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A44484:
/* 80A44484  38 00 00 02 */	li r0, 2
/* 80A44488  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A4448C:
/* 80A4448C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A44490  2C 00 00 00 */	cmpwi r0, 0
/* 80A44494  40 82 00 E8 */	bne lbl_80A4457C
/* 80A44498  7F E3 FB 78 */	mr r3, r31
/* 80A4449C  4B 70 6E 9C */	b srchPlayerActor__8daNpcT_cFv
/* 80A444A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A444A4  41 82 00 54 */	beq lbl_80A444F8
/* 80A444A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A444AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A444B0  41 82 00 2C */	beq lbl_80A444DC
/* 80A444B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A444B8  4B 70 12 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A444BC  38 00 00 00 */	li r0, 0
/* 80A444C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A444C4  3C 60 80 A4 */	lis r3, lit_4089@ha
/* 80A444C8  C0 03 55 9C */	lfs f0, lit_4089@l(r3)
/* 80A444CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A444D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A444D4  38 00 00 01 */	li r0, 1
/* 80A444D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A444DC:
/* 80A444DC  38 00 00 00 */	li r0, 0
/* 80A444E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A444E4  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80A444E8  20 00 00 01 */	subfic r0, r0, 1
/* 80A444EC  7C 00 00 34 */	cntlzw r0, r0
/* 80A444F0  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80A444F4  48 00 00 54 */	b lbl_80A44548
lbl_80A444F8:
/* 80A444F8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A444FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A44500  41 82 00 28 */	beq lbl_80A44528
/* 80A44504  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A44508  4B 70 11 F4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A4450C  38 00 00 00 */	li r0, 0
/* 80A44510  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A44514  3C 60 80 A4 */	lis r3, lit_4089@ha
/* 80A44518  C0 03 55 9C */	lfs f0, lit_4089@l(r3)
/* 80A4451C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A44520  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A44524  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A44528:
/* 80A44528  38 00 00 00 */	li r0, 0
/* 80A4452C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A44530  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A44534  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A44538  7C 63 00 50 */	subf r3, r3, r0
/* 80A4453C  30 03 FF FF */	addic r0, r3, -1
/* 80A44540  7C 00 19 10 */	subfe r0, r0, r3
/* 80A44544  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_80A44548:
/* 80A44548  2C 00 00 00 */	cmpwi r0, 0
/* 80A4454C  41 82 00 30 */	beq lbl_80A4457C
/* 80A44550  7F E3 FB 78 */	mr r3, r31
/* 80A44554  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A44558  38 A0 FF FF */	li r5, -1
/* 80A4455C  38 C0 FF FF */	li r6, -1
/* 80A44560  38 E0 00 0F */	li r7, 0xf
/* 80A44564  39 00 00 00 */	li r8, 0
/* 80A44568  4B 70 70 E0 */	b step__8daNpcT_cFsiiii
/* 80A4456C  2C 03 00 00 */	cmpwi r3, 0
/* 80A44570  41 82 00 0C */	beq lbl_80A4457C
/* 80A44574  38 00 00 01 */	li r0, 1
/* 80A44578  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A4457C:
/* 80A4457C  38 60 00 01 */	li r3, 1
/* 80A44580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A44584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A44588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4458C  7C 08 03 A6 */	mtlr r0
/* 80A44590  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44594  4E 80 00 20 */	blr 
