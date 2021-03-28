lbl_80A49B90:
/* 80A49B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A49B94  7C 08 02 A6 */	mflr r0
/* 80A49B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A49B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A49BA0  7C 7F 1B 78 */	mr r31, r3
/* 80A49BA4  4B 5C F1 3C */	b fopAc_IsActor__FPv
/* 80A49BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A49BAC  41 82 00 3C */	beq lbl_80A49BE8
/* 80A49BB0  88 1F 05 66 */	lbz r0, 0x566(r31)
/* 80A49BB4  7C 00 07 75 */	extsb. r0, r0
/* 80A49BB8  41 82 00 30 */	beq lbl_80A49BE8
/* 80A49BBC  3C 60 80 A6 */	lis r3, target_info_count@ha
/* 80A49BC0  38 83 FF 18 */	addi r4, r3, target_info_count@l
/* 80A49BC4  80 A4 00 00 */	lwz r5, 0(r4)
/* 80A49BC8  2C 05 00 0A */	cmpwi r5, 0xa
/* 80A49BCC  40 80 00 1C */	bge lbl_80A49BE8
/* 80A49BD0  54 A0 10 3A */	slwi r0, r5, 2
/* 80A49BD4  3C 60 80 A6 */	lis r3, target_info@ha
/* 80A49BD8  38 63 FE F0 */	addi r3, r3, target_info@l
/* 80A49BDC  7F E3 01 2E */	stwx r31, r3, r0
/* 80A49BE0  38 05 00 01 */	addi r0, r5, 1
/* 80A49BE4  90 04 00 00 */	stw r0, 0(r4)
lbl_80A49BE8:
/* 80A49BE8  38 60 00 00 */	li r3, 0
/* 80A49BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A49BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49BF4  7C 08 03 A6 */	mtlr r0
/* 80A49BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A49BFC  4E 80 00 20 */	blr 
