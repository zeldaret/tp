lbl_80A899C0:
/* 80A899C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A899C4  7C 08 02 A6 */	mflr r0
/* 80A899C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A899CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A899D0  7C 7F 1B 78 */	mr r31, r3
/* 80A899D4  4B 58 F3 0D */	bl fopAc_IsActor__FPv
/* 80A899D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A899DC  41 82 00 44 */	beq lbl_80A89A20
/* 80A899E0  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A899E4  2C 00 01 10 */	cmpwi r0, 0x110
/* 80A899E8  41 82 00 0C */	beq lbl_80A899F4
/* 80A899EC  2C 00 03 00 */	cmpwi r0, 0x300
/* 80A899F0  40 82 00 30 */	bne lbl_80A89A20
lbl_80A899F4:
/* 80A899F4  3C 60 80 A9 */	lis r3, target_info_count@ha /* 0x80A92B18@ha */
/* 80A899F8  38 83 2B 18 */	addi r4, r3, target_info_count@l /* 0x80A92B18@l */
/* 80A899FC  80 A4 00 00 */	lwz r5, 0(r4)
/* 80A89A00  2C 05 00 05 */	cmpwi r5, 5
/* 80A89A04  40 80 00 1C */	bge lbl_80A89A20
/* 80A89A08  54 A0 10 3A */	slwi r0, r5, 2
/* 80A89A0C  3C 60 80 A9 */	lis r3, target_info@ha /* 0x80A92AF0@ha */
/* 80A89A10  38 63 2A F0 */	addi r3, r3, target_info@l /* 0x80A92AF0@l */
/* 80A89A14  7F E3 01 2E */	stwx r31, r3, r0
/* 80A89A18  38 05 00 01 */	addi r0, r5, 1
/* 80A89A1C  90 04 00 00 */	stw r0, 0(r4)
lbl_80A89A20:
/* 80A89A20  38 60 00 00 */	li r3, 0
/* 80A89A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A89A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A89A2C  7C 08 03 A6 */	mtlr r0
/* 80A89A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A89A34  4E 80 00 20 */	blr 
