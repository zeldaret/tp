lbl_80AC6AE4:
/* 80AC6AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6AE8  7C 08 02 A6 */	mflr r0
/* 80AC6AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6AF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC6AF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6AFC  7C 9E 23 78 */	mr r30, r4
/* 80AC6B00  41 82 00 C4 */	beq lbl_80AC6BC4
/* 80AC6B04  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC7358@ha */
/* 80AC6B08  38 03 73 58 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC7358@l */
/* 80AC6B0C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AC6B10  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AC6B14  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6B18  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6B1C  38 A0 00 0C */	li r5, 0xc
/* 80AC6B20  38 C0 00 03 */	li r6, 3
/* 80AC6B24  4B 89 B1 C5 */	bl __destroy_arr
/* 80AC6B28  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AC6B2C  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6B30  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6B34  38 A0 00 0C */	li r5, 0xc
/* 80AC6B38  38 C0 00 03 */	li r6, 3
/* 80AC6B3C  4B 89 B1 AD */	bl __destroy_arr
/* 80AC6B40  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AC6B44  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6B48  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6B4C  38 A0 00 0C */	li r5, 0xc
/* 80AC6B50  38 C0 00 03 */	li r6, 3
/* 80AC6B54  4B 89 B1 95 */	bl __destroy_arr
/* 80AC6B58  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AC6B5C  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6B60  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6B64  38 A0 00 0C */	li r5, 0xc
/* 80AC6B68  38 C0 00 03 */	li r6, 3
/* 80AC6B6C  4B 89 B1 7D */	bl __destroy_arr
/* 80AC6B70  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AC6B74  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6B78  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6B7C  38 A0 00 0C */	li r5, 0xc
/* 80AC6B80  38 C0 00 03 */	li r6, 3
/* 80AC6B84  4B 89 B1 65 */	bl __destroy_arr
/* 80AC6B88  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AC6B8C  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha /* 0x80AC6664@ha */
/* 80AC6B90  38 84 66 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC6664@l */
/* 80AC6B94  38 A0 00 0C */	li r5, 0xc
/* 80AC6B98  38 C0 00 03 */	li r6, 3
/* 80AC6B9C  4B 89 B1 4D */	bl __destroy_arr
/* 80AC6BA0  28 1F 00 00 */	cmplwi r31, 0
/* 80AC6BA4  41 82 00 10 */	beq lbl_80AC6BB4
/* 80AC6BA8  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC734C@ha */
/* 80AC6BAC  38 03 73 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC734C@l */
/* 80AC6BB0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AC6BB4:
/* 80AC6BB4  7F C0 07 35 */	extsh. r0, r30
/* 80AC6BB8  40 81 00 0C */	ble lbl_80AC6BC4
/* 80AC6BBC  7F E3 FB 78 */	mr r3, r31
/* 80AC6BC0  4B 80 81 7D */	bl __dl__FPv
lbl_80AC6BC4:
/* 80AC6BC4  7F E3 FB 78 */	mr r3, r31
/* 80AC6BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC6BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6BD4  7C 08 03 A6 */	mtlr r0
/* 80AC6BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6BDC  4E 80 00 20 */	blr 
