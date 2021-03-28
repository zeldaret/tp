lbl_80C21F2C:
/* 80C21F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21F30  7C 08 02 A6 */	mflr r0
/* 80C21F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C21F3C  7C 7F 1B 78 */	mr r31, r3
/* 80C21F40  80 03 09 BC */	lwz r0, 0x9bc(r3)
/* 80C21F44  28 00 00 00 */	cmplwi r0, 0
/* 80C21F48  41 82 00 6C */	beq lbl_80C21FB4
/* 80C21F4C  4B FF FF 59 */	bl getPointNo__13daObjIceBlk_cFv
/* 80C21F50  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 80C21F54  41 82 00 60 */	beq lbl_80C21FB4
/* 80C21F58  80 7F 09 BC */	lwz r3, 0x9bc(r31)
/* 80C21F5C  80 63 00 08 */	lwz r3, 8(r3)
/* 80C21F60  38 04 FF FF */	addi r0, r4, -1
/* 80C21F64  54 00 20 36 */	slwi r0, r0, 4
/* 80C21F68  7C 63 02 14 */	add r3, r3, r0
/* 80C21F6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C21F70  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80C21F74  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C21F78  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80C21F7C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C21F80  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80C21F84  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80C21F88  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80C21F8C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C21F90  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80C21F94  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80C21F98  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80C21F9C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80C21FA0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C21FA4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C21FA8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C21FAC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80C21FB0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80C21FB4:
/* 80C21FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C21FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21FBC  7C 08 03 A6 */	mtlr r0
/* 80C21FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21FC4  4E 80 00 20 */	blr 
