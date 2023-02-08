lbl_8018E9D4:
/* 8018E9D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E9D8  7C 08 02 A6 */	mflr r0
/* 8018E9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E9E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018E9E4  7C 7F 1B 78 */	mr r31, r3
/* 8018E9E8  48 00 13 49 */	bl errorTxtChangeAnm__14dFile_select_cFv
/* 8018E9EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018E9F0  28 00 00 01 */	cmplwi r0, 1
/* 8018E9F4  40 82 00 34 */	bne lbl_8018EA28
/* 8018E9F8  3C 60 80 3C */	lis r3, lit_7865@ha /* 0x803BB2E0@ha */
/* 8018E9FC  38 83 B2 E0 */	addi r4, r3, lit_7865@l /* 0x803BB2E0@l */
/* 8018EA00  80 64 00 00 */	lwz r3, 0(r4)
/* 8018EA04  80 04 00 04 */	lwz r0, 4(r4)
/* 8018EA08  90 7F 02 90 */	stw r3, 0x290(r31)
/* 8018EA0C  90 1F 02 94 */	stw r0, 0x294(r31)
/* 8018EA10  80 04 00 08 */	lwz r0, 8(r4)
/* 8018EA14  90 1F 02 98 */	stw r0, 0x298(r31)
/* 8018EA18  38 00 00 13 */	li r0, 0x13
/* 8018EA1C  98 1F 02 74 */	stb r0, 0x274(r31)
/* 8018EA20  38 00 00 02 */	li r0, 2
/* 8018EA24  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018EA28:
/* 8018EA28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018EA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018EA30  7C 08 03 A6 */	mtlr r0
/* 8018EA34  38 21 00 10 */	addi r1, r1, 0x10
/* 8018EA38  4E 80 00 20 */	blr 
