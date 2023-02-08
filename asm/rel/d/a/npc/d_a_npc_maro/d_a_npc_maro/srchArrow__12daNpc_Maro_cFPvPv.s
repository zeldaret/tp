lbl_8055C018:
/* 8055C018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C01C  7C 08 02 A6 */	mflr r0
/* 8055C020  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C028  7C 7F 1B 78 */	mr r31, r3
/* 8055C02C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C030  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 8055C034  2C 00 00 32 */	cmpwi r0, 0x32
/* 8055C038  40 80 00 64 */	bge lbl_8055C09C
/* 8055C03C  28 1F 00 00 */	cmplwi r31, 0
/* 8055C040  41 82 00 5C */	beq lbl_8055C09C
/* 8055C044  7C 1F 20 40 */	cmplw r31, r4
/* 8055C048  41 82 00 54 */	beq lbl_8055C09C
/* 8055C04C  28 1F 00 00 */	cmplwi r31, 0
/* 8055C050  41 82 00 0C */	beq lbl_8055C05C
/* 8055C054  80 7F 00 04 */	lwz r3, 4(r31)
/* 8055C058  48 00 00 08 */	b lbl_8055C060
lbl_8055C05C:
/* 8055C05C  38 60 FF FF */	li r3, -1
lbl_8055C060:
/* 8055C060  4B AC 53 3D */	bl fpcEx_IsExist__FUi
/* 8055C064  2C 03 00 00 */	cmpwi r3, 0
/* 8055C068  41 82 00 34 */	beq lbl_8055C09C
/* 8055C06C  A8 1F 00 08 */	lha r0, 8(r31)
/* 8055C070  2C 00 03 08 */	cmpwi r0, 0x308
/* 8055C074  40 82 00 28 */	bne lbl_8055C09C
/* 8055C078  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C07C  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 8055C080  80 85 00 00 */	lwz r4, 0(r5)
/* 8055C084  54 80 10 3A */	slwi r0, r4, 2
/* 8055C088  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8055C08C  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 8055C090  7F E3 01 2E */	stwx r31, r3, r0
/* 8055C094  38 04 00 01 */	addi r0, r4, 1
/* 8055C098  90 05 00 00 */	stw r0, 0(r5)
lbl_8055C09C:
/* 8055C09C  38 60 00 00 */	li r3, 0
/* 8055C0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C0A8  7C 08 03 A6 */	mtlr r0
/* 8055C0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C0B0  4E 80 00 20 */	blr 
