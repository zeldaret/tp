lbl_805793BC:
/* 805793BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805793C0  7C 08 02 A6 */	mflr r0
/* 805793C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805793C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805793CC  7C 7F 1B 78 */	mr r31, r3
/* 805793D0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805793D4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805793D8  40 82 00 28 */	bne lbl_80579400
/* 805793DC  28 1F 00 00 */	cmplwi r31, 0
/* 805793E0  41 82 00 14 */	beq lbl_805793F4
/* 805793E4  4B AF F2 40 */	b __ct__16dBgS_MoveBgActorFv
/* 805793E8  3C 60 80 58 */	lis r3, __vt__13daObjBkDoor_c@ha
/* 805793EC  38 03 95 98 */	addi r0, r3, __vt__13daObjBkDoor_c@l
/* 805793F0  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_805793F4:
/* 805793F4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805793F8  60 00 00 08 */	ori r0, r0, 8
/* 805793FC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80579400:
/* 80579400  7F E3 FB 78 */	mr r3, r31
/* 80579404  4B FF FB 1D */	bl create1st__13daObjBkDoor_cFv
/* 80579408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057940C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579410  7C 08 03 A6 */	mtlr r0
/* 80579414  38 21 00 10 */	addi r1, r1, 0x10
/* 80579418  4E 80 00 20 */	blr 
