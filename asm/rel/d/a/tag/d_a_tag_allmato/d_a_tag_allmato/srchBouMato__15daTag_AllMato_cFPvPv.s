lbl_80487C64:
/* 80487C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487C68  7C 08 02 A6 */	mflr r0
/* 80487C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487C74  7C 7F 1B 78 */	mr r31, r3
/* 80487C78  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487C7C  80 03 9A 10 */	lwz r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 80487C80  28 00 00 64 */	cmplwi r0, 0x64
/* 80487C84  40 80 00 64 */	bge lbl_80487CE8
/* 80487C88  28 1F 00 00 */	cmplwi r31, 0
/* 80487C8C  41 82 00 5C */	beq lbl_80487CE8
/* 80487C90  7C 1F 20 40 */	cmplw r31, r4
/* 80487C94  41 82 00 54 */	beq lbl_80487CE8
/* 80487C98  28 1F 00 00 */	cmplwi r31, 0
/* 80487C9C  41 82 00 0C */	beq lbl_80487CA8
/* 80487CA0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80487CA4  48 00 00 08 */	b lbl_80487CAC
lbl_80487CA8:
/* 80487CA8  38 60 FF FF */	li r3, -1
lbl_80487CAC:
/* 80487CAC  4B B9 96 F1 */	bl fpcEx_IsExist__FUi
/* 80487CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80487CB4  41 82 00 34 */	beq lbl_80487CE8
/* 80487CB8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80487CBC  2C 00 01 2D */	cmpwi r0, 0x12d
/* 80487CC0  40 82 00 28 */	bne lbl_80487CE8
/* 80487CC4  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487CC8  38 A3 9A 10 */	addi r5, r3, l_findCount@l /* 0x80489A10@l */
/* 80487CCC  80 85 00 00 */	lwz r4, 0(r5)
/* 80487CD0  54 80 10 3A */	slwi r0, r4, 2
/* 80487CD4  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 80487CD8  38 63 98 80 */	addi r3, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 80487CDC  7F E3 01 2E */	stwx r31, r3, r0
/* 80487CE0  38 04 00 01 */	addi r0, r4, 1
/* 80487CE4  90 05 00 00 */	stw r0, 0(r5)
lbl_80487CE8:
/* 80487CE8  38 60 00 00 */	li r3, 0
/* 80487CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487CF4  7C 08 03 A6 */	mtlr r0
/* 80487CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80487CFC  4E 80 00 20 */	blr 
