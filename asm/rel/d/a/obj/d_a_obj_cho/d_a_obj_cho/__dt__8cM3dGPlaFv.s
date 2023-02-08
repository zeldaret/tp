lbl_80BCB834:
/* 80BCB834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCB838  7C 08 02 A6 */	mflr r0
/* 80BCB83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCB840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCB844  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCB848  41 82 00 1C */	beq lbl_80BCB864
/* 80BCB84C  3C A0 80 BD */	lis r5, __vt__8cM3dGPla@ha /* 0x80BCC714@ha */
/* 80BCB850  38 05 C7 14 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80BCC714@l */
/* 80BCB854  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BCB858  7C 80 07 35 */	extsh. r0, r4
/* 80BCB85C  40 81 00 08 */	ble lbl_80BCB864
/* 80BCB860  4B 70 34 DD */	bl __dl__FPv
lbl_80BCB864:
/* 80BCB864  7F E3 FB 78 */	mr r3, r31
/* 80BCB868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCB86C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCB870  7C 08 03 A6 */	mtlr r0
/* 80BCB874  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCB878  4E 80 00 20 */	blr 
