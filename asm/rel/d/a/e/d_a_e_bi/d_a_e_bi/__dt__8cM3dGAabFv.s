lbl_8068D1F0:
/* 8068D1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D1F4  7C 08 02 A6 */	mflr r0
/* 8068D1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D200  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068D204  41 82 00 1C */	beq lbl_8068D220
/* 8068D208  3C A0 80 69 */	lis r5, __vt__8cM3dGAab@ha /* 0x8068DA8C@ha */
/* 8068D20C  38 05 DA 8C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8068DA8C@l */
/* 8068D210  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8068D214  7C 80 07 35 */	extsh. r0, r4
/* 8068D218  40 81 00 08 */	ble lbl_8068D220
/* 8068D21C  4B C4 1B 21 */	bl __dl__FPv
lbl_8068D220:
/* 8068D220  7F E3 FB 78 */	mr r3, r31
/* 8068D224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D22C  7C 08 03 A6 */	mtlr r0
/* 8068D230  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D234  4E 80 00 20 */	blr 
