lbl_80CAC21C:
/* 80CAC21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC220  7C 08 02 A6 */	mflr r0
/* 80CAC224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAC22C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAC230  41 82 00 1C */	beq lbl_80CAC24C
/* 80CAC234  3C A0 80 CB */	lis r5, __vt__8cM3dGAab@ha
/* 80CAC238  38 05 C7 00 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CAC23C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CAC240  7C 80 07 35 */	extsh. r0, r4
/* 80CAC244  40 81 00 08 */	ble lbl_80CAC24C
/* 80CAC248  4B 62 2A F4 */	b __dl__FPv
lbl_80CAC24C:
/* 80CAC24C  7F E3 FB 78 */	mr r3, r31
/* 80CAC250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAC254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC258  7C 08 03 A6 */	mtlr r0
/* 80CAC25C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC260  4E 80 00 20 */	blr 
