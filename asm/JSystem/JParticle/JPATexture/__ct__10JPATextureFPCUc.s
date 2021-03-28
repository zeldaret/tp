lbl_8027D7D4:
/* 8027D7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D7D8  7C 08 02 A6 */	mflr r0
/* 8027D7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D7E4  7C 7F 1B 78 */	mr r31, r3
/* 8027D7E8  3C 60 80 3C */	lis r3, __vt__10JPATexture@ha
/* 8027D7EC  38 03 45 98 */	addi r0, r3, __vt__10JPATexture@l
/* 8027D7F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D7F4  88 1F 00 3F */	lbz r0, 0x3f(r31)
/* 8027D7F8  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 8027D7FC  98 1F 00 3F */	stb r0, 0x3f(r31)
/* 8027D800  38 00 00 00 */	li r0, 0
/* 8027D804  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8027D808  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8027D80C  90 9F 00 44 */	stw r4, 0x44(r31)
/* 8027D810  38 7F 00 04 */	addi r3, r31, 4
/* 8027D814  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 8027D818  38 84 00 20 */	addi r4, r4, 0x20
/* 8027D81C  38 A0 00 00 */	li r5, 0
/* 8027D820  48 06 0A 89 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 8027D824  7F E3 FB 78 */	mr r3, r31
/* 8027D828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D830  7C 08 03 A6 */	mtlr r0
/* 8027D834  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D838  4E 80 00 20 */	blr 
