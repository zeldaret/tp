lbl_806A132C:
/* 806A132C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1330  7C 08 02 A6 */	mflr r0
/* 806A1334  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A133C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A1340  41 82 00 30 */	beq lbl_806A1370
/* 806A1344  3C 60 80 6A */	lis r3, __vt__10dCcD_GStts@ha
/* 806A1348  38 03 1D 1C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806A134C  90 1F 00 00 */	stw r0, 0(r31)
/* 806A1350  41 82 00 10 */	beq lbl_806A1360
/* 806A1354  3C 60 80 6A */	lis r3, __vt__10cCcD_GStts@ha
/* 806A1358  38 03 1D 10 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806A135C  90 1F 00 00 */	stw r0, 0(r31)
lbl_806A1360:
/* 806A1360  7C 80 07 35 */	extsh. r0, r4
/* 806A1364  40 81 00 0C */	ble lbl_806A1370
/* 806A1368  7F E3 FB 78 */	mr r3, r31
/* 806A136C  4B C2 D9 D0 */	b __dl__FPv
lbl_806A1370:
/* 806A1370  7F E3 FB 78 */	mr r3, r31
/* 806A1374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A1378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A137C  7C 08 03 A6 */	mtlr r0
/* 806A1380  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1384  4E 80 00 20 */	blr 
