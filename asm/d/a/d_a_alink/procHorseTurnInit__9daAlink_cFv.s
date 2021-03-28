lbl_800F0C6C:
/* 800F0C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F0C70  7C 08 02 A6 */	mflr r0
/* 800F0C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F0C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F0C7C  7C 7F 1B 78 */	mr r31, r3
/* 800F0C80  38 80 00 3D */	li r4, 0x3d
/* 800F0C84  4B FD 12 E9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F0C88  7F E3 FB 78 */	mr r3, r31
/* 800F0C8C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F0C90  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F0C94  7D 89 03 A6 */	mtctr r12
/* 800F0C98  4E 80 04 21 */	bctrl 
/* 800F0C9C  28 03 00 00 */	cmplwi r3, 0
/* 800F0CA0  41 82 00 14 */	beq lbl_800F0CB4
/* 800F0CA4  7F E3 FB 78 */	mr r3, r31
/* 800F0CA8  38 80 00 02 */	li r4, 2
/* 800F0CAC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F0CB0  4B FB CE 3D */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F0CB4:
/* 800F0CB4  7F E3 FB 78 */	mr r3, r31
/* 800F0CB8  4B FF CD 6D */	bl setSyncRidePos__9daAlink_cFv
/* 800F0CBC  38 00 00 00 */	li r0, 0
/* 800F0CC0  B0 1F 30 04 */	sth r0, 0x3004(r31)
/* 800F0CC4  7F E3 FB 78 */	mr r3, r31
/* 800F0CC8  4B FF CD B1 */	bl setHorseTurnAnime__9daAlink_cFv
/* 800F0CCC  38 60 00 01 */	li r3, 1
/* 800F0CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F0CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F0CD8  7C 08 03 A6 */	mtlr r0
/* 800F0CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F0CE0  4E 80 00 20 */	blr 
