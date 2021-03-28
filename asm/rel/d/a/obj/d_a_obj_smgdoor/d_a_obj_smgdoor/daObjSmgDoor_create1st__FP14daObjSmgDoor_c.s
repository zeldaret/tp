lbl_80CDCB04:
/* 80CDCB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCB08  7C 08 02 A6 */	mflr r0
/* 80CDCB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDCB14  7C 7F 1B 78 */	mr r31, r3
/* 80CDCB18  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDCB1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDCB20  40 82 00 28 */	bne lbl_80CDCB48
/* 80CDCB24  28 1F 00 00 */	cmplwi r31, 0
/* 80CDCB28  41 82 00 14 */	beq lbl_80CDCB3C
/* 80CDCB2C  4B 39 BA F8 */	b __ct__16dBgS_MoveBgActorFv
/* 80CDCB30  3C 60 80 CE */	lis r3, __vt__14daObjSmgDoor_c@ha
/* 80CDCB34  38 03 CD CC */	addi r0, r3, __vt__14daObjSmgDoor_c@l
/* 80CDCB38  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CDCB3C:
/* 80CDCB3C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CDCB40  60 00 00 08 */	ori r0, r0, 8
/* 80CDCB44  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CDCB48:
/* 80CDCB48  7F E3 FB 78 */	mr r3, r31
/* 80CDCB4C  4B FF F3 89 */	bl create1st__14daObjSmgDoor_cFv
/* 80CDCB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDCB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCB58  7C 08 03 A6 */	mtlr r0
/* 80CDCB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCB60  4E 80 00 20 */	blr 
