lbl_80AEA0E8:
/* 80AEA0E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA0EC  7C 08 02 A6 */	mflr r0
/* 80AEA0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA0F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEA0F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEA0FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEA100  7C 9F 23 78 */	mr r31, r4
/* 80AEA104  41 82 00 38 */	beq lbl_80AEA13C
/* 80AEA108  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AEA6E8@ha */
/* 80AEA10C  38 03 A6 E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AEA6E8@l */
/* 80AEA110  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AEA114  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AEA118  38 80 FF FF */	li r4, -1
/* 80AEA11C  4B 78 4D FD */	bl __dt__8cM3dGCirFv
/* 80AEA120  7F C3 F3 78 */	mr r3, r30
/* 80AEA124  38 80 00 00 */	li r4, 0
/* 80AEA128  4B 77 DF 89 */	bl __dt__13cBgS_PolyInfoFv
/* 80AEA12C  7F E0 07 35 */	extsh. r0, r31
/* 80AEA130  40 81 00 0C */	ble lbl_80AEA13C
/* 80AEA134  7F C3 F3 78 */	mr r3, r30
/* 80AEA138  4B 7E 4C 05 */	bl __dl__FPv
lbl_80AEA13C:
/* 80AEA13C  7F C3 F3 78 */	mr r3, r30
/* 80AEA140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA144  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEA148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA14C  7C 08 03 A6 */	mtlr r0
/* 80AEA150  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA154  4E 80 00 20 */	blr 
