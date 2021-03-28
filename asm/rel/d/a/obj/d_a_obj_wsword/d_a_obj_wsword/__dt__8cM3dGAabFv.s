lbl_80D3BCE8:
/* 80D3BCE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BCEC  7C 08 02 A6 */	mflr r0
/* 80D3BCF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BCF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3BCF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3BCFC  41 82 00 1C */	beq lbl_80D3BD18
/* 80D3BD00  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha
/* 80D3BD04  38 05 BF D0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D3BD08  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D3BD0C  7C 80 07 35 */	extsh. r0, r4
/* 80D3BD10  40 81 00 08 */	ble lbl_80D3BD18
/* 80D3BD14  4B 59 30 28 */	b __dl__FPv
lbl_80D3BD18:
/* 80D3BD18  7F E3 FB 78 */	mr r3, r31
/* 80D3BD1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BD24  7C 08 03 A6 */	mtlr r0
/* 80D3BD28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BD2C  4E 80 00 20 */	blr 
