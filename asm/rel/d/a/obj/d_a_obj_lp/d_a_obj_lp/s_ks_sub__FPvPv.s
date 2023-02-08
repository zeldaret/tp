lbl_80C542FC:
/* 80C542FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C54300  7C 08 02 A6 */	mflr r0
/* 80C54304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C54308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5430C  7C 7F 1B 78 */	mr r31, r3
/* 80C54310  4B 3C 49 D1 */	bl fopAc_IsActor__FPv
/* 80C54314  2C 03 00 00 */	cmpwi r3, 0
/* 80C54318  41 82 00 44 */	beq lbl_80C5435C
/* 80C5431C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80C54320  2C 00 00 60 */	cmpwi r0, 0x60
/* 80C54324  40 82 00 38 */	bne lbl_80C5435C
/* 80C54328  3C 60 80 C5 */	lis r3, target_info_count@ha /* 0x80C55BB0@ha */
/* 80C5432C  38 83 5B B0 */	addi r4, r3, target_info_count@l /* 0x80C55BB0@l */
/* 80C54330  80 A4 00 00 */	lwz r5, 0(r4)
/* 80C54334  2C 05 00 0A */	cmpwi r5, 0xa
/* 80C54338  40 80 00 1C */	bge lbl_80C54354
/* 80C5433C  54 A0 10 3A */	slwi r0, r5, 2
/* 80C54340  3C 60 80 C5 */	lis r3, target_info@ha /* 0x80C55B88@ha */
/* 80C54344  38 63 5B 88 */	addi r3, r3, target_info@l /* 0x80C55B88@l */
/* 80C54348  7F E3 01 2E */	stwx r31, r3, r0
/* 80C5434C  38 05 00 01 */	addi r0, r5, 1
/* 80C54350  90 04 00 00 */	stw r0, 0(r4)
lbl_80C54354:
/* 80C54354  7F E3 FB 78 */	mr r3, r31
/* 80C54358  48 00 00 08 */	b lbl_80C54360
lbl_80C5435C:
/* 80C5435C  38 60 00 00 */	li r3, 0
lbl_80C54360:
/* 80C54360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C54364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C54368  7C 08 03 A6 */	mtlr r0
/* 80C5436C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C54370  4E 80 00 20 */	blr 
