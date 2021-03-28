lbl_80657C48:
/* 80657C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657C4C  7C 08 02 A6 */	mflr r0
/* 80657C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80657C58  7C 7F 1B 78 */	mr r31, r3
/* 80657C5C  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 80657C60  4B 9C 96 F8 */	b fpcEx_SearchByID__FUi
/* 80657C64  28 03 00 00 */	cmplwi r3, 0
/* 80657C68  41 82 00 24 */	beq lbl_80657C8C
/* 80657C6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80657C70  D0 1F 07 00 */	stfs f0, 0x700(r31)
/* 80657C74  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80657C78  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 80657C7C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80657C80  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80657C84  38 03 24 90 */	addi r0, r3, 0x2490
/* 80657C88  90 1F 06 FC */	stw r0, 0x6fc(r31)
lbl_80657C8C:
/* 80657C8C  7F E3 FB 78 */	mr r3, r31
/* 80657C90  48 00 00 19 */	bl setBaseMtx__13daCoachFire_cFv
/* 80657C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80657C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657C9C  7C 08 03 A6 */	mtlr r0
/* 80657CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80657CA4  4E 80 00 20 */	blr 
