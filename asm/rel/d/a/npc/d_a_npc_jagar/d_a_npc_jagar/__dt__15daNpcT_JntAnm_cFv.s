lbl_80A1998C:
/* 80A1998C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A19990  7C 08 02 A6 */	mflr r0
/* 80A19994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1999C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A199A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A199A4  7C 9E 23 78 */	mr r30, r4
/* 80A199A8  41 82 00 C4 */	beq lbl_80A19A6C
/* 80A199AC  3C 60 80 A2 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A1ACD8@ha */
/* 80A199B0  38 03 AC D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A1ACD8@l */
/* 80A199B4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A199B8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A199BC  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A193B0@ha */
/* 80A199C0  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A193B0@l */
/* 80A199C4  38 A0 00 0C */	li r5, 0xc
/* 80A199C8  38 C0 00 03 */	li r6, 3
/* 80A199CC  4B 94 83 1D */	bl __destroy_arr
/* 80A199D0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A199D4  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A193B0@ha */
/* 80A199D8  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A193B0@l */
/* 80A199DC  38 A0 00 0C */	li r5, 0xc
/* 80A199E0  38 C0 00 03 */	li r6, 3
/* 80A199E4  4B 94 83 05 */	bl __destroy_arr
/* 80A199E8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A199EC  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A193B0@ha */
/* 80A199F0  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A193B0@l */
/* 80A199F4  38 A0 00 0C */	li r5, 0xc
/* 80A199F8  38 C0 00 03 */	li r6, 3
/* 80A199FC  4B 94 82 ED */	bl __destroy_arr
/* 80A19A00  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A19A04  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A193B0@ha */
/* 80A19A08  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A193B0@l */
/* 80A19A0C  38 A0 00 0C */	li r5, 0xc
/* 80A19A10  38 C0 00 03 */	li r6, 3
/* 80A19A14  4B 94 82 D5 */	bl __destroy_arr
/* 80A19A18  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A19A1C  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A193B0@ha */
/* 80A19A20  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A193B0@l */
/* 80A19A24  38 A0 00 0C */	li r5, 0xc
/* 80A19A28  38 C0 00 03 */	li r6, 3
/* 80A19A2C  4B 94 82 BD */	bl __destroy_arr
/* 80A19A30  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A19A34  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A193B0@ha */
/* 80A19A38  38 84 93 B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A193B0@l */
/* 80A19A3C  38 A0 00 0C */	li r5, 0xc
/* 80A19A40  38 C0 00 03 */	li r6, 3
/* 80A19A44  4B 94 82 A5 */	bl __destroy_arr
/* 80A19A48  28 1F 00 00 */	cmplwi r31, 0
/* 80A19A4C  41 82 00 10 */	beq lbl_80A19A5C
/* 80A19A50  3C 60 80 A2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A1ACCC@ha */
/* 80A19A54  38 03 AC CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A1ACCC@l */
/* 80A19A58  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A19A5C:
/* 80A19A5C  7F C0 07 35 */	extsh. r0, r30
/* 80A19A60  40 81 00 0C */	ble lbl_80A19A6C
/* 80A19A64  7F E3 FB 78 */	mr r3, r31
/* 80A19A68  4B 8B 52 D5 */	bl __dl__FPv
lbl_80A19A6C:
/* 80A19A6C  7F E3 FB 78 */	mr r3, r31
/* 80A19A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19A74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A19A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A19A7C  7C 08 03 A6 */	mtlr r0
/* 80A19A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80A19A84  4E 80 00 20 */	blr 
