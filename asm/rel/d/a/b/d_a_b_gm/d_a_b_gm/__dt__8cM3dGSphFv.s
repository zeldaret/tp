lbl_805F3C50:
/* 805F3C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3C54  7C 08 02 A6 */	mflr r0
/* 805F3C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3C60  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F3C64  41 82 00 1C */	beq lbl_805F3C80
/* 805F3C68  3C A0 80 5F */	lis r5, __vt__8cM3dGSph@ha
/* 805F3C6C  38 05 47 28 */	addi r0, r5, __vt__8cM3dGSph@l
/* 805F3C70  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805F3C74  7C 80 07 35 */	extsh. r0, r4
/* 805F3C78  40 81 00 08 */	ble lbl_805F3C80
/* 805F3C7C  4B CD B0 C0 */	b __dl__FPv
lbl_805F3C80:
/* 805F3C80  7F E3 FB 78 */	mr r3, r31
/* 805F3C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3C8C  7C 08 03 A6 */	mtlr r0
/* 805F3C90  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3C94  4E 80 00 20 */	blr 
