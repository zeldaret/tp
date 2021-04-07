lbl_80147FD4:
/* 80147FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80147FD8  7C 08 02 A6 */	mflr r0
/* 80147FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80147FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80147FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80147FE8  7C 7E 1B 78 */	mr r30, r3
/* 80147FEC  7C 9F 23 78 */	mr r31, r4
/* 80147FF0  80 0D 8A 5C */	lwz r0, mFindCount__8daNpcT_c(r13)
/* 80147FF4  2C 00 00 32 */	cmpwi r0, 0x32
/* 80147FF8  40 80 00 44 */	bge lbl_8014803C
/* 80147FFC  4B ED 0C E5 */	bl fopAc_IsActor__FPv
/* 80148000  2C 03 00 00 */	cmpwi r3, 0
/* 80148004  41 82 00 38 */	beq lbl_8014803C
/* 80148008  7C 1E F8 40 */	cmplw r30, r31
/* 8014800C  41 82 00 30 */	beq lbl_8014803C
/* 80148010  A8 6D 8A 58 */	lha r3, mSrchName__8daNpcT_c(r13)
/* 80148014  A8 1E 00 08 */	lha r0, 8(r30)
/* 80148018  7C 03 00 00 */	cmpw r3, r0
/* 8014801C  40 82 00 20 */	bne lbl_8014803C
/* 80148020  80 8D 8A 5C */	lwz r4, mFindCount__8daNpcT_c(r13)
/* 80148024  54 80 10 3A */	slwi r0, r4, 2
/* 80148028  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8014802C  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80148030  7F C3 01 2E */	stwx r30, r3, r0
/* 80148034  38 04 00 01 */	addi r0, r4, 1
/* 80148038  90 0D 8A 5C */	stw r0, mFindCount__8daNpcT_c(r13)
lbl_8014803C:
/* 8014803C  38 60 00 00 */	li r3, 0
/* 80148040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80148044  83 C1 00 08 */	lwz r30, 8(r1)
/* 80148048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014804C  7C 08 03 A6 */	mtlr r0
/* 80148050  38 21 00 10 */	addi r1, r1, 0x10
/* 80148054  4E 80 00 20 */	blr 
