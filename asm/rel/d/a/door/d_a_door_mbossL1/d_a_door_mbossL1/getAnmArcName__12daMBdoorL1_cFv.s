lbl_80672E70:
/* 80672E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672E74  7C 08 02 A6 */	mflr r0
/* 80672E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672E7C  48 00 01 09 */	bl getDoorType__12daMBdoorL1_cFv
/* 80672E80  2C 03 00 01 */	cmpwi r3, 1
/* 80672E84  41 82 00 30 */	beq lbl_80672EB4
/* 80672E88  40 80 00 10 */	bge lbl_80672E98
/* 80672E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80672E90  40 80 00 14 */	bge lbl_80672EA4
/* 80672E94  48 00 00 38 */	b lbl_80672ECC
lbl_80672E98:
/* 80672E98  2C 03 00 03 */	cmpwi r3, 3
/* 80672E9C  40 80 00 30 */	bge lbl_80672ECC
/* 80672EA0  48 00 00 24 */	b lbl_80672EC4
lbl_80672EA4:
/* 80672EA4  3C 60 80 67 */	lis r3, struct_80677660+0x0@ha
/* 80672EA8  38 63 76 60 */	addi r3, r3, struct_80677660+0x0@l
/* 80672EAC  38 63 01 2E */	addi r3, r3, 0x12e
/* 80672EB0  48 00 00 28 */	b lbl_80672ED8
lbl_80672EB4:
/* 80672EB4  3C 60 80 67 */	lis r3, struct_80677660+0x0@ha
/* 80672EB8  38 63 76 60 */	addi r3, r3, struct_80677660+0x0@l
/* 80672EBC  38 63 01 36 */	addi r3, r3, 0x136
/* 80672EC0  48 00 00 18 */	b lbl_80672ED8
lbl_80672EC4:
/* 80672EC4  38 60 00 00 */	li r3, 0
/* 80672EC8  48 00 00 10 */	b lbl_80672ED8
lbl_80672ECC:
/* 80672ECC  3C 60 80 67 */	lis r3, struct_80677660+0x0@ha
/* 80672ED0  38 63 76 60 */	addi r3, r3, struct_80677660+0x0@l
/* 80672ED4  38 63 01 36 */	addi r3, r3, 0x136
lbl_80672ED8:
/* 80672ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80672EDC  7C 08 03 A6 */	mtlr r0
/* 80672EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80672EE4  4E 80 00 20 */	blr 
