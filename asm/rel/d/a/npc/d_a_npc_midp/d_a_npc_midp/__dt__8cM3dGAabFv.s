lbl_80A738C4:
/* 80A738C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A738C8  7C 08 02 A6 */	mflr r0
/* 80A738CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A738D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A738D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A738D8  41 82 00 1C */	beq lbl_80A738F4
/* 80A738DC  3C A0 80 A7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A73C60@ha */
/* 80A738E0  38 05 3C 60 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A73C60@l */
/* 80A738E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A738E8  7C 80 07 35 */	extsh. r0, r4
/* 80A738EC  40 81 00 08 */	ble lbl_80A738F4
/* 80A738F0  4B 85 B4 4D */	bl __dl__FPv
lbl_80A738F4:
/* 80A738F4  7F E3 FB 78 */	mr r3, r31
/* 80A738F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A738FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73900  7C 08 03 A6 */	mtlr r0
/* 80A73904  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73908  4E 80 00 20 */	blr 
