lbl_80C321C8:
/* 80C321C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C321CC  7C 08 02 A6 */	mflr r0
/* 80C321D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C321D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C321D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C321DC  41 82 00 1C */	beq lbl_80C321F8
/* 80C321E0  3C A0 80 C3 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C321E4  38 05 3E 80 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C321E8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C321EC  7C 80 07 35 */	extsh. r0, r4
/* 80C321F0  40 81 00 08 */	ble lbl_80C321F8
/* 80C321F4  4B 69 CB 48 */	b __dl__FPv
lbl_80C321F8:
/* 80C321F8  7F E3 FB 78 */	mr r3, r31
/* 80C321FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C32200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C32204  7C 08 03 A6 */	mtlr r0
/* 80C32208  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3220C  4E 80 00 20 */	blr 
