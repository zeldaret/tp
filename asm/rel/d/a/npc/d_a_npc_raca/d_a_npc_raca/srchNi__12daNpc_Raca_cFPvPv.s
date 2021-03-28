lbl_80AB6674:
/* 80AB6674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6678  7C 08 02 A6 */	mflr r0
/* 80AB667C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB6684  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB6688  7C 7E 1B 78 */	mr r30, r3
/* 80AB668C  7C 9F 23 78 */	mr r31, r4
/* 80AB6690  3C 80 80 45 */	lis r4, mFindCount__8daNpcT_c@ha
/* 80AB6694  80 04 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r4)
/* 80AB6698  2C 00 00 32 */	cmpwi r0, 0x32
/* 80AB669C  40 80 00 48 */	bge lbl_80AB66E4
/* 80AB66A0  4B 56 26 40 */	b fopAc_IsActor__FPv
/* 80AB66A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AB66A8  41 82 00 3C */	beq lbl_80AB66E4
/* 80AB66AC  7C 1E F8 40 */	cmplw r30, r31
/* 80AB66B0  41 82 00 34 */	beq lbl_80AB66E4
/* 80AB66B4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80AB66B8  2C 00 01 08 */	cmpwi r0, 0x108
/* 80AB66BC  40 82 00 28 */	bne lbl_80AB66E4
/* 80AB66C0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80AB66C4  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 80AB66C8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AB66CC  54 80 10 3A */	slwi r0, r4, 2
/* 80AB66D0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80AB66D4  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 80AB66D8  7F C3 01 2E */	stwx r30, r3, r0
/* 80AB66DC  38 04 00 01 */	addi r0, r4, 1
/* 80AB66E0  90 05 00 00 */	stw r0, 0(r5)
lbl_80AB66E4:
/* 80AB66E4  38 60 00 00 */	li r3, 0
/* 80AB66E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB66EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB66F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB66F4  7C 08 03 A6 */	mtlr r0
/* 80AB66F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB66FC  4E 80 00 20 */	blr 
