lbl_80B23B28:
/* 80B23B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23B2C  7C 08 02 A6 */	mflr r0
/* 80B23B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23B38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B23B3C  41 82 00 1C */	beq lbl_80B23B58
/* 80B23B40  3C A0 80 B2 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80B23B44  38 05 57 2C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80B23B48  90 1F 00 04 */	stw r0, 4(r31)
/* 80B23B4C  7C 80 07 35 */	extsh. r0, r4
/* 80B23B50  40 81 00 08 */	ble lbl_80B23B58
/* 80B23B54  4B 7A B1 E8 */	b __dl__FPv
lbl_80B23B58:
/* 80B23B58  7F E3 FB 78 */	mr r3, r31
/* 80B23B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23B64  7C 08 03 A6 */	mtlr r0
/* 80B23B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23B6C  4E 80 00 20 */	blr 
