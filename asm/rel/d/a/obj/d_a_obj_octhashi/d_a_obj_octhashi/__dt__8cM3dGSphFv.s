lbl_80CA60C4:
/* 80CA60C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA60C8  7C 08 02 A6 */	mflr r0
/* 80CA60CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA60D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA60D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA60D8  41 82 00 1C */	beq lbl_80CA60F4
/* 80CA60DC  3C A0 80 CA */	lis r5, __vt__8cM3dGSph@ha
/* 80CA60E0  38 05 66 34 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80CA60E4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CA60E8  7C 80 07 35 */	extsh. r0, r4
/* 80CA60EC  40 81 00 08 */	ble lbl_80CA60F4
/* 80CA60F0  4B 62 8C 4C */	b __dl__FPv
lbl_80CA60F4:
/* 80CA60F4  7F E3 FB 78 */	mr r3, r31
/* 80CA60F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA60FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6100  7C 08 03 A6 */	mtlr r0
/* 80CA6104  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6108  4E 80 00 20 */	blr 
