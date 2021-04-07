lbl_802C5234:
/* 802C5234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5238  7C 08 02 A6 */	mflr r0
/* 802C523C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5244  93 C1 00 08 */	stw r30, 8(r1)
/* 802C5248  7C 7E 1B 78 */	mr r30, r3
/* 802C524C  7C 9F 23 78 */	mr r31, r4
/* 802C5250  38 80 00 00 */	li r4, 0
/* 802C5254  4B FE 59 41 */	bl __ct__14Z2SoundStarterFb
/* 802C5258  3C 60 80 3D */	lis r3, __vt__18Z2RideSoundStarter@ha /* 0x803CB910@ha */
/* 802C525C  38 03 B9 10 */	addi r0, r3, __vt__18Z2RideSoundStarter@l /* 0x803CB910@l */
/* 802C5260  90 1E 00 00 */	stw r0, 0(r30)
/* 802C5264  93 FE 00 04 */	stw r31, 4(r30)
/* 802C5268  7F C3 F3 78 */	mr r3, r30
/* 802C526C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5270  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5278  7C 08 03 A6 */	mtlr r0
/* 802C527C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5280  4E 80 00 20 */	blr 
