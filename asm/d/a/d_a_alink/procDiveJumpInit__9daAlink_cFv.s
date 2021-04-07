lbl_800C66DC:
/* 800C66DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C66E0  7C 08 02 A6 */	mflr r0
/* 800C66E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C66E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C66EC  7C 7F 1B 78 */	mr r31, r3
/* 800C66F0  38 80 00 16 */	li r4, 0x16
/* 800C66F4  4B FF B8 79 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C66F8  7F E3 FB 78 */	mr r3, r31
/* 800C66FC  38 80 01 9A */	li r4, 0x19a
/* 800C6700  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6704  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6708  38 A5 00 28 */	addi r5, r5, 0x28
/* 800C670C  4B FE 69 E9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C6710  7F E3 FB 78 */	mr r3, r31
/* 800C6714  38 80 00 01 */	li r4, 1
/* 800C6718  38 A0 00 01 */	li r5, 1
/* 800C671C  4B FF AB C1 */	bl deleteEquipItem__9daAlink_cFii
/* 800C6720  7F E3 FB 78 */	mr r3, r31
/* 800C6724  38 80 00 00 */	li r4, 0
/* 800C6728  48 01 BE 59 */	bl setHeavyBoots__9daAlink_cFi
/* 800C672C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6730  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6734  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 800C6738  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800C673C  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 800C6740  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C6744  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 800C6748  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 800C674C  38 00 00 00 */	li r0, 0
/* 800C6750  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C6754  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C6758  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C675C  C0 02 98 E8 */	lfs f0, lit_73790(r2)
/* 800C6760  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 800C6764  7F E3 FB 78 */	mr r3, r31
/* 800C6768  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001008F@ha */
/* 800C676C  38 84 00 8F */	addi r4, r4, 0x008F /* 0x0001008F@l */
/* 800C6770  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C6774  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C6778  7D 89 03 A6 */	mtctr r12
/* 800C677C  4E 80 04 21 */	bctrl 
/* 800C6780  38 60 00 01 */	li r3, 1
/* 800C6784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C678C  7C 08 03 A6 */	mtlr r0
/* 800C6790  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6794  4E 80 00 20 */	blr 
