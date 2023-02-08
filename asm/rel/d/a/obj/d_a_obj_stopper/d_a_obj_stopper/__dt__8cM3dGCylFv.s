lbl_80CED4F0:
/* 80CED4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED4F4  7C 08 02 A6 */	mflr r0
/* 80CED4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED500  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CED504  41 82 00 1C */	beq lbl_80CED520
/* 80CED508  3C A0 80 CF */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CEF178@ha */
/* 80CED50C  38 05 F1 78 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CEF178@l */
/* 80CED510  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CED514  7C 80 07 35 */	extsh. r0, r4
/* 80CED518  40 81 00 08 */	ble lbl_80CED520
/* 80CED51C  4B 5E 18 21 */	bl __dl__FPv
lbl_80CED520:
/* 80CED520  7F E3 FB 78 */	mr r3, r31
/* 80CED524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED52C  7C 08 03 A6 */	mtlr r0
/* 80CED530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED534  4E 80 00 20 */	blr 
