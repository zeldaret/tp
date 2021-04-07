lbl_806A6B3C:
/* 806A6B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6B40  7C 08 02 A6 */	mflr r0
/* 806A6B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6B4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A6B50  41 82 00 1C */	beq lbl_806A6B6C
/* 806A6B54  3C A0 80 6A */	lis r5, __vt__8cM3dGAab@ha /* 0x806A7464@ha */
/* 806A6B58  38 05 74 64 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806A7464@l */
/* 806A6B5C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806A6B60  7C 80 07 35 */	extsh. r0, r4
/* 806A6B64  40 81 00 08 */	ble lbl_806A6B6C
/* 806A6B68  4B C2 81 D5 */	bl __dl__FPv
lbl_806A6B6C:
/* 806A6B6C  7F E3 FB 78 */	mr r3, r31
/* 806A6B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6B78  7C 08 03 A6 */	mtlr r0
/* 806A6B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6B80  4E 80 00 20 */	blr 
