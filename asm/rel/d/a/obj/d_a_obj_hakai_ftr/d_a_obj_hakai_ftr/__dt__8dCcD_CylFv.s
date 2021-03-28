lbl_80C1753C:
/* 80C1753C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17540  7C 08 02 A6 */	mflr r0
/* 80C17544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1754C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C17550  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C17554  7C 9F 23 78 */	mr r31, r4
/* 80C17558  41 82 00 94 */	beq lbl_80C175EC
/* 80C1755C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C17560  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C17564  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C17568  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C1756C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C17570  38 03 00 84 */	addi r0, r3, 0x84
/* 80C17574  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C17578  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C1757C  41 82 00 54 */	beq lbl_80C175D0
/* 80C17580  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C17584  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C17588  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C1758C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C17590  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C17594  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C17598  41 82 00 10 */	beq lbl_80C175A8
/* 80C1759C  3C 60 80 C2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C175A0  38 03 82 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C175A4  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C175A8:
/* 80C175A8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C175AC  41 82 00 24 */	beq lbl_80C175D0
/* 80C175B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C175B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C175B8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C175BC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C175C0  41 82 00 10 */	beq lbl_80C175D0
/* 80C175C4  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha
/* 80C175C8  38 03 81 FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C175CC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C175D0:
/* 80C175D0  7F C3 F3 78 */	mr r3, r30
/* 80C175D4  38 80 00 00 */	li r4, 0
/* 80C175D8  4B 46 CB 0C */	b __dt__12dCcD_GObjInfFv
/* 80C175DC  7F E0 07 35 */	extsh. r0, r31
/* 80C175E0  40 81 00 0C */	ble lbl_80C175EC
/* 80C175E4  7F C3 F3 78 */	mr r3, r30
/* 80C175E8  4B 6B 77 54 */	b __dl__FPv
lbl_80C175EC:
/* 80C175EC  7F C3 F3 78 */	mr r3, r30
/* 80C175F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C175F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C175F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C175FC  7C 08 03 A6 */	mtlr r0
/* 80C17600  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17604  4E 80 00 20 */	blr 
