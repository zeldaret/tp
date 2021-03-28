lbl_80559B18:
/* 80559B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559B1C  7C 08 02 A6 */	mflr r0
/* 80559B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559B28  93 C1 00 08 */	stw r30, 8(r1)
/* 80559B2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80559B30  7C 9E 23 78 */	mr r30, r4
/* 80559B34  41 82 00 C4 */	beq lbl_80559BF8
/* 80559B38  3C 60 80 56 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80559B3C  38 03 B2 C4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80559B40  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80559B44  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80559B48  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559B4C  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559B50  38 A0 00 0C */	li r5, 0xc
/* 80559B54  38 C0 00 03 */	li r6, 3
/* 80559B58  4B E0 81 90 */	b __destroy_arr
/* 80559B5C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80559B60  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559B64  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559B68  38 A0 00 0C */	li r5, 0xc
/* 80559B6C  38 C0 00 03 */	li r6, 3
/* 80559B70  4B E0 81 78 */	b __destroy_arr
/* 80559B74  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80559B78  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559B7C  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559B80  38 A0 00 0C */	li r5, 0xc
/* 80559B84  38 C0 00 03 */	li r6, 3
/* 80559B88  4B E0 81 60 */	b __destroy_arr
/* 80559B8C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80559B90  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559B94  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559B98  38 A0 00 0C */	li r5, 0xc
/* 80559B9C  38 C0 00 03 */	li r6, 3
/* 80559BA0  4B E0 81 48 */	b __destroy_arr
/* 80559BA4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80559BA8  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559BAC  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559BB0  38 A0 00 0C */	li r5, 0xc
/* 80559BB4  38 C0 00 03 */	li r6, 3
/* 80559BB8  4B E0 81 30 */	b __destroy_arr
/* 80559BBC  38 7F 00 30 */	addi r3, r31, 0x30
/* 80559BC0  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80559BC4  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80559BC8  38 A0 00 0C */	li r5, 0xc
/* 80559BCC  38 C0 00 03 */	li r6, 3
/* 80559BD0  4B E0 81 18 */	b __destroy_arr
/* 80559BD4  28 1F 00 00 */	cmplwi r31, 0
/* 80559BD8  41 82 00 10 */	beq lbl_80559BE8
/* 80559BDC  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80559BE0  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80559BE4  90 1F 00 04 */	stw r0, 4(r31)
lbl_80559BE8:
/* 80559BE8  7F C0 07 35 */	extsh. r0, r30
/* 80559BEC  40 81 00 0C */	ble lbl_80559BF8
/* 80559BF0  7F E3 FB 78 */	mr r3, r31
/* 80559BF4  4B D7 51 48 */	b __dl__FPv
lbl_80559BF8:
/* 80559BF8  7F E3 FB 78 */	mr r3, r31
/* 80559BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559C00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80559C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559C08  7C 08 03 A6 */	mtlr r0
/* 80559C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80559C10  4E 80 00 20 */	blr 
