lbl_80D3A71C:
/* 80D3A71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A720  7C 08 02 A6 */	mflr r0
/* 80D3A724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A72C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3A730  41 82 00 1C */	beq lbl_80D3A74C
/* 80D3A734  3C A0 80 D4 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D3A738  38 05 B8 64 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D3A73C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D3A740  7C 80 07 35 */	extsh. r0, r4
/* 80D3A744  40 81 00 08 */	ble lbl_80D3A74C
/* 80D3A748  4B 59 45 F4 */	b __dl__FPv
lbl_80D3A74C:
/* 80D3A74C  7F E3 FB 78 */	mr r3, r31
/* 80D3A750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A758  7C 08 03 A6 */	mtlr r0
/* 80D3A75C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A760  4E 80 00 20 */	blr 
