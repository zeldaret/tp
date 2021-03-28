lbl_804C8A40:
/* 804C8A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C8A44  7C 08 02 A6 */	mflr r0
/* 804C8A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C8A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C8A50  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C8A54  41 82 00 1C */	beq lbl_804C8A70
/* 804C8A58  3C A0 80 4D */	lis r5, __vt__8cM3dGPla@ha
/* 804C8A5C  38 05 C5 E0 */	addi r0, r5, __vt__8cM3dGPla@l
/* 804C8A60  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804C8A64  7C 80 07 35 */	extsh. r0, r4
/* 804C8A68  40 81 00 08 */	ble lbl_804C8A70
/* 804C8A6C  4B E0 62 D0 */	b __dl__FPv
lbl_804C8A70:
/* 804C8A70  7F E3 FB 78 */	mr r3, r31
/* 804C8A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C8A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C8A7C  7C 08 03 A6 */	mtlr r0
/* 804C8A80  38 21 00 10 */	addi r1, r1, 0x10
/* 804C8A84  4E 80 00 20 */	blr 
