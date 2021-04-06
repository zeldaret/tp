lbl_80BB31C8:
/* 80BB31C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB31CC  7C 08 02 A6 */	mflr r0
/* 80BB31D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB31D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB31D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB31DC  41 82 00 1C */	beq lbl_80BB31F8
/* 80BB31E0  3C A0 80 BB */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BB3DF8@ha */
/* 80BB31E4  38 05 3D F8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BB3DF8@l */
/* 80BB31E8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BB31EC  7C 80 07 35 */	extsh. r0, r4
/* 80BB31F0  40 81 00 08 */	ble lbl_80BB31F8
/* 80BB31F4  4B 71 BB 49 */	bl __dl__FPv
lbl_80BB31F8:
/* 80BB31F8  7F E3 FB 78 */	mr r3, r31
/* 80BB31FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3204  7C 08 03 A6 */	mtlr r0
/* 80BB3208  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB320C  4E 80 00 20 */	blr 
