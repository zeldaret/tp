lbl_803092AC:
/* 803092AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803092B0  7C 08 02 A6 */	mflr r0
/* 803092B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803092B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803092BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803092C0  41 82 00 30 */	beq lbl_803092F0
/* 803092C4  3C 60 80 3D */	lis r3, __vt__19J2DAnmKeyLoader_v15@ha /* 0x803CD6DC@ha */
/* 803092C8  38 03 D6 DC */	addi r0, r3, __vt__19J2DAnmKeyLoader_v15@l /* 0x803CD6DC@l */
/* 803092CC  90 1F 00 00 */	stw r0, 0(r31)
/* 803092D0  41 82 00 10 */	beq lbl_803092E0
/* 803092D4  3C 60 80 3D */	lis r3, __vt__12J2DAnmLoader@ha /* 0x803CD6F0@ha */
/* 803092D8  38 03 D6 F0 */	addi r0, r3, __vt__12J2DAnmLoader@l /* 0x803CD6F0@l */
/* 803092DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_803092E0:
/* 803092E0  7C 80 07 35 */	extsh. r0, r4
/* 803092E4  40 81 00 0C */	ble lbl_803092F0
/* 803092E8  7F E3 FB 78 */	mr r3, r31
/* 803092EC  4B FC 5A 51 */	bl __dl__FPv
lbl_803092F0:
/* 803092F0  7F E3 FB 78 */	mr r3, r31
/* 803092F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803092F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803092FC  7C 08 03 A6 */	mtlr r0
/* 80309300  38 21 00 10 */	addi r1, r1, 0x10
/* 80309304  4E 80 00 20 */	blr 
