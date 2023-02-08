lbl_805EC914:
/* 805EC914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC918  7C 08 02 A6 */	mflr r0
/* 805EC91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC924  7C 7F 1B 79 */	or. r31, r3, r3
/* 805EC928  41 82 00 1C */	beq lbl_805EC944
/* 805EC92C  3C A0 80 5F */	lis r5, __vt__8cM3dGAab@ha /* 0x805ED690@ha */
/* 805EC930  38 05 D6 90 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x805ED690@l */
/* 805EC934  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805EC938  7C 80 07 35 */	extsh. r0, r4
/* 805EC93C  40 81 00 08 */	ble lbl_805EC944
/* 805EC940  4B CE 23 FD */	bl __dl__FPv
lbl_805EC944:
/* 805EC944  7F E3 FB 78 */	mr r3, r31
/* 805EC948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC950  7C 08 03 A6 */	mtlr r0
/* 805EC954  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC958  4E 80 00 20 */	blr 
