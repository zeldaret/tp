lbl_80ACE714:
/* 80ACE714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACE718  7C 08 02 A6 */	mflr r0
/* 80ACE71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACE720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACE724  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACE728  7C 7F 1B 78 */	mr r31, r3
/* 80ACE72C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE730  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE734  41 82 00 80 */	beq lbl_80ACE7B4
/* 80ACE738  40 80 00 D4 */	bge lbl_80ACE80C
/* 80ACE73C  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE740  40 80 00 0C */	bge lbl_80ACE74C
/* 80ACE744  48 00 00 C8 */	b lbl_80ACE80C
/* 80ACE748  48 00 00 C4 */	b lbl_80ACE80C
lbl_80ACE74C:
/* 80ACE74C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE750  2C 00 00 0D */	cmpwi r0, 0xd
/* 80ACE754  41 82 00 28 */	beq lbl_80ACE77C
/* 80ACE758  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE75C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE760  4B 67 71 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE764  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE768  38 00 00 0D */	li r0, 0xd
/* 80ACE76C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE770  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE774  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE778  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE77C:
/* 80ACE77C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE780  2C 00 00 0D */	cmpwi r0, 0xd
/* 80ACE784  41 82 00 28 */	beq lbl_80ACE7AC
/* 80ACE788  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE78C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE790  4B 67 71 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE794  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE798  38 00 00 0D */	li r0, 0xd
/* 80ACE79C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE7A0  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE7A4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE7A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE7AC:
/* 80ACE7AC  38 00 00 02 */	li r0, 2
/* 80ACE7B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE7B4:
/* 80ACE7B4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80ACE7B8  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE7BC  40 82 00 50 */	bne lbl_80ACE80C
/* 80ACE7C0  7F E3 FB 78 */	mr r3, r31
/* 80ACE7C4  4B 67 CB 75 */	bl srchPlayerActor__8daNpcT_cFv
/* 80ACE7C8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACE7CC  41 82 00 40 */	beq lbl_80ACE80C
/* 80ACE7D0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE7D4  2C 00 00 01 */	cmpwi r0, 1
/* 80ACE7D8  41 82 00 2C */	beq lbl_80ACE804
/* 80ACE7DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE7E0  4B 67 6F 1D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE7E4  38 00 00 00 */	li r0, 0
/* 80ACE7E8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE7EC  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE7F0  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE7F4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE7F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE7FC  38 00 00 01 */	li r0, 1
/* 80ACE800  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE804:
/* 80ACE804  38 00 00 00 */	li r0, 0
/* 80ACE808  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80ACE80C:
/* 80ACE80C  38 60 00 01 */	li r3, 1
/* 80ACE810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE814  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE81C  7C 08 03 A6 */	mtlr r0
/* 80ACE820  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE824  4E 80 00 20 */	blr 
