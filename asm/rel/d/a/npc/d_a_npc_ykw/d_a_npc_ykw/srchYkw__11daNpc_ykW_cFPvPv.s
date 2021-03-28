lbl_80B5F9D8:
/* 80B5F9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F9DC  7C 08 02 A6 */	mflr r0
/* 80B5F9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5F9E8  7C 7F 1B 78 */	mr r31, r3
/* 80B5F9EC  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B5F9F0  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80B5F9F4  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B5F9F8  40 80 00 64 */	bge lbl_80B5FA5C
/* 80B5F9FC  28 1F 00 00 */	cmplwi r31, 0
/* 80B5FA00  41 82 00 5C */	beq lbl_80B5FA5C
/* 80B5FA04  7C 1F 20 40 */	cmplw r31, r4
/* 80B5FA08  41 82 00 54 */	beq lbl_80B5FA5C
/* 80B5FA0C  28 1F 00 00 */	cmplwi r31, 0
/* 80B5FA10  41 82 00 0C */	beq lbl_80B5FA1C
/* 80B5FA14  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B5FA18  48 00 00 08 */	b lbl_80B5FA20
lbl_80B5FA1C:
/* 80B5FA1C  38 60 FF FF */	li r3, -1
lbl_80B5FA20:
/* 80B5FA20  4B 4C 19 7C */	b fpcEx_IsExist__FUi
/* 80B5FA24  2C 03 00 00 */	cmpwi r3, 0
/* 80B5FA28  41 82 00 34 */	beq lbl_80B5FA5C
/* 80B5FA2C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B5FA30  2C 00 02 7C */	cmpwi r0, 0x27c
/* 80B5FA34  40 82 00 28 */	bne lbl_80B5FA5C
/* 80B5FA38  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B5FA3C  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 80B5FA40  80 85 00 00 */	lwz r4, 0(r5)
/* 80B5FA44  54 80 10 3A */	slwi r0, r4, 2
/* 80B5FA48  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80B5FA4C  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 80B5FA50  7F E3 01 2E */	stwx r31, r3, r0
/* 80B5FA54  38 04 00 01 */	addi r0, r4, 1
/* 80B5FA58  90 05 00 00 */	stw r0, 0(r5)
lbl_80B5FA5C:
/* 80B5FA5C  38 60 00 00 */	li r3, 0
/* 80B5FA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5FA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5FA68  7C 08 03 A6 */	mtlr r0
/* 80B5FA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5FA70  4E 80 00 20 */	blr 
