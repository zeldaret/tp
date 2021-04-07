lbl_80B6745C:
/* 80B6745C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B67460  7C 08 02 A6 */	mflr r0
/* 80B67464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B67468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6746C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B67470  41 82 00 1C */	beq lbl_80B6748C
/* 80B67474  3C A0 80 B7 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B68BF4@ha */
/* 80B67478  38 05 8B F4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B68BF4@l */
/* 80B6747C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B67480  7C 80 07 35 */	extsh. r0, r4
/* 80B67484  40 81 00 08 */	ble lbl_80B6748C
/* 80B67488  4B 76 78 B5 */	bl __dl__FPv
lbl_80B6748C:
/* 80B6748C  7F E3 FB 78 */	mr r3, r31
/* 80B67490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B67494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B67498  7C 08 03 A6 */	mtlr r0
/* 80B6749C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B674A0  4E 80 00 20 */	blr 
