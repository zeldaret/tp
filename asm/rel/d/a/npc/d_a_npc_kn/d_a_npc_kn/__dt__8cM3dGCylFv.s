lbl_80A3C294:
/* 80A3C294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C298  7C 08 02 A6 */	mflr r0
/* 80A3C29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C2A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C2A8  41 82 00 1C */	beq lbl_80A3C2C4
/* 80A3C2AC  3C A0 80 A4 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A3C2B0  38 05 32 1C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A3C2B4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A3C2B8  7C 80 07 35 */	extsh. r0, r4
/* 80A3C2BC  40 81 00 08 */	ble lbl_80A3C2C4
/* 80A3C2C0  4B 89 2A 7C */	b __dl__FPv
lbl_80A3C2C4:
/* 80A3C2C4  7F E3 FB 78 */	mr r3, r31
/* 80A3C2C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C2CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C2D0  7C 08 03 A6 */	mtlr r0
/* 80A3C2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C2D8  4E 80 00 20 */	blr 
