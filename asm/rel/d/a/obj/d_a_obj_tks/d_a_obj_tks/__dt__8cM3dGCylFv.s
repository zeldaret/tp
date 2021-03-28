lbl_80D0F3F0:
/* 80D0F3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F3F4  7C 08 02 A6 */	mflr r0
/* 80D0F3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F3FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0F400  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0F404  41 82 00 1C */	beq lbl_80D0F420
/* 80D0F408  3C A0 80 D1 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D0F40C  38 05 2A C0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D0F410  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D0F414  7C 80 07 35 */	extsh. r0, r4
/* 80D0F418  40 81 00 08 */	ble lbl_80D0F420
/* 80D0F41C  4B 5B F9 20 */	b __dl__FPv
lbl_80D0F420:
/* 80D0F420  7F E3 FB 78 */	mr r3, r31
/* 80D0F424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0F428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F42C  7C 08 03 A6 */	mtlr r0
/* 80D0F430  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F434  4E 80 00 20 */	blr 
