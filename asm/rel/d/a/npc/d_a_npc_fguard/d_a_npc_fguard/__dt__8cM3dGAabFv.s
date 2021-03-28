lbl_809BB23C:
/* 809BB23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB240  7C 08 02 A6 */	mflr r0
/* 809BB244  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB24C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BB250  41 82 00 1C */	beq lbl_809BB26C
/* 809BB254  3C A0 80 9C */	lis r5, __vt__8cM3dGAab@ha
/* 809BB258  38 05 B4 E4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809BB25C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809BB260  7C 80 07 35 */	extsh. r0, r4
/* 809BB264  40 81 00 08 */	ble lbl_809BB26C
/* 809BB268  4B 91 3A D4 */	b __dl__FPv
lbl_809BB26C:
/* 809BB26C  7F E3 FB 78 */	mr r3, r31
/* 809BB270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB278  7C 08 03 A6 */	mtlr r0
/* 809BB27C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB280  4E 80 00 20 */	blr 
