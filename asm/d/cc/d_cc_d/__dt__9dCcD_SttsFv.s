lbl_800851AC:
/* 800851AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800851B0  7C 08 02 A6 */	mflr r0
/* 800851B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800851B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800851BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 800851C0  41 82 00 64 */	beq lbl_80085224
/* 800851C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 800851C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 800851CC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 800851D0  38 03 00 20 */	addi r0, r3, 0x20
/* 800851D4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800851D8  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 800851DC  41 82 00 24 */	beq lbl_80085200
/* 800851E0  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha
/* 800851E4  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 800851E8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800851EC  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 800851F0  41 82 00 10 */	beq lbl_80085200
/* 800851F4  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha
/* 800851F8  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 800851FC  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_80085200:
/* 80085200  28 1F 00 00 */	cmplwi r31, 0
/* 80085204  41 82 00 10 */	beq lbl_80085214
/* 80085208  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8008520C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80085210  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80085214:
/* 80085214  7C 80 07 35 */	extsh. r0, r4
/* 80085218  40 81 00 0C */	ble lbl_80085224
/* 8008521C  7F E3 FB 78 */	mr r3, r31
/* 80085220  48 24 9B 1D */	bl __dl__FPv
lbl_80085224:
/* 80085224  7F E3 FB 78 */	mr r3, r31
/* 80085228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008522C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80085230  7C 08 03 A6 */	mtlr r0
/* 80085234  38 21 00 10 */	addi r1, r1, 0x10
/* 80085238  4E 80 00 20 */	blr 
