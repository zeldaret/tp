lbl_80AB7484:
/* 80AB7484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7488  7C 08 02 A6 */	mflr r0
/* 80AB748C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB7494  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB7498  7C 7F 1B 78 */	mr r31, r3
/* 80AB749C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AB74A0  2C 00 00 02 */	cmpwi r0, 2
/* 80AB74A4  41 82 00 8C */	beq lbl_80AB7530
/* 80AB74A8  40 80 02 4C */	bge lbl_80AB76F4
/* 80AB74AC  2C 00 00 00 */	cmpwi r0, 0
/* 80AB74B0  40 80 00 0C */	bge lbl_80AB74BC
/* 80AB74B4  48 00 02 40 */	b lbl_80AB76F4
/* 80AB74B8  48 00 02 3C */	b lbl_80AB76F4
lbl_80AB74BC:
/* 80AB74BC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB74C0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB74C4  40 82 00 6C */	bne lbl_80AB7530
/* 80AB74C8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB74CC  2C 00 00 07 */	cmpwi r0, 7
/* 80AB74D0  41 82 00 28 */	beq lbl_80AB74F8
/* 80AB74D4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB74D8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB74DC  4B 68 E3 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB74E0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB74E4  38 00 00 07 */	li r0, 7
/* 80AB74E8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB74EC  3C 60 80 AC */	lis r3, lit_4579@ha
/* 80AB74F0  C0 03 8F 7C */	lfs f0, lit_4579@l(r3)
/* 80AB74F4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB74F8:
/* 80AB74F8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB74FC  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7500  41 82 00 28 */	beq lbl_80AB7528
/* 80AB7504  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB7508  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB750C  4B 68 E3 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB7510  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB7514  38 00 00 00 */	li r0, 0
/* 80AB7518  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB751C  3C 60 80 AC */	lis r3, lit_4579@ha
/* 80AB7520  C0 03 8F 7C */	lfs f0, lit_4579@l(r3)
/* 80AB7524  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AB7528:
/* 80AB7528  38 00 00 02 */	li r0, 2
/* 80AB752C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB7530:
/* 80AB7530  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB7534  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7538  40 82 01 BC */	bne lbl_80AB76F4
/* 80AB753C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB7540  4B 68 E1 C8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AB7544  28 03 00 00 */	cmplwi r3, 0
/* 80AB7548  41 82 01 08 */	beq lbl_80AB7650
/* 80AB754C  3B C0 00 00 */	li r30, 0
/* 80AB7550  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB7554  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7558  41 82 00 28 */	beq lbl_80AB7580
/* 80AB755C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB7560  4B 68 E1 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7564  38 00 00 00 */	li r0, 0
/* 80AB7568  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB756C  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB7570  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB7574  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB7578  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB757C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB7580:
/* 80AB7580  38 00 00 00 */	li r0, 0
/* 80AB7584  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7588  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB758C  4B 68 E1 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AB7590  7C 64 1B 78 */	mr r4, r3
/* 80AB7594  7F E3 FB 78 */	mr r3, r31
/* 80AB7598  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80AB759C  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80AB75A0  4B 69 36 30 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80AB75A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AB75A8  41 82 00 44 */	beq lbl_80AB75EC
/* 80AB75AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB75B0  2C 00 00 01 */	cmpwi r0, 1
/* 80AB75B4  41 82 00 2C */	beq lbl_80AB75E0
/* 80AB75B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB75BC  4B 68 E1 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB75C0  38 00 00 00 */	li r0, 0
/* 80AB75C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB75C8  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB75CC  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB75D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB75D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB75D8  38 00 00 01 */	li r0, 1
/* 80AB75DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB75E0:
/* 80AB75E0  38 00 00 00 */	li r0, 0
/* 80AB75E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB75E8  3B C0 00 01 */	li r30, 1
lbl_80AB75EC:
/* 80AB75EC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80AB75F0  28 00 00 00 */	cmplwi r0, 0
/* 80AB75F4  40 82 00 30 */	bne lbl_80AB7624
/* 80AB75F8  2C 1E 00 00 */	cmpwi r30, 0
/* 80AB75FC  40 82 00 28 */	bne lbl_80AB7624
/* 80AB7600  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB7604  4B 68 E0 F8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7608  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AB760C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB7610  7C 03 00 00 */	cmpw r3, r0
/* 80AB7614  40 82 00 E0 */	bne lbl_80AB76F4
/* 80AB7618  38 00 00 01 */	li r0, 1
/* 80AB761C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AB7620  48 00 00 D4 */	b lbl_80AB76F4
lbl_80AB7624:
/* 80AB7624  7F E3 FB 78 */	mr r3, r31
/* 80AB7628  4B 69 3D 10 */	b srchPlayerActor__8daNpcT_cFv
/* 80AB762C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB7630  40 82 00 C4 */	bne lbl_80AB76F4
/* 80AB7634  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AB7638  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB763C  7C 03 00 00 */	cmpw r3, r0
/* 80AB7640  40 82 00 B4 */	bne lbl_80AB76F4
/* 80AB7644  38 00 00 01 */	li r0, 1
/* 80AB7648  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AB764C  48 00 00 A8 */	b lbl_80AB76F4
lbl_80AB7650:
/* 80AB7650  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB7654  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7658  41 82 00 28 */	beq lbl_80AB7680
/* 80AB765C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB7660  4B 68 E0 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7664  38 00 00 00 */	li r0, 0
/* 80AB7668  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB766C  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB7670  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB7674  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB7678  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB767C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB7680:
/* 80AB7680  38 00 00 00 */	li r0, 0
/* 80AB7684  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7688  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AB768C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB7690  7C 04 00 00 */	cmpw r4, r0
/* 80AB7694  41 82 00 58 */	beq lbl_80AB76EC
/* 80AB7698  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80AB769C  28 00 00 00 */	cmplwi r0, 0
/* 80AB76A0  40 82 00 18 */	bne lbl_80AB76B8
/* 80AB76A4  7F E3 FB 78 */	mr r3, r31
/* 80AB76A8  4B 69 33 70 */	b setAngle__8daNpcT_cFs
/* 80AB76AC  38 00 00 01 */	li r0, 1
/* 80AB76B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AB76B4  48 00 00 2C */	b lbl_80AB76E0
lbl_80AB76B8:
/* 80AB76B8  7F E3 FB 78 */	mr r3, r31
/* 80AB76BC  38 A0 00 07 */	li r5, 7
/* 80AB76C0  38 C0 00 08 */	li r6, 8
/* 80AB76C4  38 E0 00 0F */	li r7, 0xf
/* 80AB76C8  39 00 00 00 */	li r8, 0
/* 80AB76CC  4B 69 3F 7C */	b step__8daNpcT_cFsiiii
/* 80AB76D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AB76D4  41 82 00 0C */	beq lbl_80AB76E0
/* 80AB76D8  38 00 00 01 */	li r0, 1
/* 80AB76DC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB76E0:
/* 80AB76E0  38 00 00 00 */	li r0, 0
/* 80AB76E4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AB76E8  48 00 00 0C */	b lbl_80AB76F4
lbl_80AB76EC:
/* 80AB76EC  7F E3 FB 78 */	mr r3, r31
/* 80AB76F0  4B 69 3C 48 */	b srchPlayerActor__8daNpcT_cFv
lbl_80AB76F4:
/* 80AB76F4  38 60 00 01 */	li r3, 1
/* 80AB76F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB76FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB7700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7704  7C 08 03 A6 */	mtlr r0
/* 80AB7708  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB770C  4E 80 00 20 */	blr 
