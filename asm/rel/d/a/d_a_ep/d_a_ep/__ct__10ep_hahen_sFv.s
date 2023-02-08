lbl_8046AD44:
/* 8046AD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AD48  7C 08 02 A6 */	mflr r0
/* 8046AD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AD54  93 C1 00 08 */	stw r30, 8(r1)
/* 8046AD58  7C 7F 1B 78 */	mr r31, r3
/* 8046AD5C  3B DF 00 3C */	addi r30, r31, 0x3c
/* 8046AD60  7F C3 F3 78 */	mr r3, r30
/* 8046AD64  4B C0 C8 19 */	bl __ct__11dBgS_GndChkFv
/* 8046AD68  3C 60 80 47 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8046B288@ha */
/* 8046AD6C  38 63 B2 88 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x8046B288@l */
/* 8046AD70  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8046AD74  38 03 00 0C */	addi r0, r3, 0xc
/* 8046AD78  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8046AD7C  38 03 00 18 */	addi r0, r3, 0x18
/* 8046AD80  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8046AD84  38 03 00 24 */	addi r0, r3, 0x24
/* 8046AD88  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8046AD8C  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8046AD90  4B C0 E0 D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8046AD94  7F E3 FB 78 */	mr r3, r31
/* 8046AD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AD9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046ADA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046ADA4  7C 08 03 A6 */	mtlr r0
/* 8046ADA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046ADAC  4E 80 00 20 */	blr 
