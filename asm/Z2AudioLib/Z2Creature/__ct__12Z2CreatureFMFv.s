lbl_802C1F54:
/* 802C1F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1F58  7C 08 02 A6 */	mflr r0
/* 802C1F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C1F64  7C 7F 1B 78 */	mr r31, r3
/* 802C1F68  4B FF EF FD */	bl __ct__15Z2CreatureEnemyFv
/* 802C1F6C  3C 60 80 3D */	lis r3, __vt__12Z2CreatureFM@ha
/* 802C1F70  38 03 B7 E0 */	addi r0, r3, __vt__12Z2CreatureFM@l
/* 802C1F74  90 1F 00 00 */	stw r0, 0(r31)
/* 802C1F78  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 802C1F7C  4B FF C8 C9 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C1F80  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802C1F84  4B FF C8 C1 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C1F88  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 802C1F8C  4B FF C8 B9 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C1F90  38 7F 01 04 */	addi r3, r31, 0x104
/* 802C1F94  4B FF C8 B1 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C1F98  7F E3 FB 78 */	mr r3, r31
/* 802C1F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C1FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C1FA4  7C 08 03 A6 */	mtlr r0
/* 802C1FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C1FAC  4E 80 00 20 */	blr 
