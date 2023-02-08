lbl_801BEF28:
/* 801BEF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BEF2C  7C 08 02 A6 */	mflr r0
/* 801BEF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BEF34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BEF38  93 C1 00 08 */	stw r30, 8(r1)
/* 801BEF3C  7C 7E 1B 78 */	mr r30, r3
/* 801BEF40  7C 9F 23 78 */	mr r31, r4
/* 801BEF44  48 00 0D 35 */	bl itemCarryCheck__12dMenu_Dmap_cFv
/* 801BEF48  2C 03 00 00 */	cmpwi r3, 0
/* 801BEF4C  40 82 00 0C */	bne lbl_801BEF58
/* 801BEF50  38 60 FF FF */	li r3, -1
/* 801BEF54  48 00 00 60 */	b lbl_801BEFB4
lbl_801BEF58:
/* 801BEF58  88 7E 01 77 */	lbz r3, 0x177(r30)
/* 801BEF5C  7C 03 FA 15 */	add. r0, r3, r31
/* 801BEF60  41 80 00 0C */	blt lbl_801BEF6C
/* 801BEF64  2C 00 00 02 */	cmpwi r0, 2
/* 801BEF68  40 81 00 0C */	ble lbl_801BEF74
lbl_801BEF6C:
/* 801BEF6C  38 60 FF FF */	li r3, -1
/* 801BEF70  48 00 00 44 */	b lbl_801BEFB4
lbl_801BEF74:
/* 801BEF74  7C 66 1B 78 */	mr r6, r3
/* 801BEF78  38 60 FF FF */	li r3, -1
/* 801BEF7C  7C 9E FA 14 */	add r4, r30, r31
/* 801BEF80  48 00 00 20 */	b lbl_801BEFA0
lbl_801BEF84:
/* 801BEF84  38 06 01 74 */	addi r0, r6, 0x174
/* 801BEF88  7C 04 00 AE */	lbzx r0, r4, r0
/* 801BEF8C  28 00 00 00 */	cmplwi r0, 0
/* 801BEF90  41 82 00 0C */	beq lbl_801BEF9C
/* 801BEF94  7C A3 2B 78 */	mr r3, r5
/* 801BEF98  48 00 00 1C */	b lbl_801BEFB4
lbl_801BEF9C:
/* 801BEF9C  7C C6 FA 14 */	add r6, r6, r31
lbl_801BEFA0:
/* 801BEFA0  7C A6 FA 14 */	add r5, r6, r31
/* 801BEFA4  2C 05 00 02 */	cmpwi r5, 2
/* 801BEFA8  41 81 00 0C */	bgt lbl_801BEFB4
/* 801BEFAC  2C 05 00 00 */	cmpwi r5, 0
/* 801BEFB0  40 80 FF D4 */	bge lbl_801BEF84
lbl_801BEFB4:
/* 801BEFB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BEFB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BEFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BEFC0  7C 08 03 A6 */	mtlr r0
/* 801BEFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 801BEFC8  4E 80 00 20 */	blr 
