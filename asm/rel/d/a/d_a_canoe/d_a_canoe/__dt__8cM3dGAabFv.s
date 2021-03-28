lbl_804DACB0:
/* 804DACB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DACB4  7C 08 02 A6 */	mflr r0
/* 804DACB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DACBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DACC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DACC4  41 82 00 1C */	beq lbl_804DACE0
/* 804DACC8  3C A0 80 4E */	lis r5, __vt__8cM3dGAab@ha
/* 804DACCC  38 05 D7 D8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 804DACD0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804DACD4  7C 80 07 35 */	extsh. r0, r4
/* 804DACD8  40 81 00 08 */	ble lbl_804DACE0
/* 804DACDC  4B DF 40 60 */	b __dl__FPv
lbl_804DACE0:
/* 804DACE0  7F E3 FB 78 */	mr r3, r31
/* 804DACE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DACE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DACEC  7C 08 03 A6 */	mtlr r0
/* 804DACF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DACF4  4E 80 00 20 */	blr 
