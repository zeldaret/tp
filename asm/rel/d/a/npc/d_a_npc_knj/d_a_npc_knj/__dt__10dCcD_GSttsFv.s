lbl_80A451D4:
/* 80A451D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A451D8  7C 08 02 A6 */	mflr r0
/* 80A451DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A451E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A451E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A451E8  41 82 00 30 */	beq lbl_80A45218
/* 80A451EC  3C 60 80 A4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A451F0  38 03 57 88 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A451F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A451F8  41 82 00 10 */	beq lbl_80A45208
/* 80A451FC  3C 60 80 A4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A45200  38 03 57 7C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A45204  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A45208:
/* 80A45208  7C 80 07 35 */	extsh. r0, r4
/* 80A4520C  40 81 00 0C */	ble lbl_80A45218
/* 80A45210  7F E3 FB 78 */	mr r3, r31
/* 80A45214  4B 88 9B 28 */	b __dl__FPv
lbl_80A45218:
/* 80A45218  7F E3 FB 78 */	mr r3, r31
/* 80A4521C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A45220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A45224  7C 08 03 A6 */	mtlr r0
/* 80A45228  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4522C  4E 80 00 20 */	blr 
