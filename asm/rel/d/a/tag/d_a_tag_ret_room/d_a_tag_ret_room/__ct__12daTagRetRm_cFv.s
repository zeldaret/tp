lbl_80D5EE98:
/* 80D5EE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EE9C  7C 08 02 A6 */	mflr r0
/* 80D5EEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5EEA8  7C 7F 1B 78 */	mr r31, r3
/* 80D5EEAC  4B 2B 9C B9 */	bl __ct__10fopAc_ac_cFv
/* 80D5EEB0  3C 60 80 D6 */	lis r3, __vt__12daTagRetRm_c@ha /* 0x80D5F264@ha */
/* 80D5EEB4  38 03 F2 64 */	addi r0, r3, __vt__12daTagRetRm_c@l /* 0x80D5F264@l */
/* 80D5EEB8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80D5EEBC  7F E3 FB 78 */	mr r3, r31
/* 80D5EEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5EEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EEC8  7C 08 03 A6 */	mtlr r0
/* 80D5EECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EED0  4E 80 00 20 */	blr 
