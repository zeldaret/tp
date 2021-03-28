lbl_80A1BDD8:
/* 80A1BDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1BDDC  7C 08 02 A6 */	mflr r0
/* 80A1BDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1BDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1BDE8  7C 7F 1B 78 */	mr r31, r3
/* 80A1BDEC  4B 73 49 00 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BDF0  28 03 00 00 */	cmplwi r3, 0
/* 80A1BDF4  41 82 00 0C */	beq lbl_80A1BE00
/* 80A1BDF8  38 00 00 D8 */	li r0, 0xd8
/* 80A1BDFC  98 03 07 BC */	stb r0, 0x7bc(r3)
lbl_80A1BE00:
/* 80A1BE00  38 7F 00 08 */	addi r3, r31, 8
/* 80A1BE04  4B 73 48 E8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BE08  28 03 00 00 */	cmplwi r3, 0
/* 80A1BE0C  41 82 00 0C */	beq lbl_80A1BE18
/* 80A1BE10  38 00 00 D8 */	li r0, 0xd8
/* 80A1BE14  98 03 07 BC */	stb r0, 0x7bc(r3)
lbl_80A1BE18:
/* 80A1BE18  38 7F 00 10 */	addi r3, r31, 0x10
/* 80A1BE1C  4B 73 48 D0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BE20  28 03 00 00 */	cmplwi r3, 0
/* 80A1BE24  41 82 00 0C */	beq lbl_80A1BE30
/* 80A1BE28  38 00 00 D8 */	li r0, 0xd8
/* 80A1BE2C  98 03 07 BC */	stb r0, 0x7bc(r3)
lbl_80A1BE30:
/* 80A1BE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1BE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1BE38  7C 08 03 A6 */	mtlr r0
/* 80A1BE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1BE40  4E 80 00 20 */	blr 
