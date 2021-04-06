lbl_8097F3F8:
/* 8097F3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097F3FC  7C 08 02 A6 */	mflr r0
/* 8097F400  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097F404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097F408  7C 7F 1B 79 */	or. r31, r3, r3
/* 8097F40C  41 82 00 30 */	beq lbl_8097F43C
/* 8097F410  3C 60 80 98 */	lis r3, __vt__10dCcD_GStts@ha /* 0x809806C0@ha */
/* 8097F414  38 03 06 C0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809806C0@l */
/* 8097F418  90 1F 00 00 */	stw r0, 0(r31)
/* 8097F41C  41 82 00 10 */	beq lbl_8097F42C
/* 8097F420  3C 60 80 98 */	lis r3, __vt__10cCcD_GStts@ha /* 0x809806B4@ha */
/* 8097F424  38 03 06 B4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809806B4@l */
/* 8097F428  90 1F 00 00 */	stw r0, 0(r31)
lbl_8097F42C:
/* 8097F42C  7C 80 07 35 */	extsh. r0, r4
/* 8097F430  40 81 00 0C */	ble lbl_8097F43C
/* 8097F434  7F E3 FB 78 */	mr r3, r31
/* 8097F438  4B 94 F9 05 */	bl __dl__FPv
lbl_8097F43C:
/* 8097F43C  7F E3 FB 78 */	mr r3, r31
/* 8097F440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F448  7C 08 03 A6 */	mtlr r0
/* 8097F44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F450  4E 80 00 20 */	blr 
