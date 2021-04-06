lbl_80B26FE4:
/* 80B26FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B26FE8  7C 08 02 A6 */	mflr r0
/* 80B26FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B26FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B26FF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B26FF8  41 82 00 10 */	beq lbl_80B27008
/* 80B26FFC  7C 80 07 35 */	extsh. r0, r4
/* 80B27000  40 81 00 08 */	ble lbl_80B27008
/* 80B27004  4B 7A 7D 39 */	bl __dl__FPv
lbl_80B27008:
/* 80B27008  7F E3 FB 78 */	mr r3, r31
/* 80B2700C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B27010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B27014  7C 08 03 A6 */	mtlr r0
/* 80B27018  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2701C  4E 80 00 20 */	blr 
