lbl_8059DD78:
/* 8059DD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DD7C  7C 08 02 A6 */	mflr r0
/* 8059DD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059DD88  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059DD8C  41 82 00 1C */	beq lbl_8059DDA8
/* 8059DD90  3C A0 80 5A */	lis r5, __vt__10cCcD_GStts@ha
/* 8059DD94  38 05 E0 70 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8059DD98  90 1F 00 00 */	stw r0, 0(r31)
/* 8059DD9C  7C 80 07 35 */	extsh. r0, r4
/* 8059DDA0  40 81 00 08 */	ble lbl_8059DDA8
/* 8059DDA4  4B D3 0F 98 */	b __dl__FPv
lbl_8059DDA8:
/* 8059DDA8  7F E3 FB 78 */	mr r3, r31
/* 8059DDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DDB4  7C 08 03 A6 */	mtlr r0
/* 8059DDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DDBC  4E 80 00 20 */	blr 
