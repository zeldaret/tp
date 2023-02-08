lbl_80C9FCDC:
/* 80C9FCDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9FCE0  7C 08 02 A6 */	mflr r0
/* 80C9FCE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9FCE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9FCEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9FCF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9FCF4  7C 9F 23 78 */	mr r31, r4
/* 80C9FCF8  41 82 00 38 */	beq lbl_80C9FD30
/* 80C9FCFC  3C 60 80 CA */	lis r3, __vt__15daObjIsuChild_c@ha /* 0x80CA045C@ha */
/* 80C9FD00  38 03 04 5C */	addi r0, r3, __vt__15daObjIsuChild_c@l /* 0x80CA045C@l */
/* 80C9FD04  90 1E 00 00 */	stw r0, 0(r30)
/* 80C9FD08  38 7E 00 44 */	addi r3, r30, 0x44
/* 80C9FD0C  3C 80 80 CA */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80C9FAFC@ha */
/* 80C9FD10  38 84 FA FC */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80C9FAFC@l */
/* 80C9FD14  38 A0 01 3C */	li r5, 0x13c
/* 80C9FD18  38 C0 00 02 */	li r6, 2
/* 80C9FD1C  4B 6C 1F CD */	bl __destroy_arr
/* 80C9FD20  7F E0 07 35 */	extsh. r0, r31
/* 80C9FD24  40 81 00 0C */	ble lbl_80C9FD30
/* 80C9FD28  7F C3 F3 78 */	mr r3, r30
/* 80C9FD2C  4B 62 F0 11 */	bl __dl__FPv
lbl_80C9FD30:
/* 80C9FD30  7F C3 F3 78 */	mr r3, r30
/* 80C9FD34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9FD38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9FD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9FD40  7C 08 03 A6 */	mtlr r0
/* 80C9FD44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9FD48  4E 80 00 20 */	blr 
