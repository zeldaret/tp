lbl_80A498B4:
/* 80A498B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A498B8  7C 08 02 A6 */	mflr r0
/* 80A498BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A498C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A498C4  7C 7F 1B 78 */	mr r31, r3
/* 80A498C8  4B 5C F4 19 */	bl fopAc_IsActor__FPv
/* 80A498CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A498D0  41 82 00 48 */	beq lbl_80A49918
/* 80A498D4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A498D8  2C 00 02 21 */	cmpwi r0, 0x221
/* 80A498DC  40 82 00 3C */	bne lbl_80A49918
/* 80A498E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A498E4  28 00 00 00 */	cmplwi r0, 0
/* 80A498E8  41 82 00 30 */	beq lbl_80A49918
/* 80A498EC  3C 60 80 A6 */	lis r3, target_info_count@ha /* 0x80A5FF18@ha */
/* 80A498F0  38 83 FF 18 */	addi r4, r3, target_info_count@l /* 0x80A5FF18@l */
/* 80A498F4  80 A4 00 00 */	lwz r5, 0(r4)
/* 80A498F8  2C 05 00 0A */	cmpwi r5, 0xa
/* 80A498FC  40 80 00 1C */	bge lbl_80A49918
/* 80A49900  54 A0 10 3A */	slwi r0, r5, 2
/* 80A49904  3C 60 80 A6 */	lis r3, target_info@ha /* 0x80A5FEF0@ha */
/* 80A49908  38 63 FE F0 */	addi r3, r3, target_info@l /* 0x80A5FEF0@l */
/* 80A4990C  7F E3 01 2E */	stwx r31, r3, r0
/* 80A49910  38 05 00 01 */	addi r0, r5, 1
/* 80A49914  90 04 00 00 */	stw r0, 0(r4)
lbl_80A49918:
/* 80A49918  38 60 00 00 */	li r3, 0
/* 80A4991C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A49920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49924  7C 08 03 A6 */	mtlr r0
/* 80A49928  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4992C  4E 80 00 20 */	blr 
