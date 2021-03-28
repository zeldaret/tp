lbl_80B6BBD0:
/* 80B6BBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6BBD4  7C 08 02 A6 */	mflr r0
/* 80B6BBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6BBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6BBE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6BBE4  41 82 00 1C */	beq lbl_80B6BC00
/* 80B6BBE8  3C A0 80 B7 */	lis r5, __vt__8cM3dGAab@ha
/* 80B6BBEC  38 05 BF B4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B6BBF0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B6BBF4  7C 80 07 35 */	extsh. r0, r4
/* 80B6BBF8  40 81 00 08 */	ble lbl_80B6BC00
/* 80B6BBFC  4B 76 31 40 */	b __dl__FPv
lbl_80B6BC00:
/* 80B6BC00  7F E3 FB 78 */	mr r3, r31
/* 80B6BC04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6BC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6BC0C  7C 08 03 A6 */	mtlr r0
/* 80B6BC10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6BC14  4E 80 00 20 */	blr 
