lbl_80C176D4:
/* 80C176D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C176D8  7C 08 02 A6 */	mflr r0
/* 80C176DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C176E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C176E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C176E8  41 82 00 1C */	beq lbl_80C17704
/* 80C176EC  3C A0 80 C2 */	lis r5, __vt__8cM3dGAab@ha
/* 80C176F0  38 05 81 FC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C176F4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C176F8  7C 80 07 35 */	extsh. r0, r4
/* 80C176FC  40 81 00 08 */	ble lbl_80C17704
/* 80C17700  4B 6B 76 3C */	b __dl__FPv
lbl_80C17704:
/* 80C17704  7F E3 FB 78 */	mr r3, r31
/* 80C17708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1770C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17710  7C 08 03 A6 */	mtlr r0
/* 80C17714  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17718  4E 80 00 20 */	blr 
