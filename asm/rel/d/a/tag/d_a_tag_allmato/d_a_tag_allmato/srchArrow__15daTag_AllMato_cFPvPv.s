lbl_80487E38:
/* 80487E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487E3C  7C 08 02 A6 */	mflr r0
/* 80487E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487E48  7C 7F 1B 78 */	mr r31, r3
/* 80487E4C  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487E50  80 03 9A 10 */	lwz r0, l_findCount@l(r3)  /* 0x80489A10@l */
/* 80487E54  28 00 00 64 */	cmplwi r0, 0x64
/* 80487E58  40 80 00 64 */	bge lbl_80487EBC
/* 80487E5C  28 1F 00 00 */	cmplwi r31, 0
/* 80487E60  41 82 00 5C */	beq lbl_80487EBC
/* 80487E64  7C 1F 20 40 */	cmplw r31, r4
/* 80487E68  41 82 00 54 */	beq lbl_80487EBC
/* 80487E6C  28 1F 00 00 */	cmplwi r31, 0
/* 80487E70  41 82 00 0C */	beq lbl_80487E7C
/* 80487E74  80 7F 00 04 */	lwz r3, 4(r31)
/* 80487E78  48 00 00 08 */	b lbl_80487E80
lbl_80487E7C:
/* 80487E7C  38 60 FF FF */	li r3, -1
lbl_80487E80:
/* 80487E80  4B B9 95 1D */	bl fpcEx_IsExist__FUi
/* 80487E84  2C 03 00 00 */	cmpwi r3, 0
/* 80487E88  41 82 00 34 */	beq lbl_80487EBC
/* 80487E8C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80487E90  2C 00 03 08 */	cmpwi r0, 0x308
/* 80487E94  40 82 00 28 */	bne lbl_80487EBC
/* 80487E98  3C 60 80 49 */	lis r3, l_findCount@ha /* 0x80489A10@ha */
/* 80487E9C  38 A3 9A 10 */	addi r5, r3, l_findCount@l /* 0x80489A10@l */
/* 80487EA0  80 85 00 00 */	lwz r4, 0(r5)
/* 80487EA4  54 80 10 3A */	slwi r0, r4, 2
/* 80487EA8  3C 60 80 49 */	lis r3, l_findActorPtrs@ha /* 0x80489880@ha */
/* 80487EAC  38 63 98 80 */	addi r3, r3, l_findActorPtrs@l /* 0x80489880@l */
/* 80487EB0  7F E3 01 2E */	stwx r31, r3, r0
/* 80487EB4  38 04 00 01 */	addi r0, r4, 1
/* 80487EB8  90 05 00 00 */	stw r0, 0(r5)
lbl_80487EBC:
/* 80487EBC  38 60 00 00 */	li r3, 0
/* 80487EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487EC8  7C 08 03 A6 */	mtlr r0
/* 80487ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80487ED0  4E 80 00 20 */	blr 
