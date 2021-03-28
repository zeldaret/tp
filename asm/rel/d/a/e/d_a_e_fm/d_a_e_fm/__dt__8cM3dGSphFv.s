lbl_804FA070:
/* 804FA070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA074  7C 08 02 A6 */	mflr r0
/* 804FA078  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA080  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FA084  41 82 00 1C */	beq lbl_804FA0A0
/* 804FA088  3C A0 80 50 */	lis r5, __vt__8cM3dGSph@ha
/* 804FA08C  38 05 AD FC */	addi r0, r5, __vt__8cM3dGSph@l
/* 804FA090  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804FA094  7C 80 07 35 */	extsh. r0, r4
/* 804FA098  40 81 00 08 */	ble lbl_804FA0A0
/* 804FA09C  4B DD 4C A0 */	b __dl__FPv
lbl_804FA0A0:
/* 804FA0A0  7F E3 FB 78 */	mr r3, r31
/* 804FA0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA0AC  7C 08 03 A6 */	mtlr r0
/* 804FA0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA0B4  4E 80 00 20 */	blr 
