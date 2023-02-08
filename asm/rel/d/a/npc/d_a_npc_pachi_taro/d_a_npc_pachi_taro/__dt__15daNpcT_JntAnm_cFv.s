lbl_80AA0C74:
/* 80AA0C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0C78  7C 08 02 A6 */	mflr r0
/* 80AA0C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0C84  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA0C88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0C8C  7C 9E 23 78 */	mr r30, r4
/* 80AA0C90  41 82 00 C4 */	beq lbl_80AA0D54
/* 80AA0C94  3C 60 80 AA */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AA2A8C@ha */
/* 80AA0C98  38 03 2A 8C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AA2A8C@l */
/* 80AA0C9C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AA0CA0  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AA0CA4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0CA8  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0CAC  38 A0 00 0C */	li r5, 0xc
/* 80AA0CB0  38 C0 00 03 */	li r6, 3
/* 80AA0CB4  4B 8C 10 35 */	bl __destroy_arr
/* 80AA0CB8  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AA0CBC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0CC0  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0CC4  38 A0 00 0C */	li r5, 0xc
/* 80AA0CC8  38 C0 00 03 */	li r6, 3
/* 80AA0CCC  4B 8C 10 1D */	bl __destroy_arr
/* 80AA0CD0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AA0CD4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0CD8  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0CDC  38 A0 00 0C */	li r5, 0xc
/* 80AA0CE0  38 C0 00 03 */	li r6, 3
/* 80AA0CE4  4B 8C 10 05 */	bl __destroy_arr
/* 80AA0CE8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AA0CEC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0CF0  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0CF4  38 A0 00 0C */	li r5, 0xc
/* 80AA0CF8  38 C0 00 03 */	li r6, 3
/* 80AA0CFC  4B 8C 0F ED */	bl __destroy_arr
/* 80AA0D00  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AA0D04  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0D08  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0D0C  38 A0 00 0C */	li r5, 0xc
/* 80AA0D10  38 C0 00 03 */	li r6, 3
/* 80AA0D14  4B 8C 0F D5 */	bl __destroy_arr
/* 80AA0D18  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AA0D1C  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0D20  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0D24  38 A0 00 0C */	li r5, 0xc
/* 80AA0D28  38 C0 00 03 */	li r6, 3
/* 80AA0D2C  4B 8C 0F BD */	bl __destroy_arr
/* 80AA0D30  28 1F 00 00 */	cmplwi r31, 0
/* 80AA0D34  41 82 00 10 */	beq lbl_80AA0D44
/* 80AA0D38  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA0D3C  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA0D40  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AA0D44:
/* 80AA0D44  7F C0 07 35 */	extsh. r0, r30
/* 80AA0D48  40 81 00 0C */	ble lbl_80AA0D54
/* 80AA0D4C  7F E3 FB 78 */	mr r3, r31
/* 80AA0D50  4B 82 DF ED */	bl __dl__FPv
lbl_80AA0D54:
/* 80AA0D54  7F E3 FB 78 */	mr r3, r31
/* 80AA0D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0D5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA0D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0D64  7C 08 03 A6 */	mtlr r0
/* 80AA0D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0D6C  4E 80 00 20 */	blr 
