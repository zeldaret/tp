lbl_80CD51AC:
/* 80CD51AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD51B0  7C 08 02 A6 */	mflr r0
/* 80CD51B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD51B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD51BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD51C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD51C4  7C 9E 23 78 */	mr r30, r4
/* 80CD51C8  41 82 00 C4 */	beq lbl_80CD528C
/* 80CD51CC  3C 60 80 CD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80CD67D8@ha */
/* 80CD51D0  38 03 67 D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80CD67D8@l */
/* 80CD51D4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80CD51D8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80CD51DC  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD51E0  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD51E4  38 A0 00 0C */	li r5, 0xc
/* 80CD51E8  38 C0 00 03 */	li r6, 3
/* 80CD51EC  4B 68 CA FD */	bl __destroy_arr
/* 80CD51F0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80CD51F4  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD51F8  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD51FC  38 A0 00 0C */	li r5, 0xc
/* 80CD5200  38 C0 00 03 */	li r6, 3
/* 80CD5204  4B 68 CA E5 */	bl __destroy_arr
/* 80CD5208  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80CD520C  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5210  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD5214  38 A0 00 0C */	li r5, 0xc
/* 80CD5218  38 C0 00 03 */	li r6, 3
/* 80CD521C  4B 68 CA CD */	bl __destroy_arr
/* 80CD5220  38 7F 00 78 */	addi r3, r31, 0x78
/* 80CD5224  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5228  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD522C  38 A0 00 0C */	li r5, 0xc
/* 80CD5230  38 C0 00 03 */	li r6, 3
/* 80CD5234  4B 68 CA B5 */	bl __destroy_arr
/* 80CD5238  38 7F 00 54 */	addi r3, r31, 0x54
/* 80CD523C  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5240  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD5244  38 A0 00 0C */	li r5, 0xc
/* 80CD5248  38 C0 00 03 */	li r6, 3
/* 80CD524C  4B 68 CA 9D */	bl __destroy_arr
/* 80CD5250  38 7F 00 30 */	addi r3, r31, 0x30
/* 80CD5254  3C 80 80 CD */	lis r4, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5258  38 84 4B D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD525C  38 A0 00 0C */	li r5, 0xc
/* 80CD5260  38 C0 00 03 */	li r6, 3
/* 80CD5264  4B 68 CA 85 */	bl __destroy_arr
/* 80CD5268  28 1F 00 00 */	cmplwi r31, 0
/* 80CD526C  41 82 00 10 */	beq lbl_80CD527C
/* 80CD5270  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD5274  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD5278  90 1F 00 04 */	stw r0, 4(r31)
lbl_80CD527C:
/* 80CD527C  7F C0 07 35 */	extsh. r0, r30
/* 80CD5280  40 81 00 0C */	ble lbl_80CD528C
/* 80CD5284  7F E3 FB 78 */	mr r3, r31
/* 80CD5288  4B 5F 9A B5 */	bl __dl__FPv
lbl_80CD528C:
/* 80CD528C  7F E3 FB 78 */	mr r3, r31
/* 80CD5290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD5294  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD5298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD529C  7C 08 03 A6 */	mtlr r0
/* 80CD52A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD52A4  4E 80 00 20 */	blr 
