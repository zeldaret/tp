lbl_80CA08EC:
/* 80CA08EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA08F0  7C 08 02 A6 */	mflr r0
/* 80CA08F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA08F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA08FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA0900  41 82 00 1C */	beq lbl_80CA091C
/* 80CA0904  3C A0 80 CA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CA3474@ha */
/* 80CA0908  38 05 34 74 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CA3474@l */
/* 80CA090C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA0910  7C 80 07 35 */	extsh. r0, r4
/* 80CA0914  40 81 00 08 */	ble lbl_80CA091C
/* 80CA0918  4B 62 E4 25 */	bl __dl__FPv
lbl_80CA091C:
/* 80CA091C  7F E3 FB 78 */	mr r3, r31
/* 80CA0920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA0924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA0928  7C 08 03 A6 */	mtlr r0
/* 80CA092C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0930  4E 80 00 20 */	blr 
