lbl_809C8A2C:
/* 809C8A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C8A30  7C 08 02 A6 */	mflr r0
/* 809C8A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C8A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C8A3C  7C 7F 1B 78 */	mr r31, r3
/* 809C8A40  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C8A44  2C 00 00 02 */	cmpwi r0, 2
/* 809C8A48  41 82 00 80 */	beq lbl_809C8AC8
/* 809C8A4C  40 80 01 70 */	bge lbl_809C8BBC
/* 809C8A50  2C 00 00 00 */	cmpwi r0, 0
/* 809C8A54  41 82 00 0C */	beq lbl_809C8A60
/* 809C8A58  48 00 01 64 */	b lbl_809C8BBC
/* 809C8A5C  48 00 01 60 */	b lbl_809C8BBC
lbl_809C8A60:
/* 809C8A60  88 1F 16 91 */	lbz r0, 0x1691(r31)
/* 809C8A64  28 00 00 00 */	cmplwi r0, 0
/* 809C8A68  40 82 00 50 */	bne lbl_809C8AB8
/* 809C8A6C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C8A70  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C8A74  7C 04 00 00 */	cmpw r4, r0
/* 809C8A78  40 82 00 40 */	bne lbl_809C8AB8
/* 809C8A7C  38 80 00 00 */	li r4, 0
/* 809C8A80  38 A0 00 01 */	li r5, 1
/* 809C8A84  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C8A88  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809C8A8C  7D 89 03 A6 */	mtctr r12
/* 809C8A90  4E 80 04 21 */	bctrl 
/* 809C8A94  7F E3 FB 78 */	mr r3, r31
/* 809C8A98  38 80 00 05 */	li r4, 5
/* 809C8A9C  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C8AA0  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C8AA4  38 A0 00 00 */	li r5, 0
/* 809C8AA8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8AAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8AB0  7D 89 03 A6 */	mtctr r12
/* 809C8AB4  4E 80 04 21 */	bctrl 
lbl_809C8AB8:
/* 809C8AB8  38 00 00 00 */	li r0, 0
/* 809C8ABC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C8AC0  38 00 00 02 */	li r0, 2
/* 809C8AC4  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C8AC8:
/* 809C8AC8  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C8ACC  2C 00 00 00 */	cmpwi r0, 0
/* 809C8AD0  40 82 00 EC */	bne lbl_809C8BBC
/* 809C8AD4  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C8AD8  4B 78 7C 15 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C8ADC  28 03 00 00 */	cmplwi r3, 0
/* 809C8AE0  41 82 00 20 */	beq lbl_809C8B00
/* 809C8AE4  7F E3 FB 78 */	mr r3, r31
/* 809C8AE8  4B FF A9 3D */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C8AEC  2C 03 00 00 */	cmpwi r3, 0
/* 809C8AF0  40 82 00 28 */	bne lbl_809C8B18
/* 809C8AF4  38 00 00 00 */	li r0, 0
/* 809C8AF8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C8AFC  48 00 00 1C */	b lbl_809C8B18
lbl_809C8B00:
/* 809C8B00  7F E3 FB 78 */	mr r3, r31
/* 809C8B04  4B FF A9 21 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C8B08  2C 03 00 00 */	cmpwi r3, 0
/* 809C8B0C  41 82 00 0C */	beq lbl_809C8B18
/* 809C8B10  38 00 00 00 */	li r0, 0
/* 809C8B14  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C8B18:
/* 809C8B18  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C8B1C  4B 78 7B D1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C8B20  28 03 00 00 */	cmplwi r3, 0
/* 809C8B24  41 82 00 14 */	beq lbl_809C8B38
/* 809C8B28  7F E3 FB 78 */	mr r3, r31
/* 809C8B2C  38 80 00 02 */	li r4, 2
/* 809C8B30  4B FF A5 41 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8B34  48 00 00 88 */	b lbl_809C8BBC
lbl_809C8B38:
/* 809C8B38  7F E3 FB 78 */	mr r3, r31
/* 809C8B3C  38 80 00 00 */	li r4, 0
/* 809C8B40  4B FF A5 31 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8B44  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C8B48  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C8B4C  7C 04 00 00 */	cmpw r4, r0
/* 809C8B50  41 82 00 6C */	beq lbl_809C8BBC
/* 809C8B54  7F E3 FB 78 */	mr r3, r31
/* 809C8B58  38 A0 00 17 */	li r5, 0x17
/* 809C8B5C  38 C0 00 16 */	li r6, 0x16
/* 809C8B60  38 E0 00 0F */	li r7, 0xf
/* 809C8B64  4B 78 B5 41 */	bl step__8daNpcF_cFsiii
/* 809C8B68  2C 03 00 00 */	cmpwi r3, 0
/* 809C8B6C  41 82 00 50 */	beq lbl_809C8BBC
/* 809C8B70  7F E3 FB 78 */	mr r3, r31
/* 809C8B74  38 80 00 17 */	li r4, 0x17
/* 809C8B78  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C8B7C  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C8B80  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8B84  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C8B88  7D 89 03 A6 */	mtctr r12
/* 809C8B8C  4E 80 04 21 */	bctrl 
/* 809C8B90  7F E3 FB 78 */	mr r3, r31
/* 809C8B94  38 80 00 00 */	li r4, 0
/* 809C8B98  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C8B9C  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C8BA0  38 A0 00 00 */	li r5, 0
/* 809C8BA4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8BA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8BAC  7D 89 03 A6 */	mtctr r12
/* 809C8BB0  4E 80 04 21 */	bctrl 
/* 809C8BB4  38 00 00 00 */	li r0, 0
/* 809C8BB8  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C8BBC:
/* 809C8BBC  38 60 00 01 */	li r3, 1
/* 809C8BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C8BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C8BC8  7C 08 03 A6 */	mtlr r0
/* 809C8BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809C8BD0  4E 80 00 20 */	blr 
