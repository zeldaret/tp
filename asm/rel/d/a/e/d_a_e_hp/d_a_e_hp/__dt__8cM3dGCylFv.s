lbl_806E9B04:
/* 806E9B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9B08  7C 08 02 A6 */	mflr r0
/* 806E9B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9B14  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E9B18  41 82 00 1C */	beq lbl_806E9B34
/* 806E9B1C  3C A0 80 6F */	lis r5, __vt__8cM3dGCyl@ha /* 0x806EA488@ha */
/* 806E9B20  38 05 A4 88 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x806EA488@l */
/* 806E9B24  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806E9B28  7C 80 07 35 */	extsh. r0, r4
/* 806E9B2C  40 81 00 08 */	ble lbl_806E9B34
/* 806E9B30  4B BE 52 0D */	bl __dl__FPv
lbl_806E9B34:
/* 806E9B34  7F E3 FB 78 */	mr r3, r31
/* 806E9B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9B40  7C 08 03 A6 */	mtlr r0
/* 806E9B44  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9B48  4E 80 00 20 */	blr 
