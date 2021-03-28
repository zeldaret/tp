lbl_80A95060:
/* 80A95060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95064  7C 08 02 A6 */	mflr r0
/* 80A95068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9506C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95070  3B E0 00 00 */	li r31, 0
/* 80A95074  80 04 00 00 */	lwz r0, 0(r4)
/* 80A95078  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9507C  41 82 00 28 */	beq lbl_80A950A4
/* 80A95080  40 80 00 24 */	bge lbl_80A950A4
/* 80A95084  2C 00 00 05 */	cmpwi r0, 5
/* 80A95088  41 82 00 08 */	beq lbl_80A95090
/* 80A9508C  48 00 00 18 */	b lbl_80A950A4
lbl_80A95090:
/* 80A95090  38 80 0A 00 */	li r4, 0xa00
/* 80A95094  4B FF F9 E9 */	bl _turn_to_link__18daNpc_Pachi_Besu_cFs
/* 80A95098  2C 03 00 00 */	cmpwi r3, 0
/* 80A9509C  41 82 00 08 */	beq lbl_80A950A4
/* 80A950A0  3B E0 00 01 */	li r31, 1
lbl_80A950A4:
/* 80A950A4  7F E3 FB 78 */	mr r3, r31
/* 80A950A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A950AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A950B0  7C 08 03 A6 */	mtlr r0
/* 80A950B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A950B8  4E 80 00 20 */	blr 
