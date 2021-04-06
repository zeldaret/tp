lbl_806393AC:
/* 806393AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806393B0  7C 08 02 A6 */	mflr r0
/* 806393B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806393B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806393BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806393C0  41 82 00 1C */	beq lbl_806393DC
/* 806393C4  3C A0 80 64 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80639ED8@ha */
/* 806393C8  38 05 9E D8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80639ED8@l */
/* 806393CC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806393D0  7C 80 07 35 */	extsh. r0, r4
/* 806393D4  40 81 00 08 */	ble lbl_806393DC
/* 806393D8  4B C9 59 65 */	bl __dl__FPv
lbl_806393DC:
/* 806393DC  7F E3 FB 78 */	mr r3, r31
/* 806393E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806393E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806393E8  7C 08 03 A6 */	mtlr r0
/* 806393EC  38 21 00 10 */	addi r1, r1, 0x10
/* 806393F0  4E 80 00 20 */	blr 
