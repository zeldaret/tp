lbl_80D4EAF8:
/* 80D4EAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EAFC  7C 08 02 A6 */	mflr r0
/* 80D4EB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4EB08  7C 7F 1B 78 */	mr r31, r3
/* 80D4EB0C  4B 2C A1 D5 */	bl fopAc_IsActor__FPv
/* 80D4EB10  2C 03 00 00 */	cmpwi r3, 0
/* 80D4EB14  41 82 00 60 */	beq lbl_80D4EB74
/* 80D4EB18  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D4EB1C  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80D4EB20  40 82 00 54 */	bne lbl_80D4EB74
/* 80D4EB24  38 00 00 00 */	li r0, 0
/* 80D4EB28  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80D4EB2C  2C 03 00 08 */	cmpwi r3, 8
/* 80D4EB30  41 82 00 0C */	beq lbl_80D4EB3C
/* 80D4EB34  2C 03 00 09 */	cmpwi r3, 9
/* 80D4EB38  40 82 00 08 */	bne lbl_80D4EB40
lbl_80D4EB3C:
/* 80D4EB3C  38 00 00 01 */	li r0, 1
lbl_80D4EB40:
/* 80D4EB40  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D4EB44  41 82 00 30 */	beq lbl_80D4EB74
/* 80D4EB48  3C 60 80 D5 */	lis r3, l_target_info_count@ha /* 0x80D4F5A8@ha */
/* 80D4EB4C  38 83 F5 A8 */	addi r4, r3, l_target_info_count@l /* 0x80D4F5A8@l */
/* 80D4EB50  80 A4 00 00 */	lwz r5, 0(r4)
/* 80D4EB54  2C 05 00 02 */	cmpwi r5, 2
/* 80D4EB58  40 80 00 1C */	bge lbl_80D4EB74
/* 80D4EB5C  54 A0 10 3A */	slwi r0, r5, 2
/* 80D4EB60  3C 60 80 D5 */	lis r3, l_target_info@ha /* 0x80D4F5A0@ha */
/* 80D4EB64  38 63 F5 A0 */	addi r3, r3, l_target_info@l /* 0x80D4F5A0@l */
/* 80D4EB68  7F E3 01 2E */	stwx r31, r3, r0
/* 80D4EB6C  38 05 00 01 */	addi r0, r5, 1
/* 80D4EB70  90 04 00 00 */	stw r0, 0(r4)
lbl_80D4EB74:
/* 80D4EB74  38 60 00 00 */	li r3, 0
/* 80D4EB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4EB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EB80  7C 08 03 A6 */	mtlr r0
/* 80D4EB84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EB88  4E 80 00 20 */	blr 
