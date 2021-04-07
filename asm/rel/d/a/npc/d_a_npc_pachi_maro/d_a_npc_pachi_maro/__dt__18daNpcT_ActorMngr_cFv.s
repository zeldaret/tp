lbl_80A9AA38:
/* 80A9AA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9AA3C  7C 08 02 A6 */	mflr r0
/* 80A9AA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9AA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9AA48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9AA4C  41 82 00 1C */	beq lbl_80A9AA68
/* 80A9AA50  3C A0 80 AA */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9AA54  38 05 C0 78 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9AA58  90 1F 00 04 */	stw r0, 4(r31)
/* 80A9AA5C  7C 80 07 35 */	extsh. r0, r4
/* 80A9AA60  40 81 00 08 */	ble lbl_80A9AA68
/* 80A9AA64  4B 83 42 D9 */	bl __dl__FPv
lbl_80A9AA68:
/* 80A9AA68  7F E3 FB 78 */	mr r3, r31
/* 80A9AA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9AA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9AA74  7C 08 03 A6 */	mtlr r0
/* 80A9AA78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9AA7C  4E 80 00 20 */	blr 
