lbl_80C46DF4:
/* 80C46DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46DF8  7C 08 02 A6 */	mflr r0
/* 80C46DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46E04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C46E08  41 82 00 30 */	beq lbl_80C46E38
/* 80C46E0C  3C 60 80 C4 */	lis r3, __vt__8cM3dGTri@ha
/* 80C46E10  38 03 70 40 */	addi r0, r3, __vt__8cM3dGTri@l
/* 80C46E14  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C46E18  41 82 00 10 */	beq lbl_80C46E28
/* 80C46E1C  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C46E20  38 03 70 4C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C46E24  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_80C46E28:
/* 80C46E28  7C 80 07 35 */	extsh. r0, r4
/* 80C46E2C  40 81 00 0C */	ble lbl_80C46E38
/* 80C46E30  7F E3 FB 78 */	mr r3, r31
/* 80C46E34  4B 68 7F 08 */	b __dl__FPv
lbl_80C46E38:
/* 80C46E38  7F E3 FB 78 */	mr r3, r31
/* 80C46E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46E44  7C 08 03 A6 */	mtlr r0
/* 80C46E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46E4C  4E 80 00 20 */	blr 
