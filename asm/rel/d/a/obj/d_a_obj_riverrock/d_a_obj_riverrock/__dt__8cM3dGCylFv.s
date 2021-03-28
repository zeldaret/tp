lbl_80CBD71C:
/* 80CBD71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD720  7C 08 02 A6 */	mflr r0
/* 80CBD724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD72C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBD730  41 82 00 1C */	beq lbl_80CBD74C
/* 80CBD734  3C A0 80 CC */	lis r5, __vt__8cM3dGCyl@ha
/* 80CBD738  38 05 DB 94 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CBD73C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CBD740  7C 80 07 35 */	extsh. r0, r4
/* 80CBD744  40 81 00 08 */	ble lbl_80CBD74C
/* 80CBD748  4B 61 15 F4 */	b __dl__FPv
lbl_80CBD74C:
/* 80CBD74C  7F E3 FB 78 */	mr r3, r31
/* 80CBD750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD758  7C 08 03 A6 */	mtlr r0
/* 80CBD75C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD760  4E 80 00 20 */	blr 
