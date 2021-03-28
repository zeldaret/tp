lbl_809C82A8:
/* 809C82A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C82AC  7C 08 02 A6 */	mflr r0
/* 809C82B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C82B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C82B8  7C 7F 1B 78 */	mr r31, r3
/* 809C82BC  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C82C0  2C 00 00 02 */	cmpwi r0, 2
/* 809C82C4  41 82 00 74 */	beq lbl_809C8338
/* 809C82C8  40 80 02 34 */	bge lbl_809C84FC
/* 809C82CC  2C 00 00 00 */	cmpwi r0, 0
/* 809C82D0  41 82 00 0C */	beq lbl_809C82DC
/* 809C82D4  48 00 02 28 */	b lbl_809C84FC
/* 809C82D8  48 00 02 24 */	b lbl_809C84FC
lbl_809C82DC:
/* 809C82DC  38 80 00 14 */	li r4, 0x14
/* 809C82E0  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C82E4  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C82E8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C82EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C82F0  7D 89 03 A6 */	mtctr r12
/* 809C82F4  4E 80 04 21 */	bctrl 
/* 809C82F8  7F E3 FB 78 */	mr r3, r31
/* 809C82FC  38 80 00 1A */	li r4, 0x1a
/* 809C8300  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8304  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C8308  38 A0 00 00 */	li r5, 0
/* 809C830C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8310  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8314  7D 89 03 A6 */	mtctr r12
/* 809C8318  4E 80 04 21 */	bctrl 
/* 809C831C  7F E3 FB 78 */	mr r3, r31
/* 809C8320  38 80 00 00 */	li r4, 0
/* 809C8324  4B FF AD 4D */	bl setLookMode__11daNpc_grA_cFi
/* 809C8328  38 00 00 00 */	li r0, 0
/* 809C832C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C8330  38 00 00 02 */	li r0, 2
/* 809C8334  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C8338:
/* 809C8338  88 1F 14 88 */	lbz r0, 0x1488(r31)
/* 809C833C  28 00 00 01 */	cmplwi r0, 1
/* 809C8340  40 82 00 80 */	bne lbl_809C83C0
/* 809C8344  3C 60 80 9C */	lis r3, s_subCrashed__FPvPv@ha
/* 809C8348  38 63 FD 60 */	addi r3, r3, s_subCrashed__FPvPv@l
/* 809C834C  7F E4 FB 78 */	mr r4, r31
/* 809C8350  4B 65 8F E8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C8354  7C 64 1B 79 */	or. r4, r3, r3
/* 809C8358  41 82 00 68 */	beq lbl_809C83C0
/* 809C835C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 809C8360  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809C8364  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 809C8368  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809C836C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 809C8370  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809C8374  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 809C8378  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809C837C  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 809C8380  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809C8384  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 809C8388  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809C838C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809C8390  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 809C8394  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809C8398  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 809C839C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809C83A0  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 809C83A4  7F E3 FB 78 */	mr r3, r31
/* 809C83A8  A8 84 04 DE */	lha r4, 0x4de(r4)
/* 809C83AC  4B 78 BE A4 */	b setAngle__8daNpcF_cFs
/* 809C83B0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809C83B4  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 809C83B8  38 00 00 00 */	li r0, 0
/* 809C83BC  98 1F 14 88 */	stb r0, 0x1488(r31)
lbl_809C83C0:
/* 809C83C0  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C83C4  2C 00 00 00 */	cmpwi r0, 0
/* 809C83C8  40 82 01 34 */	bne lbl_809C84FC
/* 809C83CC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C83D0  4B 78 83 1C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C83D4  28 03 00 00 */	cmplwi r3, 0
/* 809C83D8  41 82 00 20 */	beq lbl_809C83F8
/* 809C83DC  7F E3 FB 78 */	mr r3, r31
/* 809C83E0  4B FF B0 45 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C83E4  2C 03 00 00 */	cmpwi r3, 0
/* 809C83E8  40 82 00 28 */	bne lbl_809C8410
/* 809C83EC  38 00 00 00 */	li r0, 0
/* 809C83F0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C83F4  48 00 00 1C */	b lbl_809C8410
lbl_809C83F8:
/* 809C83F8  7F E3 FB 78 */	mr r3, r31
/* 809C83FC  4B FF B0 29 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C8400  2C 03 00 00 */	cmpwi r3, 0
/* 809C8404  41 82 00 0C */	beq lbl_809C8410
/* 809C8408  38 00 00 00 */	li r0, 0
/* 809C840C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C8410:
/* 809C8410  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C8414  4B 78 82 D8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C8418  28 03 00 00 */	cmplwi r3, 0
/* 809C841C  41 82 00 58 */	beq lbl_809C8474
/* 809C8420  7F E3 FB 78 */	mr r3, r31
/* 809C8424  38 80 00 02 */	li r4, 2
/* 809C8428  4B FF AC 49 */	bl setLookMode__11daNpc_grA_cFi
/* 809C842C  7F E3 FB 78 */	mr r3, r31
/* 809C8430  38 80 00 17 */	li r4, 0x17
/* 809C8434  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8438  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C843C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8440  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C8444  7D 89 03 A6 */	mtctr r12
/* 809C8448  4E 80 04 21 */	bctrl 
/* 809C844C  7F E3 FB 78 */	mr r3, r31
/* 809C8450  38 80 00 00 */	li r4, 0
/* 809C8454  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8458  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C845C  38 A0 00 00 */	li r5, 0
/* 809C8460  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8464  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8468  7D 89 03 A6 */	mtctr r12
/* 809C846C  4E 80 04 21 */	bctrl 
/* 809C8470  48 00 00 8C */	b lbl_809C84FC
lbl_809C8474:
/* 809C8474  7F E3 FB 78 */	mr r3, r31
/* 809C8478  38 80 00 00 */	li r4, 0
/* 809C847C  4B FF AB F5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8480  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C8484  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C8488  7C 04 00 00 */	cmpw r4, r0
/* 809C848C  41 82 00 2C */	beq lbl_809C84B8
/* 809C8490  7F E3 FB 78 */	mr r3, r31
/* 809C8494  38 A0 00 17 */	li r5, 0x17
/* 809C8498  38 C0 00 16 */	li r6, 0x16
/* 809C849C  38 E0 00 0F */	li r7, 0xf
/* 809C84A0  4B 78 BC 04 */	b step__8daNpcF_cFsiii
/* 809C84A4  2C 03 00 00 */	cmpwi r3, 0
/* 809C84A8  41 82 00 54 */	beq lbl_809C84FC
/* 809C84AC  38 00 00 00 */	li r0, 0
/* 809C84B0  B0 1F 14 72 */	sth r0, 0x1472(r31)
/* 809C84B4  48 00 00 48 */	b lbl_809C84FC
lbl_809C84B8:
/* 809C84B8  7F E3 FB 78 */	mr r3, r31
/* 809C84BC  38 80 00 14 */	li r4, 0x14
/* 809C84C0  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C84C4  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C84C8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C84CC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C84D0  7D 89 03 A6 */	mtctr r12
/* 809C84D4  4E 80 04 21 */	bctrl 
/* 809C84D8  7F E3 FB 78 */	mr r3, r31
/* 809C84DC  38 80 00 1A */	li r4, 0x1a
/* 809C84E0  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C84E4  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C84E8  38 A0 00 00 */	li r5, 0
/* 809C84EC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C84F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C84F4  7D 89 03 A6 */	mtctr r12
/* 809C84F8  4E 80 04 21 */	bctrl 
lbl_809C84FC:
/* 809C84FC  38 60 00 01 */	li r3, 1
/* 809C8500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C8504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C8508  7C 08 03 A6 */	mtlr r0
/* 809C850C  38 21 00 10 */	addi r1, r1, 0x10
/* 809C8510  4E 80 00 20 */	blr 
