lbl_800C5C28:
/* 800C5C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5C2C  7C 08 02 A6 */	mflr r0
/* 800C5C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C5C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C5C38  7C 7F 1B 78 */	mr r31, r3
/* 800C5C3C  38 80 00 14 */	li r4, 0x14
/* 800C5C40  4B FF C3 2D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C5C44  7F E3 FB 78 */	mr r3, r31
/* 800C5C48  38 80 00 28 */	li r4, 0x28
/* 800C5C4C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha
/* 800C5C50  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l
/* 800C5C54  4B FE 74 A1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C5C58  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800C5C5C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha
/* 800C5C60  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l
/* 800C5C64  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800C5C68  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C5C6C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C5C70  38 00 00 40 */	li r0, 0x40
/* 800C5C74  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C5C78  7F E3 FB 78 */	mr r3, r31
/* 800C5C7C  38 80 00 01 */	li r4, 1
/* 800C5C80  48 05 B5 41 */	bl setFootEffectProcType__9daAlink_cFi
/* 800C5C84  38 00 00 05 */	li r0, 5
/* 800C5C88  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800C5C8C  38 60 00 01 */	li r3, 1
/* 800C5C90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C5C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5C98  7C 08 03 A6 */	mtlr r0
/* 800C5C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C5CA0  4E 80 00 20 */	blr 
