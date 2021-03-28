lbl_807BBC00:
/* 807BBC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBC04  7C 08 02 A6 */	mflr r0
/* 807BBC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BBC10  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BBC14  41 82 00 1C */	beq lbl_807BBC30
/* 807BBC18  3C A0 80 7C */	lis r5, __vt__8cM3dGSph@ha
/* 807BBC1C  38 05 BE EC */	addi r0, r5, __vt__8cM3dGSph@l
/* 807BBC20  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807BBC24  7C 80 07 35 */	extsh. r0, r4
/* 807BBC28  40 81 00 08 */	ble lbl_807BBC30
/* 807BBC2C  4B B1 31 10 */	b __dl__FPv
lbl_807BBC30:
/* 807BBC30  7F E3 FB 78 */	mr r3, r31
/* 807BBC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BBC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBC3C  7C 08 03 A6 */	mtlr r0
/* 807BBC40  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBC44  4E 80 00 20 */	blr 
