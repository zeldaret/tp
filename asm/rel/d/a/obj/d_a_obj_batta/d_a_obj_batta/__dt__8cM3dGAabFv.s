lbl_80BAC6E8:
/* 80BAC6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC6EC  7C 08 02 A6 */	mflr r0
/* 80BAC6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC6F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC6F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAC6FC  41 82 00 1C */	beq lbl_80BAC718
/* 80BAC700  3C A0 80 BB */	lis r5, __vt__8cM3dGAab@ha /* 0x80BACC28@ha */
/* 80BAC704  38 05 CC 28 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BACC28@l */
/* 80BAC708  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BAC70C  7C 80 07 35 */	extsh. r0, r4
/* 80BAC710  40 81 00 08 */	ble lbl_80BAC718
/* 80BAC714  4B 72 26 29 */	bl __dl__FPv
lbl_80BAC718:
/* 80BAC718  7F E3 FB 78 */	mr r3, r31
/* 80BAC71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC724  7C 08 03 A6 */	mtlr r0
/* 80BAC728  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC72C  4E 80 00 20 */	blr 
