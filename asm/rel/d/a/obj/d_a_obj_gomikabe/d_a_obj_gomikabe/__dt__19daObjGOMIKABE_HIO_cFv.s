lbl_80BFFB74:
/* 80BFFB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFB78  7C 08 02 A6 */	mflr r0
/* 80BFFB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFFB84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFFB88  41 82 00 1C */	beq lbl_80BFFBA4
/* 80BFFB8C  3C A0 80 C0 */	lis r5, __vt__19daObjGOMIKABE_HIO_c@ha
/* 80BFFB90  38 05 FD F4 */	addi r0, r5, __vt__19daObjGOMIKABE_HIO_c@l
/* 80BFFB94  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFFB98  7C 80 07 35 */	extsh. r0, r4
/* 80BFFB9C  40 81 00 08 */	ble lbl_80BFFBA4
/* 80BFFBA0  4B 6C F1 9C */	b __dl__FPv
lbl_80BFFBA4:
/* 80BFFBA4  7F E3 FB 78 */	mr r3, r31
/* 80BFFBA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFFBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFFBB0  7C 08 03 A6 */	mtlr r0
/* 80BFFBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFFBB8  4E 80 00 20 */	blr 
