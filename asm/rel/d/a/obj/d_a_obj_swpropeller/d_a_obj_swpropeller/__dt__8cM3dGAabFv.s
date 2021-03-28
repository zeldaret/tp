lbl_8059AABC:
/* 8059AABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059AAC0  7C 08 02 A6 */	mflr r0
/* 8059AAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059AAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059AACC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059AAD0  41 82 00 1C */	beq lbl_8059AAEC
/* 8059AAD4  3C A0 80 5A */	lis r5, __vt__8cM3dGAab@ha
/* 8059AAD8  38 05 B3 E8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8059AADC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8059AAE0  7C 80 07 35 */	extsh. r0, r4
/* 8059AAE4  40 81 00 08 */	ble lbl_8059AAEC
/* 8059AAE8  4B D3 42 54 */	b __dl__FPv
lbl_8059AAEC:
/* 8059AAEC  7F E3 FB 78 */	mr r3, r31
/* 8059AAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059AAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059AAF8  7C 08 03 A6 */	mtlr r0
/* 8059AAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059AB00  4E 80 00 20 */	blr 
