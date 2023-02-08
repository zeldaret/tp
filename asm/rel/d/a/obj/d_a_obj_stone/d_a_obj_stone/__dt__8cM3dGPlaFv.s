lbl_80CE935C:
/* 80CE935C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9360  7C 08 02 A6 */	mflr r0
/* 80CE9364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE936C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE9370  41 82 00 1C */	beq lbl_80CE938C
/* 80CE9374  3C A0 80 CF */	lis r5, __vt__8cM3dGPla@ha /* 0x80CECE04@ha */
/* 80CE9378  38 05 CE 04 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80CECE04@l */
/* 80CE937C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CE9380  7C 80 07 35 */	extsh. r0, r4
/* 80CE9384  40 81 00 08 */	ble lbl_80CE938C
/* 80CE9388  4B 5E 59 B5 */	bl __dl__FPv
lbl_80CE938C:
/* 80CE938C  7F E3 FB 78 */	mr r3, r31
/* 80CE9390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9398  7C 08 03 A6 */	mtlr r0
/* 80CE939C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE93A0  4E 80 00 20 */	blr 
