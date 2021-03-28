lbl_8097F368:
/* 8097F368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097F36C  7C 08 02 A6 */	mflr r0
/* 8097F370  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097F374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097F378  7C 7F 1B 79 */	or. r31, r3, r3
/* 8097F37C  41 82 00 1C */	beq lbl_8097F398
/* 8097F380  3C A0 80 98 */	lis r5, __vt__8cM3dGCyl@ha
/* 8097F384  38 05 06 F0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 8097F388  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8097F38C  7C 80 07 35 */	extsh. r0, r4
/* 8097F390  40 81 00 08 */	ble lbl_8097F398
/* 8097F394  4B 94 F9 A8 */	b __dl__FPv
lbl_8097F398:
/* 8097F398  7F E3 FB 78 */	mr r3, r31
/* 8097F39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F3A4  7C 08 03 A6 */	mtlr r0
/* 8097F3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F3AC  4E 80 00 20 */	blr 
