lbl_8019A0D0:
/* 8019A0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019A0D4  7C 08 02 A6 */	mflr r0
/* 8019A0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019A0DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019A0E0  7C 7F 1B 78 */	mr r31, r3
/* 8019A0E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8019A0E8  41 82 00 2C */	beq lbl_8019A114
/* 8019A0EC  38 80 00 03 */	li r4, 3
/* 8019A0F0  48 00 02 55 */	bl setSeq__13dShopSystem_cFUc
/* 8019A0F4  38 00 00 01 */	li r0, 1
/* 8019A0F8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019A0FC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8019A100  98 03 00 BD */	stb r0, 0xbd(r3)
/* 8019A104  7F E3 FB 78 */	mr r3, r31
/* 8019A108  48 00 02 5D */	bl setSoldOut__13dShopSystem_cFv
/* 8019A10C  38 60 00 01 */	li r3, 1
/* 8019A110  48 00 00 34 */	b lbl_8019A144
lbl_8019A114:
/* 8019A114  88 1F 0F 70 */	lbz r0, 0xf70(r31)
/* 8019A118  28 00 00 00 */	cmplwi r0, 0
/* 8019A11C  40 82 00 24 */	bne lbl_8019A140
/* 8019A120  38 80 00 01 */	li r4, 1
/* 8019A124  48 00 02 21 */	bl setSeq__13dShopSystem_cFUc
/* 8019A128  38 00 00 01 */	li r0, 1
/* 8019A12C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019A130  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8019A134  98 03 00 BD */	stb r0, 0xbd(r3)
/* 8019A138  38 60 00 01 */	li r3, 1
/* 8019A13C  48 00 00 08 */	b lbl_8019A144
lbl_8019A140:
/* 8019A140  38 60 00 00 */	li r3, 0
lbl_8019A144:
/* 8019A144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019A148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019A14C  7C 08 03 A6 */	mtlr r0
/* 8019A150  38 21 00 10 */	addi r1, r1, 0x10
/* 8019A154  4E 80 00 20 */	blr 
