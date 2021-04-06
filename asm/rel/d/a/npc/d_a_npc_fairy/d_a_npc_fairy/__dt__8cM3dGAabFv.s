lbl_809B91F0:
/* 809B91F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B91F4  7C 08 02 A6 */	mflr r0
/* 809B91F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B91FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B9200  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B9204  41 82 00 1C */	beq lbl_809B9220
/* 809B9208  3C A0 80 9C */	lis r5, __vt__8cM3dGAab@ha /* 0x809BA31C@ha */
/* 809B920C  38 05 A3 1C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809BA31C@l */
/* 809B9210  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809B9214  7C 80 07 35 */	extsh. r0, r4
/* 809B9218  40 81 00 08 */	ble lbl_809B9220
/* 809B921C  4B 91 5B 21 */	bl __dl__FPv
lbl_809B9220:
/* 809B9220  7F E3 FB 78 */	mr r3, r31
/* 809B9224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B9228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B922C  7C 08 03 A6 */	mtlr r0
/* 809B9230  38 21 00 10 */	addi r1, r1, 0x10
/* 809B9234  4E 80 00 20 */	blr 
