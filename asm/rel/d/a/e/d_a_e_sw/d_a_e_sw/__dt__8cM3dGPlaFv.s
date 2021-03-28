lbl_807AF46C:
/* 807AF46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AF470  7C 08 02 A6 */	mflr r0
/* 807AF474  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AF478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AF47C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807AF480  41 82 00 1C */	beq lbl_807AF49C
/* 807AF484  3C A0 80 7B */	lis r5, __vt__8cM3dGPla@ha
/* 807AF488  38 05 01 38 */	addi r0, r5, __vt__8cM3dGPla@l
/* 807AF48C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807AF490  7C 80 07 35 */	extsh. r0, r4
/* 807AF494  40 81 00 08 */	ble lbl_807AF49C
/* 807AF498  4B B1 F8 A4 */	b __dl__FPv
lbl_807AF49C:
/* 807AF49C  7F E3 FB 78 */	mr r3, r31
/* 807AF4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AF4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AF4A8  7C 08 03 A6 */	mtlr r0
/* 807AF4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 807AF4B0  4E 80 00 20 */	blr 
