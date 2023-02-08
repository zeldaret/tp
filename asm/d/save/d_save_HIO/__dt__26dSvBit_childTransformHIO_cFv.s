lbl_8025C2E4:
/* 8025C2E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C2E8  7C 08 02 A6 */	mflr r0
/* 8025C2EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C2F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C2F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C2F8  41 82 00 1C */	beq lbl_8025C314
/* 8025C2FC  3C A0 80 3C */	lis r5, __vt__26dSvBit_childTransformHIO_c@ha /* 0x803C330C@ha */
/* 8025C300  38 05 33 0C */	addi r0, r5, __vt__26dSvBit_childTransformHIO_c@l /* 0x803C330C@l */
/* 8025C304  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C308  7C 80 07 35 */	extsh. r0, r4
/* 8025C30C  40 81 00 08 */	ble lbl_8025C314
/* 8025C310  48 07 2A 2D */	bl __dl__FPv
lbl_8025C314:
/* 8025C314  7F E3 FB 78 */	mr r3, r31
/* 8025C318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C320  7C 08 03 A6 */	mtlr r0
/* 8025C324  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C328  4E 80 00 20 */	blr 
