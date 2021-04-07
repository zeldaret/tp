lbl_80B48E44:
/* 80B48E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48E48  7C 08 02 A6 */	mflr r0
/* 80B48E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48E54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B48E58  41 82 00 1C */	beq lbl_80B48E74
/* 80B48E5C  3C A0 80 B5 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B499C0@ha */
/* 80B48E60  38 05 99 C0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B499C0@l */
/* 80B48E64  90 1F 00 04 */	stw r0, 4(r31)
/* 80B48E68  7C 80 07 35 */	extsh. r0, r4
/* 80B48E6C  40 81 00 08 */	ble lbl_80B48E74
/* 80B48E70  4B 78 5E CD */	bl __dl__FPv
lbl_80B48E74:
/* 80B48E74  7F E3 FB 78 */	mr r3, r31
/* 80B48E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B48E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48E80  7C 08 03 A6 */	mtlr r0
/* 80B48E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48E88  4E 80 00 20 */	blr 
