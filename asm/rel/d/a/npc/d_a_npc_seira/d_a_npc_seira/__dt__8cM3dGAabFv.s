lbl_80ACEEB4:
/* 80ACEEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACEEB8  7C 08 02 A6 */	mflr r0
/* 80ACEEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACEEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACEEC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACEEC8  41 82 00 1C */	beq lbl_80ACEEE4
/* 80ACEECC  3C A0 80 AD */	lis r5, __vt__8cM3dGAab@ha
/* 80ACEED0  38 05 09 FC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80ACEED4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80ACEED8  7C 80 07 35 */	extsh. r0, r4
/* 80ACEEDC  40 81 00 08 */	ble lbl_80ACEEE4
/* 80ACEEE0  4B 7F FE 5C */	b __dl__FPv
lbl_80ACEEE4:
/* 80ACEEE4  7F E3 FB 78 */	mr r3, r31
/* 80ACEEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACEEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACEEF0  7C 08 03 A6 */	mtlr r0
/* 80ACEEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACEEF8  4E 80 00 20 */	blr 
