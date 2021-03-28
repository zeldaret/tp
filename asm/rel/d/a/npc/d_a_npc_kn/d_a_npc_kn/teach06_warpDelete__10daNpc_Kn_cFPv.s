lbl_80A30EDC:
/* 80A30EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A30EE0  7C 08 02 A6 */	mflr r0
/* 80A30EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A30EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A30EEC  7C 7F 1B 78 */	mr r31, r3
/* 80A30EF0  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A30EF4  2C 00 00 02 */	cmpwi r0, 2
/* 80A30EF8  41 82 00 28 */	beq lbl_80A30F20
/* 80A30EFC  40 80 00 48 */	bge lbl_80A30F44
/* 80A30F00  2C 00 00 00 */	cmpwi r0, 0
/* 80A30F04  40 80 00 0C */	bge lbl_80A30F10
/* 80A30F08  48 00 00 3C */	b lbl_80A30F44
/* 80A30F0C  48 00 00 38 */	b lbl_80A30F44
lbl_80A30F10:
/* 80A30F10  38 00 00 01 */	li r0, 1
/* 80A30F14  98 1F 17 0C */	stb r0, 0x170c(r31)
/* 80A30F18  38 00 00 02 */	li r0, 2
/* 80A30F1C  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A30F20:
/* 80A30F20  38 00 00 01 */	li r0, 1
/* 80A30F24  98 1F 17 0C */	stb r0, 0x170c(r31)
/* 80A30F28  7F E3 FB 78 */	mr r3, r31
/* 80A30F2C  48 00 C7 AD */	bl ctrlWarp__10daNpc_Kn_cFv
/* 80A30F30  88 1F 17 0C */	lbz r0, 0x170c(r31)
/* 80A30F34  28 00 00 02 */	cmplwi r0, 2
/* 80A30F38  40 82 00 0C */	bne lbl_80A30F44
/* 80A30F3C  7F E3 FB 78 */	mr r3, r31
/* 80A30F40  4B 5E 8D 3C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80A30F44:
/* 80A30F44  38 60 00 01 */	li r3, 1
/* 80A30F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A30F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A30F50  7C 08 03 A6 */	mtlr r0
/* 80A30F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80A30F58  4E 80 00 20 */	blr 
