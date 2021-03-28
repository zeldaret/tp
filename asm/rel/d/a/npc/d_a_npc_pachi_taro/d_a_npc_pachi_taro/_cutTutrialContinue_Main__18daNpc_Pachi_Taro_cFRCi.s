lbl_80AA01A4:
/* 80AA01A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA01A8  7C 08 02 A6 */	mflr r0
/* 80AA01AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA01B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA01B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA01B8  7C 7E 1B 78 */	mr r30, r3
/* 80AA01BC  3B E0 00 00 */	li r31, 0
/* 80AA01C0  80 04 00 00 */	lwz r0, 0(r4)
/* 80AA01C4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80AA01C8  41 82 00 38 */	beq lbl_80AA0200
/* 80AA01CC  40 80 00 70 */	bge lbl_80AA023C
/* 80AA01D0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AA01D4  41 82 00 08 */	beq lbl_80AA01DC
/* 80AA01D8  48 00 00 64 */	b lbl_80AA023C
lbl_80AA01DC:
/* 80AA01DC  38 9E 0F EC */	addi r4, r30, 0xfec
/* 80AA01E0  38 A0 10 00 */	li r5, 0x1000
/* 80AA01E4  4B FF E0 8D */	bl _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyzs
/* 80AA01E8  2C 03 00 00 */	cmpwi r3, 0
/* 80AA01EC  41 82 00 50 */	beq lbl_80AA023C
/* 80AA01F0  38 00 00 01 */	li r0, 1
/* 80AA01F4  98 1E 0F E2 */	stb r0, 0xfe2(r30)
/* 80AA01F8  3B E0 00 01 */	li r31, 1
/* 80AA01FC  48 00 00 40 */	b lbl_80AA023C
lbl_80AA0200:
/* 80AA0200  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80AA0204  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80AA0208  38 A0 08 00 */	li r5, 0x800
/* 80AA020C  4B 7D 09 84 */	b cLib_chaseAngleS__FPsss
/* 80AA0210  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AA0214  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80AA0218  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AA021C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80AA0220  2C 03 00 00 */	cmpwi r3, 0
/* 80AA0224  41 82 00 18 */	beq lbl_80AA023C
/* 80AA0228  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80AA022C  4B 6A 54 DC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AA0230  38 00 00 02 */	li r0, 2
/* 80AA0234  98 03 0F 86 */	stb r0, 0xf86(r3)
/* 80AA0238  3B E0 00 01 */	li r31, 1
lbl_80AA023C:
/* 80AA023C  7F E3 FB 78 */	mr r3, r31
/* 80AA0240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0244  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA0248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA024C  7C 08 03 A6 */	mtlr r0
/* 80AA0250  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0254  4E 80 00 20 */	blr 
