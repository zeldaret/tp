lbl_809C884C:
/* 809C884C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C8850  7C 08 02 A6 */	mflr r0
/* 809C8854  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C8858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C885C  7C 7F 1B 78 */	mr r31, r3
/* 809C8860  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C8864  2C 00 00 02 */	cmpwi r0, 2
/* 809C8868  41 82 00 74 */	beq lbl_809C88DC
/* 809C886C  40 80 01 A8 */	bge lbl_809C8A14
/* 809C8870  2C 00 00 00 */	cmpwi r0, 0
/* 809C8874  41 82 00 0C */	beq lbl_809C8880
/* 809C8878  48 00 01 9C */	b lbl_809C8A14
/* 809C887C  48 00 01 98 */	b lbl_809C8A14
lbl_809C8880:
/* 809C8880  38 80 00 17 */	li r4, 0x17
/* 809C8884  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C8888  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C888C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C8890  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C8894  7D 89 03 A6 */	mtctr r12
/* 809C8898  4E 80 04 21 */	bctrl 
/* 809C889C  7F E3 FB 78 */	mr r3, r31
/* 809C88A0  38 80 00 00 */	li r4, 0
/* 809C88A4  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C88A8  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C88AC  38 A0 00 00 */	li r5, 0
/* 809C88B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C88B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C88B8  7D 89 03 A6 */	mtctr r12
/* 809C88BC  4E 80 04 21 */	bctrl 
/* 809C88C0  7F E3 FB 78 */	mr r3, r31
/* 809C88C4  38 80 00 00 */	li r4, 0
/* 809C88C8  4B FF A7 A9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C88CC  38 00 00 00 */	li r0, 0
/* 809C88D0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C88D4  38 00 00 02 */	li r0, 2
/* 809C88D8  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C88DC:
/* 809C88DC  88 1F 14 88 */	lbz r0, 0x1488(r31)
/* 809C88E0  28 00 00 01 */	cmplwi r0, 1
/* 809C88E4  40 82 00 80 */	bne lbl_809C8964
/* 809C88E8  3C 60 80 9C */	lis r3, s_subCrashed__FPvPv@ha
/* 809C88EC  38 63 FD 60 */	addi r3, r3, s_subCrashed__FPvPv@l
/* 809C88F0  7F E4 FB 78 */	mr r4, r31
/* 809C88F4  4B 65 8A 44 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C88F8  7C 64 1B 79 */	or. r4, r3, r3
/* 809C88FC  41 82 00 68 */	beq lbl_809C8964
/* 809C8900  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 809C8904  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809C8908  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 809C890C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809C8910  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 809C8914  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809C8918  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 809C891C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809C8920  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 809C8924  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809C8928  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 809C892C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809C8930  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809C8934  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 809C8938  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809C893C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 809C8940  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809C8944  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 809C8948  7F E3 FB 78 */	mr r3, r31
/* 809C894C  A8 84 04 DE */	lha r4, 0x4de(r4)
/* 809C8950  4B 78 B9 00 */	b setAngle__8daNpcF_cFs
/* 809C8954  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809C8958  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 809C895C  38 00 00 00 */	li r0, 0
/* 809C8960  98 1F 14 88 */	stb r0, 0x1488(r31)
lbl_809C8964:
/* 809C8964  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C8968  2C 00 00 00 */	cmpwi r0, 0
/* 809C896C  40 82 00 A8 */	bne lbl_809C8A14
/* 809C8970  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C8974  4B 78 7D 78 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C8978  28 03 00 00 */	cmplwi r3, 0
/* 809C897C  41 82 00 20 */	beq lbl_809C899C
/* 809C8980  7F E3 FB 78 */	mr r3, r31
/* 809C8984  4B FF AA A1 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C8988  2C 03 00 00 */	cmpwi r3, 0
/* 809C898C  40 82 00 28 */	bne lbl_809C89B4
/* 809C8990  38 00 00 00 */	li r0, 0
/* 809C8994  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C8998  48 00 00 1C */	b lbl_809C89B4
lbl_809C899C:
/* 809C899C  7F E3 FB 78 */	mr r3, r31
/* 809C89A0  4B FF AA 85 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C89A4  2C 03 00 00 */	cmpwi r3, 0
/* 809C89A8  41 82 00 0C */	beq lbl_809C89B4
/* 809C89AC  38 00 00 00 */	li r0, 0
/* 809C89B0  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C89B4:
/* 809C89B4  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C89B8  4B 78 7D 34 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C89BC  28 03 00 00 */	cmplwi r3, 0
/* 809C89C0  41 82 00 14 */	beq lbl_809C89D4
/* 809C89C4  7F E3 FB 78 */	mr r3, r31
/* 809C89C8  38 80 00 02 */	li r4, 2
/* 809C89CC  4B FF A6 A5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C89D0  48 00 00 44 */	b lbl_809C8A14
lbl_809C89D4:
/* 809C89D4  7F E3 FB 78 */	mr r3, r31
/* 809C89D8  38 80 00 00 */	li r4, 0
/* 809C89DC  4B FF A6 95 */	bl setLookMode__11daNpc_grA_cFi
/* 809C89E0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C89E4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C89E8  7C 04 00 00 */	cmpw r4, r0
/* 809C89EC  41 82 00 28 */	beq lbl_809C8A14
/* 809C89F0  7F E3 FB 78 */	mr r3, r31
/* 809C89F4  38 A0 00 17 */	li r5, 0x17
/* 809C89F8  38 C0 00 16 */	li r6, 0x16
/* 809C89FC  38 E0 00 0F */	li r7, 0xf
/* 809C8A00  4B 78 B6 A4 */	b step__8daNpcF_cFsiii
/* 809C8A04  2C 03 00 00 */	cmpwi r3, 0
/* 809C8A08  41 82 00 0C */	beq lbl_809C8A14
/* 809C8A0C  38 00 00 00 */	li r0, 0
/* 809C8A10  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C8A14:
/* 809C8A14  38 60 00 01 */	li r3, 1
/* 809C8A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C8A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C8A20  7C 08 03 A6 */	mtlr r0
/* 809C8A24  38 21 00 10 */	addi r1, r1, 0x10
/* 809C8A28  4E 80 00 20 */	blr 
