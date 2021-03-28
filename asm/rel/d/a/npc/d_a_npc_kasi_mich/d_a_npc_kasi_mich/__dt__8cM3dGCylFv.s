lbl_80A26384:
/* 80A26384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26388  7C 08 02 A6 */	mflr r0
/* 80A2638C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A26394  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A26398  41 82 00 1C */	beq lbl_80A263B4
/* 80A2639C  3C A0 80 A3 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A263A0  38 05 A7 4C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A263A4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A263A8  7C 80 07 35 */	extsh. r0, r4
/* 80A263AC  40 81 00 08 */	ble lbl_80A263B4
/* 80A263B0  4B 8A 89 8C */	b __dl__FPv
lbl_80A263B4:
/* 80A263B4  7F E3 FB 78 */	mr r3, r31
/* 80A263B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A263BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A263C0  7C 08 03 A6 */	mtlr r0
/* 80A263C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A263C8  4E 80 00 20 */	blr 
