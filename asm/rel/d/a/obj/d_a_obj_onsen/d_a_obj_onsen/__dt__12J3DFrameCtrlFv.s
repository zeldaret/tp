lbl_80CA7DFC:
/* 80CA7DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7E00  7C 08 02 A6 */	mflr r0
/* 80CA7E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7E0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA7E10  41 82 00 1C */	beq lbl_80CA7E2C
/* 80CA7E14  3C A0 80 CB */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CA81B4@ha */
/* 80CA7E18  38 05 81 B4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CA81B4@l */
/* 80CA7E1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA7E20  7C 80 07 35 */	extsh. r0, r4
/* 80CA7E24  40 81 00 08 */	ble lbl_80CA7E2C
/* 80CA7E28  4B 62 6F 15 */	bl __dl__FPv
lbl_80CA7E2C:
/* 80CA7E2C  7F E3 FB 78 */	mr r3, r31
/* 80CA7E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7E38  7C 08 03 A6 */	mtlr r0
/* 80CA7E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7E40  4E 80 00 20 */	blr 
