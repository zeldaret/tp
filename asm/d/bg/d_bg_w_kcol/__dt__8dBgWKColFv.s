lbl_8007E74C:
/* 8007E74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E750  7C 08 02 A6 */	mflr r0
/* 8007E754  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E75C  93 C1 00 08 */	stw r30, 8(r1)
/* 8007E760  7C 7E 1B 79 */	or. r30, r3, r3
/* 8007E764  7C 9F 23 78 */	mr r31, r4
/* 8007E768  41 82 00 4C */	beq lbl_8007E7B4
/* 8007E76C  3C 60 80 3B */	lis r3, __vt__8dBgWKCol@ha
/* 8007E770  38 03 BD C8 */	addi r0, r3, __vt__8dBgWKCol@l
/* 8007E774  90 1E 00 04 */	stw r0, 4(r30)
/* 8007E778  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8007E77C  41 82 00 10 */	beq lbl_8007E78C
/* 8007E780  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 8007E784  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8007E788  90 1E 00 38 */	stw r0, 0x38(r30)
lbl_8007E78C:
/* 8007E78C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8007E790  38 80 FF FF */	li r4, -1
/* 8007E794  4B FF 58 ED */	bl __dt__6dBgPlcFv
/* 8007E798  7F C3 F3 78 */	mr r3, r30
/* 8007E79C  38 80 00 00 */	li r4, 0
/* 8007E7A0  4B FF FE A1 */	bl __dt__9dBgW_BaseFv
/* 8007E7A4  7F E0 07 35 */	extsh. r0, r31
/* 8007E7A8  40 81 00 0C */	ble lbl_8007E7B4
/* 8007E7AC  7F C3 F3 78 */	mr r3, r30
/* 8007E7B0  48 25 05 8D */	bl __dl__FPv
lbl_8007E7B4:
/* 8007E7B4  7F C3 F3 78 */	mr r3, r30
/* 8007E7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E7BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8007E7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E7C4  7C 08 03 A6 */	mtlr r0
/* 8007E7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E7CC  4E 80 00 20 */	blr 
