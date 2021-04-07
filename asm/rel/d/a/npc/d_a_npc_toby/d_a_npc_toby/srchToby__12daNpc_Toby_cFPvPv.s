lbl_80B1F088:
/* 80B1F088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1F08C  7C 08 02 A6 */	mflr r0
/* 80B1F090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1F094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1F098  7C 7F 1B 78 */	mr r31, r3
/* 80B1F09C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B1F0A0  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B1F0A4  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B1F0A8  40 80 00 64 */	bge lbl_80B1F10C
/* 80B1F0AC  28 1F 00 00 */	cmplwi r31, 0
/* 80B1F0B0  41 82 00 5C */	beq lbl_80B1F10C
/* 80B1F0B4  7C 1F 20 40 */	cmplw r31, r4
/* 80B1F0B8  41 82 00 54 */	beq lbl_80B1F10C
/* 80B1F0BC  28 1F 00 00 */	cmplwi r31, 0
/* 80B1F0C0  41 82 00 0C */	beq lbl_80B1F0CC
/* 80B1F0C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B1F0C8  48 00 00 08 */	b lbl_80B1F0D0
lbl_80B1F0CC:
/* 80B1F0CC  38 60 FF FF */	li r3, -1
lbl_80B1F0D0:
/* 80B1F0D0  4B 50 22 CD */	bl fpcEx_IsExist__FUi
/* 80B1F0D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F0D8  41 82 00 34 */	beq lbl_80B1F10C
/* 80B1F0DC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B1F0E0  2C 00 02 78 */	cmpwi r0, 0x278
/* 80B1F0E4  40 82 00 28 */	bne lbl_80B1F10C
/* 80B1F0E8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B1F0EC  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B1F0F0  80 85 00 00 */	lwz r4, 0(r5)
/* 80B1F0F4  54 80 10 3A */	slwi r0, r4, 2
/* 80B1F0F8  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B1F0FC  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B1F100  7F E3 01 2E */	stwx r31, r3, r0
/* 80B1F104  38 04 00 01 */	addi r0, r4, 1
/* 80B1F108  90 05 00 00 */	stw r0, 0(r5)
lbl_80B1F10C:
/* 80B1F10C  38 60 00 00 */	li r3, 0
/* 80B1F110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1F114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1F118  7C 08 03 A6 */	mtlr r0
/* 80B1F11C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1F120  4E 80 00 20 */	blr 
