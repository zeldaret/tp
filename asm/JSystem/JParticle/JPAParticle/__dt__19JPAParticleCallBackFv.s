lbl_8027EFA4:
/* 8027EFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027EFA8  7C 08 02 A6 */	mflr r0
/* 8027EFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027EFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027EFB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027EFB8  41 82 00 1C */	beq lbl_8027EFD4
/* 8027EFBC  3C A0 80 3A */	lis r5, __vt__19JPAParticleCallBack@ha
/* 8027EFC0  38 05 35 7C */	addi r0, r5, __vt__19JPAParticleCallBack@l
/* 8027EFC4  90 1F 00 00 */	stw r0, 0(r31)
/* 8027EFC8  7C 80 07 35 */	extsh. r0, r4
/* 8027EFCC  40 81 00 08 */	ble lbl_8027EFD4
/* 8027EFD0  48 04 FD 6D */	bl __dl__FPv
lbl_8027EFD4:
/* 8027EFD4  7F E3 FB 78 */	mr r3, r31
/* 8027EFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027EFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027EFE0  7C 08 03 A6 */	mtlr r0
/* 8027EFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027EFE8  4E 80 00 20 */	blr 
