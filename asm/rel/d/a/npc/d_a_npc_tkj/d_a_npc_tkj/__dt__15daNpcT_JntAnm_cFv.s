lbl_80575C0C:
/* 80575C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575C10  7C 08 02 A6 */	mflr r0
/* 80575C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575C1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80575C20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80575C24  7C 9E 23 78 */	mr r30, r4
/* 80575C28  41 82 00 C4 */	beq lbl_80575CEC
/* 80575C2C  3C 60 80 57 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x805768C8@ha */
/* 80575C30  38 03 68 C8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x805768C8@l */
/* 80575C34  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80575C38  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80575C3C  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575C40  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575C44  38 A0 00 0C */	li r5, 0xc
/* 80575C48  38 C0 00 03 */	li r6, 3
/* 80575C4C  4B DE C0 9D */	bl __destroy_arr
/* 80575C50  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80575C54  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575C58  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575C5C  38 A0 00 0C */	li r5, 0xc
/* 80575C60  38 C0 00 03 */	li r6, 3
/* 80575C64  4B DE C0 85 */	bl __destroy_arr
/* 80575C68  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80575C6C  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575C70  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575C74  38 A0 00 0C */	li r5, 0xc
/* 80575C78  38 C0 00 03 */	li r6, 3
/* 80575C7C  4B DE C0 6D */	bl __destroy_arr
/* 80575C80  38 7F 00 78 */	addi r3, r31, 0x78
/* 80575C84  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575C88  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575C8C  38 A0 00 0C */	li r5, 0xc
/* 80575C90  38 C0 00 03 */	li r6, 3
/* 80575C94  4B DE C0 55 */	bl __destroy_arr
/* 80575C98  38 7F 00 54 */	addi r3, r31, 0x54
/* 80575C9C  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575CA0  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575CA4  38 A0 00 0C */	li r5, 0xc
/* 80575CA8  38 C0 00 03 */	li r6, 3
/* 80575CAC  4B DE C0 3D */	bl __destroy_arr
/* 80575CB0  38 7F 00 30 */	addi r3, r31, 0x30
/* 80575CB4  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575CB8  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575CBC  38 A0 00 0C */	li r5, 0xc
/* 80575CC0  38 C0 00 03 */	li r6, 3
/* 80575CC4  4B DE C0 25 */	bl __destroy_arr
/* 80575CC8  28 1F 00 00 */	cmplwi r31, 0
/* 80575CCC  41 82 00 10 */	beq lbl_80575CDC
/* 80575CD0  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575CD4  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 80575CD8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80575CDC:
/* 80575CDC  7F C0 07 35 */	extsh. r0, r30
/* 80575CE0  40 81 00 0C */	ble lbl_80575CEC
/* 80575CE4  7F E3 FB 78 */	mr r3, r31
/* 80575CE8  4B D5 90 55 */	bl __dl__FPv
lbl_80575CEC:
/* 80575CEC  7F E3 FB 78 */	mr r3, r31
/* 80575CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575CF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575CFC  7C 08 03 A6 */	mtlr r0
/* 80575D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80575D04  4E 80 00 20 */	blr 
