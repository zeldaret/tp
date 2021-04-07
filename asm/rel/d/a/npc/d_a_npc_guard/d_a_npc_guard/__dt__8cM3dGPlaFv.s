lbl_809F0100:
/* 809F0100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F0104  7C 08 02 A6 */	mflr r0
/* 809F0108  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F010C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F0110  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F0114  41 82 00 1C */	beq lbl_809F0130
/* 809F0118  3C A0 80 9F */	lis r5, __vt__8cM3dGPla@ha /* 0x809F2FAC@ha */
/* 809F011C  38 05 2F AC */	addi r0, r5, __vt__8cM3dGPla@l /* 0x809F2FAC@l */
/* 809F0120  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809F0124  7C 80 07 35 */	extsh. r0, r4
/* 809F0128  40 81 00 08 */	ble lbl_809F0130
/* 809F012C  4B 8D EC 11 */	bl __dl__FPv
lbl_809F0130:
/* 809F0130  7F E3 FB 78 */	mr r3, r31
/* 809F0134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F0138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F013C  7C 08 03 A6 */	mtlr r0
/* 809F0140  38 21 00 10 */	addi r1, r1, 0x10
/* 809F0144  4E 80 00 20 */	blr 
