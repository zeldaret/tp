lbl_809C7F24:
/* 809C7F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C7F28  7C 08 02 A6 */	mflr r0
/* 809C7F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C7F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C7F34  7C 7F 1B 78 */	mr r31, r3
/* 809C7F38  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C7F3C  2C 00 00 02 */	cmpwi r0, 2
/* 809C7F40  41 82 00 8C */	beq lbl_809C7FCC
/* 809C7F44  40 80 01 DC */	bge lbl_809C8120
/* 809C7F48  2C 00 00 00 */	cmpwi r0, 0
/* 809C7F4C  41 82 00 0C */	beq lbl_809C7F58
/* 809C7F50  48 00 01 D0 */	b lbl_809C8120
/* 809C7F54  48 00 01 CC */	b lbl_809C8120
lbl_809C7F58:
/* 809C7F58  38 80 00 17 */	li r4, 0x17
/* 809C7F5C  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C7F60  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C7F64  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C7F68  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C7F6C  7D 89 03 A6 */	mtctr r12
/* 809C7F70  4E 80 04 21 */	bctrl 
/* 809C7F74  7F E3 FB 78 */	mr r3, r31
/* 809C7F78  38 80 00 10 */	li r4, 0x10
/* 809C7F7C  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C7F80  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C7F84  38 A0 00 00 */	li r5, 0
/* 809C7F88  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C7F8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C7F90  7D 89 03 A6 */	mtctr r12
/* 809C7F94  4E 80 04 21 */	bctrl 
/* 809C7F98  7F E3 FB 78 */	mr r3, r31
/* 809C7F9C  38 80 00 00 */	li r4, 0
/* 809C7FA0  4B FF B0 D1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C7FA4  38 00 00 00 */	li r0, 0
/* 809C7FA8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C7FAC  38 60 00 03 */	li r3, 3
/* 809C7FB0  38 80 00 07 */	li r4, 7
/* 809C7FB4  48 00 1B 4D */	bl func_809C9B00
/* 809C7FB8  90 7F 14 78 */	stw r3, 0x1478(r31)
/* 809C7FBC  38 00 00 01 */	li r0, 1
/* 809C7FC0  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809C7FC4  38 00 00 02 */	li r0, 2
/* 809C7FC8  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C7FCC:
/* 809C7FCC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C7FD0  2C 00 00 00 */	cmpwi r0, 0
/* 809C7FD4  40 82 00 D8 */	bne lbl_809C80AC
/* 809C7FD8  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C7FDC  2C 00 00 31 */	cmpwi r0, 0x31
/* 809C7FE0  40 82 00 10 */	bne lbl_809C7FF0
/* 809C7FE4  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C7FE8  4B 78 86 F8 */	b remove__18daNpcF_ActorMngr_cFv
/* 809C7FEC  48 00 00 48 */	b lbl_809C8034
lbl_809C7FF0:
/* 809C7FF0  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C7FF4  4B 78 86 F8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C7FF8  28 03 00 00 */	cmplwi r3, 0
/* 809C7FFC  41 82 00 20 */	beq lbl_809C801C
/* 809C8000  7F E3 FB 78 */	mr r3, r31
/* 809C8004  4B FF B4 21 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C8008  2C 03 00 00 */	cmpwi r3, 0
/* 809C800C  40 82 00 28 */	bne lbl_809C8034
/* 809C8010  38 00 00 00 */	li r0, 0
/* 809C8014  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C8018  48 00 00 1C */	b lbl_809C8034
lbl_809C801C:
/* 809C801C  7F E3 FB 78 */	mr r3, r31
/* 809C8020  4B FF B4 05 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C8024  2C 03 00 00 */	cmpwi r3, 0
/* 809C8028  41 82 00 0C */	beq lbl_809C8034
/* 809C802C  38 00 00 00 */	li r0, 0
/* 809C8030  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C8034:
/* 809C8034  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C8038  4B 78 86 B4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C803C  28 03 00 00 */	cmplwi r3, 0
/* 809C8040  41 82 00 2C */	beq lbl_809C806C
/* 809C8044  7F E3 FB 78 */	mr r3, r31
/* 809C8048  38 80 00 02 */	li r4, 2
/* 809C804C  4B FF B0 25 */	bl setLookMode__11daNpc_grA_cFi
/* 809C8050  38 00 00 00 */	li r0, 0
/* 809C8054  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
/* 809C8058  38 60 00 01 */	li r3, 1
/* 809C805C  38 80 00 07 */	li r4, 7
/* 809C8060  48 00 1A A1 */	bl func_809C9B00
/* 809C8064  90 7F 14 78 */	stw r3, 0x1478(r31)
/* 809C8068  48 00 00 44 */	b lbl_809C80AC
lbl_809C806C:
/* 809C806C  7F E3 FB 78 */	mr r3, r31
/* 809C8070  38 80 00 00 */	li r4, 0
/* 809C8074  4B FF AF FD */	bl setLookMode__11daNpc_grA_cFi
/* 809C8078  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C807C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C8080  7C 04 00 00 */	cmpw r4, r0
/* 809C8084  41 82 00 28 */	beq lbl_809C80AC
/* 809C8088  7F E3 FB 78 */	mr r3, r31
/* 809C808C  38 A0 00 17 */	li r5, 0x17
/* 809C8090  38 C0 00 16 */	li r6, 0x16
/* 809C8094  38 E0 00 0F */	li r7, 0xf
/* 809C8098  4B 78 C0 0C */	b step__8daNpcF_cFsiii
/* 809C809C  2C 03 00 00 */	cmpwi r3, 0
/* 809C80A0  41 82 00 0C */	beq lbl_809C80AC
/* 809C80A4  38 00 00 00 */	li r0, 0
/* 809C80A8  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C80AC:
/* 809C80AC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C80B0  4B 78 86 3C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C80B4  28 03 00 00 */	cmplwi r3, 0
/* 809C80B8  40 82 00 68 */	bne lbl_809C8120
/* 809C80BC  A0 7F 09 E2 */	lhz r3, 0x9e2(r31)
/* 809C80C0  80 1F 14 78 */	lwz r0, 0x1478(r31)
/* 809C80C4  7C 03 00 00 */	cmpw r3, r0
/* 809C80C8  41 80 00 58 */	blt lbl_809C8120
/* 809C80CC  7F E3 FB 78 */	mr r3, r31
/* 809C80D0  38 80 00 11 */	li r4, 0x11
/* 809C80D4  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C80D8  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C80DC  38 A0 00 01 */	li r5, 1
/* 809C80E0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C80E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C80E8  7D 89 03 A6 */	mtctr r12
/* 809C80EC  4E 80 04 21 */	bctrl 
/* 809C80F0  7F E3 FB 78 */	mr r3, r31
/* 809C80F4  38 80 00 17 */	li r4, 0x17
/* 809C80F8  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C80FC  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C8100  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8104  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C8108  7D 89 03 A6 */	mtctr r12
/* 809C810C  4E 80 04 21 */	bctrl 
/* 809C8110  38 60 00 03 */	li r3, 3
/* 809C8114  38 80 00 07 */	li r4, 7
/* 809C8118  48 00 19 E9 */	bl func_809C9B00
/* 809C811C  90 7F 14 78 */	stw r3, 0x1478(r31)
lbl_809C8120:
/* 809C8120  38 60 00 01 */	li r3, 1
/* 809C8124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C8128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C812C  7C 08 03 A6 */	mtlr r0
/* 809C8130  38 21 00 10 */	addi r1, r1, 0x10
/* 809C8134  4E 80 00 20 */	blr 
