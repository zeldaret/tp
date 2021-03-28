lbl_802AAB94:
/* 802AAB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AAB98  7C 08 02 A6 */	mflr r0
/* 802AAB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AABA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AABA4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AABA8  7C 7E 1B 78 */	mr r30, r3
/* 802AABAC  7C 9F 23 78 */	mr r31, r4
/* 802AABB0  4B FF 83 BD */	bl __ct__15JAISoundStarterFb
/* 802AABB4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802AABB8  41 82 00 14 */	beq lbl_802AABCC
/* 802AABBC  34 7E 00 04 */	addic. r3, r30, 4
/* 802AABC0  41 82 00 08 */	beq lbl_802AABC8
/* 802AABC4  38 63 FF FC */	addi r3, r3, -4
lbl_802AABC8:
/* 802AABC8  90 6D 85 F4 */	stw r3, data_80450B74(r13)
lbl_802AABCC:
/* 802AABCC  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha
/* 802AABD0  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l
/* 802AABD4  90 1E 00 00 */	stw r0, 0(r30)
/* 802AABD8  7F C3 F3 78 */	mr r3, r30
/* 802AABDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AABE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AABE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AABE8  7C 08 03 A6 */	mtlr r0
/* 802AABEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AABF0  4E 80 00 20 */	blr 
