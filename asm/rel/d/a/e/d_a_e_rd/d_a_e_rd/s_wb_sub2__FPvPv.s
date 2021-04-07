lbl_80512B40:
/* 80512B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80512B44  7C 08 02 A6 */	mflr r0
/* 80512B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80512B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80512B50  7C 7F 1B 78 */	mr r31, r3
/* 80512B54  4B B0 61 8D */	bl fopAc_IsActor__FPv
/* 80512B58  2C 03 00 00 */	cmpwi r3, 0
/* 80512B5C  41 82 00 3C */	beq lbl_80512B98
/* 80512B60  A8 1F 00 08 */	lha r0, 8(r31)
/* 80512B64  2C 00 00 EF */	cmpwi r0, 0xef
/* 80512B68  40 82 00 30 */	bne lbl_80512B98
/* 80512B6C  3C 60 80 52 */	lis r3, target_info_count@ha /* 0x8051922C@ha */
/* 80512B70  38 83 92 2C */	addi r4, r3, target_info_count@l /* 0x8051922C@l */
/* 80512B74  80 A4 00 00 */	lwz r5, 0(r4)
/* 80512B78  2C 05 00 02 */	cmpwi r5, 2
/* 80512B7C  40 80 00 1C */	bge lbl_80512B98
/* 80512B80  54 A0 10 3A */	slwi r0, r5, 2
/* 80512B84  3C 60 80 52 */	lis r3, target_info@ha /* 0x80519204@ha */
/* 80512B88  38 63 92 04 */	addi r3, r3, target_info@l /* 0x80519204@l */
/* 80512B8C  7F E3 01 2E */	stwx r31, r3, r0
/* 80512B90  38 05 00 01 */	addi r0, r5, 1
/* 80512B94  90 04 00 00 */	stw r0, 0(r4)
lbl_80512B98:
/* 80512B98  38 60 00 00 */	li r3, 0
/* 80512B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80512BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80512BA4  7C 08 03 A6 */	mtlr r0
/* 80512BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80512BAC  4E 80 00 20 */	blr 
