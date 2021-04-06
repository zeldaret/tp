lbl_806A99C0:
/* 806A99C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A99C4  7C 08 02 A6 */	mflr r0
/* 806A99C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A99CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A99D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A99D4  41 82 00 30 */	beq lbl_806A9A04
/* 806A99D8  3C 60 80 6B */	lis r3, __vt__10dCcD_GStts@ha /* 0x806AA098@ha */
/* 806A99DC  38 03 A0 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806AA098@l */
/* 806A99E0  90 1F 00 00 */	stw r0, 0(r31)
/* 806A99E4  41 82 00 10 */	beq lbl_806A99F4
/* 806A99E8  3C 60 80 6B */	lis r3, __vt__10cCcD_GStts@ha /* 0x806AA08C@ha */
/* 806A99EC  38 03 A0 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806AA08C@l */
/* 806A99F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_806A99F4:
/* 806A99F4  7C 80 07 35 */	extsh. r0, r4
/* 806A99F8  40 81 00 0C */	ble lbl_806A9A04
/* 806A99FC  7F E3 FB 78 */	mr r3, r31
/* 806A9A00  4B C2 53 3D */	bl __dl__FPv
lbl_806A9A04:
/* 806A9A04  7F E3 FB 78 */	mr r3, r31
/* 806A9A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A9A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9A10  7C 08 03 A6 */	mtlr r0
/* 806A9A14  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9A18  4E 80 00 20 */	blr 
