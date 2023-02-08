lbl_809FB7A0:
/* 809FB7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FB7A4  7C 08 02 A6 */	mflr r0
/* 809FB7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FB7AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FB7B0  93 C1 00 08 */	stw r30, 8(r1)
/* 809FB7B4  7C 7F 1B 78 */	mr r31, r3
/* 809FB7B8  2C 04 00 00 */	cmpwi r4, 0
/* 809FB7BC  41 82 00 A0 */	beq lbl_809FB85C
/* 809FB7C0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809FB7C4  2C 00 00 07 */	cmpwi r0, 7
/* 809FB7C8  41 82 00 28 */	beq lbl_809FB7F0
/* 809FB7CC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809FB7D0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809FB7D4  4B 74 A0 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FB7D8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809FB7DC  38 00 00 07 */	li r0, 7
/* 809FB7E0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809FB7E4  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FB7E8  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FB7EC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809FB7F0:
/* 809FB7F0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809FB7F4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FB7F8  4B 74 A0 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FB7FC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809FB800  38 00 00 10 */	li r0, 0x10
/* 809FB804  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809FB808  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FB80C  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FB810  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 809FB814  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809FB818  2C 00 00 00 */	cmpwi r0, 0
/* 809FB81C  41 82 00 28 */	beq lbl_809FB844
/* 809FB820  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809FB824  4B 74 9E D9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FB828  38 00 00 00 */	li r0, 0
/* 809FB82C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809FB830  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FB834  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FB838  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809FB83C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FB840  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809FB844:
/* 809FB844  38 00 00 00 */	li r0, 0
/* 809FB848  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 809FB84C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 809FB850  38 00 00 01 */	li r0, 1
/* 809FB854  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FB858  48 00 00 9C */	b lbl_809FB8F4
lbl_809FB85C:
/* 809FB85C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809FB860  2C 00 00 07 */	cmpwi r0, 7
/* 809FB864  41 82 00 28 */	beq lbl_809FB88C
/* 809FB868  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809FB86C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809FB870  4B 74 A0 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FB874  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809FB878  38 00 00 07 */	li r0, 7
/* 809FB87C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809FB880  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FB884  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FB888  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809FB88C:
/* 809FB88C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809FB890  2C 00 00 0F */	cmpwi r0, 0xf
/* 809FB894  41 82 00 28 */	beq lbl_809FB8BC
/* 809FB898  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809FB89C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FB8A0  4B 74 9F F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FB8A4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809FB8A8  38 00 00 0F */	li r0, 0xf
/* 809FB8AC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809FB8B0  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FB8B4  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FB8B8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809FB8BC:
/* 809FB8BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809FB8C0  2C 00 00 00 */	cmpwi r0, 0
/* 809FB8C4  41 82 00 28 */	beq lbl_809FB8EC
/* 809FB8C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809FB8CC  4B 74 9E 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FB8D0  38 00 00 00 */	li r0, 0
/* 809FB8D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809FB8D8  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FB8DC  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FB8E0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809FB8E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FB8E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809FB8EC:
/* 809FB8EC  38 00 00 00 */	li r0, 0
/* 809FB8F0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_809FB8F4:
/* 809FB8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FB8F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FB8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FB900  7C 08 03 A6 */	mtlr r0
/* 809FB904  38 21 00 10 */	addi r1, r1, 0x10
/* 809FB908  4E 80 00 20 */	blr 
