lbl_803234A0:
/* 803234A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803234A4  7C 08 02 A6 */	mflr r0
/* 803234A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803234AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803234B0  93 C1 00 08 */	stw r30, 8(r1)
/* 803234B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 803234B8  7C 9F 23 78 */	mr r31, r4
/* 803234BC  41 82 00 64 */	beq lbl_80323520
/* 803234C0  3C 60 80 3D */	lis r3, __vt__15J3DIndBlockFull@ha
/* 803234C4  38 03 E9 0C */	addi r0, r3, __vt__15J3DIndBlockFull@l
/* 803234C8  90 1E 00 00 */	stw r0, 0(r30)
/* 803234CC  38 7E 00 6C */	addi r3, r30, 0x6c
/* 803234D0  3C 80 80 01 */	lis r4, __dt__19J3DIndTexCoordScaleFv@ha
/* 803234D4  38 84 E0 24 */	addi r4, r4, __dt__19J3DIndTexCoordScaleFv@l
/* 803234D8  38 A0 00 04 */	li r5, 4
/* 803234DC  38 C0 00 04 */	li r6, 4
/* 803234E0  48 03 E8 09 */	bl __destroy_arr
/* 803234E4  38 7E 00 18 */	addi r3, r30, 0x18
/* 803234E8  3C 80 80 01 */	lis r4, __dt__12J3DIndTexMtxFv@ha
/* 803234EC  38 84 E0 64 */	addi r4, r4, __dt__12J3DIndTexMtxFv@l
/* 803234F0  38 A0 00 1C */	li r5, 0x1c
/* 803234F4  38 C0 00 03 */	li r6, 3
/* 803234F8  48 03 E7 F1 */	bl __destroy_arr
/* 803234FC  28 1E 00 00 */	cmplwi r30, 0
/* 80323500  41 82 00 10 */	beq lbl_80323510
/* 80323504  3C 60 80 3D */	lis r3, __vt__11J3DIndBlock@ha
/* 80323508  38 03 DD E8 */	addi r0, r3, __vt__11J3DIndBlock@l
/* 8032350C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80323510:
/* 80323510  7F E0 07 35 */	extsh. r0, r31
/* 80323514  40 81 00 0C */	ble lbl_80323520
/* 80323518  7F C3 F3 78 */	mr r3, r30
/* 8032351C  4B FA B8 21 */	bl __dl__FPv
lbl_80323520:
/* 80323520  7F C3 F3 78 */	mr r3, r30
/* 80323524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80323528  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032352C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80323530  7C 08 03 A6 */	mtlr r0
/* 80323534  38 21 00 10 */	addi r1, r1, 0x10
/* 80323538  4E 80 00 20 */	blr 
