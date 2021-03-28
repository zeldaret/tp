lbl_8029D0B4:
/* 8029D0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D0B8  7C 08 02 A6 */	mflr r0
/* 8029D0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D0C4  7C 7F 1B 78 */	mr r31, r3
/* 8029D0C8  38 60 00 00 */	li r3, 0
/* 8029D0CC  90 7F 00 00 */	stw r3, 0(r31)
/* 8029D0D0  38 00 00 01 */	li r0, 1
/* 8029D0D4  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D0D8  98 7F 00 0C */	stb r3, 0xc(r31)
/* 8029D0DC  48 00 10 7D */	bl getDSPLevel__9JASDriverFv
/* 8029D0E0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8029D0E4  7F E3 FB 78 */	mr r3, r31
/* 8029D0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D0F0  7C 08 03 A6 */	mtlr r0
/* 8029D0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D0F8  4E 80 00 20 */	blr 
