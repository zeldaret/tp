lbl_80B8DD90:
/* 80B8DD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8DD94  7C 08 02 A6 */	mflr r0
/* 80B8DD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8DD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8DDA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B8DDA4  41 82 00 1C */	beq lbl_80B8DDC0
/* 80B8DDA8  3C A0 80 B9 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B93BD8@ha */
/* 80B8DDAC  38 05 3B D8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B93BD8@l */
/* 80B8DDB0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B8DDB4  7C 80 07 35 */	extsh. r0, r4
/* 80B8DDB8  40 81 00 08 */	ble lbl_80B8DDC0
/* 80B8DDBC  4B 74 0F 81 */	bl __dl__FPv
lbl_80B8DDC0:
/* 80B8DDC0  7F E3 FB 78 */	mr r3, r31
/* 80B8DDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8DDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8DDCC  7C 08 03 A6 */	mtlr r0
/* 80B8DDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8DDD4  4E 80 00 20 */	blr 
