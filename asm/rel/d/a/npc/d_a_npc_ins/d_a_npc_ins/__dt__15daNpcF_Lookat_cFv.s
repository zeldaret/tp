lbl_80A135DC:
/* 80A135DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A135E0  7C 08 02 A6 */	mflr r0
/* 80A135E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A135E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A135EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A135F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A135F4  7C 9F 23 78 */	mr r31, r4
/* 80A135F8  41 82 00 98 */	beq lbl_80A13690
/* 80A135FC  3C 60 80 A1 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A145D8@ha */
/* 80A13600  38 03 45 D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A145D8@l */
/* 80A13604  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A13608  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A1360C  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A13610  38 84 36 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A13614  38 A0 00 06 */	li r5, 6
/* 80A13618  38 C0 00 04 */	li r6, 4
/* 80A1361C  4B 94 E6 CD */	bl __destroy_arr
/* 80A13620  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A13624  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A13628  38 84 36 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A1362C  38 A0 00 06 */	li r5, 6
/* 80A13630  38 C0 00 04 */	li r6, 4
/* 80A13634  4B 94 E6 B5 */	bl __destroy_arr
/* 80A13638  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A1363C  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A13640  38 84 36 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A13644  38 A0 00 06 */	li r5, 6
/* 80A13648  38 C0 00 04 */	li r6, 4
/* 80A1364C  4B 94 E6 9D */	bl __destroy_arr
/* 80A13650  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A13654  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A136AC@ha */
/* 80A13658  38 84 36 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A136AC@l */
/* 80A1365C  38 A0 00 06 */	li r5, 6
/* 80A13660  38 C0 00 04 */	li r6, 4
/* 80A13664  4B 94 E6 85 */	bl __destroy_arr
/* 80A13668  7F C3 F3 78 */	mr r3, r30
/* 80A1366C  3C 80 80 A1 */	lis r4, __dt__4cXyzFv@ha /* 0x80A136EC@ha */
/* 80A13670  38 84 36 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A136EC@l */
/* 80A13674  38 A0 00 0C */	li r5, 0xc
/* 80A13678  38 C0 00 04 */	li r6, 4
/* 80A1367C  4B 94 E6 6D */	bl __destroy_arr
/* 80A13680  7F E0 07 35 */	extsh. r0, r31
/* 80A13684  40 81 00 0C */	ble lbl_80A13690
/* 80A13688  7F C3 F3 78 */	mr r3, r30
/* 80A1368C  4B 8B B6 B1 */	bl __dl__FPv
lbl_80A13690:
/* 80A13690  7F C3 F3 78 */	mr r3, r30
/* 80A13694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13698  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1369C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A136A0  7C 08 03 A6 */	mtlr r0
/* 80A136A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A136A8  4E 80 00 20 */	blr 
