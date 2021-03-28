lbl_809C77E0:
/* 809C77E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C77E4  7C 08 02 A6 */	mflr r0
/* 809C77E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C77EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C77F0  7C 7F 1B 78 */	mr r31, r3
/* 809C77F4  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C77F8  2C 00 00 02 */	cmpwi r0, 2
/* 809C77FC  41 82 00 D8 */	beq lbl_809C78D4
/* 809C7800  40 80 02 B4 */	bge lbl_809C7AB4
/* 809C7804  2C 00 00 00 */	cmpwi r0, 0
/* 809C7808  41 82 00 0C */	beq lbl_809C7814
/* 809C780C  48 00 02 A8 */	b lbl_809C7AB4
/* 809C7810  48 00 02 A4 */	b lbl_809C7AB4
lbl_809C7814:
/* 809C7814  4B FF 99 41 */	bl getMode__11daNpc_grA_cFv
/* 809C7818  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C781C  28 00 00 01 */	cmplwi r0, 1
/* 809C7820  40 82 00 44 */	bne lbl_809C7864
/* 809C7824  7F E3 FB 78 */	mr r3, r31
/* 809C7828  38 80 00 0A */	li r4, 0xa
/* 809C782C  38 A0 00 01 */	li r5, 1
/* 809C7830  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7834  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809C7838  7D 89 03 A6 */	mtctr r12
/* 809C783C  4E 80 04 21 */	bctrl 
/* 809C7840  7F E3 FB 78 */	mr r3, r31
/* 809C7844  38 80 00 24 */	li r4, 0x24
/* 809C7848  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809C784C  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809C7850  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7854  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809C7858  7D 89 03 A6 */	mtctr r12
/* 809C785C  4E 80 04 21 */	bctrl 
/* 809C7860  48 00 00 40 */	b lbl_809C78A0
lbl_809C7864:
/* 809C7864  7F E3 FB 78 */	mr r3, r31
/* 809C7868  38 80 00 08 */	li r4, 8
/* 809C786C  38 A0 00 01 */	li r5, 1
/* 809C7870  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7874  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809C7878  7D 89 03 A6 */	mtctr r12
/* 809C787C  4E 80 04 21 */	bctrl 
/* 809C7880  7F E3 FB 78 */	mr r3, r31
/* 809C7884  38 80 00 22 */	li r4, 0x22
/* 809C7888  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809C788C  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809C7890  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7894  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809C7898  7D 89 03 A6 */	mtctr r12
/* 809C789C  4E 80 04 21 */	bctrl 
lbl_809C78A0:
/* 809C78A0  7F E3 FB 78 */	mr r3, r31
/* 809C78A4  38 80 00 00 */	li r4, 0
/* 809C78A8  4B FF B7 C9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C78AC  38 00 00 00 */	li r0, 0
/* 809C78B0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C78B4  38 00 00 02 */	li r0, 2
/* 809C78B8  B0 1F 14 72 */	sth r0, 0x1472(r31)
/* 809C78BC  38 60 00 03 */	li r3, 3
/* 809C78C0  38 80 00 07 */	li r4, 7
/* 809C78C4  48 00 22 3D */	bl func_809C9B00
/* 809C78C8  90 7F 14 78 */	stw r3, 0x1478(r31)
/* 809C78CC  38 00 00 01 */	li r0, 1
/* 809C78D0  98 1F 09 EA */	stb r0, 0x9ea(r31)
lbl_809C78D4:
/* 809C78D4  88 1F 14 88 */	lbz r0, 0x1488(r31)
/* 809C78D8  28 00 00 01 */	cmplwi r0, 1
/* 809C78DC  40 82 00 2C */	bne lbl_809C7908
/* 809C78E0  3C 60 80 9C */	lis r3, s_subShop__FPvPv@ha
/* 809C78E4  38 63 FC 00 */	addi r3, r3, s_subShop__FPvPv@l
/* 809C78E8  7F E4 FB 78 */	mr r4, r31
/* 809C78EC  4B 65 9A 4C */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C78F0  7C 64 1B 79 */	or. r4, r3, r3
/* 809C78F4  41 82 00 14 */	beq lbl_809C7908
/* 809C78F8  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 809C78FC  4B 78 8D C0 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809C7900  38 00 00 00 */	li r0, 0
/* 809C7904  98 1F 14 88 */	stb r0, 0x1488(r31)
lbl_809C7908:
/* 809C7908  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C790C  2C 00 00 00 */	cmpwi r0, 0
/* 809C7910  40 82 00 C4 */	bne lbl_809C79D4
/* 809C7914  88 1F 14 87 */	lbz r0, 0x1487(r31)
/* 809C7918  28 00 00 01 */	cmplwi r0, 1
/* 809C791C  40 82 00 14 */	bne lbl_809C7930
/* 809C7920  7F E3 FB 78 */	mr r3, r31
/* 809C7924  38 80 00 05 */	li r4, 5
/* 809C7928  4B FF B7 49 */	bl setLookMode__11daNpc_grA_cFi
/* 809C792C  48 00 00 A8 */	b lbl_809C79D4
lbl_809C7930:
/* 809C7930  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C7934  4B 78 8D B8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C7938  28 03 00 00 */	cmplwi r3, 0
/* 809C793C  41 82 00 20 */	beq lbl_809C795C
/* 809C7940  7F E3 FB 78 */	mr r3, r31
/* 809C7944  4B FF BA E1 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C7948  2C 03 00 00 */	cmpwi r3, 0
/* 809C794C  40 82 00 28 */	bne lbl_809C7974
/* 809C7950  38 00 00 00 */	li r0, 0
/* 809C7954  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C7958  48 00 00 1C */	b lbl_809C7974
lbl_809C795C:
/* 809C795C  7F E3 FB 78 */	mr r3, r31
/* 809C7960  4B FF BA C5 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C7964  2C 03 00 00 */	cmpwi r3, 0
/* 809C7968  41 82 00 0C */	beq lbl_809C7974
/* 809C796C  38 00 00 00 */	li r0, 0
/* 809C7970  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C7974:
/* 809C7974  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C7978  4B 78 8D 74 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C797C  28 03 00 00 */	cmplwi r3, 0
/* 809C7980  41 82 00 14 */	beq lbl_809C7994
/* 809C7984  7F E3 FB 78 */	mr r3, r31
/* 809C7988  38 80 00 02 */	li r4, 2
/* 809C798C  4B FF B6 E5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C7990  48 00 00 44 */	b lbl_809C79D4
lbl_809C7994:
/* 809C7994  7F E3 FB 78 */	mr r3, r31
/* 809C7998  38 80 00 00 */	li r4, 0
/* 809C799C  4B FF B6 D5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C79A0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C79A4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C79A8  7C 04 00 00 */	cmpw r4, r0
/* 809C79AC  41 82 00 28 */	beq lbl_809C79D4
/* 809C79B0  7F E3 FB 78 */	mr r3, r31
/* 809C79B4  38 A0 FF FF */	li r5, -1
/* 809C79B8  38 C0 FF FF */	li r6, -1
/* 809C79BC  38 E0 00 0F */	li r7, 0xf
/* 809C79C0  4B 78 C6 E4 */	b step__8daNpcF_cFsiii
/* 809C79C4  2C 03 00 00 */	cmpwi r3, 0
/* 809C79C8  41 82 00 0C */	beq lbl_809C79D4
/* 809C79CC  38 00 00 00 */	li r0, 0
/* 809C79D0  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C79D4:
/* 809C79D4  7F E3 FB 78 */	mr r3, r31
/* 809C79D8  4B FF 97 7D */	bl getMode__11daNpc_grA_cFv
/* 809C79DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C79E0  28 00 00 01 */	cmplwi r0, 1
/* 809C79E4  40 82 00 6C */	bne lbl_809C7A50
/* 809C79E8  A0 7F 09 E2 */	lhz r3, 0x9e2(r31)
/* 809C79EC  80 1F 14 78 */	lwz r0, 0x1478(r31)
/* 809C79F0  7C 03 00 00 */	cmpw r3, r0
/* 809C79F4  41 80 00 C0 */	blt lbl_809C7AB4
/* 809C79F8  7F E3 FB 78 */	mr r3, r31
/* 809C79FC  38 80 00 0E */	li r4, 0xe
/* 809C7A00  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809C7A04  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809C7A08  38 A0 00 01 */	li r5, 1
/* 809C7A0C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7A10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C7A14  7D 89 03 A6 */	mtctr r12
/* 809C7A18  4E 80 04 21 */	bctrl 
/* 809C7A1C  7F E3 FB 78 */	mr r3, r31
/* 809C7A20  38 80 00 0E */	li r4, 0xe
/* 809C7A24  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C7A28  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C7A2C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7A30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C7A34  7D 89 03 A6 */	mtctr r12
/* 809C7A38  4E 80 04 21 */	bctrl 
/* 809C7A3C  38 60 00 03 */	li r3, 3
/* 809C7A40  38 80 00 07 */	li r4, 7
/* 809C7A44  48 00 20 BD */	bl func_809C9B00
/* 809C7A48  90 7F 14 78 */	stw r3, 0x1478(r31)
/* 809C7A4C  48 00 00 68 */	b lbl_809C7AB4
lbl_809C7A50:
/* 809C7A50  A0 7F 09 E2 */	lhz r3, 0x9e2(r31)
/* 809C7A54  80 1F 14 78 */	lwz r0, 0x1478(r31)
/* 809C7A58  7C 03 00 00 */	cmpw r3, r0
/* 809C7A5C  41 80 00 58 */	blt lbl_809C7AB4
/* 809C7A60  7F E3 FB 78 */	mr r3, r31
/* 809C7A64  38 80 00 0C */	li r4, 0xc
/* 809C7A68  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809C7A6C  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809C7A70  38 A0 00 01 */	li r5, 1
/* 809C7A74  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7A78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C7A7C  7D 89 03 A6 */	mtctr r12
/* 809C7A80  4E 80 04 21 */	bctrl 
/* 809C7A84  7F E3 FB 78 */	mr r3, r31
/* 809C7A88  38 80 00 0C */	li r4, 0xc
/* 809C7A8C  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C7A90  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C7A94  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7A98  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C7A9C  7D 89 03 A6 */	mtctr r12
/* 809C7AA0  4E 80 04 21 */	bctrl 
/* 809C7AA4  38 60 00 03 */	li r3, 3
/* 809C7AA8  38 80 00 07 */	li r4, 7
/* 809C7AAC  48 00 20 55 */	bl func_809C9B00
/* 809C7AB0  90 7F 14 78 */	stw r3, 0x1478(r31)
lbl_809C7AB4:
/* 809C7AB4  38 60 00 01 */	li r3, 1
/* 809C7AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C7ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C7AC0  7C 08 03 A6 */	mtlr r0
/* 809C7AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 809C7AC8  4E 80 00 20 */	blr 
