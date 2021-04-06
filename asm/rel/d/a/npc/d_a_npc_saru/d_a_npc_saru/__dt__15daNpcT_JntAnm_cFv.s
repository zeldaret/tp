lbl_80AC3BE8:
/* 80AC3BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3BEC  7C 08 02 A6 */	mflr r0
/* 80AC3BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3BF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC3BFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3C00  7C 9E 23 78 */	mr r30, r4
/* 80AC3C04  41 82 00 C4 */	beq lbl_80AC3CC8
/* 80AC3C08  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC4EE0@ha */
/* 80AC3C0C  38 03 4E E0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC4EE0@l */
/* 80AC3C10  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AC3C14  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AC3C18  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3C1C  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3C20  38 A0 00 0C */	li r5, 0xc
/* 80AC3C24  38 C0 00 03 */	li r6, 3
/* 80AC3C28  4B 89 E0 C1 */	bl __destroy_arr
/* 80AC3C2C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AC3C30  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3C34  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3C38  38 A0 00 0C */	li r5, 0xc
/* 80AC3C3C  38 C0 00 03 */	li r6, 3
/* 80AC3C40  4B 89 E0 A9 */	bl __destroy_arr
/* 80AC3C44  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AC3C48  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3C4C  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3C50  38 A0 00 0C */	li r5, 0xc
/* 80AC3C54  38 C0 00 03 */	li r6, 3
/* 80AC3C58  4B 89 E0 91 */	bl __destroy_arr
/* 80AC3C5C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AC3C60  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3C64  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3C68  38 A0 00 0C */	li r5, 0xc
/* 80AC3C6C  38 C0 00 03 */	li r6, 3
/* 80AC3C70  4B 89 E0 79 */	bl __destroy_arr
/* 80AC3C74  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AC3C78  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3C7C  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3C80  38 A0 00 0C */	li r5, 0xc
/* 80AC3C84  38 C0 00 03 */	li r6, 3
/* 80AC3C88  4B 89 E0 61 */	bl __destroy_arr
/* 80AC3C8C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AC3C90  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3C94  38 84 36 0C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3C98  38 A0 00 0C */	li r5, 0xc
/* 80AC3C9C  38 C0 00 03 */	li r6, 3
/* 80AC3CA0  4B 89 E0 49 */	bl __destroy_arr
/* 80AC3CA4  28 1F 00 00 */	cmplwi r31, 0
/* 80AC3CA8  41 82 00 10 */	beq lbl_80AC3CB8
/* 80AC3CAC  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC3CB0  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC3CB4  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AC3CB8:
/* 80AC3CB8  7F C0 07 35 */	extsh. r0, r30
/* 80AC3CBC  40 81 00 0C */	ble lbl_80AC3CC8
/* 80AC3CC0  7F E3 FB 78 */	mr r3, r31
/* 80AC3CC4  4B 80 B0 79 */	bl __dl__FPv
lbl_80AC3CC8:
/* 80AC3CC8  7F E3 FB 78 */	mr r3, r31
/* 80AC3CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC3CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3CD8  7C 08 03 A6 */	mtlr r0
/* 80AC3CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3CE0  4E 80 00 20 */	blr 
