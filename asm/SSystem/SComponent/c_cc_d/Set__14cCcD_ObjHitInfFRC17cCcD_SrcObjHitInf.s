lbl_802639C4:
/* 802639C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802639C8  7C 08 02 A6 */	mflr r0
/* 802639CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802639D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802639D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802639D8  7C 7E 1B 78 */	mr r30, r3
/* 802639DC  7C 9F 23 78 */	mr r31, r4
/* 802639E0  48 00 0E 6D */	bl Set__10cCcD_ObjAtFRC13cCcD_SrcObjAt
/* 802639E4  38 7E 00 18 */	addi r3, r30, 0x18
/* 802639E8  38 9F 00 0C */	addi r4, r31, 0xc
/* 802639EC  48 00 0E 95 */	bl Set__10cCcD_ObjTgFRC13cCcD_SrcObjTg
/* 802639F0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802639F4  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802639F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802639FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80263A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80263A04  7C 08 03 A6 */	mtlr r0
/* 80263A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80263A0C  4E 80 00 20 */	blr 
