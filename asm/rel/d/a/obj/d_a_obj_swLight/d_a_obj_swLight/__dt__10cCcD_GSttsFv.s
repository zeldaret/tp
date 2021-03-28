lbl_80CF807C:
/* 80CF807C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8080  7C 08 02 A6 */	mflr r0
/* 80CF8084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF8088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF808C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF8090  41 82 00 1C */	beq lbl_80CF80AC
/* 80CF8094  3C A0 80 D0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80CF8098  38 05 85 98 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CF809C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF80A0  7C 80 07 35 */	extsh. r0, r4
/* 80CF80A4  40 81 00 08 */	ble lbl_80CF80AC
/* 80CF80A8  4B 5D 6C 94 */	b __dl__FPv
lbl_80CF80AC:
/* 80CF80AC  7F E3 FB 78 */	mr r3, r31
/* 80CF80B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF80B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF80B8  7C 08 03 A6 */	mtlr r0
/* 80CF80BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF80C0  4E 80 00 20 */	blr 
