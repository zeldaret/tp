lbl_80B5CCC0:
/* 80B5CCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5CCC4  7C 08 02 A6 */	mflr r0
/* 80B5CCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5CCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5CCD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5CCD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5CCD8  7C 9E 23 78 */	mr r30, r4
/* 80B5CCDC  41 82 00 C4 */	beq lbl_80B5CDA0
/* 80B5CCE0  3C 60 80 B6 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B5EC20@ha */
/* 80B5CCE4  38 03 EC 20 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B5EC20@l */
/* 80B5CCE8  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B5CCEC  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B5CCF0  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5CCF4  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5CCF8  38 A0 00 0C */	li r5, 0xc
/* 80B5CCFC  38 C0 00 03 */	li r6, 3
/* 80B5CD00  4B 80 4F E9 */	bl __destroy_arr
/* 80B5CD04  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B5CD08  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5CD0C  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5CD10  38 A0 00 0C */	li r5, 0xc
/* 80B5CD14  38 C0 00 03 */	li r6, 3
/* 80B5CD18  4B 80 4F D1 */	bl __destroy_arr
/* 80B5CD1C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B5CD20  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5CD24  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5CD28  38 A0 00 0C */	li r5, 0xc
/* 80B5CD2C  38 C0 00 03 */	li r6, 3
/* 80B5CD30  4B 80 4F B9 */	bl __destroy_arr
/* 80B5CD34  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B5CD38  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5CD3C  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5CD40  38 A0 00 0C */	li r5, 0xc
/* 80B5CD44  38 C0 00 03 */	li r6, 3
/* 80B5CD48  4B 80 4F A1 */	bl __destroy_arr
/* 80B5CD4C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B5CD50  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5CD54  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5CD58  38 A0 00 0C */	li r5, 0xc
/* 80B5CD5C  38 C0 00 03 */	li r6, 3
/* 80B5CD60  4B 80 4F 89 */	bl __destroy_arr
/* 80B5CD64  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B5CD68  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha /* 0x80B5C54C@ha */
/* 80B5CD6C  38 84 C5 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B5C54C@l */
/* 80B5CD70  38 A0 00 0C */	li r5, 0xc
/* 80B5CD74  38 C0 00 03 */	li r6, 3
/* 80B5CD78  4B 80 4F 71 */	bl __destroy_arr
/* 80B5CD7C  28 1F 00 00 */	cmplwi r31, 0
/* 80B5CD80  41 82 00 10 */	beq lbl_80B5CD90
/* 80B5CD84  3C 60 80 B6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B5EC14@ha */
/* 80B5CD88  38 03 EC 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B5EC14@l */
/* 80B5CD8C  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B5CD90:
/* 80B5CD90  7F C0 07 35 */	extsh. r0, r30
/* 80B5CD94  40 81 00 0C */	ble lbl_80B5CDA0
/* 80B5CD98  7F E3 FB 78 */	mr r3, r31
/* 80B5CD9C  4B 77 1F A1 */	bl __dl__FPv
lbl_80B5CDA0:
/* 80B5CDA0  7F E3 FB 78 */	mr r3, r31
/* 80B5CDA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5CDA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5CDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5CDB0  7C 08 03 A6 */	mtlr r0
/* 80B5CDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5CDB8  4E 80 00 20 */	blr 
