lbl_80B2F458:
/* 80B2F458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F45C  7C 08 02 A6 */	mflr r0
/* 80B2F460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2F468  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2F46C  41 82 00 1C */	beq lbl_80B2F488
/* 80B2F470  3C A0 80 B4 */	lis r5, __vt__8cM3dGAab@ha
/* 80B2F474  38 05 2D E8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B2F478  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B2F47C  7C 80 07 35 */	extsh. r0, r4
/* 80B2F480  40 81 00 08 */	ble lbl_80B2F488
/* 80B2F484  4B 79 F8 B8 */	b __dl__FPv
lbl_80B2F488:
/* 80B2F488  7F E3 FB 78 */	mr r3, r31
/* 80B2F48C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2F490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F494  7C 08 03 A6 */	mtlr r0
/* 80B2F498  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F49C  4E 80 00 20 */	blr 
