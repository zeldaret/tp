lbl_80C97F3C:
/* 80C97F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C97F40  7C 08 02 A6 */	mflr r0
/* 80C97F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C97F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C97F4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C97F50  41 82 00 30 */	beq lbl_80C97F80
/* 80C97F54  3C 60 80 CA */	lis r3, __vt__20dScissorEnd_packet_c@ha /* 0x80C98110@ha */
/* 80C97F58  38 03 81 10 */	addi r0, r3, __vt__20dScissorEnd_packet_c@l /* 0x80C98110@l */
/* 80C97F5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C97F60  41 82 00 10 */	beq lbl_80C97F70
/* 80C97F64  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80C97F68  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80C97F6C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C97F70:
/* 80C97F70  7C 80 07 35 */	extsh. r0, r4
/* 80C97F74  40 81 00 0C */	ble lbl_80C97F80
/* 80C97F78  7F E3 FB 78 */	mr r3, r31
/* 80C97F7C  4B 63 6D C1 */	bl __dl__FPv
lbl_80C97F80:
/* 80C97F80  7F E3 FB 78 */	mr r3, r31
/* 80C97F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C97F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C97F8C  7C 08 03 A6 */	mtlr r0
/* 80C97F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C97F94  4E 80 00 20 */	blr 
