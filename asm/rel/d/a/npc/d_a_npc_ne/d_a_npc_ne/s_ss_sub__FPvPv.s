lbl_80A89A38:
/* 80A89A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A89A3C  7C 08 02 A6 */	mflr r0
/* 80A89A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A89A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A89A48  7C 7F 1B 78 */	mr r31, r3
/* 80A89A4C  4B 58 F2 95 */	bl fopAc_IsActor__FPv
/* 80A89A50  2C 03 00 00 */	cmpwi r3, 0
/* 80A89A54  41 82 00 44 */	beq lbl_80A89A98
/* 80A89A58  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A89A5C  2C 00 01 08 */	cmpwi r0, 0x108
/* 80A89A60  41 82 00 0C */	beq lbl_80A89A6C
/* 80A89A64  2C 00 03 00 */	cmpwi r0, 0x300
/* 80A89A68  40 82 00 30 */	bne lbl_80A89A98
lbl_80A89A6C:
/* 80A89A6C  3C 60 80 A9 */	lis r3, target_info_count@ha /* 0x80A92B18@ha */
/* 80A89A70  38 83 2B 18 */	addi r4, r3, target_info_count@l /* 0x80A92B18@l */
/* 80A89A74  80 A4 00 00 */	lwz r5, 0(r4)
/* 80A89A78  2C 05 00 05 */	cmpwi r5, 5
/* 80A89A7C  40 80 00 1C */	bge lbl_80A89A98
/* 80A89A80  54 A0 10 3A */	slwi r0, r5, 2
/* 80A89A84  3C 60 80 A9 */	lis r3, target_info@ha /* 0x80A92AF0@ha */
/* 80A89A88  38 63 2A F0 */	addi r3, r3, target_info@l /* 0x80A92AF0@l */
/* 80A89A8C  7F E3 01 2E */	stwx r31, r3, r0
/* 80A89A90  38 05 00 01 */	addi r0, r5, 1
/* 80A89A94  90 04 00 00 */	stw r0, 0(r4)
lbl_80A89A98:
/* 80A89A98  38 60 00 00 */	li r3, 0
/* 80A89A9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A89AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A89AA4  7C 08 03 A6 */	mtlr r0
/* 80A89AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A89AAC  4E 80 00 20 */	blr 
