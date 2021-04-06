lbl_805C6744:
/* 805C6744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6748  7C 08 02 A6 */	mflr r0
/* 805C674C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6754  93 C1 00 08 */	stw r30, 8(r1)
/* 805C6758  7C 7E 1B 79 */	or. r30, r3, r3
/* 805C675C  7C 9F 23 78 */	mr r31, r4
/* 805C6760  41 82 00 94 */	beq lbl_805C67F4
/* 805C6764  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805C6768  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805C676C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805C6770  38 03 00 2C */	addi r0, r3, 0x2c
/* 805C6774  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805C6778  38 03 00 84 */	addi r0, r3, 0x84
/* 805C677C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805C6780  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805C6784  41 82 00 54 */	beq lbl_805C67D8
/* 805C6788  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805C678C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805C6790  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805C6794  38 03 00 58 */	addi r0, r3, 0x58
/* 805C6798  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805C679C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 805C67A0  41 82 00 10 */	beq lbl_805C67B0
/* 805C67A4  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha /* 0x805C7858@ha */
/* 805C67A8  38 03 78 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805C7858@l */
/* 805C67AC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_805C67B0:
/* 805C67B0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805C67B4  41 82 00 24 */	beq lbl_805C67D8
/* 805C67B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805C67BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805C67C0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805C67C4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805C67C8  41 82 00 10 */	beq lbl_805C67D8
/* 805C67CC  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805C7870@ha */
/* 805C67D0  38 03 78 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805C7870@l */
/* 805C67D4  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_805C67D8:
/* 805C67D8  7F C3 F3 78 */	mr r3, r30
/* 805C67DC  38 80 00 00 */	li r4, 0
/* 805C67E0  4B AB D9 05 */	bl __dt__12dCcD_GObjInfFv
/* 805C67E4  7F E0 07 35 */	extsh. r0, r31
/* 805C67E8  40 81 00 0C */	ble lbl_805C67F4
/* 805C67EC  7F C3 F3 78 */	mr r3, r30
/* 805C67F0  4B D0 85 4D */	bl __dl__FPv
lbl_805C67F4:
/* 805C67F4  7F C3 F3 78 */	mr r3, r30
/* 805C67F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C67FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C6800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6804  7C 08 03 A6 */	mtlr r0
/* 805C6808  38 21 00 10 */	addi r1, r1, 0x10
/* 805C680C  4E 80 00 20 */	blr 
