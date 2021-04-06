lbl_80B488F4:
/* 80B488F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B488F8  7C 08 02 A6 */	mflr r0
/* 80B488FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48904  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B48908  41 82 00 1C */	beq lbl_80B48924
/* 80B4890C  3C A0 80 B5 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B499D8@ha */
/* 80B48910  38 05 99 D8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B499D8@l */
/* 80B48914  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B48918  7C 80 07 35 */	extsh. r0, r4
/* 80B4891C  40 81 00 08 */	ble lbl_80B48924
/* 80B48920  4B 78 64 1D */	bl __dl__FPv
lbl_80B48924:
/* 80B48924  7F E3 FB 78 */	mr r3, r31
/* 80B48928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4892C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48930  7C 08 03 A6 */	mtlr r0
/* 80B48934  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48938  4E 80 00 20 */	blr 
