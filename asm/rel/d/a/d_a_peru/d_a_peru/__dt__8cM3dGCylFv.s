lbl_80D4B1E8:
/* 80D4B1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B1EC  7C 08 02 A6 */	mflr r0
/* 80D4B1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B1F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B1FC  41 82 00 1C */	beq lbl_80D4B218
/* 80D4B200  3C A0 80 D5 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D4C684@ha */
/* 80D4B204  38 05 C6 84 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D4C684@l */
/* 80D4B208  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D4B20C  7C 80 07 35 */	extsh. r0, r4
/* 80D4B210  40 81 00 08 */	ble lbl_80D4B218
/* 80D4B214  4B 58 3B 29 */	bl __dl__FPv
lbl_80D4B218:
/* 80D4B218  7F E3 FB 78 */	mr r3, r31
/* 80D4B21C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B224  7C 08 03 A6 */	mtlr r0
/* 80D4B228  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B22C  4E 80 00 20 */	blr 
