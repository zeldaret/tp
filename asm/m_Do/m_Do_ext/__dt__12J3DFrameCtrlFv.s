lbl_8000F9D8:
/* 8000F9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F9DC  7C 08 02 A6 */	mflr r0
/* 8000F9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000F9E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000F9EC  41 82 00 1C */	beq lbl_8000FA08
/* 8000F9F0  3C A0 80 3A */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8000F9F4  38 05 33 54 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8000F9F8  90 1F 00 00 */	stw r0, 0(r31)
/* 8000F9FC  7C 80 07 35 */	extsh. r0, r4
/* 8000FA00  40 81 00 08 */	ble lbl_8000FA08
/* 8000FA04  48 2B F3 39 */	bl __dl__FPv
lbl_8000FA08:
/* 8000FA08  7F E3 FB 78 */	mr r3, r31
/* 8000FA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000FA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000FA14  7C 08 03 A6 */	mtlr r0
/* 8000FA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8000FA1C  4E 80 00 20 */	blr 
