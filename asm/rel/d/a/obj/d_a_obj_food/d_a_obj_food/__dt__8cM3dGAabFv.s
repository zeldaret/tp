lbl_80BF1C30:
/* 80BF1C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1C34  7C 08 02 A6 */	mflr r0
/* 80BF1C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF1C40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF1C44  41 82 00 1C */	beq lbl_80BF1C60
/* 80BF1C48  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha
/* 80BF1C4C  38 05 1E FC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BF1C50  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BF1C54  7C 80 07 35 */	extsh. r0, r4
/* 80BF1C58  40 81 00 08 */	ble lbl_80BF1C60
/* 80BF1C5C  4B 6D D0 E0 */	b __dl__FPv
lbl_80BF1C60:
/* 80BF1C60  7F E3 FB 78 */	mr r3, r31
/* 80BF1C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF1C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1C6C  7C 08 03 A6 */	mtlr r0
/* 80BF1C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1C74  4E 80 00 20 */	blr 
