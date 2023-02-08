lbl_80950AE8:
/* 80950AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80950AEC  7C 08 02 A6 */	mflr r0
/* 80950AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80950AF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80950AF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80950AFC  41 82 00 1C */	beq lbl_80950B18
/* 80950B00  3C A0 80 95 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80951530@ha */
/* 80950B04  38 05 15 30 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80951530@l */
/* 80950B08  90 1F 00 00 */	stw r0, 0(r31)
/* 80950B0C  7C 80 07 35 */	extsh. r0, r4
/* 80950B10  40 81 00 08 */	ble lbl_80950B18
/* 80950B14  4B 97 E2 29 */	bl __dl__FPv
lbl_80950B18:
/* 80950B18  7F E3 FB 78 */	mr r3, r31
/* 80950B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80950B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80950B24  7C 08 03 A6 */	mtlr r0
/* 80950B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80950B2C  4E 80 00 20 */	blr 
