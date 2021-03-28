lbl_80CA41A4:
/* 80CA41A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA41A8  7C 08 02 A6 */	mflr r0
/* 80CA41AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA41B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA41B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA41B8  41 82 00 1C */	beq lbl_80CA41D4
/* 80CA41BC  3C A0 80 CA */	lis r5, __vt__8cM3dGAab@ha
/* 80CA41C0  38 05 4A 94 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CA41C4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA41C8  7C 80 07 35 */	extsh. r0, r4
/* 80CA41CC  40 81 00 08 */	ble lbl_80CA41D4
/* 80CA41D0  4B 62 AB 6C */	b __dl__FPv
lbl_80CA41D4:
/* 80CA41D4  7F E3 FB 78 */	mr r3, r31
/* 80CA41D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA41DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA41E0  7C 08 03 A6 */	mtlr r0
/* 80CA41E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA41E8  4E 80 00 20 */	blr 
