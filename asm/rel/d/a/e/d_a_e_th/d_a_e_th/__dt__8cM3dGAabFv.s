lbl_807B3DD8:
/* 807B3DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3DDC  7C 08 02 A6 */	mflr r0
/* 807B3DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3DE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 807B3DEC  41 82 00 1C */	beq lbl_807B3E08
/* 807B3DF0  3C A0 80 7B */	lis r5, __vt__8cM3dGAab@ha /* 0x807B4808@ha */
/* 807B3DF4  38 05 48 08 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x807B4808@l */
/* 807B3DF8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807B3DFC  7C 80 07 35 */	extsh. r0, r4
/* 807B3E00  40 81 00 08 */	ble lbl_807B3E08
/* 807B3E04  4B B1 AF 39 */	bl __dl__FPv
lbl_807B3E08:
/* 807B3E08  7F E3 FB 78 */	mr r3, r31
/* 807B3E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3E14  7C 08 03 A6 */	mtlr r0
/* 807B3E18  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3E1C  4E 80 00 20 */	blr 
