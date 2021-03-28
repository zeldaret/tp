lbl_80C5C5DC:
/* 80C5C5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C5E0  7C 08 02 A6 */	mflr r0
/* 80C5C5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C5EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5C5F0  7C 7F 1B 78 */	mr r31, r3
/* 80C5C5F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5C5F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5C5FC  40 82 00 40 */	bne lbl_80C5C63C
/* 80C5C600  7F E0 FB 79 */	or. r0, r31, r31
/* 80C5C604  41 82 00 2C */	beq lbl_80C5C630
/* 80C5C608  7C 1E 03 78 */	mr r30, r0
/* 80C5C60C  4B 3B C5 58 */	b __ct__10fopAc_ac_cFv
/* 80C5C610  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C5C614  3C 80 80 C6 */	lis r4, __ct__4cXyzFv@ha
/* 80C5C618  38 84 C6 AC */	addi r4, r4, __ct__4cXyzFv@l
/* 80C5C61C  3C A0 80 C6 */	lis r5, __dt__4cXyzFv@ha
/* 80C5C620  38 A5 C6 70 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C5C624  38 C0 00 0C */	li r6, 0xc
/* 80C5C628  38 E0 00 02 */	li r7, 2
/* 80C5C62C  4B 70 57 34 */	b __construct_array
lbl_80C5C630:
/* 80C5C630  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C5C634  60 00 00 08 */	ori r0, r0, 8
/* 80C5C638  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C5C63C:
/* 80C5C63C  7F E3 FB 78 */	mr r3, r31
/* 80C5C640  4B FF FE B9 */	bl Create__15daObjWaterEff_cFv
/* 80C5C644  2C 03 00 00 */	cmpwi r3, 0
/* 80C5C648  40 82 00 0C */	bne lbl_80C5C654
/* 80C5C64C  38 60 00 05 */	li r3, 5
/* 80C5C650  48 00 00 08 */	b lbl_80C5C658
lbl_80C5C654:
/* 80C5C654  38 60 00 04 */	li r3, 4
lbl_80C5C658:
/* 80C5C658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C65C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5C660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C664  7C 08 03 A6 */	mtlr r0
/* 80C5C668  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C66C  4E 80 00 20 */	blr 
