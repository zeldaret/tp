lbl_80663AEC:
/* 80663AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80663AF0  7C 08 02 A6 */	mflr r0
/* 80663AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80663AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80663AFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80663B00  41 82 00 1C */	beq lbl_80663B1C
/* 80663B04  3C A0 80 66 */	lis r5, __vt__8cM3dGAab@ha
/* 80663B08  38 05 7B 68 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80663B0C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80663B10  7C 80 07 35 */	extsh. r0, r4
/* 80663B14  40 81 00 08 */	ble lbl_80663B1C
/* 80663B18  4B C6 B2 24 */	b __dl__FPv
lbl_80663B1C:
/* 80663B1C  7F E3 FB 78 */	mr r3, r31
/* 80663B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80663B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80663B28  7C 08 03 A6 */	mtlr r0
/* 80663B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80663B30  4E 80 00 20 */	blr 
