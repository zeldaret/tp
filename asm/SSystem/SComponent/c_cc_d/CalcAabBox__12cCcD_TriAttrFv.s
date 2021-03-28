lbl_80263C04:
/* 80263C04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80263C08  7C 08 02 A6 */	mflr r0
/* 80263C0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80263C10  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80263C14  7C 7F 1B 78 */	mr r31, r3
/* 80263C18  48 00 B0 E1 */	bl ClearForMinMax__8cM3dGAabFv
/* 80263C1C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80263C20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80263C24  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80263C28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80263C2C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80263C30  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80263C34  7F E3 FB 78 */	mr r3, r31
/* 80263C38  38 81 00 20 */	addi r4, r1, 0x20
/* 80263C3C  48 00 B0 E1 */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 80263C40  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80263C44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80263C48  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80263C4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80263C50  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80263C54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80263C58  7F E3 FB 78 */	mr r3, r31
/* 80263C5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80263C60  48 00 B0 BD */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 80263C64  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80263C68  D0 01 00 08 */	stfs f0, 8(r1)
/* 80263C6C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80263C70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80263C74  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80263C78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80263C7C  7F E3 FB 78 */	mr r3, r31
/* 80263C80  38 81 00 08 */	addi r4, r1, 8
/* 80263C84  48 00 B0 99 */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 80263C88  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80263C8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80263C90  7C 08 03 A6 */	mtlr r0
/* 80263C94  38 21 00 40 */	addi r1, r1, 0x40
/* 80263C98  4E 80 00 20 */	blr 
