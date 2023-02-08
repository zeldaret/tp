lbl_8053DCB8:
/* 8053DCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DCBC  7C 08 02 A6 */	mflr r0
/* 8053DCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DCC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DCC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8053DCCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053DCD0  7C 9E 23 78 */	mr r30, r4
/* 8053DCD4  41 82 00 C4 */	beq lbl_8053DD98
/* 8053DCD8  3C 60 80 54 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x8053FD74@ha */
/* 8053DCDC  38 03 FD 74 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x8053FD74@l */
/* 8053DCE0  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 8053DCE4  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8053DCE8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x8053D724@ha */
/* 8053DCEC  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8053D724@l */
/* 8053DCF0  38 A0 00 0C */	li r5, 0xc
/* 8053DCF4  38 C0 00 03 */	li r6, 3
/* 8053DCF8  4B E2 3F F1 */	bl __destroy_arr
/* 8053DCFC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8053DD00  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x8053D724@ha */
/* 8053DD04  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8053D724@l */
/* 8053DD08  38 A0 00 0C */	li r5, 0xc
/* 8053DD0C  38 C0 00 03 */	li r6, 3
/* 8053DD10  4B E2 3F D9 */	bl __destroy_arr
/* 8053DD14  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8053DD18  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x8053D724@ha */
/* 8053DD1C  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8053D724@l */
/* 8053DD20  38 A0 00 0C */	li r5, 0xc
/* 8053DD24  38 C0 00 03 */	li r6, 3
/* 8053DD28  4B E2 3F C1 */	bl __destroy_arr
/* 8053DD2C  38 7F 00 78 */	addi r3, r31, 0x78
/* 8053DD30  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x8053D724@ha */
/* 8053DD34  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8053D724@l */
/* 8053DD38  38 A0 00 0C */	li r5, 0xc
/* 8053DD3C  38 C0 00 03 */	li r6, 3
/* 8053DD40  4B E2 3F A9 */	bl __destroy_arr
/* 8053DD44  38 7F 00 54 */	addi r3, r31, 0x54
/* 8053DD48  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x8053D724@ha */
/* 8053DD4C  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8053D724@l */
/* 8053DD50  38 A0 00 0C */	li r5, 0xc
/* 8053DD54  38 C0 00 03 */	li r6, 3
/* 8053DD58  4B E2 3F 91 */	bl __destroy_arr
/* 8053DD5C  38 7F 00 30 */	addi r3, r31, 0x30
/* 8053DD60  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x8053D724@ha */
/* 8053DD64  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8053D724@l */
/* 8053DD68  38 A0 00 0C */	li r5, 0xc
/* 8053DD6C  38 C0 00 03 */	li r6, 3
/* 8053DD70  4B E2 3F 79 */	bl __destroy_arr
/* 8053DD74  28 1F 00 00 */	cmplwi r31, 0
/* 8053DD78  41 82 00 10 */	beq lbl_8053DD88
/* 8053DD7C  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x8053FD68@ha */
/* 8053DD80  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x8053FD68@l */
/* 8053DD84  90 1F 00 04 */	stw r0, 4(r31)
lbl_8053DD88:
/* 8053DD88  7F C0 07 35 */	extsh. r0, r30
/* 8053DD8C  40 81 00 0C */	ble lbl_8053DD98
/* 8053DD90  7F E3 FB 78 */	mr r3, r31
/* 8053DD94  4B D9 0F A9 */	bl __dl__FPv
lbl_8053DD98:
/* 8053DD98  7F E3 FB 78 */	mr r3, r31
/* 8053DD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DDA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053DDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DDA8  7C 08 03 A6 */	mtlr r0
/* 8053DDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DDB0  4E 80 00 20 */	blr 
