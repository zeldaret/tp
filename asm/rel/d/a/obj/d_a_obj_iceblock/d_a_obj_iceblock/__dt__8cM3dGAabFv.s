lbl_80C2408C:
/* 80C2408C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24090  7C 08 02 A6 */	mflr r0
/* 80C24094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2409C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C240A0  41 82 00 1C */	beq lbl_80C240BC
/* 80C240A4  3C A0 80 C2 */	lis r5, __vt__8cM3dGAab@ha
/* 80C240A8  38 05 46 34 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C240AC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C240B0  7C 80 07 35 */	extsh. r0, r4
/* 80C240B4  40 81 00 08 */	ble lbl_80C240BC
/* 80C240B8  4B 6A AC 84 */	b __dl__FPv
lbl_80C240BC:
/* 80C240BC  7F E3 FB 78 */	mr r3, r31
/* 80C240C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C240C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C240C8  7C 08 03 A6 */	mtlr r0
/* 80C240CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C240D0  4E 80 00 20 */	blr 
