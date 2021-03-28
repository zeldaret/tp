lbl_80C9137C:
/* 80C9137C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91380  7C 08 02 A6 */	mflr r0
/* 80C91384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9138C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C91390  41 82 00 30 */	beq lbl_80C913C0
/* 80C91394  3C 60 80 C9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C91398  38 03 1A 70 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C9139C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C913A0  41 82 00 10 */	beq lbl_80C913B0
/* 80C913A4  3C 60 80 C9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C913A8  38 03 1A 64 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C913AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C913B0:
/* 80C913B0  7C 80 07 35 */	extsh. r0, r4
/* 80C913B4  40 81 00 0C */	ble lbl_80C913C0
/* 80C913B8  7F E3 FB 78 */	mr r3, r31
/* 80C913BC  4B 63 D9 80 */	b __dl__FPv
lbl_80C913C0:
/* 80C913C0  7F E3 FB 78 */	mr r3, r31
/* 80C913C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C913C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C913CC  7C 08 03 A6 */	mtlr r0
/* 80C913D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C913D4  4E 80 00 20 */	blr 
