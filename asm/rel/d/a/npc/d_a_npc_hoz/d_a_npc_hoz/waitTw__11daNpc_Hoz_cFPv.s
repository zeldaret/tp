lbl_80A04400:
/* 80A04400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A04404  7C 08 02 A6 */	mflr r0
/* 80A04408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0440C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A04410  93 C1 00 08 */	stw r30, 8(r1)
/* 80A04414  7C 7F 1B 78 */	mr r31, r3
/* 80A04418  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A0441C  2C 00 00 02 */	cmpwi r0, 2
/* 80A04420  41 82 00 F4 */	beq lbl_80A04514
/* 80A04424  40 80 01 BC */	bge lbl_80A045E0
/* 80A04428  2C 00 00 00 */	cmpwi r0, 0
/* 80A0442C  40 80 00 0C */	bge lbl_80A04438
/* 80A04430  48 00 01 B0 */	b lbl_80A045E0
/* 80A04434  48 00 01 AC */	b lbl_80A045E0
lbl_80A04438:
/* 80A04438  38 60 02 C0 */	li r3, 0x2c0
/* 80A0443C  4B 75 11 F8 */	b daNpcF_chkEvtBit__FUl
/* 80A04440  2C 03 00 00 */	cmpwi r3, 0
/* 80A04444  41 82 00 68 */	beq lbl_80A044AC
/* 80A04448  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A0444C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A04450  41 82 00 28 */	beq lbl_80A04478
/* 80A04454  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A04458  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A0445C  4B 74 14 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A04460  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A04464  38 00 00 1A */	li r0, 0x1a
/* 80A04468  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A0446C  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A04470  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A04474  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A04478:
/* 80A04478  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A0447C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A04480  41 82 00 8C */	beq lbl_80A0450C
/* 80A04484  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A04488  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A0448C  4B 74 14 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A04490  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A04494  38 00 00 1E */	li r0, 0x1e
/* 80A04498  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A0449C  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A044A0  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A044A4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A044A8  48 00 00 64 */	b lbl_80A0450C
lbl_80A044AC:
/* 80A044AC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A044B0  2C 00 00 21 */	cmpwi r0, 0x21
/* 80A044B4  41 82 00 28 */	beq lbl_80A044DC
/* 80A044B8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A044BC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A044C0  4B 74 13 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A044C4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A044C8  38 00 00 21 */	li r0, 0x21
/* 80A044CC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A044D0  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A044D4  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A044D8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A044DC:
/* 80A044DC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A044E0  2C 00 00 23 */	cmpwi r0, 0x23
/* 80A044E4  41 82 00 28 */	beq lbl_80A0450C
/* 80A044E8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A044EC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A044F0  4B 74 13 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A044F4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A044F8  38 00 00 23 */	li r0, 0x23
/* 80A044FC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A04500  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A04504  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A04508  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A0450C:
/* 80A0450C  38 00 00 02 */	li r0, 2
/* 80A04510  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A04514:
/* 80A04514  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A04518  28 00 00 00 */	cmplwi r0, 0
/* 80A0451C  40 82 00 C4 */	bne lbl_80A045E0
/* 80A04520  7F E3 FB 78 */	mr r3, r31
/* 80A04524  4B 74 6E 14 */	b srchPlayerActor__8daNpcT_cFv
/* 80A04528  2C 03 00 00 */	cmpwi r3, 0
/* 80A0452C  41 82 00 44 */	beq lbl_80A04570
/* 80A04530  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A04534  2C 00 00 01 */	cmpwi r0, 1
/* 80A04538  41 82 00 2C */	beq lbl_80A04564
/* 80A0453C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A04540  4B 74 11 BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A04544  38 00 00 00 */	li r0, 0
/* 80A04548  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A0454C  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A04550  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A04554  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A04558  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A0455C  38 00 00 01 */	li r0, 1
/* 80A04560  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A04564:
/* 80A04564  38 00 00 00 */	li r0, 0
/* 80A04568  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A0456C  48 00 00 74 */	b lbl_80A045E0
lbl_80A04570:
/* 80A04570  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A04574  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A04578  7C 04 00 00 */	cmpw r4, r0
/* 80A0457C  41 82 00 2C */	beq lbl_80A045A8
/* 80A04580  7F E3 FB 78 */	mr r3, r31
/* 80A04584  38 A0 FF FF */	li r5, -1
/* 80A04588  38 C0 FF FF */	li r6, -1
/* 80A0458C  38 E0 00 0F */	li r7, 0xf
/* 80A04590  39 00 00 00 */	li r8, 0
/* 80A04594  4B 74 70 B4 */	b step__8daNpcT_cFsiiii
/* 80A04598  2C 03 00 00 */	cmpwi r3, 0
/* 80A0459C  41 82 00 0C */	beq lbl_80A045A8
/* 80A045A0  38 00 00 01 */	li r0, 1
/* 80A045A4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A045A8:
/* 80A045A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A045AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A045B0  41 82 00 28 */	beq lbl_80A045D8
/* 80A045B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A045B8  4B 74 11 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A045BC  38 00 00 00 */	li r0, 0
/* 80A045C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A045C4  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A045C8  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A045CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A045D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A045D4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A045D8:
/* 80A045D8  38 00 00 00 */	li r0, 0
/* 80A045DC  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A045E0:
/* 80A045E0  38 60 00 01 */	li r3, 1
/* 80A045E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A045E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A045EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A045F0  7C 08 03 A6 */	mtlr r0
/* 80A045F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A045F8  4E 80 00 20 */	blr 
