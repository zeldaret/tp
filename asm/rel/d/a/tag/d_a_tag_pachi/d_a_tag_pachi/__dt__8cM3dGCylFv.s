lbl_80D5D6FC:
/* 80D5D6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D700  7C 08 02 A6 */	mflr r0
/* 80D5D704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D70C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5D710  41 82 00 1C */	beq lbl_80D5D72C
/* 80D5D714  3C A0 80 D6 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D5D718  38 05 D9 BC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D5D71C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D5D720  7C 80 07 35 */	extsh. r0, r4
/* 80D5D724  40 81 00 08 */	ble lbl_80D5D72C
/* 80D5D728  4B 57 16 14 */	b __dl__FPv
lbl_80D5D72C:
/* 80D5D72C  7F E3 FB 78 */	mr r3, r31
/* 80D5D730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D738  7C 08 03 A6 */	mtlr r0
/* 80D5D73C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D740  4E 80 00 20 */	blr 
