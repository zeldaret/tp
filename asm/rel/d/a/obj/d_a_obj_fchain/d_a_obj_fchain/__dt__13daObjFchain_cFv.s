lbl_80BE63C8:
/* 80BE63C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE63CC  7C 08 02 A6 */	mflr r0
/* 80BE63D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE63D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE63D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE63DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE63E0  7C 9E 23 78 */	mr r30, r4
/* 80BE63E4  41 82 00 B8 */	beq lbl_80BE649C
/* 80BE63E8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BE63EC  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BE7438@ha */
/* 80BE63F0  38 84 74 38 */	addi r4, r4, l_arcName@l /* 0x80BE7438@l */
/* 80BE63F4  4B 44 6C 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BE63F8  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 80BE63FC  3C 80 80 BE */	lis r4, __dt__5csXyzFv@ha /* 0x80BE6328@ha */
/* 80BE6400  38 84 63 28 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80BE6328@l */
/* 80BE6404  38 A0 00 06 */	li r5, 6
/* 80BE6408  38 C0 00 16 */	li r6, 0x16
/* 80BE640C  4B 77 B8 DD */	bl __destroy_arr
/* 80BE6410  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80BE6414  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BE6368@ha */
/* 80BE6418  38 84 63 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BE6368@l */
/* 80BE641C  38 A0 00 0C */	li r5, 0xc
/* 80BE6420  38 C0 00 16 */	li r6, 0x16
/* 80BE6424  4B 77 B8 C5 */	bl __destroy_arr
/* 80BE6428  38 7F 06 94 */	addi r3, r31, 0x694
/* 80BE642C  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BE6368@ha */
/* 80BE6430  38 84 63 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BE6368@l */
/* 80BE6434  38 A0 00 0C */	li r5, 0xc
/* 80BE6438  38 C0 00 16 */	li r6, 0x16
/* 80BE643C  4B 77 B8 AD */	bl __destroy_arr
/* 80BE6440  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80BE6444  3C 80 80 BE */	lis r4, __dt__4cXyzFv@ha /* 0x80BE6368@ha */
/* 80BE6448  38 84 63 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BE6368@l */
/* 80BE644C  38 A0 00 0C */	li r5, 0xc
/* 80BE6450  38 C0 00 16 */	li r6, 0x16
/* 80BE6454  4B 77 B8 95 */	bl __destroy_arr
/* 80BE6458  34 1F 05 74 */	addic. r0, r31, 0x574
/* 80BE645C  41 82 00 24 */	beq lbl_80BE6480
/* 80BE6460  3C 60 80 BE */	lis r3, __vt__19daObjFchain_shape_c@ha /* 0x80BE7528@ha */
/* 80BE6464  38 03 75 28 */	addi r0, r3, __vt__19daObjFchain_shape_c@l /* 0x80BE7528@l */
/* 80BE6468  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80BE646C  34 1F 05 74 */	addic. r0, r31, 0x574
/* 80BE6470  41 82 00 10 */	beq lbl_80BE6480
/* 80BE6474  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80BE6478  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80BE647C  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_80BE6480:
/* 80BE6480  7F E3 FB 78 */	mr r3, r31
/* 80BE6484  38 80 00 00 */	li r4, 0
/* 80BE6488  4B 43 28 05 */	bl __dt__10fopAc_ac_cFv
/* 80BE648C  7F C0 07 35 */	extsh. r0, r30
/* 80BE6490  40 81 00 0C */	ble lbl_80BE649C
/* 80BE6494  7F E3 FB 78 */	mr r3, r31
/* 80BE6498  4B 6E 88 A5 */	bl __dl__FPv
lbl_80BE649C:
/* 80BE649C  7F E3 FB 78 */	mr r3, r31
/* 80BE64A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE64A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE64A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE64AC  7C 08 03 A6 */	mtlr r0
/* 80BE64B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE64B4  4E 80 00 20 */	blr 
