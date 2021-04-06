lbl_80A49EC0:
/* 80A49EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A49EC4  7C 08 02 A6 */	mflr r0
/* 80A49EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A49ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A49ED0  7C 7F 1B 78 */	mr r31, r3
/* 80A49ED4  4B 5C EE 0D */	bl fopAc_IsActor__FPv
/* 80A49ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80A49EDC  41 82 00 3C */	beq lbl_80A49F18
/* 80A49EE0  A8 1F 05 60 */	lha r0, 0x560(r31)
/* 80A49EE4  2C 00 00 00 */	cmpwi r0, 0
/* 80A49EE8  41 82 00 30 */	beq lbl_80A49F18
/* 80A49EEC  3C 60 80 A6 */	lis r3, target_info_count@ha /* 0x80A5FF18@ha */
/* 80A49EF0  38 83 FF 18 */	addi r4, r3, target_info_count@l /* 0x80A5FF18@l */
/* 80A49EF4  80 A4 00 00 */	lwz r5, 0(r4)
/* 80A49EF8  2C 05 00 0A */	cmpwi r5, 0xa
/* 80A49EFC  40 80 00 1C */	bge lbl_80A49F18
/* 80A49F00  54 A0 10 3A */	slwi r0, r5, 2
/* 80A49F04  3C 60 80 A6 */	lis r3, target_info@ha /* 0x80A5FEF0@ha */
/* 80A49F08  38 63 FE F0 */	addi r3, r3, target_info@l /* 0x80A5FEF0@l */
/* 80A49F0C  7F E3 01 2E */	stwx r31, r3, r0
/* 80A49F10  38 05 00 01 */	addi r0, r5, 1
/* 80A49F14  90 04 00 00 */	stw r0, 0(r4)
lbl_80A49F18:
/* 80A49F18  38 60 00 00 */	li r3, 0
/* 80A49F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A49F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49F24  7C 08 03 A6 */	mtlr r0
/* 80A49F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80A49F2C  4E 80 00 20 */	blr 
