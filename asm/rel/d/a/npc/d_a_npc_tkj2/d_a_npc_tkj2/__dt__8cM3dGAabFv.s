lbl_80B14164:
/* 80B14164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B14168  7C 08 02 A6 */	mflr r0
/* 80B1416C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B14170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B14174  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B14178  41 82 00 1C */	beq lbl_80B14194
/* 80B1417C  3C A0 80 B1 */	lis r5, __vt__8cM3dGAab@ha
/* 80B14180  38 05 44 70 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B14184  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B14188  7C 80 07 35 */	extsh. r0, r4
/* 80B1418C  40 81 00 08 */	ble lbl_80B14194
/* 80B14190  4B 7B AB AC */	b __dl__FPv
lbl_80B14194:
/* 80B14194  7F E3 FB 78 */	mr r3, r31
/* 80B14198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1419C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B141A0  7C 08 03 A6 */	mtlr r0
/* 80B141A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B141A8  4E 80 00 20 */	blr 
