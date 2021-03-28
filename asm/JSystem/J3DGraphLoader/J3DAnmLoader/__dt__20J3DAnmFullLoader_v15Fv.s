lbl_80338484:
/* 80338484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338488  7C 08 02 A6 */	mflr r0
/* 8033848C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338494  7C 7F 1B 79 */	or. r31, r3, r3
/* 80338498  41 82 00 30 */	beq lbl_803384C8
/* 8033849C  3C 60 80 3D */	lis r3, __vt__20J3DAnmFullLoader_v15@ha
/* 803384A0  38 03 F2 4C */	addi r0, r3, __vt__20J3DAnmFullLoader_v15@l
/* 803384A4  90 1F 00 00 */	stw r0, 0(r31)
/* 803384A8  41 82 00 10 */	beq lbl_803384B8
/* 803384AC  3C 60 80 3D */	lis r3, __vt__12J3DAnmLoader@ha
/* 803384B0  38 03 F2 60 */	addi r0, r3, __vt__12J3DAnmLoader@l
/* 803384B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_803384B8:
/* 803384B8  7C 80 07 35 */	extsh. r0, r4
/* 803384BC  40 81 00 0C */	ble lbl_803384C8
/* 803384C0  7F E3 FB 78 */	mr r3, r31
/* 803384C4  4B F9 68 79 */	bl __dl__FPv
lbl_803384C8:
/* 803384C8  7F E3 FB 78 */	mr r3, r31
/* 803384CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803384D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803384D4  7C 08 03 A6 */	mtlr r0
/* 803384D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803384DC  4E 80 00 20 */	blr 
