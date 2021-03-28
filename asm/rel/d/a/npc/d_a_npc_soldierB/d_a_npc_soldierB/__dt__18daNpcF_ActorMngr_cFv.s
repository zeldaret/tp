lbl_80AF51E8:
/* 80AF51E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF51EC  7C 08 02 A6 */	mflr r0
/* 80AF51F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF51F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF51F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF51FC  41 82 00 1C */	beq lbl_80AF5218
/* 80AF5200  3C A0 80 AF */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80AF5204  38 05 5D E8 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80AF5208  90 1F 00 04 */	stw r0, 4(r31)
/* 80AF520C  7C 80 07 35 */	extsh. r0, r4
/* 80AF5210  40 81 00 08 */	ble lbl_80AF5218
/* 80AF5214  4B 7D 9B 28 */	b __dl__FPv
lbl_80AF5218:
/* 80AF5218  7F E3 FB 78 */	mr r3, r31
/* 80AF521C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5224  7C 08 03 A6 */	mtlr r0
/* 80AF5228  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF522C  4E 80 00 20 */	blr 
