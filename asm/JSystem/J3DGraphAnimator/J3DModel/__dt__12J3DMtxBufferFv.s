lbl_803283B4:
/* 803283B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803283B8  7C 08 02 A6 */	mflr r0
/* 803283BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803283C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803283C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803283C8  41 82 00 1C */	beq lbl_803283E4
/* 803283CC  3C A0 80 3D */	lis r5, __vt__12J3DMtxBuffer@ha /* 0x803CED44@ha */
/* 803283D0  38 05 ED 44 */	addi r0, r5, __vt__12J3DMtxBuffer@l /* 0x803CED44@l */
/* 803283D4  90 1F 00 38 */	stw r0, 0x38(r31)
/* 803283D8  7C 80 07 35 */	extsh. r0, r4
/* 803283DC  40 81 00 08 */	ble lbl_803283E4
/* 803283E0  4B FA 69 5D */	bl __dl__FPv
lbl_803283E4:
/* 803283E4  7F E3 FB 78 */	mr r3, r31
/* 803283E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803283EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803283F0  7C 08 03 A6 */	mtlr r0
/* 803283F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803283F8  4E 80 00 20 */	blr 
