lbl_802C0F64:
/* 802C0F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0F68  7C 08 02 A6 */	mflr r0
/* 802C0F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0F74  7C 7F 1B 78 */	mr r31, r3
/* 802C0F78  4B FF F4 51 */	bl __ct__10Z2CreatureFv
/* 802C0F7C  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C0F80  7F E4 FB 78 */	mr r4, r31
/* 802C0F84  48 01 AE 79 */	bl __ct__10JSUPtrLinkFPv
/* 802C0F88  3C 60 80 3D */	lis r3, __vt__15Z2CreatureEnemy@ha /* 0x803CB860@ha */
/* 802C0F8C  38 03 B8 60 */	addi r0, r3, __vt__15Z2CreatureEnemy@l /* 0x803CB860@l */
/* 802C0F90  90 1F 00 00 */	stw r0, 0(r31)
/* 802C0F94  38 60 00 00 */	li r3, 0
/* 802C0F98  98 7F 00 A0 */	stb r3, 0xa0(r31)
/* 802C0F9C  38 00 00 01 */	li r0, 1
/* 802C0FA0  98 1F 00 A1 */	stb r0, 0xa1(r31)
/* 802C0FA4  98 7F 00 A2 */	stb r3, 0xa2(r31)
/* 802C0FA8  98 7F 00 A3 */	stb r3, 0xa3(r31)
/* 802C0FAC  7F E3 FB 78 */	mr r3, r31
/* 802C0FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0FB8  7C 08 03 A6 */	mtlr r0
/* 802C0FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0FC0  4E 80 00 20 */	blr 
