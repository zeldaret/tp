lbl_80B40E38:
/* 80B40E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B40E3C  7C 08 02 A6 */	mflr r0
/* 80B40E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B40E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B40E48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B40E4C  41 82 00 1C */	beq lbl_80B40E68
/* 80B40E50  3C A0 80 B4 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80B40E54  38 05 2D D0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80B40E58  90 1F 00 04 */	stw r0, 4(r31)
/* 80B40E5C  7C 80 07 35 */	extsh. r0, r4
/* 80B40E60  40 81 00 08 */	ble lbl_80B40E68
/* 80B40E64  4B 78 DE D8 */	b __dl__FPv
lbl_80B40E68:
/* 80B40E68  7F E3 FB 78 */	mr r3, r31
/* 80B40E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B40E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B40E74  7C 08 03 A6 */	mtlr r0
/* 80B40E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B40E7C  4E 80 00 20 */	blr 
