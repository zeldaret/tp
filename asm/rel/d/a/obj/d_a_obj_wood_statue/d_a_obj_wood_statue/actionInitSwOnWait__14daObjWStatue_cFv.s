lbl_80D3AD30:
/* 80D3AD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3AD34  7C 08 02 A6 */	mflr r0
/* 80D3AD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3AD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3AD40  7C 7F 1B 78 */	mr r31, r3
/* 80D3AD44  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80D3AD48  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D3AD4C  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80D3AD50  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80D3AD54  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D3AD58  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80D3AD5C  4B 2F CD 08 */	b hide__12daItemBase_cFv
/* 80D3AD60  38 00 00 03 */	li r0, 3
/* 80D3AD64  98 1F 09 38 */	stb r0, 0x938(r31)
/* 80D3AD68  38 00 00 00 */	li r0, 0
/* 80D3AD6C  98 1F 09 3A */	stb r0, 0x93a(r31)
/* 80D3AD70  38 60 00 01 */	li r3, 1
/* 80D3AD74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3AD78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3AD7C  7C 08 03 A6 */	mtlr r0
/* 80D3AD80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3AD84  4E 80 00 20 */	blr 
