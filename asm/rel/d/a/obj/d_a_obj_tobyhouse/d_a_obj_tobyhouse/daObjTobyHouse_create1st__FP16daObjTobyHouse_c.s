lbl_80D17618:
/* 80D17618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1761C  7C 08 02 A6 */	mflr r0
/* 80D17620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D17628  7C 7F 1B 78 */	mr r31, r3
/* 80D1762C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D17630  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D17634  40 82 00 28 */	bne lbl_80D1765C
/* 80D17638  28 1F 00 00 */	cmplwi r31, 0
/* 80D1763C  41 82 00 14 */	beq lbl_80D17650
/* 80D17640  4B 36 0F E4 */	b __ct__16dBgS_MoveBgActorFv
/* 80D17644  3C 60 80 D1 */	lis r3, __vt__16daObjTobyHouse_c@ha
/* 80D17648  38 03 79 8C */	addi r0, r3, __vt__16daObjTobyHouse_c@l
/* 80D1764C  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80D17650:
/* 80D17650  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D17654  60 00 00 08 */	ori r0, r0, 8
/* 80D17658  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D1765C:
/* 80D1765C  7F E3 FB 78 */	mr r3, r31
/* 80D17660  4B FF ED 91 */	bl create1st__16daObjTobyHouse_cFv
/* 80D17664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D17668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1766C  7C 08 03 A6 */	mtlr r0
/* 80D17670  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17674  4E 80 00 20 */	blr 
