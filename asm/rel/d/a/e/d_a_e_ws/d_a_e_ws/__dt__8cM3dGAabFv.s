lbl_807E6C58:
/* 807E6C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6C5C  7C 08 02 A6 */	mflr r0
/* 807E6C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6C68  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E6C6C  41 82 00 1C */	beq lbl_807E6C88
/* 807E6C70  3C A0 80 7E */	lis r5, __vt__8cM3dGAab@ha
/* 807E6C74  38 05 75 64 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807E6C78  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807E6C7C  7C 80 07 35 */	extsh. r0, r4
/* 807E6C80  40 81 00 08 */	ble lbl_807E6C88
/* 807E6C84  4B AE 80 B8 */	b __dl__FPv
lbl_807E6C88:
/* 807E6C88  7F E3 FB 78 */	mr r3, r31
/* 807E6C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6C94  7C 08 03 A6 */	mtlr r0
/* 807E6C98  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6C9C  4E 80 00 20 */	blr 
