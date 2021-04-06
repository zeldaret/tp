lbl_8057D690:
/* 8057D690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D694  7C 08 02 A6 */	mflr r0
/* 8057D698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D6A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057D6A4  41 82 00 30 */	beq lbl_8057D6D4
/* 8057D6A8  3C 60 80 58 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8057F848@ha */
/* 8057D6AC  38 03 F8 48 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8057F848@l */
/* 8057D6B0  90 1F 00 00 */	stw r0, 0(r31)
/* 8057D6B4  41 82 00 10 */	beq lbl_8057D6C4
/* 8057D6B8  3C 60 80 58 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8057F83C@ha */
/* 8057D6BC  38 03 F8 3C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8057F83C@l */
/* 8057D6C0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8057D6C4:
/* 8057D6C4  7C 80 07 35 */	extsh. r0, r4
/* 8057D6C8  40 81 00 0C */	ble lbl_8057D6D4
/* 8057D6CC  7F E3 FB 78 */	mr r3, r31
/* 8057D6D0  4B D5 16 6D */	bl __dl__FPv
lbl_8057D6D4:
/* 8057D6D4  7F E3 FB 78 */	mr r3, r31
/* 8057D6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D6E0  7C 08 03 A6 */	mtlr r0
/* 8057D6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D6E8  4E 80 00 20 */	blr 
