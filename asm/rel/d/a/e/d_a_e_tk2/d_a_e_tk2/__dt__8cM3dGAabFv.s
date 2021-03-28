lbl_807BBC48:
/* 807BBC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBC4C  7C 08 02 A6 */	mflr r0
/* 807BBC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBC54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BBC58  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BBC5C  41 82 00 1C */	beq lbl_807BBC78
/* 807BBC60  3C A0 80 7C */	lis r5, __vt__8cM3dGAab@ha
/* 807BBC64  38 05 BE F8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807BBC68  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807BBC6C  7C 80 07 35 */	extsh. r0, r4
/* 807BBC70  40 81 00 08 */	ble lbl_807BBC78
/* 807BBC74  4B B1 30 C8 */	b __dl__FPv
lbl_807BBC78:
/* 807BBC78  7F E3 FB 78 */	mr r3, r31
/* 807BBC7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BBC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBC84  7C 08 03 A6 */	mtlr r0
/* 807BBC88  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBC8C  4E 80 00 20 */	blr 
