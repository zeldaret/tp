lbl_80C73050:
/* 80C73050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73054  7C 08 02 A6 */	mflr r0
/* 80C73058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7305C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73060  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C73064  41 82 00 30 */	beq lbl_80C73094
/* 80C73068  3C 60 80 C7 */	lis r3, __vt__21daLv6FurikoTrap_HIO_c@ha
/* 80C7306C  38 03 32 A4 */	addi r0, r3, __vt__21daLv6FurikoTrap_HIO_c@l
/* 80C73070  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73074  41 82 00 10 */	beq lbl_80C73084
/* 80C73078  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C7307C  38 03 32 B0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C73080  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C73084:
/* 80C73084  7C 80 07 35 */	extsh. r0, r4
/* 80C73088  40 81 00 0C */	ble lbl_80C73094
/* 80C7308C  7F E3 FB 78 */	mr r3, r31
/* 80C73090  4B 65 BC AC */	b __dl__FPv
lbl_80C73094:
/* 80C73094  7F E3 FB 78 */	mr r3, r31
/* 80C73098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7309C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C730A0  7C 08 03 A6 */	mtlr r0
/* 80C730A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C730A8  4E 80 00 20 */	blr 
