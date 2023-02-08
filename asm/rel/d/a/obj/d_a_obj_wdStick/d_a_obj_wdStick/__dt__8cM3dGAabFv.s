lbl_80D31FE4:
/* 80D31FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31FE8  7C 08 02 A6 */	mflr r0
/* 80D31FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31FF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D31FF8  41 82 00 1C */	beq lbl_80D32014
/* 80D31FFC  3C A0 80 D3 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D343B0@ha */
/* 80D32000  38 05 43 B0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D343B0@l */
/* 80D32004  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D32008  7C 80 07 35 */	extsh. r0, r4
/* 80D3200C  40 81 00 08 */	ble lbl_80D32014
/* 80D32010  4B 59 CD 2D */	bl __dl__FPv
lbl_80D32014:
/* 80D32014  7F E3 FB 78 */	mr r3, r31
/* 80D32018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3201C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D32020  7C 08 03 A6 */	mtlr r0
/* 80D32024  38 21 00 10 */	addi r1, r1, 0x10
/* 80D32028  4E 80 00 20 */	blr 
