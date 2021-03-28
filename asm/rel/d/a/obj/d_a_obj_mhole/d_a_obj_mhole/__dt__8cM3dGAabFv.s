lbl_80C93660:
/* 80C93660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93664  7C 08 02 A6 */	mflr r0
/* 80C93668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9366C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C93670  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C93674  41 82 00 1C */	beq lbl_80C93690
/* 80C93678  3C A0 80 C9 */	lis r5, __vt__8cM3dGAab@ha
/* 80C9367C  38 05 3E B8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C93680  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C93684  7C 80 07 35 */	extsh. r0, r4
/* 80C93688  40 81 00 08 */	ble lbl_80C93690
/* 80C9368C  4B 63 B6 B0 */	b __dl__FPv
lbl_80C93690:
/* 80C93690  7F E3 FB 78 */	mr r3, r31
/* 80C93694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C93698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9369C  7C 08 03 A6 */	mtlr r0
/* 80C936A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C936A4  4E 80 00 20 */	blr 
