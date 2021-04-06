lbl_80CDA4B4:
/* 80CDA4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA4B8  7C 08 02 A6 */	mflr r0
/* 80CDA4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA4C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDA4C8  41 82 00 1C */	beq lbl_80CDA4E4
/* 80CDA4CC  3C A0 80 CE */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CDBA20@ha */
/* 80CDA4D0  38 05 BA 20 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CDBA20@l */
/* 80CDA4D4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CDA4D8  7C 80 07 35 */	extsh. r0, r4
/* 80CDA4DC  40 81 00 08 */	ble lbl_80CDA4E4
/* 80CDA4E0  4B 5F 48 5D */	bl __dl__FPv
lbl_80CDA4E4:
/* 80CDA4E4  7F E3 FB 78 */	mr r3, r31
/* 80CDA4E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDA4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA4F0  7C 08 03 A6 */	mtlr r0
/* 80CDA4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA4F8  4E 80 00 20 */	blr 
