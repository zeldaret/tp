lbl_80C46400:
/* 80C46400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46404  7C 08 02 A6 */	mflr r0
/* 80C46408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4640C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46410  7C 7F 1B 78 */	mr r31, r3
/* 80C46414  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C46418  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C4641C  40 82 00 28 */	bne lbl_80C46444
/* 80C46420  28 1F 00 00 */	cmplwi r31, 0
/* 80C46424  41 82 00 14 */	beq lbl_80C46438
/* 80C46428  4B 43 21 FC */	b __ct__16dBgS_MoveBgActorFv
/* 80C4642C  3C 60 80 C4 */	lis r3, __vt__12daObjKJgjs_c@ha
/* 80C46430  38 03 65 E0 */	addi r0, r3, __vt__12daObjKJgjs_c@l
/* 80C46434  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C46438:
/* 80C46438  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C4643C  60 00 00 08 */	ori r0, r0, 8
/* 80C46440  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C46444:
/* 80C46444  7F E3 FB 78 */	mr r3, r31
/* 80C46448  4B FF FC 51 */	bl create1st__12daObjKJgjs_cFv
/* 80C4644C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46454  7C 08 03 A6 */	mtlr r0
/* 80C46458  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4645C  4E 80 00 20 */	blr 
