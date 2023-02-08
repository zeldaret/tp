lbl_80CB3E58:
/* 80CB3E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3E5C  7C 08 02 A6 */	mflr r0
/* 80CB3E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB3E68  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB3E6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB3E70  7C 9F 23 78 */	mr r31, r4
/* 80CB3E74  41 82 00 48 */	beq lbl_80CB3EBC
/* 80CB3E78  3C 60 80 CB */	lis r3, __vt__10daPoFire_c@ha /* 0x80CB40A0@ha */
/* 80CB3E7C  38 63 40 A0 */	addi r3, r3, __vt__10daPoFire_c@l /* 0x80CB40A0@l */
/* 80CB3E80  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80CB3E84  38 03 00 08 */	addi r0, r3, 8
/* 80CB3E88  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CB3E8C  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80CB3E90  41 82 00 10 */	beq lbl_80CB3EA0
/* 80CB3E94  3C 60 80 CB */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80CB40D0@ha */
/* 80CB3E98  38 03 40 D0 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80CB40D0@l */
/* 80CB3E9C  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80CB3EA0:
/* 80CB3EA0  7F C3 F3 78 */	mr r3, r30
/* 80CB3EA4  38 80 00 00 */	li r4, 0
/* 80CB3EA8  4B 36 4D E5 */	bl __dt__10fopAc_ac_cFv
/* 80CB3EAC  7F E0 07 35 */	extsh. r0, r31
/* 80CB3EB0  40 81 00 0C */	ble lbl_80CB3EBC
/* 80CB3EB4  7F C3 F3 78 */	mr r3, r30
/* 80CB3EB8  4B 61 AE 85 */	bl __dl__FPv
lbl_80CB3EBC:
/* 80CB3EBC  7F C3 F3 78 */	mr r3, r30
/* 80CB3EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB3EC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB3EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3ECC  7C 08 03 A6 */	mtlr r0
/* 80CB3ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3ED4  4E 80 00 20 */	blr 
