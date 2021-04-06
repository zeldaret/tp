lbl_806A816C:
/* 806A816C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A8170  7C 08 02 A6 */	mflr r0
/* 806A8174  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A8178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A817C  7C 7F 1B 78 */	mr r31, r3
/* 806A8180  A8 03 05 C6 */	lha r0, 0x5c6(r3)
/* 806A8184  2C 00 00 00 */	cmpwi r0, 0
/* 806A8188  40 82 00 A8 */	bne lbl_806A8230
/* 806A818C  38 7F 06 98 */	addi r3, r31, 0x698
/* 806A8190  4B 9D B6 A1 */	bl Move__10dCcD_GSttsFv
/* 806A8194  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 806A8198  4B 9D C2 C9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806A819C  28 03 00 00 */	cmplwi r3, 0
/* 806A81A0  41 82 00 90 */	beq lbl_806A8230
/* 806A81A4  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 806A81A8  4B 9D C3 51 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806A81AC  90 7F 07 F4 */	stw r3, 0x7f4(r31)
/* 806A81B0  80 7F 07 F4 */	lwz r3, 0x7f4(r31)
/* 806A81B4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806A81B8  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806A81BC  41 82 00 10 */	beq lbl_806A81CC
/* 806A81C0  38 00 00 14 */	li r0, 0x14
/* 806A81C4  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
/* 806A81C8  48 00 00 0C */	b lbl_806A81D4
lbl_806A81CC:
/* 806A81CC  38 00 00 0A */	li r0, 0xa
/* 806A81D0  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
lbl_806A81D4:
/* 806A81D4  A0 1F 08 10 */	lhz r0, 0x810(r31)
/* 806A81D8  28 00 00 01 */	cmplwi r0, 1
/* 806A81DC  41 81 00 0C */	bgt lbl_806A81E8
/* 806A81E0  38 00 00 0A */	li r0, 0xa
/* 806A81E4  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
lbl_806A81E8:
/* 806A81E8  80 7F 07 F4 */	lwz r3, 0x7f4(r31)
/* 806A81EC  88 63 00 74 */	lbz r3, 0x74(r3)
/* 806A81F0  38 80 00 00 */	li r4, 0
/* 806A81F4  4B 9D C3 BD */	bl getHitSeID__12dCcD_GObjInfFUci
/* 806A81F8  7C 64 1B 78 */	mr r4, r3
/* 806A81FC  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806A8200  38 A0 00 2D */	li r5, 0x2d
/* 806A8204  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806A8208  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806A820C  7D 89 03 A6 */	mtctr r12
/* 806A8210  4E 80 04 21 */	bctrl 
/* 806A8214  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 806A8218  4B 9D C2 E1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806A821C  38 00 00 02 */	li r0, 2
/* 806A8220  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 806A8224  38 00 00 00 */	li r0, 0
/* 806A8228  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 806A822C  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_806A8230:
/* 806A8230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A8234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A8238  7C 08 03 A6 */	mtlr r0
/* 806A823C  38 21 00 10 */	addi r1, r1, 0x10
/* 806A8240  4E 80 00 20 */	blr 
