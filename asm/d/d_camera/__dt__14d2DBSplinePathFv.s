lbl_801828D4:
/* 801828D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801828D8  7C 08 02 A6 */	mflr r0
/* 801828DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801828E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801828E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801828E8  41 82 00 1C */	beq lbl_80182904
/* 801828EC  3C A0 80 3C */	lis r5, __vt__14d2DBSplinePath@ha /* 0x803BA7EC@ha */
/* 801828F0  38 05 A7 EC */	addi r0, r5, __vt__14d2DBSplinePath@l /* 0x803BA7EC@l */
/* 801828F4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801828F8  7C 80 07 35 */	extsh. r0, r4
/* 801828FC  40 81 00 08 */	ble lbl_80182904
/* 80182900  48 14 C4 3D */	bl __dl__FPv
lbl_80182904:
/* 80182904  7F E3 FB 78 */	mr r3, r31
/* 80182908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018290C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80182910  7C 08 03 A6 */	mtlr r0
/* 80182914  38 21 00 10 */	addi r1, r1, 0x10
/* 80182918  4E 80 00 20 */	blr 
