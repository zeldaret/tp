lbl_80C97F98:
/* 80C97F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C97F9C  7C 08 02 A6 */	mflr r0
/* 80C97FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C97FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C97FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C97FAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C97FB0  7C 9F 23 78 */	mr r31, r4
/* 80C97FB4  41 82 00 4C */	beq lbl_80C98000
/* 80C97FB8  3C 60 80 CA */	lis r3, __vt__22dScissorBegin_packet_c@ha /* 0x80C98124@ha */
/* 80C97FBC  38 03 81 24 */	addi r0, r3, __vt__22dScissorBegin_packet_c@l /* 0x80C98124@l */
/* 80C97FC0  90 1E 00 00 */	stw r0, 0(r30)
/* 80C97FC4  38 7E 00 10 */	addi r3, r30, 0x10
/* 80C97FC8  3C 80 80 C9 */	lis r4, __dt__4cXyzFv@ha /* 0x80C96DAC@ha */
/* 80C97FCC  38 84 6D AC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C96DAC@l */
/* 80C97FD0  38 A0 00 0C */	li r5, 0xc
/* 80C97FD4  38 C0 00 04 */	li r6, 4
/* 80C97FD8  4B 6C 9D 11 */	bl __destroy_arr
/* 80C97FDC  28 1E 00 00 */	cmplwi r30, 0
/* 80C97FE0  41 82 00 10 */	beq lbl_80C97FF0
/* 80C97FE4  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80C97FE8  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80C97FEC  90 1E 00 00 */	stw r0, 0(r30)
lbl_80C97FF0:
/* 80C97FF0  7F E0 07 35 */	extsh. r0, r31
/* 80C97FF4  40 81 00 0C */	ble lbl_80C98000
/* 80C97FF8  7F C3 F3 78 */	mr r3, r30
/* 80C97FFC  4B 63 6D 41 */	bl __dl__FPv
lbl_80C98000:
/* 80C98000  7F C3 F3 78 */	mr r3, r30
/* 80C98004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C98008  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9800C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C98010  7C 08 03 A6 */	mtlr r0
/* 80C98014  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98018  4E 80 00 20 */	blr 
