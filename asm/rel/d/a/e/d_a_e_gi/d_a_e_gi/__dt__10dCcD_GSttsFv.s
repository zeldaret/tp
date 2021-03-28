lbl_806D07E8:
/* 806D07E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D07EC  7C 08 02 A6 */	mflr r0
/* 806D07F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D07F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D07F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D07FC  41 82 00 30 */	beq lbl_806D082C
/* 806D0800  3C 60 80 6D */	lis r3, __vt__10dCcD_GStts@ha
/* 806D0804  38 03 10 CC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806D0808  90 1F 00 00 */	stw r0, 0(r31)
/* 806D080C  41 82 00 10 */	beq lbl_806D081C
/* 806D0810  3C 60 80 6D */	lis r3, __vt__10cCcD_GStts@ha
/* 806D0814  38 03 10 C0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806D0818  90 1F 00 00 */	stw r0, 0(r31)
lbl_806D081C:
/* 806D081C  7C 80 07 35 */	extsh. r0, r4
/* 806D0820  40 81 00 0C */	ble lbl_806D082C
/* 806D0824  7F E3 FB 78 */	mr r3, r31
/* 806D0828  4B BF E5 14 */	b __dl__FPv
lbl_806D082C:
/* 806D082C  7F E3 FB 78 */	mr r3, r31
/* 806D0830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D0834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0838  7C 08 03 A6 */	mtlr r0
/* 806D083C  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0840  4E 80 00 20 */	blr 
