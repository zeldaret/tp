lbl_80535DF0:
/* 80535DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535DF4  7C 08 02 A6 */	mflr r0
/* 80535DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535E00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80535E04  41 82 00 1C */	beq lbl_80535E20
/* 80535E08  3C A0 80 53 */	lis r5, __vt__8cM3dGAab@ha
/* 80535E0C  38 05 6A EC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80535E10  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80535E14  7C 80 07 35 */	extsh. r0, r4
/* 80535E18  40 81 00 08 */	ble lbl_80535E20
/* 80535E1C  4B D9 8F 20 */	b __dl__FPv
lbl_80535E20:
/* 80535E20  7F E3 FB 78 */	mr r3, r31
/* 80535E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80535E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535E2C  7C 08 03 A6 */	mtlr r0
/* 80535E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80535E34  4E 80 00 20 */	blr 
