lbl_80552B04:
/* 80552B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552B08  7C 08 02 A6 */	mflr r0
/* 80552B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80552B18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80552B1C  7C 9E 23 78 */	mr r30, r4
/* 80552B20  41 82 00 C4 */	beq lbl_80552BE4
/* 80552B24  3C 60 80 55 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80553DD8@ha */
/* 80552B28  38 03 3D D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80553DD8@l */
/* 80552B2C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80552B30  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80552B34  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x80552528@ha */
/* 80552B38  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80552528@l */
/* 80552B3C  38 A0 00 0C */	li r5, 0xc
/* 80552B40  38 C0 00 03 */	li r6, 3
/* 80552B44  4B E0 F1 A5 */	bl __destroy_arr
/* 80552B48  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80552B4C  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x80552528@ha */
/* 80552B50  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80552528@l */
/* 80552B54  38 A0 00 0C */	li r5, 0xc
/* 80552B58  38 C0 00 03 */	li r6, 3
/* 80552B5C  4B E0 F1 8D */	bl __destroy_arr
/* 80552B60  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80552B64  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x80552528@ha */
/* 80552B68  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80552528@l */
/* 80552B6C  38 A0 00 0C */	li r5, 0xc
/* 80552B70  38 C0 00 03 */	li r6, 3
/* 80552B74  4B E0 F1 75 */	bl __destroy_arr
/* 80552B78  38 7F 00 78 */	addi r3, r31, 0x78
/* 80552B7C  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x80552528@ha */
/* 80552B80  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80552528@l */
/* 80552B84  38 A0 00 0C */	li r5, 0xc
/* 80552B88  38 C0 00 03 */	li r6, 3
/* 80552B8C  4B E0 F1 5D */	bl __destroy_arr
/* 80552B90  38 7F 00 54 */	addi r3, r31, 0x54
/* 80552B94  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x80552528@ha */
/* 80552B98  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80552528@l */
/* 80552B9C  38 A0 00 0C */	li r5, 0xc
/* 80552BA0  38 C0 00 03 */	li r6, 3
/* 80552BA4  4B E0 F1 45 */	bl __destroy_arr
/* 80552BA8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80552BAC  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x80552528@ha */
/* 80552BB0  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80552528@l */
/* 80552BB4  38 A0 00 0C */	li r5, 0xc
/* 80552BB8  38 C0 00 03 */	li r6, 3
/* 80552BBC  4B E0 F1 2D */	bl __destroy_arr
/* 80552BC0  28 1F 00 00 */	cmplwi r31, 0
/* 80552BC4  41 82 00 10 */	beq lbl_80552BD4
/* 80552BC8  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80553DCC@ha */
/* 80552BCC  38 03 3D CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80553DCC@l */
/* 80552BD0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80552BD4:
/* 80552BD4  7F C0 07 35 */	extsh. r0, r30
/* 80552BD8  40 81 00 0C */	ble lbl_80552BE4
/* 80552BDC  7F E3 FB 78 */	mr r3, r31
/* 80552BE0  4B D7 C1 5D */	bl __dl__FPv
lbl_80552BE4:
/* 80552BE4  7F E3 FB 78 */	mr r3, r31
/* 80552BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552BEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80552BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552BF4  7C 08 03 A6 */	mtlr r0
/* 80552BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80552BFC  4E 80 00 20 */	blr 
