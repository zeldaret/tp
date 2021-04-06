lbl_80CE7114:
/* 80CE7114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7118  7C 08 02 A6 */	mflr r0
/* 80CE711C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7124  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE7128  41 82 00 1C */	beq lbl_80CE7144
/* 80CE712C  3C A0 80 CF */	lis r5, __vt__8cM3dGAab@ha /* 0x80CE804C@ha */
/* 80CE7130  38 05 80 4C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CE804C@l */
/* 80CE7134  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CE7138  7C 80 07 35 */	extsh. r0, r4
/* 80CE713C  40 81 00 08 */	ble lbl_80CE7144
/* 80CE7140  4B 5E 7B FD */	bl __dl__FPv
lbl_80CE7144:
/* 80CE7144  7F E3 FB 78 */	mr r3, r31
/* 80CE7148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE714C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7150  7C 08 03 A6 */	mtlr r0
/* 80CE7154  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7158  4E 80 00 20 */	blr 
