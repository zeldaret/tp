lbl_80077C20:
/* 80077C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077C24  7C 08 02 A6 */	mflr r0
/* 80077C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077C30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80077C34  41 82 00 1C */	beq lbl_80077C50
/* 80077C38  3C A0 80 3B */	lis r5, __vt__15cBgS_GrpPassChk@ha
/* 80077C3C  38 05 B7 B4 */	addi r0, r5, __vt__15cBgS_GrpPassChk@l
/* 80077C40  90 1F 00 00 */	stw r0, 0(r31)
/* 80077C44  7C 80 07 35 */	extsh. r0, r4
/* 80077C48  40 81 00 08 */	ble lbl_80077C50
/* 80077C4C  48 25 70 F1 */	bl __dl__FPv
lbl_80077C50:
/* 80077C50  7F E3 FB 78 */	mr r3, r31
/* 80077C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077C5C  7C 08 03 A6 */	mtlr r0
/* 80077C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80077C64  4E 80 00 20 */	blr 
