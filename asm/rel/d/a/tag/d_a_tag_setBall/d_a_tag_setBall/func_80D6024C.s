lbl_80D6024C:
/* 80D6024C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60250  7C 08 02 A6 */	mflr r0
/* 80D60254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6025C  7C 7F 1B 78 */	mr r31, r3
/* 80D60260  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D60264  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D60268  40 82 00 1C */	bne lbl_80D60284
/* 80D6026C  28 1F 00 00 */	cmplwi r31, 0
/* 80D60270  41 82 00 08 */	beq lbl_80D60278
/* 80D60274  4B 2B 88 F1 */	bl __ct__10fopAc_ac_cFv
lbl_80D60278:
/* 80D60278  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D6027C  60 00 00 08 */	ori r0, r0, 8
/* 80D60280  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D60284:
/* 80D60284  7F E3 FB 78 */	mr r3, r31
/* 80D60288  4B FF FF 95 */	bl Create__14daTagSetBall_cFv
/* 80D6028C  2C 03 00 00 */	cmpwi r3, 0
/* 80D60290  40 82 00 0C */	bne lbl_80D6029C
/* 80D60294  38 60 00 05 */	li r3, 5
/* 80D60298  48 00 00 08 */	b lbl_80D602A0
lbl_80D6029C:
/* 80D6029C  38 60 00 04 */	li r3, 4
lbl_80D602A0:
/* 80D602A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D602A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D602A8  7C 08 03 A6 */	mtlr r0
/* 80D602AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D602B0  4E 80 00 20 */	blr 
