lbl_80562B14:
/* 80562B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562B18  7C 08 02 A6 */	mflr r0
/* 80562B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562B24  93 C1 00 08 */	stw r30, 8(r1)
/* 80562B28  7C 7F 1B 78 */	mr r31, r3
/* 80562B2C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80562B30  2C 00 00 02 */	cmpwi r0, 2
/* 80562B34  41 82 00 80 */	beq lbl_80562BB4
/* 80562B38  40 80 01 50 */	bge lbl_80562C88
/* 80562B3C  2C 00 00 00 */	cmpwi r0, 0
/* 80562B40  40 80 00 0C */	bge lbl_80562B4C
/* 80562B44  48 00 01 44 */	b lbl_80562C88
/* 80562B48  48 00 01 40 */	b lbl_80562C88
lbl_80562B4C:
/* 80562B4C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80562B50  2C 00 00 09 */	cmpwi r0, 9
/* 80562B54  41 82 00 28 */	beq lbl_80562B7C
/* 80562B58  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80562B5C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80562B60  4B BE 2D 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562B64  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80562B68  38 00 00 09 */	li r0, 9
/* 80562B6C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80562B70  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562B74  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562B78  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80562B7C:
/* 80562B7C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80562B80  2C 00 00 00 */	cmpwi r0, 0
/* 80562B84  41 82 00 28 */	beq lbl_80562BAC
/* 80562B88  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80562B8C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80562B90  4B BE 2D 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562B94  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80562B98  38 00 00 00 */	li r0, 0
/* 80562B9C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80562BA0  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562BA4  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562BA8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80562BAC:
/* 80562BAC  38 00 00 02 */	li r0, 2
/* 80562BB0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80562BB4:
/* 80562BB4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80562BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80562BBC  40 82 00 CC */	bne lbl_80562C88
/* 80562BC0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80562BC4  2C 00 00 00 */	cmpwi r0, 0
/* 80562BC8  41 82 00 28 */	beq lbl_80562BF0
/* 80562BCC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80562BD0  4B BE 2B 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562BD4  38 00 00 00 */	li r0, 0
/* 80562BD8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80562BDC  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80562BE0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80562BE4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80562BE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562BEC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80562BF0:
/* 80562BF0  38 00 00 00 */	li r0, 0
/* 80562BF4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562BF8  88 1F 11 32 */	lbz r0, 0x1132(r31)
/* 80562BFC  28 00 00 00 */	cmplwi r0, 0
/* 80562C00  40 82 00 14 */	bne lbl_80562C14
/* 80562C04  7F E3 FB 78 */	mr r3, r31
/* 80562C08  4B BE 87 31 */	bl srchPlayerActor__8daNpcT_cFv
/* 80562C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80562C10  41 82 00 40 */	beq lbl_80562C50
lbl_80562C14:
/* 80562C14  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80562C18  2C 00 00 01 */	cmpwi r0, 1
/* 80562C1C  41 82 00 2C */	beq lbl_80562C48
/* 80562C20  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80562C24  4B BE 2A D9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562C28  38 00 00 00 */	li r0, 0
/* 80562C2C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80562C30  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80562C34  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80562C38  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80562C3C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562C40  38 00 00 01 */	li r0, 1
/* 80562C44  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80562C48:
/* 80562C48  38 00 00 00 */	li r0, 0
/* 80562C4C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80562C50:
/* 80562C50  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80562C54  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80562C58  7C 04 00 00 */	cmpw r4, r0
/* 80562C5C  41 82 00 2C */	beq lbl_80562C88
/* 80562C60  7F E3 FB 78 */	mr r3, r31
/* 80562C64  38 A0 00 09 */	li r5, 9
/* 80562C68  38 C0 00 07 */	li r6, 7
/* 80562C6C  38 E0 00 0F */	li r7, 0xf
/* 80562C70  39 00 00 00 */	li r8, 0
/* 80562C74  4B BE 89 D5 */	bl step__8daNpcT_cFsiiii
/* 80562C78  2C 03 00 00 */	cmpwi r3, 0
/* 80562C7C  41 82 00 0C */	beq lbl_80562C88
/* 80562C80  38 00 00 01 */	li r0, 1
/* 80562C84  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80562C88:
/* 80562C88  38 60 00 01 */	li r3, 1
/* 80562C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562C90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562C98  7C 08 03 A6 */	mtlr r0
/* 80562C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80562CA0  4E 80 00 20 */	blr 
